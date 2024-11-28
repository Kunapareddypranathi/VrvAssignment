package com.vrv.controller;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.core.oidc.OidcIdToken;
import org.springframework.security.oauth2.core.oidc.OidcUserInfo;
import org.springframework.security.oauth2.core.oidc.user.OidcUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class VrvController {

    @GetMapping("/home")
    public String home() {
        System.out.println("home");
        return "home";  
    }
    @GetMapping("/home1")
    public String home1() {
        System.out.println("home1");
        return "home1";  
    }
    @GetMapping("/login")
    public String login() {
        return "login";  
    }
    @GetMapping("/buyerdashboard")
    public String buyerDashboardJsp() {
        return "buyerdashboard";  
    }
    @GetMapping("/sellerdashboard")
    public String sellerDashboardJsp() {
        return "sellerdashboard";  
    }
    @GetMapping("/wishlist")
    public String wishlist() {
    	return "wishlist";
    }
    @GetMapping("/cart")
    public String cart() {
    	return "cart ";
    }
    @GetMapping("/categories")
    public String catagories() {
    	return "categories";
    }
    
    @GetMapping("/profile")
    public String getProfile(Model model, @AuthenticationPrincipal OidcUser oidcUser, HttpSession session) {
        if (oidcUser == null) {
            // Handle the case where the user is not authenticated
            System.out.println("OidcUser is null, user might not be logged in.");
            return "redirect:/login"; // Redirect to login page or another appropriate page
        }

        // Add claims to model for the profile view
        model.addAttribute("profile", oidcUser.getClaims());

        // Check if OidcUserInfo is available and process it
        if (oidcUser.getUserInfo() != null) {
            OidcUserInfo userInfo = oidcUser.getUserInfo();
            System.out.println("User Info Claims: " + userInfo.getClaims());
            System.out.println("User Email: " + userInfo.getEmail());
            session.setAttribute("userEmail", userInfo.getEmail());
            System.out.println("emailIdFetchSession: " + session.getAttribute("userEmail"));
            System.out.println("User Name: " + userInfo.getFullName());
            System.out.println("User Gender: " + userInfo.getGender());
        } else {
            System.out.println("No UserInfo available");
        }

        // Print specific claims from OidcIdToken
        OidcIdToken idToken = oidcUser.getIdToken();
        System.out.println("ID Token Claims: " + idToken.getClaims());
        System.out.println("ID Token Subject: " + idToken.getSubject()); 

        // Print authorities (roles)
        Collection<? extends GrantedAuthority> authorities = oidcUser.getAuthorities();
        for (GrantedAuthority authority : authorities) {
            System.out.println("Role: " + authority.getAuthority());
        }

        // Store user information in session for further use
        session.setAttribute("user_id", idToken.getSubject());
        String user_id = idToken.getSubject(); // or whatever you need to do with user_id
        System.out.println("User ID: " + user_id);
        System.out.println("ID Token Issuer: " + idToken.getIssuer()); 
        System.out.println("Token Value: " + idToken.getTokenValue());
        
        return "profile"; // Return the profile view name
    }
}
