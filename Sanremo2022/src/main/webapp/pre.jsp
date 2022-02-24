<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*,entita.*"%>
<%@ page import=" java.util.Date "%>
<%@ page import=" java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>

	<%
	
		Artista art1 = new Artista();
		art1.setNome("Filippo");
		art1.setCognome("Maria Santi");
		art1.setNomeArte("Irama");
		art1.setImmagine("img/irama.jpg");
		art1.setPositivi(0);
		art1.setNegativi(0);
	
		Artista art2 = new Artista();
		art2.setNome("Luca");
		art2.setCognome("Marzano");
		art2.setNomeArte("Aka7even");
		art2.setImmagine("img/aka7seven.jpg");
		art2.setPositivi(0);
		art2.setNegativi(0);
	
		Artista art3 = new Artista();
		art3.setNome("Ana");
		art3.setCognome("Mena");
		art3.setNomeArte("Ana Mena");
		art3.setImmagine("img/anamena.jpg");
		art3.setPositivi(0);
		art3.setNegativi(0);
	
		Artista art4 = new Artista();
		art4.setNome("Michele");
		art4.setCognome("Bravi");
		art4.setNomeArte("Michele Bravi");
		art4.setImmagine("img/michelebravi.jpg");
		art4.setPositivi(0);
		art4.setNegativi(0);
	
		Artista art5 = new Artista();
		art5.setNome("Dargen");
		art5.setCognome("D'Amico");
		art5.setNomeArte("Dargen D'Amico");
		art5.setImmagine("img/dargen.jpg");
		art5.setPositivi(0);
		art5.setNegativi(0);
	
		Artista art6 = new Artista();
		art6.setNome("Elisa");
		art6.setCognome("Toffoli");
		art6.setNomeArte("Elisa");
		art6.setImmagine("img/elisa.jpg");
		art6.setPositivi(0);
		art6.setNegativi(0);
	
		Artista art7 = new Artista();
		art7.setNome("Emma");
		art7.setCognome("Marrone");
		art7.setNomeArte("Emma Marrone");
		art7.setImmagine("img/emmamarrone.jpg");
		art7.setPositivi(0);
		art7.setNegativi(0);
	
		Artista art8 = new Artista();
		art8.setNome("Fabrizio");
		art8.setCognome("Moro");
		art8.setNomeArte("Fabrizio Moro");
		art8.setImmagine("img/fabriziomoro.jpg");
		art8.setPositivi(0);
		art8.setNegativi(0);
	
		Artista art9 = new Artista();
		art9.setNome("Giusy");
		art9.setCognome("Ferreri");
		art9.setNomeArte("Giusy Ferreri");
		art9.setImmagine("img/giusy.jpg");
		art9.setPositivi(0);
		art9.setNegativi(0);
	
		Artista art10 = new Artista();
		art10.setNome("Achille");
		art10.setCognome("Lauro");
		art10.setNomeArte("Achille Lauro");
		art10.setImmagine("img/achille.jpg");
		art10.setPositivi(0);
		art10.setNegativi(0);
	
		ArrayList<Artista> cantanti = new ArrayList<Artista>();
	
		cantanti.add(art1);
		cantanti.add(art2);
		cantanti.add(art3);
		cantanti.add(art4);
		cantanti.add(art5);
		cantanti.add(art6);
		cantanti.add(art7);
		cantanti.add(art8);
		cantanti.add(art9);
		cantanti.add(art10);
	
		session.setAttribute("cantanti", cantanti);
		
		response.sendRedirect("index.jsp");
	
	%>

</body>
</html>