<%-- 
    Document   : index
    Created on : 17-abr-2018, 19:08:09
    Author     : sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Convertir de decimal a binario</h1>
        <form action="ServletBinary">
            <input name="num">
            <input type="submit" value="Convertir">
        </form>
          <%-- start web service invocation --%><hr/>
    <%
    try {
	services.FactorialWebService_Service service = new services.FactorialWebService_Service();
	services.FactorialWebService port = service.getFactorialWebServicePort();
	 // TODO initialize WS operation arguments here
	int factorial = 3;
	// TODO process result here
	int result = port.factorial(factorial);
	out.println("Resultado del factorial de 3 = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
  
    </body>
</html>
