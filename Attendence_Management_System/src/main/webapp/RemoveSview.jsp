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
    background-color: #f0f0f0;
  }
  
  .popup {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
  }
  
  .popup h2 {
    color: #4CAF50;
    margin-top: 0;
  }
  
  .popup p {
    margin-bottom: 20px;
  }
  
  .btn-close {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
  }
  
  .btn-close:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
<div class="popup">
  <h2>Removed Successfully...!!!</h2>
  <p>Your item has been successfully removed.</p>
  <button class="btn-close" onclick="closePopup()">Close</button>
</div>

<script>
  function closePopup() {
    var popup = document.querySelector('.popup');
    popup.style.display = 'none';
  }
</script>
</body>
</html>
