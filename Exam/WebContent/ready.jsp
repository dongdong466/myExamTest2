<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<!--  
	����׼������ҳ��
-->
<%
	if (session.getAttribute("student") == null) {
		response.sendRedirect("../index.jsp");
	}
%>
<html>
<head>
<title>���߿���ϵͳ</title>
<html:base />
<link href="CSS/style.css" rel="stylesheet">
</head>
<body>

<table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="131" background="Images/top_bg.jpg">&nbsp;</td>
  </tr>
</table>
<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="778" height="480"  border="0" cellpadding="0" cellspacing="0" align="center" background="Images/background1.jpg">
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="76%" class="word_grey">&nbsp;<img src="Images/f_ico.gif" width="8" height="8"> ��ǰλ�ã��� <span class="word_darkGrey">���߿��� �� ׼������ &gt;&gt;&gt;</span></td>
			  <td width="24%" align="right"><img src="Images/m_ico1.gif" width="5" height="9">
			    <html:link page="/default.jsp" >������ҳ</html:link>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
 <table width="100%" height="265"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="93" colspan="3" align="center" class="word_orange1">&nbsp;</td>
</tr>
  <tr>
    <td width="12%">&nbsp;</td>
    <td width="77%" align="center" valign="top"><strong>���׼��������<br><br>������������ʼ���ԡ���ť��ϵͳ��������¼���ο��Բ��Ǽǿ��Գɼ���</strong></td>
    <td width="11%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center" valign="top"><html:button property="button" styleClass="btn_grey" value="��ʼ����" onclick="window.opener=null;window.close();window.open('/manage/startExam.do?action=startExam','','width=786,height=768,scrollbars=1');"/>
	<html:button property="button" styleClass="btn_grey" value="����" onclick="history.back(-1)"/></td>
    <td>&nbsp;</td>
  </tr>
</table> 
        </td>
      </tr>
    </table>
</td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
</html>
