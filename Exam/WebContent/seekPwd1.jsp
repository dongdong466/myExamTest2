<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<!--  
	��������׼��֤�������룬�һ�׼��֤�����룬��д�����ҳ��
-->
<html>
<head>
<title>���߿���ϵͳ</title>
<html:base/>
<link href="CSS/style.css" rel="stylesheet">
</head>
<script language="javascript">
function checkForm(form){
	if(form.answer.value==""){
		alert("��������ʾ�����!");form.answer.focus();return false;
	}
}
</script>
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
              <td class="word_grey">&nbsp;<img src="Images/f_ico.gif" width="8" height="8"> ��ǰλ�ã��� <span class="word_darkGrey">�һ�׼��֤������ &gt;&gt;&gt;</span></td>
			  <td align="right"><img src="Images/m_ico1.gif" width="5" height="9">&nbsp;<html:link page="/index.jsp" >������ҳ</html:link>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td height="257" align="center" valign="top">
 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="84%">&nbsp;      </td>
</tr>
</table> 
<html:form action="/manage/student.do?action=seekPwd2" method="post" onsubmit="return checkForm(studentForm)">
  <table width="57%" height="69" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="20%"><img src="Images/step2.jpg" width="73" height="30"></td>
      <td width="80%" ><strong>��������ʾ����𰸣������һ��</strong></td>
    </tr>
  </table>
  <table width="57%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
    <tr align="center">
    <td width="20%" height="30" align="left" style="padding:5px;">��ʾ���⣺</td>
    <td width="80%" align="left">
      <html:hidden property="cardNo" name="seekPwd2"/>
	  <html:text property="question" size="40" name="seekPwd2" disabled="true"/> <span class="word_orange1"><strong>��ֻ����</strong></span>	  </td>
    </tr>
    <tr align="center">
    <td width="20%" height="30" align="left" style="padding:5px;">����𰸣�</td>
    <td width="80%" align="left">
      <html:text property="answer" size="40"/> <span class="word_orange1"><strong> *</strong></span>	  </td>
    </tr>	
    <tr>
      <td height="65" align="left" style="padding:5px;">&nbsp;</td>
      <td><html:submit  styleClass="btn_grey" value="��һ��"/>
        &nbsp;
        <html:reset styleClass="btn_grey" value="����"/>
		&nbsp;
		<input type="button" value="����" class="btn_grey" onClick="window.location.href='<html:rewrite page="/seekPwd.jsp"/>'"/>
		</td>
    </tr>
</table>
</html:form></td>
      </tr>
      <tr>
      </tr>
    </table>
</td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
</html>
