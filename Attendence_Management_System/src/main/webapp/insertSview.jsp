<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Popup Message</title>
<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-color: #f0f0f0;
    }
    
    .popup {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        text-align: center;
    }
    
    .popup h2 {
        color: #4CAF50;
        margin-top: 0;
    }
    
    .close-btn {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
</head>
<body>
<div class="popup">
    <h2>Added Successfully...!!</h2>
  
    <a href="http://localhost:9090/Attendence_Management_System/Home.jsp" class="close-btn">Close</a>
</div>

<script>
    function closePopup() {
        document.querySelector('.popup').style.display = 'none';
    }
</script>
</body>
</html>
