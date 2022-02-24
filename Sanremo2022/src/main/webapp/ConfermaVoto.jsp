<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*,entita.*"%>
<%@ page import=" java.util.Date "%>
<%@ page import=" java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<%
		
			ArrayList<Artista> cantanti = (ArrayList<Artista>)session.getAttribute("cantanti");
			int i = Integer.valueOf(request.getParameter("indice")).intValue();
			
			String voto = request.getParameter("voto");
			
					
			if(voto.equals("positivo")){
				int tot = cantanti.get(i).getPositivi() + 1;
				cantanti.get(i).setPositivi(tot);
			}
			if(voto.equals("negativo")){
				int tot = cantanti.get(i).getNegativi() + 1;
				cantanti.get(i).setNegativi(tot);
			}
			
			response.sendRedirect("index.jsp");
		
		%>
	</head>
	<body>
	
		
	
	</body>
</html>