<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" import="java.util.*" import="java.text.*" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<!--  
	������½�ɹ���ʾ����ҳ�棬�������߿��ԣ��ɼ���ѯ����Ϣ�޸ģ�ע����½�Ĵ���
-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<html:base />
<!-- 
	  ͨ������£��������ӵ�ǰ�ĵ��� URL ����ȡ��Ӧ��Ԫ������д��� URL �еĿհס�
 	  ʹ�� <base> ��ǩ���Ըı���һ�㡣�������󽫲���ʹ�õ�ǰ�ĵ��� URL����ʹ��ָ���Ļ��� URL ���������е���� URL��
 	  ͨ������£��������ӵ�ǰ�ĵ��� URL ����ȡ��Ӧ��Ԫ������д��� URL �еĿհס� 
-->
<title>���߿���ϵͳ</title>
<link href="CSS/style.css" rel="stylesheet">
</head>
<body >
<table width="830" height="670" border="0" align="center" background="Images/background3.jpg">
	<tr><td>
	<br><br><br><br>
	<table width="550"  border="0" align="center" width="100%">
	<tr>&nbsp;</tr>
	<tr>&nbsp;</tr>
	<tr>&nbsp;</tr>
	<tr>&nbsp;</tr>
	<tr>&nbsp;</tr>
		<tr>
			<td width="8%"></td>		
			<td width="41%"><a href="examRule.jsp" ><img src="Images/1.png" style="border:0"></img></a></td>
			<td width="41%"><a href="manage/stuResult.do?action=stuResultQueryS&ID=${student}&page=1" ><img src="Images/2.png" style="border:0"></img></a></td>
		
		</tr>
		<tr>
			<td height="30"><td>
		</tr>
		<tr>
			<td></td>		
			<td><a href="manage/student.do?action=modifyQuery&ID=${student}" ><img src="Images/3.png" style="border:0"></img></a></td>
			<td><a href="logout.jsp" ><img src="Images/4.png" style="border:0"></img></a></td>
				
		</tr>
	</table>
	<table width="420"  border="0" align="center" width="100%">
	<tr>&nbsp;</tr>
	<tr>&nbsp;</tr>
	<tr>&nbsp;</tr>
		<tr>
			<td>
				<font size="3" color="#0000FF"><strong>
					��½�ɹ�,��ӭ��,��¼ʱ��Ϊ��<%=(new java.util.Date()).toLocaleString()%>
				</strong></font>
			</td>			
		</tr>
	</table>
	</td></tr>
</table>
</body>
</html>
