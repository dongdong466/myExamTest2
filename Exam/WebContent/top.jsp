<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<!-- ��ҳ�����ڿ�����½�ɹ����濼����Ϣ����������ѧ�Ż���׼��֤�� -->
<%
	if (session.getAttribute("student") == null) {
		response.sendRedirect("../index.jsp");
	}
	/*
		�ڿ�����һ��½�ͻᱣ�濼����׼��֤���Ա�������ѯ�Լ��ĳɼ����޸��Լ�����Ϣ���ں�̨Student.java����Ŀ�����½����
		session.setAttribute("student", studentForm.getID());
		Jspҳ�����������session��Ϳ���ʵ������ҳ�湲��
	*/
%>

<!--  
		Struts�ṩ�������ǩ�⣬����HTML��Bean��Logic��Template��Nested��
		HTML ��ǩ��        		 ���������ܹ���Struts ��ܺ�������Ӧ��HTML ��ǩ������HTML �����
		Bean ��ǩ��        		 �ڷ���JavaBeans �������ԣ��Լ�����һ���µ�bean ʱʹ��
		Logic ��ǩ��       	 ������������������Ͷ��󼯲�����ѭ��
		Template ��ǩ��  	 ����Tiles��ܰ��ĳ��֣��˱���ѿ�ʼ����ʹ��
		Nested ��ǩ��      	��ǿ��������Struts ��ǩ��Ƕ��ʹ�õ�����
-->