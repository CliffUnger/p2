<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
    <title>Aggiungi prodotto</title>
</head>
<body>
    <%@ include file="../fragments/header.jsp" %>
    <%@ include file="../fragments/menu.jsp" %>
    
    <div id="main" class="clear">
        
        <h2>AGGIUNGI PRODOTTO</h2>

        <form action="../catalogo" method="post" id="myform">
            <input type="hidden" name="action" value="<c:out value='${param.action}' />">
            <input type="hidden" name="page" value="<c:out value='${param.page}' />"><br><br>
            <div class="tableRow">
                <p>Nome:</p>
                <p><input type="text" name="nome" value="<c:out value='${param.nome}' />" required></p>
            </div>
            <div class="tableRow">
                <p>Descrizione:</p>
                <p><input type="text" name="descrizione" value="<c:out value='${param.descrizione}' />" required></p>
            </div>
            <div class="tableRow">
                <p>Iva:</p>
                <p><input type="text" name="iva" value="<c:out value='${param.iva}' />" required></p>
            </div>
            <div class="tableRow">
                <p>Prezzo:</p>
                <p><input type="text" name="prezzo" value="<c:out value='${param.prezzo}' />" required></p>
            </div>        
            <div class="tableRow">
                <p>Data:</p>
                <p><input type="text" name="dataUscita" value="<c:out value='${param.dataUscita}' />" required></p>
            </div>
            <div class="tableRow">
                <p>Quantità:</p>
                <p><input type="number" name="quantità" value="<c:out value='${param.quantità}' />" required></p>
            </div>
            <div class="tableRow">
                <p>Immagine:</p>
                <p><input type="text" name="img" value="<c:out value='${param.img}' />" required></p>
            </div>
            <div class="tableRow">
                <p>Piattaforma:</p>
                <p><input type="text" name="piattaforma" value="<c:out value='${param.piattaforma}' />" required></p>
            </div>
            <div class="tableRow">
                <p>Genere:</p>
                <p><input type="text" name="genere" value="<c:out value='${param.genere}' />" required></p>
            </div>
            <div class="tableRow">    
                <p>Descrizione dettagliata:</p>
                <p><input type="text" name="descDett" value="<c:out value='${param.descDett}' />"></p>
            </div>
            <div class="tableRow">
                <p></p>
                <p><input type="submit" value="aggiungi"></p>
            </div>
        </form>
        
    </div>

    <%@ include file="../fragments/footer.jsp" %>
</body>
</html>

