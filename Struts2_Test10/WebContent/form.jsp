<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>form.jsp</title>
<s:head theme="xhtml" /> <!--�w�]�� xhtml --> <!--theme �i�� xhtml �� simple �� css_xhtml -->
<sx:head debug="false" cache="false" parseContent="false"	compressed="false" extraLocales="zh-tw,en-us,ja,ko" /> 
</head>
<body onLoad="setValue()"><br>
<OL>

<!--         <LI><font color="blue"><b>�ǲΪ�Html����</b></font> -->
<!--                                     can only be written as myAction!add -->
<%--         <form action="<%=request.getContextPath()%>/myNamespace/myAction!add.action" method="post"> --%>
<!--         		Error field for traditional HTML -->
<%--         		<s:fielderror cssStyle="color:blue"></s:fielderror>  --%>
<!-- 			     ���u�m�W:  -->
<!-- 			    <input type="text" name="empVO.ename" value="peter1�d�ç�" /><p> -->
<!-- 			     ���usal:  -->
<!-- 			    <input type="text" name="empVO.sal" /><p> -->
<!-- 				<input type="submit" /> -->
<!-- 		</form><BR>	</LI> -->
		
		
		<LI><font color="blue"><b>Struts2�����UI����</b></font>
		
<!-- 		            action name         package namespace. 
 can also be written as myAction!add	  Don't put method="add" here, overwrites method="post" hidden default -->
		<s:form action="myAction" namespace="/myNamespace" >
			<s:textfield name="empVO.ename" label="���u�m�W"  value="peter1�d�ç�" />
			<s:textfield name="empVO.sal" label="���usal" />
			<sx:datetimepicker type="date"  name="empVO.hiredate"  label="hiredate"  displayFormat="yyyy-MM-dd "   id="picker1"  language="zh-tw"  required="true"   cssStyle="background:cyan ;  font-size:13.5px"/>
			<sx:datetimepicker type="time"  name="empVO.hiretime"  label="hiretime"  displayFormat="HH:mm"   id="picker2"  language="zh-tw"  required="true"   cssStyle="background:cyan ;  font-size:13.5px"/>
			<s:submit value="�e�X" method="add" />
		</s:form></LI>

<!-- Counter for the number of times this page was loaded -->
<%! int counter=0; %> 
<%= ++counter %>

        
</OL>
	<script type="text/javascript">
		function setValue() {
			document.getElementById('picker1').children[1].setAttribute("readOnly","true");
			document.getElementById('picker2').children[1].setAttribute("readOnly","true");
			var picker1 = dojo.widget.byId("picker1");
			var picker2 = dojo.widget.byId("picker2");
			var today = new Date();
// 		    var h = (today.getHours()<10?'0':'') + today.getHours();
// 		    var m = (today.getMinutes()<10?'0':'') + today.getMinutes();
// 		    var time = h + ':' + m;
		    
			if (picker1.getValue() == "")
				picker1.setValue(today); //Date value  //picker.setValue('2007-01-01');  //string value
			if (picker2.getValue() == "")
				picker2.setValue(today); 
		}
	</script>
</body>
</html>