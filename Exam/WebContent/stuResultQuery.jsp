<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<!--  
	�����ɼ���ѯҳ��
-->
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
    <td valign="top" bgcolor="#FFFFFF"><table width="778" height="480"  border="0" cellpadding="0" cellspacing="0" align="right" background="Images/background1.jpg"> 
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="76%" class="word_grey">&nbsp;<img src="Images/f_ico.gif" width="8" height="8"> ��ǰλ�ã��� <span class="word_darkGrey">�����ɼ���ѯ &gt;&gt;&gt;</span></td>
			  <td width="24%" align="right"><img src="Images/m_ico1.gif" width="5" height="9">
			    <html:link page="/default.jsp" >������ҳ</html:link>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="84%">&nbsp;      </td>
</tr>
</table> 
<table width="98%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#67A8DB">
  <tr align="center">
    <td width="14%" height="27" bgcolor="#B2D6F1">׼��֤��</td>
    <td width="7%" bgcolor="#B2D6F1">ѧ��</td>
    <td width="7%" bgcolor="#B2D6F1">����</td>
    <td width="6%" bgcolor="#B2D6F1">�Ա�</td>
    <td width="7%" bgcolor="#B2D6F1">רҵ</td>
	<td width="15%" bgcolor="#B2D6F1">���Կ�Ŀ</td>
	<td width="16%" bgcolor="#B2D6F1">����ʱ��</td>
	<td width="7%" bgcolor="#B2D6F1">��ѡ����</td>
	<td width="7%" bgcolor="#B2D6F1">��ѡ����</td>
    <td width="6%" bgcolor="#B2D6F1">�� ��</td>
    <td width="8%" bgcolor="#B2D6F1">�鿴��</td>
  </tr>
	<logic:iterate id="stuResult" name="stuResultQuery" type="com.oes.actionForm.StuResultForm" scope="request">
  <tr>
    <td align="center" style="padding:5px;"><bean:write name="stuResult" property="stuId" filter="true"/></td>
    <td align="center"><bean:write name="stuResult" property="CNo" filter="true"/></td>
    <td align="center"><bean:write name="stuResult" property="name" filter="true"/></td>
    <td align="center"><bean:write name="stuResult" property="sex" filter="true"/></td>
    <td align="center"><bean:write name="stuResult" property="profession" filter="true"/></td>
	<td align="center" style="padding:5px;"><bean:write name="stuResult" property="whichLesson" filter="true"/></td>
	<td align="center"><bean:write name="stuResult" property="joinTime" format="yyyy-MM-dd HH:mm:ss" filter="true"/></td>
	<td align="center"><bean:write name="stuResult" property="resSingle" filter="true"/></td>
    <td align="center"><bean:write name="stuResult" property="resMore" filter="true"/></td>
    <td align="center"><bean:write name="stuResult" property="resTotal" filter="true"/></td>
    <td align="center" ><html:button property="button" styleClass="btn_grey" value="�鿴��" 
    onclick="window.open('manage/startExam.do?action=Examanswer&id=${stuResult.lessonID}&total=${stuResult.resTotal}&selfid=${stuResult.ID}','','width=786,height=768,scrollbars=1');"/></td>
    <!-- ����鿴��ʱ����ȡ��Ŀ��ID��Ȼ�󴫵ݸ���̨������ʾ�Ծ� -->
    
  </tr>
  </logic:iterate> 
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
