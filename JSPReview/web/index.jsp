<%-- 
    Document   : index
    Created on : 5 may. 2023, 09:46:35
    Author     : Instructor
--%>
<%@page import="model.Conexion"%> 
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

    </head>
    <body>
       
        
    <center><h1>CATEGORIAS</h1></center><br>

    <table class="table table" style="text-align: center">
        <thead>
        <th>CategoryID</th>
        <th>CategoryName</th>
        <th>Description</th>
    </thead>
    <tbody>
         <%
            Conexion cn= new Conexion(); 
            String query = "SELECT * FROM CATEGORIES";
            Statement stmt = cn.conectar().createStatement();
            ResultSet result = stmt.executeQuery(query);
            
            while(result.next()){     
        %>
        <tr>
            <td><%=result.getInt("CategoryID")%></td>
            <td><%=result.getString("CategoryName")%></td>
            <td><%=result.getString("Description")%></td>
        </tr>
        <% 
            }
        %>
    </tbody>
    
</table>

</body>
</html>
