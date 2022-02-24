<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*, java.util.*,entita.*"%>
<%@ page import=" java.util.Date "%>
<%@ page import=" java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Vota Ora</title>
		
		<%
		
			ArrayList<Artista> cantanti = (ArrayList<Artista>)session.getAttribute("cantanti");
			int i = Integer.valueOf(request.getParameter("indice")).intValue();
		
		%>
		
	</head>
	<body>
	
		<p><%= cantanti.get(i).getNome() %></p>
		<p><%= cantanti.get(i).getCognome() %></p>
		<p><%= cantanti.get(i).getNomeArte() %></p>
		<img width="100px" src="<%= cantanti.get(i).getImmagine() %>">
		<a href="ConfermaVoto.jsp?voto=positivo&indice=<%=i %>">Positivo</a>
		<a href="ConfermaVoto.jsp?voto=negativo&indice=<%=i %>">Negativo</a>
	
	</body>
</html>