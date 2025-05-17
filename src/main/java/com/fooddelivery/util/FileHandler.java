//package com.fooddelivery.util;
//
//import java.io.File;
//import java.io.IOException;
//import java.io.InputStream;
//import java.nio.file.*;
//import java.util.ArrayList;
//import java.util.List;
//
//public class FileHandler {
//
//
//
//
//
//    private static final String DATA_DIR = "data";
//
//    // Initialize data directory
//    static {
//        try {
//            Path path = Paths.get(DATA_DIR);
//            if (!Files.exists(path)) {
//                Files.createDirectories(path);
//            }
//        } catch (IOException e) {
//            System.err.println("Failed to create data directory: " + e.getMessage());
//        }
//    }
//
//    /**
//     * Reads all lines from a file
//     * @param filename The name of the file to read
//     * @return List of lines from the file
//     */
//     public static List<String> readFromFile(String filename) {
//        List<String> lines = new ArrayList<>();
//        Path filePath = Paths.get(DATA_DIR, filename);
//
//        try {
//            if (Files.exists(filePath)) {
//                lines = Files.readAllLines(filePath);
//            }
//        } catch (IOException e) {
//            System.err.println("Error reading file " + filename + ": " + e.getMessage());
//        }
//
//        return lines;
//    }
//
//    /**
//     * Writes data to a file (overwrites existing content)
//     * @param filename The name of the file to write to
//     * @param data The data to write
//     */
//    public static void writeToFile(String filename, String data) {
//        Path filePath = Paths.get(DATA_DIR, filename);
//
//        try {
//            Files.write(filePath, data.getBytes(), StandardOpenOption.CREATE,
//                    StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE);
//        } catch (IOException e) {
//            System.err.println("Error writing to file " + filename + ": " + e.getMessage());
//        }
//    }
//
//    /**
//     * Appends data to a file
//     * @param filename The name of the file to append to
//     * @param data The data to append
//     */
//    public static void appendToFile(String filename, String data) {
//        Path filePath = Paths.get(DATA_DIR, filename);
//
//        try {
//            Files.write(filePath, data.getBytes(), StandardOpenOption.CREATE,
//                    StandardOpenOption.APPEND, StandardOpenOption.WRITE);
//        } catch (IOException e) {
//            System.err.println("Error appending to file " + filename + ": " + e.getMessage());
//        }
//    }
//
//    /**
//     * Updates specific content in a file
//     * @param filename The name of the file
//     * @param oldContent The content to be replaced
//     * @param newContent The new content
//     */
//    public static void updateInFile(String filename, String oldContent, String newContent) {
//        List<String> lines = readFromFile(filename);
//        List<String> updatedLines = new ArrayList<>();
//
//        for (String line : lines) {
//            if (line.equals(oldContent)) {
//                updatedLines.add(newContent);
//            } else {
//                updatedLines.add(line);
//            }
//        }
//
//        writeToFile(filename, String.join("\n", updatedLines));
//    }
//
//    /**
//     * Deletes specific content from a file
//     * @param filename The name of the file
//     * @param contentToDelete The content to delete
//     */
//    public static void deleteFromFile(String filename, String contentToDelete) {
//        List<String> lines = readFromFile(filename);
//        List<String> updatedLines = new ArrayList<>();
//
//        for (String line : lines) {
//            if (!line.equals(contentToDelete)) {
//                updatedLines.add(line);
//            }
//        }
//
//        writeToFile(filename, String.join("\n", updatedLines));
//    }
//
//    /**
//     * Checks if a file contains specific content
//     * @param filename The name of the file
//     * @param content The content to search for
//     * @return true if content exists, false otherwise
//     */
//    public static boolean fileContains(String filename, String content) {
//        List<String> lines = readFromFile(filename);
//        return lines.contains(content);
//    }
//
//    /**
//     * Gets the next available ID for a new record
//     * @param filename The name of the file
//     * @param prefix The prefix for the ID (e.g., "USR" for users)
//     * @return The next available ID
//     */
//    public static String getNextId(String filename, String prefix) {
//        List<String> lines = readFromFile(filename);
//        int maxId = 0;
//
//        for (String line : lines) {
//            try {
//                String[] parts = line.split("\\|");
//                if (parts.length > 0) {
//                    String id = parts[0];
//                    if (id.startsWith(prefix)) {
//                        int num = Integer.parseInt(id.substring(prefix.length()));
//                        if (num > maxId) {
//                            maxId = num;
//                        }
//                    }
//                }
//            } catch (NumberFormatException e) {
//                continue;
//            }
//        }
//
//        return prefix + (maxId + 1);
//    }
//
//
//
//
//
//
//
//
//
//    // Method to read all lines from a file
//    public static List<String> readAllLines(String filePath) {
//        List<String> lines = new ArrayList<>();
//        try {
//            File file = new File(filePath);
//            if (!file.exists()) {
//                file.createNewFile();
//                return lines;
//            }
//
//            lines = Files.readAllLines(Paths.get(filePath));
//        } catch (IOException e) {
//            System.err.println("Error reading file: " + e.getMessage());
//        }
//        return lines;
//    }
//
//    // Method to write all lines to a file
//    public static void writeAllLines(String filePath, List<String> lines) {
//        try {
//            Files.write(Paths.get(filePath), lines);
//        } catch (IOException e) {
//            System.err.println("Error writing to file: " + e.getMessage());
//        }
//    }
//
//    // Method to append a line to a file
//    public static void appendLine(String filePath, String line) {
//        try {
//            Files.write(Paths.get(filePath), (line + System.lineSeparator()).getBytes(),
//                    StandardOpenOption.CREATE, StandardOpenOption.APPEND);
//        } catch (IOException e) {
//            System.err.println("Error appending to file: " + e.getMessage());
//        }
//    }
//
//    // Method to get the file path
//    public static String getFilePath(String fileName) {
//        // Get the base path for the data files
//        String basePath = System.getProperty("catalina.base");
//        if (basePath == null) {
//            // If running locally and not in Tomcat, use a different approach
//            basePath = System.getProperty("user.dir");
//        }
//
//        // Define the path where data files will be stored
//        String dataPath = basePath + File.separator + "data";
//
//        // Create the data directory if it doesn't exist
//        File dataDir = new File(dataPath);
//        if (!dataDir.exists()) {
//            dataDir.mkdirs();
//        }
//
//        return dataPath + File.separator + fileName;
//    }
//
//        // New method to get resource path for web application
//        public static String getResourcePath(String fileName) {
//            // For web resources (images, css, js)
//            String webappPath = System.getProperty("catalina.base") + File.separator +
//                    "webapps" + File.separator + "FoodDeliverySystem";
//
//            // If running in IDE during development
//            if (!new File(webappPath).exists()) {
//                webappPath = System.getProperty("user.dir") + File.separator +
//                        "src" + File.separator + "main" + File.separator + "webapp";
//            }
//
//            return webappPath + File.separator + fileName;
//        }
//
//        // New method to initialize default avatar if not exists
//        public static void initializeDefaultAvatar() {
//            String avatarPath = getResourcePath("images/avatars/man.png");
//            File avatarFile = new File(avatarPath);
//
//            if (!avatarFile.exists()) {
//                try {
//                    // Create directories if they don't exist
//                    avatarFile.getParentFile().mkdirs();
//
//                    // Copy default avatar from resources (you need to add a default avatar image)
//                    InputStream input = FileHandler.class.getResourceAsStream("images/avatars/man1.png");
//                    if (input != null) {
//                        Files.copy(input, avatarFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
//                    }
//                } catch (IOException e) {
//                    System.err.println("Error initializing default avatar: " + e.getMessage());
//                }
//            }
//        }
//}







