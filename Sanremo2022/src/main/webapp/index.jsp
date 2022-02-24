<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*,entita.*"%>
<%@ page import=" java.util.Date "%>
<%@ page import=" java.text.SimpleDateFormat"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sanremo 2022</title>
<style>
header{
background-color: darkgreen;
color: white;
font-size: 50px;
text-align: center;
}

h2{
text-align: center;
} 
</style>
</head>
<body>
<header >cantanti SANREMO 2022</header>
<%

Locale locale = request.getLocale(); //istanza oggetto
String language = locale.getLanguage(); //chiamo metodo lingua
String country = locale.getCountry(); //chiamo metodo paese
out.println("Language : " + language + "<br />");
//stampa la lingua
out.println("Country : " + country + "<br />");
//stampa il paese

HashMap<String, String> lingua = new HashMap<String, String>();
			
lingua.put("italiano", "Vota ora");
lingua.put("english", "Vote now");

String chiave = "";

if(language.equals("it")) {
	chiave = "italiano";
} else {
	chiave = "english";
}

ArrayList<Artista> cantanti = (ArrayList<Artista>)session.getAttribute("cantanti");

int i=0, j=0;

%>

<% for(i=0; i<10; i++){%>

	<p><%= cantanti.get(i).getNome() %></p>
	<p><%= cantanti.get(i).getCognome() %></p>
	<p><%= cantanti.get(i).getNomeArte() %></p>
	<img width="100px" src="<%= cantanti.get(i).getImmagine() %>">
	<a href="voto.jsp?nome=<%= cantanti.get(i).getNome() %>&indice=<%=i %>"><%= lingua.get(chiave) %></a>
	<p><%= cantanti.get(i).getPositivi() %> || Voti positivi</p>
	<p><%= cantanti.get(i).getNegativi() %> || Voti negativi</p>

<% } %>

</body>