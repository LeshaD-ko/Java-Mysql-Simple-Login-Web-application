<%@ page import="java.sql.*"%>
<% 
	String userName = request.getParameter("userName"); 
	String password = request.getParameter("password"); 
	String firstName = request.getParameter("firstName"); 
	String lastName = request.getParameter("lastName"); 
	String email = request.getParameter("email"); 
 	
	String dbURL = System.getProperty("RDS_DB_URL");
	if (dbURL == null) {
  		dbURL = "localhost:3306";
	}

	Class.forName ( "com.mysql.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://" + dbURL + "/sample", "root", "Qwerty12345");
	Statement st = con.createStatement(); 
	int i = st.executeUpdate("insert into USER(first_name, last_name, email, username, password, regdate) values ('" + firstName + "','" + lastName + "','" + email + "','" + userName + "','" + password + "', CURDATE())");
	if (i > 0) { 
				response.sendRedirect("welcome.jsp"); 
			} 
	else { 
		response.sendRedirect("index.jsp"); 
		} 
%>
