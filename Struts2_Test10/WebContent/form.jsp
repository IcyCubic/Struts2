<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>form.jsp</title>
<s:head theme="xhtml" /> <!--預設為 xhtml --> <!--theme 可為 xhtml 或 simple 或 css_xhtml --> 
</head>
<body><br>
<OL>

        <LI><font color="blue"><b>傳統的Html標籤</b></font>
                                    <!-- can only be written as myAction!add-->
        <form action="<%=request.getContextPath()%>/myNamespace/myAction!add.action" method="post">
        		<!-- Error field for traditional HTML -->
        		<s:fielderror cssStyle="color:blue"></s:fielderror> 
			     員工姓名: 
			    <input type="text" name="empVO.ename" value="peter1吳永志" /><p>
			     員工sal: 
			    <input type="text" name="empVO.sal" /><p>
				<input type="submit" />
		</form><BR>	</LI>
		
		
		<LI><font color="blue"><b>Struts2的表單UI標籤</b></font>
		
<!-- 		            action name         package namespace. 
 can also be written as myAction!add	  Don't put method="add" here, overwrites method="post" hidden default -->
		<s:form action="myAction" namespace="/myNamespace" >
			<s:textfield name="empVO.ename" label="員工姓名"  value="peter1吳永志" />
			<s:textfield name="empVO.sal" label="員工sal" />
			<s:submit value="送出" method="add" />
		</s:form></LI>

<!-- Counter for the number of times this page was loaded -->
<%! int counter=0; %> 
<%= ++counter %>

        
</OL>
</body>
</html>