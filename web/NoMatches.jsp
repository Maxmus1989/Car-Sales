<%--
    CSCI398 - Assignment - 4 "EJB"
    Project: EnterpriseCars-war (NoMatches.jsp)
    Student Name: Choong Teik Tan
    Student Number: 3577028
    Student Email: ctt999@uowmail.edu.au
    Web: www.choongteik-tan.info
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%--<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>--%>
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
            <div align="left" id="hdr-left">
                <img alt=""  src="./pictures/audi-r8.jpg">
            </div>
            <div id="hdr-right">
                <h1>Wollongong Used Cars</h1>
                <h2>Have we got a deal for you?</h2>
            </div>
            <div id="bodyblock">
                <a href="../EnterpriseCars-war"><input value="Back To Main Page" type="submit"></a>
                <hr><p1>Search results</p1><hr>
                <table class="sample">
                    <tbody>
                        <tr>
                            <th>Identifier</th>
                            <th>Make</th>
                            <th>Model</th>
                            <th>Year</th>
                            <th>Odometer</th>
                            <th>$ Price</th>
                        </tr>
                       <tr>
                           <td colspan="6">
                               <center>Sorry No Related Data Found.</center>
                           </td>
                       </tr>
                    </tbody>
                </table>
                <br>
                <span style="color: red;">*Line highlighted in red indicate on special price for a limited time.</span>
                <br><br><hr>
            </div>
        </div>
    </body>
</html>
