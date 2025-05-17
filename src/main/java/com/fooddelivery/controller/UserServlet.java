//package com.fooddelivery.controller;
//
//import com.fooddelivery.model.User;
//import com.fooddelivery.util.FileHandler;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.MultipartConfig;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.*;
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.UUID;
//
//@WebServlet("/user/*")
//@MultipartConfig(
//        fileSizeThreshold = 1024 * 1024, // 1MB
//        maxFileSize = 1024 * 1024 * 5,   // 5MB
//        maxRequestSize = 1024 * 1024 * 10 // 10MB
//)
//public class UserServlet extends HttpServlet {
//    private static final String USERS_FILE = "data/users.txt";
//
//    @Override
//    public void init() throws ServletException {
//        super.init();
//        // Initialize default avatar on startup
//        FileHandler.initializeDefaultAvatar();
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//        String action = request.getPathInfo();
//        if (action == null) {
//            action = "/";
//        }
//
//        switch (action) {
//            case "/register":
//                showRegisterForm();
//                break;
//            case "/login":
//                showLoginForm();
//                break;
//            case "/profile":
//                showProfile();
//                break;
//            case "/edit":
//                showEditForm(request, response);
//                break;
//            case "/logout":
//                logout();
//                break;
//            default:
//                response.sendRedirect(request.getContextPath() + "/");
//                break;
//        }
//    }
//
//    private void logout() {
//
//    }
//
//    private void showProfile() {
//
//    }
//
//    private void showLoginForm() {
//
//    }
//
//    private void showRegisterForm() {
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//        String action = request.getPathInfo();
//        if (action == null) {
//            action = "/";
//        }
//
//        switch (action) {
//            case "/register":
//                registerUser();
//                break;
//            case "/login":
//                loginUser();
//                break;
//            case "/update":
//                updateUser();
//                break;
//            case "/upload-avatar":
//                uploadAvatar(request, response);
//                break;
//            case "/delete":
//                deleteUser();
//                break;
//            default:
//                response.sendRedirect(request.getContextPath() + "/");
//                break;
//        }
//    }
//
//    private void deleteUser() {
//
//    }
//
//    private void updateUser() {
//
//    }
//
//    private void loginUser() {
//
//    }
//
//    private void registerUser() {
//
//    }
//
//    // ... (keep existing helper methods)
//
//    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        HttpSession session = request.getSession();
//        User user = (User) session.getAttribute("user");
//
//        if (user == null) {
//            response.sendRedirect(request.getContextPath() + "/auth/login");
//            return;
//        }
//
//        request.getRequestDispatcher("/auth/editProfile.jsp").forward(request, response);
//    }
//
//    private void uploadAvatar(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        HttpSession session = request.getSession();
//        User user = (User) session.getAttribute("user");
//
//        if (user == null) {
//            response.sendRedirect(request.getContextPath() + "/auth/login");
//            return;
//        }
//
//        Part filePart = request.getPart("avatar");
//        if (filePart != null && filePart.getSize() > 0) {
//            String fileName = UUID.randomUUID() +
//                    filePart.getSubmittedFileName().substring(
//                            filePart.getSubmittedFileName().lastIndexOf(".")
//                    );
//
//            String uploadPath = FileHandler.getResourcePath("images/avatars/man1.png" + fileName);
//
//            // Save the file
//            filePart.write(uploadPath);
//
//            // Update user's avatar URL
//            user.setAvatarUrl("/images/avatars/man1.png" + fileName);
//
//            // Update in file
//            List<String> lines = FileHandler.readAllLines(FileHandler.getFilePath(USERS_FILE));
//            List<String> updatedLines = new ArrayList<>();
//
//            for (String line : lines) {
//                User u = User.fromFileString(line);
//                if (u != null && u.getUserId().equals(user.getUserId())) {
//                    updatedLines.add(user.toFileString());
//                } else {
//                    updatedLines.add(line);
//                }
//            }
//
//            FileHandler.writeAllLines(FileHandler.getFilePath(USERS_FILE), updatedLines);
//
//            // Update session
//            session.setAttribute("user", user);
//            request.setAttribute("successMessage", "Avatar updated successfully!");
//        } else {
//            request.setAttribute("errorMessage", "Please select an image to upload!");
//        }
//
//        request.getRequestDispatcher("/auth/editProfile.jsp").forward(request, response);
//    }
//
//    // ... (update other methods to handle new User fields)
//}







package com.fooddelivery.controller;

import com.fooddelivery.model.User;
import com.fooddelivery.util.FileHandler;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/user/*")
public class UserServlet extends HttpServlet {

    // REGISTRATION
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getPathInfo();

        if ("/register".equals(action)) {
            // Get form data
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");

            // Create new user
            User newUser = new User(username, password, email);
            newUser.setUserId(FileHandler.getNextUserId());

            // Save to file
            FileHandler.saveUser(newUser);

            // Redirect to login
            response.sendRedirect(request.getContextPath() + "/auth/login.jsp");
        }else    if ("/login".equals(action)) {
            System.out.println("login");
        }


    }

    // LOGIN
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("login".equals(action)) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            List<User> users = FileHandler.readUsers();
            for (User user : users) {
                if (user.getUsername().equals(username) &&
                        user.getPassword().equals(password)) {

                    // Create session
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);

                    response.sendRedirect(request.getContextPath() + "/");
                    return;
                }
            }

            // Invalid credentials
            request.setAttribute("errorMessage", "Invalid username or password");
            request.getRequestDispatcher("/auth/login.jsp").forward(request, response);
        }

        if ("logout".equals(action)) {
            request.getSession().invalidate();
            response.sendRedirect(request.getContextPath() + "/");
        }
    }
}