package com.fooddelivery.util;

import com.fooddelivery.model.User;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.List;

public class FileHandler {
    private static final String DATA_DIR = "data";

    public static List<User> readUsers() {
        List<User> users = new ArrayList<>();
        try {
            Path path = Paths.get("C:\\Users\\Asus\\IdeaProjects\\webapp-11\\src\\main\\webapp\\WEB-INF\\users.txt");

//            Path path = Paths.get(DATA_DIR, "C:\\Users\\Asus\\IdeaProjects\\webapp-11\\src\\main\\webapp\\WEB-INF\\users.txt");
            if (Files.exists(path)) {
                List<String> lines = Files.readAllLines(path);
                for (String line : lines) {
                    User user = User.fromFileString(line);
                    if (user != null) {
                        users.add(user);
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return users;
    }

    public static void saveUser(User user) throws IOException {
        Path path = Paths.get("C:\\Users\\Asus\\IdeaProjects\\webapp-11\\src\\main\\webapp\\WEB-INF\\users.txt");

        String data = user.toFileString() + System.lineSeparator();
        Files.write(path, data.getBytes(),
                StandardOpenOption.CREATE,
                StandardOpenOption.APPEND
        );
    }

    public static String getNextUserId() {
        List<User> users = readUsers();
        return "USR" + (users.size() + 1);
    }

    public static void appendToFile(String fileName, String fileString) {

    }

    public static String getResourcePath(String s) {
        return null;
    }

    public static Object getFilePath(String fileName) {
        return null;
    }

    public static List<String> readUsers(Object filePath) {
        return null;
    }

    public static void appendLine(String fileName, String fileString) {

    }

    public static void writeAllLines(String fileName, List<String> lines) {

    }
}