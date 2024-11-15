<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gym Management System</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #2c3e50;
        }

        .sidebar {
            position: fixed;
            left: 0;
            width: 250px;
            height: 100%;
            background-color: #212122;
            color: #ecf0f1;
            padding-top: 20px;
            transition: width 0.3s ease;
        }

        .sidebar img {
            width: 150px;
            margin: 20px auto;
            display: block;
        }

        .sidebar a, .dropdown-btn {
            display: block;
            color: #ecf0f1;
            padding: 15px 20px;
            text-decoration: none;
            width: 100%;
            text-align: left;
            background: none;
            border: none;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s ease;
        }

        .sidebar a:hover, .dropdown-btn:hover {
            background-color: #34495e;
        }

        .dropdown-container {
            display: none;
            background-color: #34495e;
            padding-left: 8px;
        }

        .dropdown-container a {
            padding-left: 30px;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
            transition: margin-left 0.3s ease;
        }

        .topnav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #ecf0f1;
            padding: 10px 20px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .topnav a {
            color: #2c3e50;
            text-decoration: none;
            margin-left: 20px;
        }

        .topnav a:hover {
            text-decoration: underline;
        }

        .card {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            border-radius: 8px;
        }

        .form-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
            align-items: center;
        }

        .form-group label {
            width: 20%;
            text-align: right;
            margin-right: 20px;
            font-weight: bold;
            font-size: 14px;
        }

        .form-group input, .form-group select {
            width: 70%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .form-group input[type="radio"] {
            width: auto;
            margin-left: 10px;
        }

        .form-group-total {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            margin-top: 20px;
        }

        .form-group-total label {
            margin-right: 10px;
            font-weight: bold;
            font-size: 16px;
        }

        .form-group-total input {
            width: 100px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            text-align: right;
            font-size: 16px;
        }

        .form-group-submit {
            text-align: center;
            margin-top: 30px;
        }

        .form-group-submit button {
            padding: 12px 25px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s ease;
        }

        .form-group-submit button:hover {
            background-color: #2980b9;
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 200px;
            }

            .content {
                margin-left: 200px;
            }

            .form-group label {
                width: 30%;
            }

            .form-group input, .form-group select {
                width: 65%;
            }

            .topnav {
                flex-direction: column;
                align-items: flex-start;
            }

            .topnav a {
                margin-left: 0;
                margin-bottom: 10px;
            }
        }

        @media (max-width: 480px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }

            .content {
                margin-left: 0;
                padding: 10px;
            }

            .form-group {
                flex-direction: column;
                align-items: flex-start;
            }

            .form-group label {
                width: 100%;
                text-align: left;
                margin-bottom: 5px;
            }

            .form-group input, .form-group select {
                width: 100%;
            }

            .form-group-total {
                justify-content: center;
            }

            .topnav {
                flex-direction: column;
                align-items: flex-start;
            }
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <img src="https://pbs.twimg.com/media/GTA3yrPWIAAKluC?format=png&name=small" alt="Logo">
        <a href="Home.jsp">Dashboard</a>
        <button class="dropdown-btn">Member</button>
        <div class="dropdown-container">
            <a href="Member.jsp">New Member</a>
            <a href="MemberList.jsp">List of Members</a>
        </div>
        <button class="dropdown-btn">Trainers</button>
        <div class="dropdown-container">
            <a href="Trainer.jsp">New Trainer</a>
            <a href="#">List of Trainers</a>
        </div>
        <a href="#">Generate Bill</a>
        <a href="#">Payments</a>
        <a href="#">Equipments</a>
        <a href="#">Reports</a>
        <a href="#">Management</a>
    </div>

    <div class="content">
        <div class="topnav">
            <div>Manage Users</div>
            <div>
                <a href="Home.jsp">Home</a>
                <a href="login.jsp">Logout</a>
                <a href="#">Hi, Arpit</a>
            </div>
        </div>

        <div class="card">
            <h2>Register New Member</h2>
            <form>
                <div class="form-group">
                    <label for="fullname">Full Name:</label>
                    <input type="text" id="fullname" name="fullname" required>
                </div>
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <select id="gender" name="gender" required>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="dob">D.O.R:</label>
                    <input type="date" id="dob" name="dob" required>
                </div>
                <div class="form-group">
                    <label for="plan">Plans:</label>
                    <select id="plan" name="plan" required>
                        <option value="one-month">One Month</option>
                        <option value="three-months">Three Months</option>
                        <option value="six-months">Six Months</option>
                        <option value="one-year">One Year</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="contact">Contact Number:</label>
                    <input type="tel" id="contact" name="contact" pattern="[0-9]{10}" required>
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address" required>
                </div>
                <div class="form-group">
                    <label for="services">Services:</label>
                    <div>
                        <input type="radio" id="fitness" name="services" value="fitness" required>
                        <label for="fitness">Fitness - $55 per month</label>
                    </div>
                    <div>
                        <input type="radio" id="sauna" name="services" value="sauna" required>
                        <label for="sauna">Sauna - $35 per month</label>
                    </div>
                    <div>
                        <input type="radio" id="cardio" name="services" value="cardio" required>
                        <label for="cardio">Cardio - $40 per month</label>
                    </div>
                </div>
                <div class="form-group-total">
                    <label for="total-amount">Total Amount:</label>
                    <input type="number" id="total-amount" name="total-amount" readonly value="50">
                </div>
                <div class="form-group-submit">
                    <button type="submit">Submit Member Details</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        var dropdowns = document.getElementsByClassName("dropdown-btn");
        for (var i = 0; i < dropdowns.length; i++) {
            dropdowns[i].addEventListener("click", function() {
                this.nextElementSibling.classList.toggle("active");
                if (this.nextElementSibling.style.display === "block") {
                    this.nextElementSibling.style.display = "none";
                } else {
                    this.nextElementSibling.style.display = "block";
                }
            });
        }
    </script>
</body>
</html>
