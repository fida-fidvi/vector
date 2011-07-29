<%-- 
    Document   : tryupload
    Created on : Mar 17, 2011, 12:17:29 AM
    Author     : pankaj
--%>

<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.DiskFileUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*,java.io.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:AliceBlue;">

   
<%
   // JSP to handle  uploading


   // Create a new file upload handler
   DiskFileUpload upload = new DiskFileUpload();

   // parse request
   List items = upload.parseRequest(request);

   // get uploaded file
   FileItem  file = (FileItem) items.get(0);
   String source = file.getName();

   // get taget filename string reverse
   //FileItem  name = (FileItem) items.get(1);
   String  target = "a.jpg";

   File outfile = new File("C:\\Users\\Nilesh\\Documents\\NetBeansProjects\\xtremum\\web\\" + target);

   file.write(outfile);

   out.println("Upload Is Successful!");   
   
%>
<form action="home.jsp" method="post">
    <input type ="submit" value ="BACK ">
        </form>

    </body>
</html>
