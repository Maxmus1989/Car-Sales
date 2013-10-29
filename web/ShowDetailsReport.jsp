<%--
    CSCI398 - Assignment - 4 "EJB"
    Project: EnterpriseCars-war (ShowDetailsReport.jsp)
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
        <link type="text/css" rel="stylesheet" href="mystyles.css">
        <title>Wollongong Used Cars</title>
    </head>
    <body>
        <div id="outer">
            <div align="left" id="hdr-left">
                <img src="./pictures/audi-r8.jpg">
            </div>
            <div id="hdr-right">
                <h1>Wollongong Used Cars</h1>
                <h2>Have we got a deal for you?</h2>
            </div>
            <div id="bodyblock">
                <a href="../EnterpriseCars-war"><input type="submit" value="Back To Main Page"></a>
                <hr><p1>Vehicle details</p1><hr>
                <center><h1><c:out value="${requestScope.carDetails.regnum}"/></h1><br>
                    <img src="./ImageViewServlet?ident=<c:out value="${requestScope.carDetails.carid}"/>">
                    <h1>$<c:out value="${requestScope.carDetails.price}"/></h1></center>
                <fieldset>
                    <legend>Details</legend>
                    <p1>Registration number</p1>
                    <br>
                    <li><c:out value="${requestScope.carDetails.regnum}"/>
                    <br>
                    <p1>Colour</p1>
                    <br>
                    <li><c:out value="${requestScope.carDetails.colour}"/>
                    <br>
                    <p1>Make</p1>
                    <br>
                    <li><c:out value="${requestScope.carDetails.make}"/>
                    <br>
                    <p1>Model</p1>
                    <br>
                    <li><c:out value="${requestScope.carDetails.model}"/>
                    <br>
                    <p1>Year</p1>
                    <br>
                    <li><c:out value="${requestScope.carDetails.myear}"/>
                    <br>
                    <p1>KM</p1>
                    <br>
                    <li><c:out value="${requestScope.carDetails.km}"/>
                    <br>
                    <p1>Transmission</p1>
                    <br>
                    <li><c:out value="${requestScope.carDetails.transmission}"/>
                    <br>
                    <p1>Engine</p1>
                    <br>
                    <li><c:out value="${requestScope.carDetails.engine}"/>
                    <br>
                    <p1>BodyType</p1>
                    <br>
                    <li><c:out value="${requestScope.carDetails.bodytype}"/>
                </fieldset>
                <fieldset>
                    <legend>Features</legend>
                    <c:out value="${requestScope.carDetails.features}"/>
                </fieldset>
                <br><br><hr>
            </div>
        </div>
    </body>
</html>
