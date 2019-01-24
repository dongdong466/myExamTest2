<%@ page contentType="text/html; charset=gb2312" language="java" import="java.util.*" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<!--  
	������ѯ�Ծ��ҳ��
-->
<jsp:useBean id="lesson" class="com.oes.dao.TaoTiDAO" scope="page"/>

<%
	int lessonID =  (Integer)session.getAttribute("lessonID"); //��ȡ��Ŀ��ID 
	int total =  (Integer)session.getAttribute("total"); //��ȡ�����ɼ���ID  
	List list_s = (List) request.getAttribute("singleQue");
	int s = 40 / list_s.size(); //����ÿ����ѡ��ķ���
	List list_m = (List) request.getAttribute("moreQue");
	int m = 60 / list_m.size(); ////����ÿ����ѡ��ķ���
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title>�鿴�Ծ��</title>
<link rel="stylesheet" href="../CSS/style.css"/>
</head>
<!--  -->
<script type="text/javascript">
 			//��һ�����ֱ�ʾ�ڼ��⣬�ڶ������ֱ�ʾѡ�Ĭ��ѡ��
  			/*function s(){ 			  
  			  document.all("answerArrS[0]")[0].checked=true;		
  			  
  			  if(document.all("answerArrS[1]")){
  			    document.all("answerArrS[1]")[1].checked=true;
  			    
  			    document.all("moreSelect[0]")[0].checked=true;  
			    document.all("moreSelect[0]")[1].checked=true;
			    document.all("moreSelect[0]")[2].checked=true;   
			    
			    document.all("moreSelect[1]")[2].checked=true;  
			    document.all("moreSelect[1]")[3].checked=true;   	
  			  }else{
  					
  			  	document.all("moreSelect[0]")[0].checked=true; 
			  	document.all("moreSelect[0]")[1].checked=true;
			  	document.all("moreSelect[0]")[2].checked=true;    
			  
			  	document.all("moreSelect[1]")[2].checked=true;  
			    document.all("moreSelect[1]")[3].checked=true;   			  
  		      }
  			}*/	
</script>
<body onload="s();">
<table width="770" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="40" height="39" background="../Images/startExam_leftTop.jpg">&nbsp;</td>
    <td width="667" align="right" background="../Images/startExam_top.jpg">&nbsp;
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>	
</tr>
</table>	
	</td>
    <td width="19" background="../Images/startExam_top.jpg">&nbsp;</td>
    <td width="44" background="../Images/startExam_rightTop.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td height="435" rowspan="2" background="../Images/startExam_left.jpg">&nbsp;</td>
    <td height="43" colspan="2"></td>
    <td rowspan="2" background="Images/startExam_right.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td height="600" colspan="2" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td colspan="2" align="center" class="title"><%=lesson.getLesson(lessonID)%>&nbsp;�����Ծ���</td>
        </tr>
        <tr>
          <td width="80%">&nbsp;</td>
          <td width="20%" class="title">�ɼ�&nbsp;<font color=red>${total}</font>&nbsp;��</td>
        </tr>
      </table>
	  <html:form action="/manage/startExam.do?action=submitTestPaper" method="post">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td>
<table id="single" width="90%"  border="0" cellspacing="0" cellpadding="0" align=center>

  <tr>
    <td colspan="4" height=23 style="font-size:11pt;">һ����ѡ�⣨<font color=red>ÿ��<%=s%>�֣���40��</font>��</td>
  </tr>
 <!-- iterate �����ݿ������ȡ���б��װ��һ��List����.Ȼ��ͨ��request���ô��ݵ�jspҳ��Ĳ����б�. -->
