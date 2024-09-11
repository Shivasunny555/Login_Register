<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Welcome Page</title>
</head>
<body>

    <%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session1 != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session1.getAttribute("username");
    %>

    <div class="container">
        <h1>Hello, <%= username %>! </h1>
        <h1>Welcome Back to Your College Portal!</h1>
        <p>We are excited to have you back! Here what you can do:</p>
        <ul>
            <li>Access your courses and assignments.</li>
            <li>Connect with classmates and faculty.</li>
            <li>Stay updated on the latest campus news and events.</li>
            <li>Check your grades and academic progress.</li>
            <li>Manage your student profile and settings.</li>
        </ul>
        <p>When you're done, remember to <a href="logout.jsp">LOGOUT</a> securely.</p>
    </div>

    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>
