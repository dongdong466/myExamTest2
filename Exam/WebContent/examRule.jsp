<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<!--  
	���Թ�����ʾҳ��
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
              <td width="76%" class="word_grey">&nbsp;<img src="Images/f_ico.gif" width="8" height="8"> ��ǰλ�ã��� <span class="word_darkGrey">���߿��� �� ���Թ��� &gt;&gt;&gt;</span></td>
			  <td width="24%" align="right"><img src="Images/m_ico1.gif" width="5" height="9">
			    <html:link page="/default.jsp" >������ҳ</html:link>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
<html:form action="/manage/lesson.do?action=selectLesson" method="post">
 <table width="100%" height="253"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="90" colspan="3" align="center" ><font size=3 color="#3232CD" style="font-weight: bold;font-style: italic;">��ӭʹ�����߿���ϵͳ������ϸ�������Ŀ��Թ���</font></td>
</tr>
  <tr>
    <td width="12%">&nbsp;</td>
    <td width="77%" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
 <strong>���߿���ϵͳ���������ҳ����ˢ�¡����˵Ȳ������������Ը�������ڹ涨�Ŀ���ʱ����û��<br><br>����ϵͳ���Զ��ύ�Ծ�ÿλ����ͬһ����Ŀֻ�ܿ�һ�Σ��뿼��������ؿ������ˡ�</strong>
 <br><br>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <strong>ֻ��ͬ�����Ϲ���ſ��Խ��п��ԡ�������Թ����г����������δ�ҵ���صĿ��Կ�Ŀ���뼰ʱ<br><br>��ϵͳ����Ա��ϵ��</strong>	</td>
    <td width="11%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center" valign="top"><html:submit property="submit" styleClass="btn_grey" value="ͬ ��"/></td>
    <td>&nbsp;</td>
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
