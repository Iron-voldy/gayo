//package com.fooddelivery.controller;
//
//import com.fooddelivery.util.FileHandler;
//import com.fooddelivery.model.Restaurant;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//public class RestaurantServlet extends HttpServlet {
//    private static final String FILE_NAME = "restaurants.txt";
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
//        // Create restaurant from request parameters
//        Restaurant restaurant = new Restaurant(
//                request.getParameter("name"),
//                request.getParameter("cuisineType"),
//                request.getParameter("address")
//                // Add other parameters...
//        );
//
//        // Save to file
//        FileHandler.appendToFile(FILE_NAME, restaurant.toFileString());
//    }
//
//    // Add methods for update, delete, etc.
//}


//



package com.fooddelivery.controller;

import com.fooddelivery.model.Restaurant;
import com.fooddelivery.util.RestaurantFileHandler;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/restaurants/*")
@MultipartConfig
public class RestaurantServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getPathInfo() != null ? request.getPathInfo() : "/";

        switch (action) {
            case "/":
                listRestaurants(request, response);
                break;
            case "/add":
                request.getRequestDispatcher("/c2/add.jsp").forward(request, response);
                break;
            case "/edit":
                showEditForm(request, response);
                break;
            case "/view":
                viewRestaurant(request, response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getPathInfo() != null ? request.getPathInfo() : "/";

        switch (action) {
            case "/add":
                addRestaurant(request, response);
                break;
            case "/update":
                updateRestaurant(request, response);
                break;
            case "/delete":
                deleteRestaurant(request, response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    private void listRestaurants(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("restaurants", RestaurantFileHandler.getAllRestaurants());
        request.getRequestDispatcher("/c2/list.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        Restaurant restaurant = RestaurantFileHandler.findRestaurantById(id);

        if (restaurant != null) {
            request.setAttribute("restaurant", restaurant);
            request.getRequestDispatcher("/c2/edit.jsp").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    private void viewRestaurant(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        Restaurant restaurant = RestaurantFileHandler.findRestaurantById(id);

        if (restaurant != null) {
            request.setAttribute("restaurant", restaurant);
            request.getRequestDispatcher("/c2/view.jsp").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    private void addRestaurant(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Restaurant restaurant = new Restaurant();
        restaurant.setName(request.getParameter("name"));
        restaurant.setCuisineType(request.getParameter("cuisineType"));
        restaurant.setAddress(request.getParameter("address"));
        restaurant.setPhone(request.getParameter("phone"));
        restaurant.setEmail(request.getParameter("email"));
        restaurant.setOpeningHours(request.getParameter("openingHours"));
        restaurant.setDescription(request.getParameter("description"));
        restaurant.setRating(Double.parseDouble(request.getParameter("rating")));
        restaurant.setImageUrl(request.getParameter("imageUrl"));

        RestaurantFileHandler.saveRestaurant(restaurant);
        response.sendRedirect(request.getContextPath() + "/restaurants/");
    }

    private void updateRestaurant(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        Restaurant restaurant = RestaurantFileHandler.findRestaurantById(id);

        if (restaurant != null) {
            restaurant.setName(request.getParameter("name"));
            restaurant.setCuisineType(request.getParameter("cuisineType"));
            restaurant.setAddress(request.getParameter("address"));
            restaurant.setPhone(request.getParameter("phone"));
            restaurant.setEmail(request.getParameter("email"));
            restaurant.setOpeningHours(request.getParameter("openingHours"));
            restaurant.setDescription(request.getParameter("description"));
            restaurant.setRating(Double.parseDouble(request.getParameter("rating")));
            restaurant.setImageUrl(request.getParameter("imageUrl"));

            RestaurantFileHandler.updateRestaurant(restaurant);
        }
        response.sendRedirect(request.getContextPath() + "/restaurants/");
    }

    private void deleteRestaurant(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        RestaurantFileHandler.deleteRestaurant(id);
        response.sendRedirect(request.getContextPath() + "/restaurants/");
    }
}