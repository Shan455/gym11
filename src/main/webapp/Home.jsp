
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
        }
        .sidebar {
            position: fixed;
            left: 0;
            width: 250px;
            height: 100%;
            background-color: #212122;
            color: #ecf0f1;
            padding-top: 20px;
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
        .card {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        .chart-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .chart-container .chart {
            width: 48%;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <img src="https://pbs.twimg.com/media/GTA3yrPWIAAKluC?format=png&name=small" alt="Logo">
        <a href="#">Dashboard</a>
        <button class="dropdown-btn">Member</button>
        <div class="dropdown-container">
            <a href="#">New Member</a>
            <a href="#">List of Members</a>
        </div>
        <button class="dropdown-btn">Trainers</button>
        <div class="dropdown-container">
            <a href="#">New Trainer</a>
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
                <a href="#">Home</a>
                <a href="#">Logout</a>
                <a href="#">Hi, Arpit</a>
            </div>
        </div>

        <div class="card">
            <h3>Supplies Order Stats</h3>
            <div class="chart-container">
                <div class="chart">
                    <!-- Insert your bar chart here -->
                    <img src="https://jobera.com/wp-content/uploads/2024/04/fitness-industry-stats-1024x683.jpg" alt="Bar Chart" style="width:100%">
                </div>
                <div class="chart">
                    <!-- Insert your pie chart here -->
                    <img src="https://img.favpng.com/7/1/10/exercise-yoga-health-pie-chart-png-favpng-407NxvWCuydSLALYGtC3bb8KV.jpg" alt="Pie Chart" style="width:100%">
                </div>
            </div>
        </div>

        <div class="card">
            <h3>Purchase and Sale Different</h3>
            <!-- Insert your other chart here -->
            <img src="https://mma.prnewswire.com/media/2236337/20230922110407_bw_2023_v1.jpg?p=facebook" alt="Line Chart" style="width:100%">
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
