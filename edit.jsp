<%-- 
    Document   : newjsp
    Created on : Jul 28, 2011, 11:44:14 AM
    Author     : vinit
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.IOException"%>
<%@page import="java.awt.Image"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.Graphics2D"%>
<%@page import="java.io.File"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
    </head>
    <body style="background-color:AliceBlue;">
        
        
        <%
// Open a JPEG file, load into a BufferedImage.
BufferedImage img = null;
        try
        {
         img = ImageIO.read(new File("C:\\Users\\Nilesh\\Documents\\NetBeansProjects\\xtremum\\web\\a.jpg"));
         out.println("image sucess");
}catch(Exception e){
out.println(e);
}
// Obtain the Graphics2D context associated with the BufferedImage.
Graphics2D g = img.createGraphics();

// Draw on the BufferedImage via the graphics context.
int x = 10;
int y = 10;
int width = 10;
int height = 10;
g.drawOval(x, y, width, height);
g.drawString("Sagar",100,100);
g.drawLine((int)Math.random()*400,(int)Math.random()*400,(int)Math.random()*400,(int)Math.random()*400);

response.setContentType("image/jpg");
OutputStream os = response.getOutputStream();
ImageIO.write(img, "jpg", new File("C:\\Users\\Nilesh\\Documents\\NetBeansProjects\\xtremum\\web\\a.jpg"));
ImageIO.write(img, "jpg", os);
os.close();

// Clean up -- dispose the graphics context that was created.
//g.dispose();%>

<form action="home.jsp" >
    <input type ="submit" value="save">

</form>
    </body>
</html>
