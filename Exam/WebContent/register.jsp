<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<!--  
	����ע��ҳ��
-->
<html>
<head>
<title>���߿���ϵͳ</title>
<link href="CSS/style.css" rel="stylesheet">
<script language="javascript" src="JS/ContentLoader.js">
</script>
</head>
<script language="javascript">
function checkForm(form){
	if(form.cardNo.value==""){
		alert("�����뿼��ѧ��!");form.cardNo.focus();return false;
	}
	if(form.name.value==""){
		alert("�����뿼������!");form.name.focus();return false;
	}
	if(form.profession.value==""){
		alert("�����뿼��רҵ!");form.profession.focus();return false;
	}
	if(form.password1.value==""){
		alert("�������¼����!");form.password1.focus();return false;
	}
	if(form.password1.value.length<6 || form.password1.value.length>20){
		alert("����������벻�Ϸ�������������6λ������С�ڵ�20λ!");form.password1.focus();return false;
	}
	if(form.password2.value==""){
		alert("��ȷ�ϵ�¼����!");form.password2.focus();return false;
	}		
	if(form.password1.value!=form.password2.value){
		alert("����������ĵ�¼���벻һ�£�����������!");form.password1.focus();return false;
	}
	if(form.question.value==""){
		alert("��������ʾ����!");form.question.focus();return false;
	}
	if(form.answer.value==""){
		alert("�����������!");form.answer.focus();return false;
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
              <td class="word_grey">&nbsp;<img src="Images/f_ico.gif" width="8" height="8"> ��ǰλ�ã��� <span class="word_darkGrey">����ע�� &gt;&gt;&gt;</span></td>
			  <td align="right"><img src="Images/m_ico1.gif" width="5" height="9">&nbsp;<html:link page="/index.jsp" >������ҳ</html:link>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="84%">&nbsp;      </td>
    <tr align="center"><td><font size=3 color="#00009C" style="font-weight: bold;font-style: italic;">�� �� ע �� ҳ ��</font></td></tr>
</tr>
</table> 
<html:form action="/manage/student.do?action=studentAdd" method="post" onsubmit="return checkForm(studentForm)">
  <table  width="53%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
  	
  	<tr align="center">
    <td width="16%" height="30" align="left" style="padding:5px;">ѧ&nbsp;&nbsp;&nbsp;&nbsp;�ţ�</td>
    <td width="84%" align="left">
      <html:text property="cardNo" size="40"/><font color="#FF0000">��Ψһ��*</font></td>
    </tr>
  <tr>
    <td height="30" align="left" style="padding:5px;">��&nbsp;&nbsp;&nbsp;&nbsp;����</td>
    <td align="left">
	 <html:text property="name" size="40"/> <font color="#FF0000"> *</font></td>
    </tr>
      <tr>
    <td height="30" align="left" style="padding:5px;">��&nbsp;&nbsp;&nbsp;&nbsp;��</td>
    <td align="left">
		<html:select property="sex">
	 	<html:option value="��">�� </html:option>
		<html:option value="Ů">Ů </html:option>
		</html:select>     </td>
    </tr>
      <tr align="center">
    <td width="16%" height="30" align="left" style="padding:5px;">ר&nbsp;&nbsp;&nbsp;&nbsp;ҵ��</td>
    <td width="84%" align="left">
      <html:text property="profession" size="40"/> <font color="#FF0000"> *</font></td>
    </tr>
    <tr>
    <td height="30" align="left" style="padding:5px;">��&nbsp;&nbsp;&nbsp;&nbsp;�룺</td>
    <td align="left"><html:password styleId="password1" property="pwd" size="40"/><font color="#FF0000">������6λ��*</font></strong>     </td>
    </tr>
  <tr align="center">
    <td width="16%" height="30" align="left" style="padding:5px;">ȷ�����룺</td>
    <td width="84%" align="left">
      <html:password styleId="password2" property="pwd" size="40"/><font color="#FF0000">����ͬ�ϣ�*</font></td>
    <tr>
  	
    <tr align="center">
    <td width="16%" height="30" align="left" style="padding:5px;">��ʾ���⣺</td>
    <td width="84%" align="left">
      <html:text property="question" size="40"/><font color="#FF0000">�����ҵİ��ã�*</font>	  </td>
    </tr>
	  <tr align="center">
    <td width="16%" height="30" align="left" style="padding:5px;">����𰸣�</td>
    <td width="84%" align="left">
      <html:text property="answer" size="40"/><font color="#FF0000">��������*</font></td>
    </tr>
	<tr>
		<td></td>
		<td>
		<strong><font color="#FF00FF">����ʾ����ʹ������һ�׼��֤�����룩</font></strong>
		</td>
	</tr>
    <tr>
      <td height="65" align="left" style="padding:5px;">&nbsp;</td>
      <td><html:submit property="submit" styleClass="btn_grey" value="����"/>
        &nbsp;
        <html:reset property="reset" styleClass="btn_grey" value="����"/>
		&nbsp;
		<html:button property="button" styleClass="btn_grey" value="����" onclick="window.location.href='index.jsp'"/>		</td>
    </tr>
</table>
</html:form>
</td>
      </tr>
    </table>
</td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
</html>
