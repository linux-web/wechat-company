<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>关注用户</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="gzuserfrom" dialog="true" usePlugin="password" layout="table" action="gzUserInfoYwController.do?save">
			<input id="id" name="id" type="hidden" value="${gzUserInfoYwPage.id }"/>
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							备注名称:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="bzName" name="bzName" ignore="ignore"
							   value="${gzUserInfoYwPage.bzName}"/>
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							分组:
						</label>
					</td>
					<td class="value">
						<select name="groupId">
							<c:forEach var="group" items="${groupList}">
								<option value="${group.id}">${group.name}</option>
							</c:forEach>
						</select>
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>