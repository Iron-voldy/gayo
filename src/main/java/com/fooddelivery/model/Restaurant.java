//package com.fooddelivery.model;
//
//import java.io.Serializable;
//
//public class Restaurant implements Serializable {
//    private String id;
//    private String name;
//    private String cuisineType;
//    private String address;
//    private String phone;
//    private String email;
//    private String openingHours;
//    private String cuisine;
//    private String rating;
//    private String deliveryTime;
//    private String imageUrl;
//    private String description;
//
//    // Constructors
//    public Restaurant(String s, String name, String cuisineType, String address) {
//        this.imageUrl = "/images/restaurants/default.jpg";
//    }
//
//    public Restaurant(String id, String name, String cuisine, String rating, String deliveryTime, String imageUrl) {
//        this(generateId(), request.getParameter("name"), request.getParameter("cuisineType"), request.getParameter("address"));
//        this.id = id;
//        this.name = name;
//        this.cuisineType = cuisineType;
//        this.address = address;
//        this.cuisine = cuisine;
//        this.rating = rating;
//        this.deliveryTime = deliveryTime;
//        this.imageUrl = imageUrl;
//    }
//
//    private static String generateId() {
//        return null;
//    }
//
//
//    public void setId(String id) {
//        this.id = id;
//    }
//
//    public String getId() {
//        return id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public String getCuisine() {
//        return cuisine;
//    }
//
//    public String getRating() {
//        return rating;
//    }
//
//    public String getDeliveryTime() {
//        return deliveryTime;
//    }
//
//    public String getImageUrl() {
//        return imageUrl;
//    }
//
//    // For file operations
//    public String toFileString() {
//        return String.join(",", id, name, cuisineType, address, phone, email,
//                openingHours, cuisine, rating, deliveryTime, imageUrl, String.valueOf(rating), description);
//    }
//
//    public static Restaurant fromFileString(String line) {
//        String[] parts = line.split(",");
//        if (parts.length >= 10) {
//            Restaurant restaurant = new Restaurant(parts[0], parts[1], parts[2], parts[3]);
//            restaurant.setPhone(parts[4]);
//            restaurant.setEmail(parts[5]);
//            restaurant.setOpeningHours(parts[6]);
//            restaurant.setImageUrl(parts[7]);
//            restaurant.setRating(Double.parseDouble(parts[8]));
//            restaurant.setDescription(parts[9]);
//            return restaurant;
//        }
//        return null;
//    }
//
//    private void setRating(double v) {
//
//    }
//
//    public void setPhone(String phone) {
//        this.phone = phone;
//    }
//
//    public String getPhone() {
//        return phone;
//    }
//
//    public void setEmail(String email) {
//        this.email = email;
//    }
//
//    public String getEmail() {
//        return email;
//    }
//
//    public void setOpeningHours(String openingHours) {
//        this.openingHours = openingHours;
//    }
//
//    public String getOpeningHours() {
//        return openingHours;
//    }
//
//    public void setImageUrl(String imageUrl) {
//        this.imageUrl = imageUrl;
//    }
//
//    public void setDescription(String description) {
//        this.description = description;
//    }
//
//    public String getDescription() {
//        return description;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public void setCuisineType(String cuisineType) {
//        this.cuisineType = cuisineType;
//    }
//
//    public String getCuisineType() {
//        return cuisineType;
//    }
//
//    public void setAddress(String address) {
//        this.address = address;
//    }
//
//    public String getAddress() {
//        return address;
//    }
//}


