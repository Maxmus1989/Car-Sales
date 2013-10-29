<%--
    CSCI398 - Assignment - 4 "EJB"
    Project: EnterpriseCars-war (SearchForm.jsp)
    Student Name: Choong Teik Tan
    Student Number: 3577028
    Student Email: ctt999@uowmail.edu.au
    Web: www.choongteik-tan.info
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
        <script type="text/javascript">
            function show_confirm(){
                var r=confirm("Confirm delete car record?");
                if (r==true){return true;}
                else{return false;}
            }
        </script>
        <link type="text/css" rel="stylesheet" href="mystyles.css">
        <title>Wollongong Used Cars</title>
    </head>
    <body>
        <div id="outer">
            <div align="left" id="hdr-left"><img alt=""  src="./pictures/audi-r8.jpg">
                <img alt=""  src="./pictures/audi-r8.jpg">
            </div>
            <div id="hdr-right">
                <h1>Wollongong Used Cars</h1>
                <h2>Have we got a deal for you?</h2>
            </div>
            <div id="bodyblock">
                <a href="../EnterpriseCars-war"><input type="submit" value="Back To Main Page"></a>
                <hr><p1>Start Searching</p1><hr>
                <form method="POST" action="./Search">
                    <table class="sample">
                        <tbody>
                            <tr>
                                <td><b>Make</b></td>
                                <td><input type="text" maxlength="35" size="35" value="ANY" name="make"></td>
                            </tr>
                            <tr>
                                <td><b>Model</b></td>
                                <td><input type="text" maxlength="35" size="35" value="ANY" name="model"></td>
                            </tr>
                            <tr>
                                <td><b>Earliest Year</b></td>
                                <td><input type="text" maxlength="4" size="4" value="2000" name="year"></td>
                            </tr>
                            <tr>
                                <td><b>Body Type</b></td>
                                <td><input type="text" maxlength="35" size="35" value="ANY" name="body"></td>
                            </tr>
                            <tr>
                                <td><b>Maximum Price</b></td>
                                <td><input type="text" maxlength="8" size="8" value="20000" name="price"></td>
                            </tr>
                            <tr>
                                <td colspan="2"><center><input type="submit" value="Search for cars" name="Submit"><center></center></center></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <br><br><hr>
            </div>
        </div>
    </body>
</html>
