<% if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) { %> 
<h1>Welcome <b><%=session.getAttribute("userid")%></b> </h1><a href='logout.jsp'>Log out</a>
<style>
   .fig {
    text-align: center; /* Выравнивание по центру */ 
   }
  </style>
  <p class="fig"><img src="https://srisovki.com/wp-content/uploads/2018/12/y45y4t.jpg" 
   width="800" alt="Cat"></p>

<%} else { %> 
You are not logged in<br/> <a href="index.jsp">Please Login</a> 

<% } %>
