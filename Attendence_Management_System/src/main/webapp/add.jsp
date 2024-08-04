<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Creative Popup Message</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f0f0f0;
  }

  .popup {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
  }

  .popup h2 {
    color: #ff6f61;
    margin-top: 0;
  }

  .popup p {
    margin-bottom: 20px;
  }

  .popup a.button {
    padding: 10px 20px;
    background-color: #ff6f61;
    border: none;
    color: #fff;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    text-decoration: none; /* Remove underline from the link */
  }

  .popup a.button:hover {
    background-color: #e05247;
  }
</style>
</head>
<body>

<div class="popup">
  <h2>Added Sucessfully...!!.</h2>
  
  <a href="http://localhost:9090/Attendence_Management_System/Home.jsp" class="button">Close</a>
</div>

</body>
</html>
