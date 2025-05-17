package com.fooddelivery.controller;

import com.fooddelivery.model.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/index")
//@WebServlet("/home")
//@WebServlet(name = "HomeServlet", value = {"/home", "/"})
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get featured restaurants (mock data - replace with actual data from your files)
        List<Restaurant> featuredRestaurants = getFeaturedRestaurants();
        request.setAttribute("featuredRestaurants", featuredRestaurants);

        // Get popular categories (mock data)
        List<String> popularCategories = new ArrayList<>();
        popularCategories.add("Pizza");
        popularCategories.add("Burger");
        popularCategories.add("Sushi");
        popularCategories.add("Pasta");
        popularCategories.add("Salad");
        request.setAttribute("popularCategories", popularCategories);

//        request.getRequestDispatcher("/views/home.jsp").forward(request, response);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    private List<Restaurant> getFeaturedRestaurants() {
        // In a real app, you would read this from restaurants.txt
        List<Restaurant> restaurants = new ArrayList<>();

        restaurants.add(new Restaurant());
        restaurants.add(new Restaurant());
        restaurants.add(new Restaurant());
        restaurants.add(new Restaurant());

        return restaurants;
    }
}