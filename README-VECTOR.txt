README

**********IT IS A NETBEANS PROJECT USING APACHE TOMCAT 6.0.26 SERVER**********

FILE DESCRIPTION

1. home.jsp
	It is the home page of our project. it shows the image available for the annotation present initially on the server. if no image is there you need to upload or you can also upload a different image all together. clicking on the image calls "edit.jsp" which allows you to edit the image.

2. edit.jsp
	This page when called creates an instance of the image for the user to edit and also tells if second user is present. if you are the first user then it displays "You are the only user" esle it displays "Other user are accessing this file". "Edit & Save" button edits call "out.jsp"

3. out.jsp
	This file dynamically makes a line,circle and writes text "VECTOR" onto the image at random coordinate. This is done so that each user makes random updation. This Updation is done on the instance file created by the edit.jsp.
clicking on the home leads you to the home page.

4. sem.txt
	This file has the flag value.initially the flag=0 which indicates that no user is present. 1 says that first user is inside. "edit.jsp" check this file to tell the user about the file accesed by his other user.

5.update.jsp
	this file udates the image from the home page.

Instruction

1. Please deploy netbean for running the project.
2. we have not handled the BACK button of the browser so please dont click that.
3. please rebuild the project verytime to start fresh if you encounter anyproblem to reinitiate everyfile.
