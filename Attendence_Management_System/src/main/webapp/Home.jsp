<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('book.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 70vh;
        }
        .content {
            text-align: center;
            color: #fff;
        }
        h1 {
            font-size: 3em;
            margin-bottom: 20px;
        }
        p {
            font-size: 1.2em;
            margin-bottom: 40px;
        }
        a {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
        }
        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<br>
<br>

        <div class="content">
            <form action="AttendenceServlet">
                <h1>Dashboard</h1>
                
               <input type="submit" value="Student List" name="action"/>
               <input type="submit" value="Teacher List" name="action"/>
               <input type="submit" value="Department List" name="action"/>
               
               
            </div>
           




    </div>
    <br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
   <a href="http://localhost:9090/Attendence_Management_System/login.html" class="close-btn">logout</a>
</body>
</html>
