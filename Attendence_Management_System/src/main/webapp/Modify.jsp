<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Popup Message</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
  }
  
  .popup-container {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    z-index: 9999;
    text-align: center;
  }
  
  .popup-content {
    color: #333;
  }
  
  .popup-close {
    position: absolute;
    top: 5px;
    right: 10px;
    cursor: pointer;
    font-size: 20px;
    color: #999;
  }
</style>
</head>
<body>

<div class="popup-container">
  <span class="popup-close">&times;</span>
  <h2 class="popup-content">Congratulations!</h2>
  <p class="popup-content">Your modification was successful.</p>
</div>

<script>
  document.querySelector('.popup-close').addEventListener('click', function() {
    document.querySelector('.popup-container').style.display = 'none';
  });
</script>

</body>
</html>
