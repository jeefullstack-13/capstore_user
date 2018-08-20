<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
   <head>
      <title>Spring Boot WebSocket</title>
      <link rel="stylesheet" th:href="@{/CSS/chatbox.css}" />
       
      <!-- https://cdnjs.com/libraries/sockjs-client -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
      <!-- https://cdnjs.com/libraries/stomp.js/ -->
      <script  src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
       
   </head>
   <body>
      <div id="chat-container">
         <div class="chat-header">
            <div class="user-container">
               <span id="username" th:utext="${username}"></span>
            </div>
            <h3 style="text-align: center;">Merchant care</h3>
         </div>
          
         <hr/>
          
         <div id="connecting">Connecting...</div>
         <ul id="messageArea">
         </ul>
         <form id="messageForm" name="messageForm">
            <div class="input-message">
               <input type="text" id="message" autocomplete="off"
                  placeholder="Type a message..."/>
               <button type="submit">Send</button>
            </div>
         </form>
      </div>
       
      <script th:src="@{/jscripts/merchantjs.js}"></script>
       
   </body>
</html>