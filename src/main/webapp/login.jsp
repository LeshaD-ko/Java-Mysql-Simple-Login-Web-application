<%@ page import="java.sql.*"%>

<%
 String userName = request.getParameter("userName"); 
 
 String password = request.getParameter("password"); 
 
 String dbURL = System.getProperty("RDS_DB_URL");

if (dbURL == null) {
  dbURL = "jdbc:mysql://localhost:3306/sample";
}

System.out.println("SO:");
System.out.println(dbURL);

 Class.forName ("com.mysql.jdbc.Driver"); 
 Connection con = DriverManager.getConnection("jdbc:mysql://" + dbURL + ":3306/sample", "root", "Qwerty12345");
 Statement st = con.createStatement(); 
 ResultSet rs; 
 rs = st.executeQuery("select * from USER where username='" + userName + "' and password='" + password + "'");
	if (rs.next()) 
		{ 
			session.setAttribute("userid", userName); 
			response.sendRedirect("success.jsp"); 
		} 
	else 
		{ 
			out.println("Invalid password <a href='index.jsp'>try again</a> "); 
%> 

<style>
   .fig {
    text-align: center; /* Выравнивание по центру */ 
   }
  </style>
  <p class="fig"><img src="https://rozmalovkin.com.ua/wp-content/uploads/image_7141.jpg"
   width="400" alt="Cat"></p>

<%
} 
%>
