//package com.fooddelivery.util;
//
//import com.fooddelivery.model.Restaurant;
//
//import java.io.IOException;
//import java.nio.file.Path;
//import java.util.ArrayList;
//import java.util.List;
//
//import static java.nio.file.Files.readAllLines;
//
//public class RestaurantFileHandler extends FileHandler {
//    private static final String RESTAURANTS_FILE = "data/restaurants.txt";
//
//    public static List<Restaurant> getAllRestaurants() throws IOException {
//        List<Restaurant> restaurants = new ArrayList<>();
//        List<String> lines = readAllLines(getFilePath(RESTAURANTS_FILE));
//
//        for (String line : lines) {
//            Restaurant restaurant = Restaurant.fromFileString(line);
//            if (restaurant != null) {
//                restaurants.add(restaurant);
//            }
//        }
//        return restaurants;
//    }
//
//    private static Path getFilePath(String restaurantsFile) {
//        return null;
//    }
//
//    public static void saveRestaurant(Restaurant restaurant) {
//        appendLine(getFilePath(RESTAURANTS_FILE), restaurant.toFileString());
//    }
//
//    private static void appendLine(Path filePath, String fileString) {
//
//    }
//
//    public static void updateRestaurant(Restaurant updatedRestaurant) throws IOException {
//        List<Restaurant> restaurants = getAllRestaurants();
//        List<String> updatedLines = new ArrayList<>();
//
//        for (Restaurant restaurant : restaurants) {
//            if (restaurant.getId().equals(updatedRestaurant.getId())) {
//                updatedLines.add(updatedRestaurant.toFileString());
//            } else {
//                updatedLines.add(restaurant.toFileString());
//            }
//        }
//
//        writeAllLines(getFilePath(RESTAURANTS_FILE), updatedLines);
//    }
//
//    private static void writeAllLines(Path filePath, List<String> updatedLines) {
//
//    }
//
//    public static void deleteRestaurant(String restaurantId) throws IOException {
//        List<Restaurant> restaurants = getAllRestaurants();
//        List<String> updatedLines = new ArrayList<>();
//
//        for (Restaurant restaurant : restaurants) {
//            if (!restaurant.getId().equals(restaurantId)) {
//                updatedLines.add(restaurant.toFileString());
//            }
//        }
//
//        writeAllLines(getFilePath(RESTAURANTS_FILE), updatedLines);
//    }
//
//    public static Object findRestaurantById(String restaurantId) {
//        return null;
//    }
//}


package com.fooddelivery.util;

import com.fooddelivery.model.Restaurant;
import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

public class RestaurantFileHandler {
    private static final String FILE_NAME = "restaurants.txt";

    public static List<Restaurant> getAllRestaurants() throws IOException {
        List<String> lines = FileHandler.readUsers(FileHandler.getFilePath(FILE_NAME));
        List<Restaurant> restaurants = new ArrayList<>();

        for (String line : lines) {
            Restaurant restaurant = Restaurant.fromFileString(line);
            if (restaurant != null) {
                restaurants.add(restaurant);
            }
        }
        return restaurants;
    }

    public static void saveRestaurant(Restaurant restaurant) throws IOException {
        FileHandler.appendLine(FILE_NAME, restaurant.toFileString());
    }

    public static void updateRestaurant(Restaurant updatedRestaurant) throws IOException {
        List<Restaurant> restaurants = getAllRestaurants();
        List<String> lines = new ArrayList<>();

        for (Restaurant restaurant : restaurants) {
            if (restaurant.getId().equals(updatedRestaurant.getId())) {
                lines.add(updatedRestaurant.toFileString());
            } else {
                lines.add(restaurant.toFileString());
            }
        }

        FileHandler.writeAllLines(FILE_NAME, lines);
    }

    public static void deleteRestaurant(String restaurantId) throws IOException {
        List<Restaurant> restaurants = getAllRestaurants();
        List<String> lines = new ArrayList<>();

        for (Restaurant restaurant : restaurants) {
            if (!restaurant.getId().equals(restaurantId)) {
                lines.add(restaurant.toFileString());
            }
        }

        FileHandler.writeAllLines(FILE_NAME, lines);
    }

    public static Restaurant findRestaurantById(String restaurantId) throws IOException {
        List<Restaurant> restaurants = getAllRestaurants();
        for (Restaurant restaurant : restaurants) {
            if (restaurant.getId().equals(restaurantId)) {
                return restaurant;
            }
        }
        return null;
    }
}