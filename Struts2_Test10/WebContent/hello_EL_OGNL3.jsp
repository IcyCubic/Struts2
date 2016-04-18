<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>hello_EL_OGNL.jsp</title>
<s:head theme="xhtml" />
</head>
<body>
	<H2>Struts2的OGNL與EL取值練習</H2>
	<OL>

		<LI><b><font color="blue" size="4">請求參數測試: (parameters - 透過 request.getParameter 取值)</font></b><br>
			     <b>&lt;%=request.getParameter("empVO.ename")%> =</b> <%=request.getParameter("empVO.ename")%>                                        <br><br><br></LI>

		<LI><b><font color="blue" size="4">請求參數測試: (parameters - 透過 EL 取值)</font></b><br>
			     <b>\${param['empVO.ename']} =</b> ${param['empVO.ename']}    <br><br><br></LI>

        <LI><b><font color="blue" size="4">請求參數測試: (parameters - 透過 OGNL 取值)</font></b><br>
			     <b>&lt;s:property value="#parameters['empVO.ename']"/> =</b> <s:property value="#parameters['empVO.ename']"/>    <br><br><br></LI>


		<LI><b><font color="red" size="4">屬性測試: (ValueStack 與 attr - 透過 EL 取值)</font></b><br>
		         <b>\${empVO.ename} =</b> ${empVO.ename}                            <br> 
		         <b>\${requestScope.empVO.ename} =</b> ${requestScope.empVO.ename}  <br><br><br></LI>
		         
		<LI><b><font color="red" size="4">屬性測試: (ValueStack 與 attr - 透過 OGNL 取值)(#)</font></b><br> 
		         <b>&lt;s:property value="empVO.ename"/> =</b> <s:property value="empVO.ename"/>                            <br>
			     <b>&lt;s:property value="%{empVO.ename}"/> =</b> <s:property value="%{empVO.ename}"/>                      <br> 
			     <b>&lt;s:property value="#request.empVO.ename"/> =</b> <s:property value="#request.empVO.ename"/>          <br>
			     <b>&lt;s:property value="%{#request.empVO.ename}"/> = </b> <s:property value="%{#request.empVO.ename}"/>   <br><br><br></LI>
			     
		<LI><b> label: 執行結果1 → <s:label  label="empVO.ename" />    </b><br>
        <LI><b> label: 執行結果2 → <s:label  label="%{empVO.ename}" /> </b>
	</OL>
</body>
</html>
