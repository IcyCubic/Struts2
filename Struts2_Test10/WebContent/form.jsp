<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>form.jsp</title>
<s:head theme="xhtml" /> <!--�w�]�� xhtml --> <!--theme �i�� xhtml �� simple �� css_xhtml --> 
</head>
<body><br>
<OL>

        <LI><font color="blue"><b>�ǲΪ�Html����</b></font>
                                    <!-- can only be written as myAction!add-->
        <form action="<%=request.getContextPath()%>/myNamespace/myAction!add.action" method="post">
        		<!-- Error field for traditional HTML -->
        		<s:fielderror cssStyle="color:blue"></s:fielderror> 
			     ���u�m�W: 
			    <input type="text" name="empVO.ename" value="peter1�d�ç�" /><p>
			     ���usal: 
			    <input type="text" name="empVO.sal" /><p>
				<input type="submit" />
		</form><BR>	</LI>
		
		
		<LI><font color="blue"><b>Struts2�����UI����</b></font>
		
<!-- 		            action name         package namespace. 
 can also be written as myAction!add	  Don't put method="add" here, overwrites method="post" hidden default -->
		<s:form action="myAction" namespace="/myNamespace" >
			<s:textfield name="empVO.ename" label="���u�m�W"  value="peter1�d�ç�" />
			<s:textfield name="empVO.sal" label="���usal" />
			<s:submit value="�e�X" method="add" />
		</s:form></LI>

<!-- Counter for the number of times this page was loaded -->
<%! int counter=0; %> 
<%= ++counter %>

        
</OL>
</body>
</html>