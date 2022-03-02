<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*, java.util.*,entita.*"%>
<%@ page import=" java.util.Date "%>
<%@ page import=" java.text.SimpleDateFormat"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
		<button type="button" class="btn btn-success"><a href="ConfermaVoto.jsp?voto=positivo&indice=<%=i %>">Positivo</a></button>
		<button type="button" class="btn btn-danger"><a href="ConfermaVoto.jsp?voto=negativo&indice=<%=i %>">Negativo</a></button>
	
	</body>
</html>