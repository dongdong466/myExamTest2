<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!--  
	����ע��ɹ����ص���½ҳ��
-->
<html>
<head>
<title>�����ɹ�!</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<body>
<script language="javascript">
	alert("<%=request.getAttribute("ret")%>");
	window.location.href="../index.jsp";
</script>		
</body>
</html>