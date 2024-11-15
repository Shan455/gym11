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
            position: relative;
        }
        .topnav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #212122;
            padding: 10px 20px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            position: relative;
        }
        .topnav a {
            color: #ecf0f1;
            text-decoration: none;
            margin-left: 20px;
        }
        .topnav a:hover {
            background-color: #34495e;
            padding: 10px;
            border-radius: 5px;
        }
        .clock-container {
            position: absolute;
            right: 20px;
            top: 120%;
            background-color: #212122;
            padding: 5px 10px;
            border-radius: 5px;
            color: white;
            font-size: 18px;
            font-weight: bold;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .calendar {
            background-color: #212122;
            border-radius: 10px;
            overflow: hidden;
            width: 300px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            position: absolute;
            right: 20px;
            top: 120px;
        }
        .header {
            background-color: #212122;
            color: #fff;
            text-align: center;
            padding: 10px;
        }
        .month-selector {
            margin: 10px;
            text-align: center;
        }
        .month-selector select {
            padding: 5px;
        }
        .days {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            background-color: #4c4c4e;
            color: #fff;
        }
        .days div {
            text-align: center;
            padding: 10px;
            cursor: pointer;
            border: 1px solid #212122;
            transition: background-color 0.3s, color 0.3s;
        }
        .days div:hover {
            background-color: #323233;
        }
        .completed {
            background-color: #4caf50;
            color: #fff;
            position: relative;
        }
        .completed::after {
            content: '✔';
            position: absolute;
            top: 5px;
            right: 5px;
            color: #fff;
            font-size: 16px;
        }
        .crossed-out {
            background-color: #f44336;
            color: #fff;
            position: relative;
        }
        .crossed-out::after {
            content: '✘';
            position: absolute;
            top: 5px;
            right: 5px;
            color: #fff;
            font-size: 16px;
        }
        .weekdays {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            background-color: #212122;
            color: #fff;
            font-weight: bold;
        }
        .weekdays div {
            text-align: center;
            padding: 10px;
        }
        .todo-container {
            position: fixed;
            left: 50%;
            transform: translateX(-50%);
            bottom: 20px;
            background-color: #ffffff;
            color: #000;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 300px;
            z-index: 10;
        }
        .todo-container h2 {
            margin-top: 0;
        }
        .todo-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .todo-list li {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 5px 0;
        }
        .todo-list li button {
            background: none;
            border: none;
            color: #f44336;
            cursor: pointer;
            font-size: 18px;
        }
        .todo-list li button:hover {
            color: #d32f2f;
        }
        .todo-list input[type="text"] {
            width: 70%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .todo-list button.add-btn {
            background-color: #4caf50;
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        .todo-list button.add-btn:hover {
            background-color: #45a049;
        }
        .notification {
            display: none;
            position: fixed;
            bottom: 100px;
            left: 50%;
            transform: translateX(-50%);
            background-color: #f44336;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        .counter-container {
            background-color: #3adde9;
            border: 1px solid #1d1c1c;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 180px;
            text-align: center;
        }
        .counter-heading {
            font-size: 24px;
            margin-bottom: 10px;
        }
        .counter-content {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 10px;
        }
        .counter-value {
            font-size: 36px;
            margin-left: 20px;
        }
        .counter-container img {
            width: 50px;
            height: 50px;
        }
        .dots-container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
        }
        .dot {
            width: 15px;
            height: 15px;
            background-color: #333;
            border-radius: 50%;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <img src="https://pbs.twimg.com/media/GTA3yrPWIAAKluC?format=png&name=small" alt="Logo">
        <a href="#">Dashboard</a>
        <button class="dropdown-btn">Member</button>
        <div class="dropdown-container">
            <a href="Member.jsp">New Member</a>
            <a href="MemberList.jsp">List of Members</a>
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
                <a href="Home.jsp">Home</a>
                <a href="login.jsp">Logout</a>
                <a href="#">Hi, Arpit</a>
            </div>
            <div class="clock-container">
                <div id="clock">00:00:00</div>
            </div>
        </div>

        <div class="calendar">
            <div class="header">
                <h2>Calendar</h2>
            </div>
            <div class="month-selector">
                <select id="month-select">
                    <option value="0">January</option>
                    <option value="1">February</option>
                    <option value="2">March</option>
                    <option value="3">April</option>
                    <option value="4">May</option>
                    <option value="5">June</option>
                    <option value="6">July</option>
                    <option value="7">August</option>
                    <option value="8">September</option>
                    <option value="9">October</option>
                    <option value="10">November</option>
                    <option value="11">December</option>
                </select>
            </div>
            <div class="weekdays">
                <div>Sun</div>
                <div>Mon</div>
                <div>Tue</div>
                <div>Wed</div>
                <div>Thu</div>
                <div>Fri</div>
                <div>Sat</div>
            </div>
            <div class="days" id="days-container"></div>
        </div>

        <div class="todo-container">
            <h2>To-Do List</h2>
            <ul class="todo-list" id="todo-list">
                <!-- To-Do items will be added here dynamically -->
            </ul>
            <input type="text" id="todo-input" placeholder="Add new task">
            <button class="add-btn" onclick="addTodo()">Add</button>
        </div>

        <div class="notification" id="notification">Task already exists!</div>

        <div class="counter-container" id="counter-container">
            <div class="counter-heading">Total Members</div>
            <div class="counter-content">
                <img src="https://pbs.twimg.com/media/GV1w_5MWEAEzPNG?format=png&name=small" alt="Counter Icon">
                <div class="counter-value" id="counter-value">0</div>
            </div>
            <div class="dots-container">
                <div class="dot" onclick="incrementCounter()"></div>
                <div class="dot" onclick="decrementCounter()"></div>
                <div class="dot" onclick="resetCounter()"></div>
            </div>
        </div>
    </div>

    <script>
        function updateClock() {
            const now = new Date();
            const hours = now.getHours().toString().padStart(2, '0');
            const minutes = now.getMinutes().toString().padStart(2, '0');
            const seconds = now.getSeconds().toString().padStart(2, '0');
            document.getElementById('clock').textContent = `${hours}:${minutes}:${seconds}`;
        }

        setInterval(updateClock, 1000);
        updateClock();

        // Dropdown Functionality
        var dropdowns = document.getElementsByClassName("dropdown-btn");
        for (let i = 0; i < dropdowns.length; i++) {
            dropdowns[i].addEventListener("click", function() {
                this.classList.toggle("active");
                var dropdownContent = this.nextElementSibling;
                dropdownContent.style.display = dropdownContent.style.display === "block" ? "none" : "block";
            });
        }

        // Calendar Functionality
        function generateCalendar(month) {
            const daysContainer = document.getElementById('days-container');
            daysContainer.innerHTML = '';

            const date = new Date();
            date.setMonth(month);
            date.setDate(1);
            const firstDayIndex = date.getDay();
            const lastDay = new Date(date.getFullYear(), month + 1, 0).getDate();

            for (let i = 0; i < firstDayIndex; i++) {
                const emptyDiv = document.createElement('div');
                daysContainer.appendChild(emptyDiv);
            }

            for (let i = 1; i <= lastDay; i++) {
                const dayDiv = document.createElement('div');
                dayDiv.textContent = i;
                dayDiv.addEventListener('click', function() {
                    this.classList.toggle('completed');
                });
                daysContainer.appendChild(dayDiv);
            }
        }

        document.getElementById('month-select').addEventListener('change', function() {
            generateCalendar(parseInt(this.value));
        });

        generateCalendar(new Date().getMonth());

        // To-Do List Functionality
        let todoList = [];

        function addTodo() {
            const todoInput = document.getElementById('todo-input');
            const todoText = todoInput.value.trim();

            if (todoText === '' || todoList.includes(todoText)) {
                document.getElementById('notification').style.display = 'block';
                setTimeout(() => {
                    document.getElementById('notification').style.display = 'none';
                }, 2000);
                return;
            }

            todoList.push(todoText);
            const li = document.createElement('li');
            li.textContent = todoText;

            const removeBtn = document.createElement('button');
            removeBtn.innerHTML = '&times;';
            removeBtn.onclick = function() {
                const index = todoList.indexOf(todoText);
                if (index !== -1) {
                    todoList.splice(index, 1);
                    li.remove();
                }
            };

            li.appendChild(removeBtn);
            document.getElementById('todo-list').appendChild(li);
            todoInput.value = '';
        }

        // Counter Functionality
        let counterValue = 0;

        function incrementCounter() {
            counterValue++;
            document.getElementById('counter-value').textContent = counterValue;
        }

        function decrementCounter() {
            if (counterValue > 0) {
                counterValue--;
                document.getElementById('counter-value').textContent = counterValue;
            }
        }

        function resetCounter() {
            counterValue = 0;
            document.getElementById('counter-value').textContent = counterValue;
        }
    </script>
</body>
</html>
