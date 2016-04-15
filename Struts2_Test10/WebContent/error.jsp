<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Simple - error.jsp</title>
	<style>
		.errimg{
		 	display: block;
		    margin-left: auto;
		    margin-right: auto
		}
		P.blocktext {			
		    margin-left: auto;
		    margin-right: auto;		    
		}
		.textbox{			
			margin-left: auto;
		    margin-right: auto;
		    text-align:center;
		}
	</style>
</head>
<body bgcolor="Aquamarine ">
    
    <img class="errimg" src="<%=request.getContextPath() %>/images/error-500.jpg"><hr color="black">
    
    <div class="textbox">
    	<P class="blocktext" style="width:30px;">Exception:<br></P>
    	<P class="blocktext" style="width:270px;"><s:property value="exception"/></P>
    </div>
    

    <h3>Stack trace:</h3>
    <pre>
        <s:property value="exceptionStack"/>
    </pre>
</body>
</html>