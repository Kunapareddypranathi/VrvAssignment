package com.vrv.config;



import java.util.Collection;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.oauth2.core.oidc.OidcUserInfo;
import org.springframework.security.oauth2.core.oidc.user.OidcUser;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers("/","/home", "/products","/categories").permitAll() // Allow access to these paths
                        .requestMatchers("/cart","/sellerdashboard","/buyerdashboard", "/orders", "/login","/profile", "/register","/wishlist","/cart").authenticated() // Require auth for these
                        .anyRequest().permitAll()
                )
                .oauth2Login(login -> login
                        .successHandler(customAuthenticationSuccessHandler()) // Custom success handler for role-based redirection
                )
                .logout(logout -> logout
                        .logoutSuccessHandler(oidcLogoutSuccessHandler()) // Custom Auth0 logout handler
                        .invalidateHttpSession(true)
                        .clearAuthentication(true)
                        .logoutSuccessUrl("/home1")
                );

        http.addFilterAfter(new NoCacheFilter(), UsernamePasswordAuthenticationFilter.class);

        return http.build();
    }

    // Custom Authentication Success Handler
    private AuthenticationSuccessHandler customAuthenticationSuccessHandler() {
        return (HttpServletRequest request, HttpServletResponse response, Authentication authentication) -> {
            OidcUser oidcUser = (OidcUser) authentication.getPrincipal();
            Collection<? extends GrantedAuthority> authorities = oidcUser.getAuthorities();
            OidcUserInfo userInfo = oidcUser.getUserInfo();
            
            
            // Log the roles/authorities assigned to the user for debugging
            System.out.println("User's authorities: ");
            for (GrantedAuthority authority : authorities) {
                System.out.println(authority.getAuthority());
            }
            System.out.println("role" + userInfo.getClaim("role"));

            // Default URL for redirection
            String redirectUrl = "/home1";
            if (userInfo.getClaim("role").toString().equals("[Buyer]")) {
              redirectUrl = "/buyerdashboard";
          } else {
              redirectUrl = "/sellerdashboard";
          }
            
            System.out.println(redirectUrl);


            response.sendRedirect(redirectUrl);
        };
    }

    private LogoutSuccessHandler oidcLogoutSuccessHandler() {
        return (request, response, authentication) -> {
            String logoutUrl = "https://dev-zvtq3ma4e4zf35qf.us.auth0.com/v2/logout?client_id=XIReNBW04K0y7kKUa9oyiGGN8kVBOc7c&returnTo=http://localhost:3002/home1";
            response.sendRedirect(logoutUrl); // Redirect to Auth0 logout and then back to home
        };
    }
}