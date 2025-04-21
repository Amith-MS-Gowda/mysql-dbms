<%@ page import="java.sql.*" %>
<%
  String usn = request.getParameter("usn");
  String name = request.getParameter("name");
  int sem = Integer.parseInt(request.getParameter("sem"));

  Connection con = null;
  Statement stmt = null;

  try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amsg", "root", "password");
    stmt = con.createStatement();

    stmt.executeUpdate("INSERT INTO amsg (USN, Name, Sem) VALUES ('" + usn + "', '" + name + "', " + sem + ")");
    out.println("<h3>Record inserted successfully!</h3>");

    ResultSet rs = stmt.executeQuery("SELECT * FROM amsg");
%>
    <h3>All Records:</h3>
    <table border="1">
      <tr><th>USN</th><th>Name</th><th>Sem</th></tr>
<%
    while (rs.next()) {
%>
      <tr>
        <td><%= rs.getString("USN") %></td>
        <td><%= rs.getString("Name") %></td>
        <td><%= rs.getInt("Sem") %></td>
      </tr>
<%
    }
  } catch (Exception e) {
    out.println("<h3 style='color:red;'>❌ Error: " + e.getMessage() + "</h3>");
  } finally {
    if (stmt != null) stmt.close();
    if (con != null) con.close();
  }
%>
