<%@page import="java.util.*" %>
<html>
<body>
<h1>
Seleccione los articulos para la compra
</h1>

<form action="ListaCompra.jsp">
<input type="checkbox" name="articulos" value="Agua">Agua<br>
<input type="checkbox" name="articulos" value="Leche">Leche<br>
<input type="checkbox" name="articulos" value="Pan">Pan<br>
<input type="checkbox" name="articulos" value="Manzanas">Manzanas<br>
<input type="checkbox" name="articulos" value="Carne">Carne<br>
<input type="checkbox" name="articulos" value="Pescado">Pescado<br><hr>
<input type="submit" name="button" id="button" value="Enviar">
</form>

<%
ArrayList<String> lista=(ArrayList<String>)session.getAttribute("listaArticulos");

if(lista==null)
{
	lista =new ArrayList<String>();
	session.setAttribute("listaArticulos", lista);
}

String [] array=request.getParameterValues("articulos");
if(array!=null)
{
	for(String elemento:array)
	{
		//out.println("<li>"+elemento+"</li>");
		lista.add(elemento);
	}	
}

for(String elemento : lista)
{
	out.print("<li>"+elemento+"</li>");
}
%>

</body>
</html>