//package com.fooddelivery.model;
//
//import java.io.Serializable;
//import java.util.UUID;
//
//public class Restaurant implements Serializable {
//    private String id;
//    private String name;
//    private String cuisineType;
//    private String address;
//    private String phone;
//    private String email;
//    private String openingHours;
//    private double rating;
//    private String deliveryTime;
//    private String imageUrl;
//    private String description;
//
//    // Default constructor
//    public Restaurant(String r001, String pizzaHeaven, String italian, String s, String string, String s1) {
//        this.imageUrl = "/images/restaurants/default1.jpg";
//        this.id = generateId();
//    }
//
//    // Basic constructor
//    public Restaurant(String name, String cuisineType, String address) {
//        this("R001", "Pizza Heaven", "Italian", "4.5", "30-45 min", "/images/restaurants/pizza.jpg");
//        this.name = name;
//        this.cuisineType = cuisineType;
//        this.address = address;
//    }
//
//    // Full constructor
//    public Restaurant(String id, String name, String cuisineType, String address,
//                      String phone, String email, String openingHours,
//                      double rating, String deliveryTime, String imageUrl,
//                      String description) {
//        this(name, cuisineType, address);
//        this.id = id;
//        this.phone = phone;
//        this.email = email;
//        this.openingHours = openingHours;
//        this.rating = rating;
//        this.deliveryTime = deliveryTime;
//        this.imageUrl = imageUrl;
//        this.description = description;
//    }
//
//    public Restaurant(String s, String name, String cuisineType, String address) {
//    }
//
//    public Restaurant(String part, String part1, String part2, String part3, String part4, String part5, String part6, String part7, String part8, double v) {
//
//    }
//
//    private static String generateId() {
//        return "R" + UUID.randomUUID().toString().substring(0, 8);
//    }
//
//    // Getters and Setters
//    public String getId() { return id; }
//    public void setId(String id) { this.id = id; }
//
//    public String getName() { return name; }
//    public void setName(String name) { this.name = name; }
//
//    public String getCuisineType() { return cuisineType; }
//    public void setCuisineType(String cuisineType) { this.cuisineType = cuisineType; }
//
//    public String getAddress() { return address; }
//    public void setAddress(String address) { this.address = address; }
//
//    public String getPhone() { return phone; }
//    public void setPhone(String phone) { this.phone = phone; }
//
//    public String getEmail() { return email; }
//    public void setEmail(String email) { this.email = email; }
//
//    public String getOpeningHours() { return openingHours; }
//    public void setOpeningHours(String openingHours) { this.openingHours = openingHours; }
//
//    public double getRating() { return rating; }
//    public void setRating(double rating) { this.rating = rating; }
//
//    public String getDeliveryTime() { return deliveryTime; }
//    public void setDeliveryTime(String deliveryTime) { this.deliveryTime = deliveryTime; }
//
//    public String getImageUrl() { return imageUrl; }
//    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }
//
//    public String getDescription() { return description; }
//    public void setDescription(String description) { this.description = description; }
//
//
//    // File handling methods
//    public String toFileString() {
//        return String.join("|",
//                id, name, cuisineType, description, address,
//                phone, email, openingHours, imageUrl, String.valueOf(rating));
//    }
//
//    public static Restaurant fromFileString(String fileString) {
//        String[] parts = fileString.split("\\|");
//        if (parts.length == 10) {
//            return new Restaurant(
//                    parts[0], parts[1], parts[2], parts[3], parts[4],
//                    parts[5], parts[6], parts[7], parts[8], Double.parseDouble(parts[9])
//            );
//        }
//        return null;
//    }
//}







package com.fooddelivery.model;

import java.io.Serializable;
import java.util.UUID;

public class Restaurant implements Serializable {
    private String id;
    private String name;
    private String cuisineType;
    private String address;
    private String phone;
    private String email;
    private String openingHours;
    private double rating;
    private String deliveryTime;
    private String imageUrl;
    private String description;

    // Simplified constructors
    public Restaurant() {
        this.id = generateId();
        this.imageUrl = "/images/default.png";
    }

    public Restaurant(String name, String cuisineType, String address) {
        this();
        this.name = name;
        this.cuisineType = cuisineType;
        this.address = address;
    }

    public Restaurant(String name, String cuisineType, String address,
                      String phone, String email, String openingHours,
                      double rating, String deliveryTime, String imageUrl,
                      String description) {
        this(name, cuisineType, address);
        this.phone = phone;
        this.email = email;
        this.openingHours = openingHours;
        this.rating = rating;
        this.deliveryTime = deliveryTime;
        this.imageUrl = imageUrl;
        this.description = description;
    }

    public Restaurant(String name, String cuisineType, String address, Object o) {

    }

    // File handling methods
    public String toFileString() {
        return String.join("|",
                id,
                name,
                cuisineType,
                description != null ? description : "",
                address != null ? address : "",
                phone != null ? phone : "",
                email != null ? email : "",
                openingHours != null ? openingHours : "",
                imageUrl != null ? imageUrl : "",
                String.valueOf(rating),
                deliveryTime != null ? deliveryTime : ""
        );
    }

    public static Restaurant fromFileString(String fileString) {
        String[] parts = fileString.split("\\|");
        if (parts.length >= 10) {
            return new Restaurant(
                    parts[1],  // name
                    parts[2],  // cuisineType
                    parts[4],  // address
                    parts[5],  // phone
                    parts[6],  // email
                    parts[7],  // openingHours
                    Double.parseDouble(parts[9]),  // rating
                    parts.length > 10 ? parts[10] : "",  // deliveryTime
                    parts[8],  // imageUrl
                    parts[3]   // description
            ).setId(parts[0]); // id
        }
        return null;
    }

    private static String generateId() {
        return "R" + UUID.randomUUID().toString().substring(0, 8);
    }

    // Modified getters/setters (showing pattern for all fields)
    public String getId() { return id; }
    public Restaurant setId(String id) {
        this.id = id;
        return this;
    }

    public void setPhone(String phone) {

    }

    public void setEmail(String email) {

    }

    public void setOpeningHours(String openingHours) {

    }

    public void setDescription(String description) {

    }

    public void setImageUrl(String imageUrl) {

    }

    public void setName(String name) {

    }

    public void setCuisineType(String cuisineType) {

    }

    public void setAddress(String address) {

    }

    public void setRating(double rating) {

    }


    // Add similar getters/setters for all other fields...

    // Existing getters/setters remain the same, just ensure they handle nulls
}