<%-- 
    Document   : upload
    Created on : Jul 28, 2011, 4:14:08 PM
    Author     : Nilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body style="background-color:AliceBlue;">
	<h1 align="center"><font size="10" face="georgia" color="DarkSlateBlue">IMAGE SHARING AND EDITING</font></h1>
    <form  action="upload.jsp"  method="post"  enctype="multipart/form-data">
    Select File <input type="file" name="file1">
    <p>
    <p>
    <input type=submit value="Upload" >
    </form>
    <a href ="edit.jsp"><img alt="" src ="a.jpg"></a>
    </body>
</html>