<logic:iterate id="questions" name="singleQue" type="com.oes.actionForm.QuestionsForm" scope="request" indexId="ind">
  <tr>
    <td height=23 colspan="4" align=center nowrap>
	  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="8%" align=right height=23>[&nbsp;${ind+1}&nbsp;]</td>
		  <td width="2%">&nbsp;</td>
		  <td width="90%" align=left nowrap style="font-size:11pt;"><bean:write name="questions" property="subject" filter="true"/>
		    (<font color=blue>��ȷ�𰸣�${questions.answer}</font>)
		  <html:hidden property="idArrS[${ind}]" name="questions"/>
		  </td>
        </tr>
      </table>
	</td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <!--  <td width="3%" align=center nowrap><html:radio property="answerArrS[${ind}]" styleClass="noborder" value="A" /></td> -->
    <td width="3%" align=center nowrap>A.</td>
    <td width="86%" align=left nowrap><bean:write name="questions" property="optionA" filter="true" /></td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <!-- <td width="3%" align=center nowrap><html:radio property="answerArrS[${ind}]" styleClass="noborder" value="B"/></td>-->
    <td width="3%" align=center nowrap>B.</td>
    <td width="86%" align=left nowrap><bean:write name="questions" property="optionB" filter="true"/></td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <!-- <td width="3%" align=center nowrap><html:radio property="answerArrS[${ind}]" styleClass="noborder" value="C"/></td>-->
    <td width="3%" align=center nowrap>C.</td>
    <td width="86%" align=left nowrap><bean:write name="questions" property="optionC" filter="true"/></td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <!-- <td width="3%" align=center nowrap><html:radio property="answerArrS[${ind}]" styleClass="noborder" value="D"/></td>-->
    <td width="3%" align=center nowrap>D.</td>
    <td width="86%" align=left nowrap><bean:write name="questions" property="optionD" filter="true"/></td>
  </tr>
  </logic:iterate>
</table>

<table id="single" width="90%"  border="0" cellspacing="0" cellpadding="0" align=center>

  <tr>
    <td colspan="4" height=23 style="font-size:11pt;">������ѡ�⣨<font color=red>ÿ��<%=m%>��,��60��</font>��</td>
  </tr>
<logic:iterate id="questions" name="moreQue" type="com.oes.actionForm.QuestionsForm" scope="request" indexId="ind">
  <tr>
    <td height=23 colspan="4" align=center nowrap>
	  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="8%" align=right height=23>[&nbsp;${ind+1}&nbsp;]</td>
		  <td width="2%">&nbsp;</td>
		  <td width="90%" align=left nowrap style="font-size:11pt;"><bean:write name="questions" property="subject" filter="true"/>
		   (<font color=blue>��ȷ�𰸣�${questions.answer}</font>)		  
		  <html:hidden property="idArrM[${ind}]" name="questions"/>
		  </td>
        </tr>
      </table>
	</td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <!--<td width="3%" align=center nowrap><html:multibox property="moreSelect[${ind}]" styleClass="noborder" value="A"/></td>-->
    <td width="3%" align=center nowrap>A.</td>
    <td width="86%" align=left nowrap><bean:write name="questions" property="optionA" filter="true"/></td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <!--<td width="3%" align=center nowrap><html:multibox property="moreSelect[${ind}]" styleClass="noborder" value="B"/></td>-->
    <td width="3%" align=center nowrap>B.</td>
    <td width="86%" align=left nowrap><bean:write name="questions" property="optionB" filter="true"/></td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <!--<td width="3%" align=center nowrap><html:multibox property="moreSelect[${ind}]" styleClass="noborder" value="C"/></td>-->
    <td width="3%" align=center nowrap>C.</td>
    <td width="86%" align=left nowrap><bean:write name="questions" property="optionC" filter="true"/></td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <!--<td width="3%" align=center nowrap><html:multibox property="moreSelect[${ind}]" styleClass="noborder" value="D"/></td>-->
    <td width="3%" align=center nowrap>D.</td>
    <td width="86%" align=left nowrap><bean:write name="questions" property="optionD" filter="true"/></td>
  </tr>
  </logic:iterate>
</table>		
		</td>
	  </tr>
        <tr>      
        </tr>
      </table>
	  </html:form>
	  </td>
  </tr>
  <tr>
    <td width="40" height="40" background="../Images/startExam_leftBottom.jpg">&nbsp;</td>
    <td colspan="2" background="../Images/startExam_bottom.jpg">&nbsp;</td>
    <td background="../Images/startExam_rightBottom.jpg">&nbsp;</td>
  </tr>
</table>
</body>
</html>
