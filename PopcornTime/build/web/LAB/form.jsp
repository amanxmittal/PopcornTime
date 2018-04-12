
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<body>
<%
    String Name = request.getParameter("username");
    String Email = request.getParameter("email");
    String Password = request.getParameter("password");

    
    Statement st=null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/popcornTime","root","");
        st=con.createStatement();
        
        st.executeUpdate("insert into register (userid,email,password)values('"+Name+"','"+Email+"','"+Password+"')");
        out.println("Data Inserted Successfully!!!");
         }catch(Exception e){
        out.println(e);
        
    }
    ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in JSP</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Name</b></td>
<td><b>Email</b></td>
<td><b>Password</b></td>
</tr>
<%
try{ 
String sql ="SELECT * FROM register";

resultSet =  st.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("userid") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("password") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>


</body>