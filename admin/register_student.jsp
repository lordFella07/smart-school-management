<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smart School System - Register Student</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <header class="header">
        <div class="header-left">
            <i class="fas fa-bars menu-toggle-icon" id="menu-toggle"></i>
            <span>Smart School System</span>
        </div>
        <div class="header-right">
            <span class="user-name">Admin</span>
            <img src="https://i.pravatar.cc/150?img=12" alt="Admin Profile" class="profile-image">
        </div>
    </header>

    <div class="main-container">
        <aside class="sidebar" id="sidebar">
            <ul class="sidebar-menu">
                <li><a href="#" class="menu-item"><i class="fas fa-home icon"></i> <span class="link-text">Home</span></a></li>
                <li><a href="#" class="menu-item"><i class="fas fa-chalkboard icon"></i> <span class="link-text">Class</span></a></li>
                <li><a href="#" class="menu-item"><i class="fas fa-book icon"></i> <span class="link-text">Subject</span></a></li>
                <li><a href="student_list.html" class="menu-item"><i class="fas fa-clipboard-list icon"></i> <span class="link-text">Student List</span></a></li>
                <li><a href="#" class="menu-item"><i class="fas fa-chalkboard-user icon"></i> <span class="link-text">Teacher List</span></a></li>
                <li><a href="validate.jsp" class="menu-item"><i class="fas fa-check-circle icon"></i> <span class="link-text">Validate</span></a></li>
                <li><a href="#" class="menu-item"><i class="fas fa-users icon"></i> <span class="link-text">Class List</span></a></li>
            </ul>
        </aside>

        <main class="content">
            <div class="breadcrumb">
                Hi, Syariful <span class="breadcrumb-separator">&gt;</span> <span class="current-page">Register Student Profile</span>
            </div>

            <div class="form-card">
                <form action="RegisterStudentServlet" method="post">
                    <table class="form-table">
                        <tr>
                            <td><label for="name">NAME</label></td>
                            <td>:</td>
                            <td><input type="text" id="name" name="name" class="form-input" required></td>
                        </tr>
                        <tr>
                            <td><label for="nric">National Registration<br>Identity Card (NRIC)</label></td>
                            <td>:</td>
                            <td><input type="text" id="nric" name="nric" class="form-input" required></td>
                        </tr>
                        <tr>
                            <td><label for="year">YEAR</label></td>
                            <td>:</td>
                            <td>
                                <select id="year" name="year" class="form-input">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="class">CLASS</label></td>
                            <td>:</td>
                            <td><input type="text" id="class" name="class_name" class="form-input" required></td>
                        </tr>
                        <tr>
                            <td><label for="dob">DATE OF BIRTH</label></td>
                            <td>:</td>
                            <td><input type="date" id="dob" name="dob" class="form-input" required></td>
                        </tr>
                        <tr>
                            <td><label for="gender">GENDER</label></td>
                            <td>:</td>
                            <td>
                                <select id="gender" name="gender" class="form-input">
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding-top: 10px;"><label for="address">ADDRESS</label></td>
                            <td style="vertical-align: top; padding-top: 10px;">:</td>
                            <td><textarea id="address" name="address" class="form-input" rows="3" required></textarea></td>
                        </tr>
                    </table>
                    
                    <div class="form-footer">
                        <button type="submit" class="btn-submit">Submit</button>
                    </div>
                </form>
            </div>
        </main>
    </div>

    <script>
        const toggleButton = document.getElementById('menu-toggle');
        const sidebar = document.getElementById('sidebar');
        toggleButton.addEventListener('click', () => {
            sidebar.classList.toggle('collapsed');
        });
    </script>
</body>
</html>