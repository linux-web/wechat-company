<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
img{border:0;width:40px !important;height:40px !important;}
</style>
<%@include file="/context/mytags.jsp"%>
 <t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="gzUserInfoYwList" title="关注用户" actionUrl="gzUserInfoYwController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="是否关注" field="subscribe" hidden="false" ></t:dgCol>
   <t:dgCol title="openId" field="openid" hidden="false"></t:dgCol>
   <t:dgCol title="昵称" field="nickname" width="100"></t:dgCol>
   <t:dgCol title="性别" field="sex" width="100" replace="男_1,女_2"></t:dgCol>
   <t:dgCol title="城市" field="city"  width="100"></t:dgCol>
   <t:dgCol title="省份" field="province"  width="100"></t:dgCol>
   <t:dgCol title="国家" field="country"  width="100"></t:dgCol>
   <t:dgCol title="用户头像" field="headimgurl" image="true" width="100"></t:dgCol>
   <t:dgCol title="备注名称" field="bzname"  width="100"></t:dgCol>
   <t:dgCol title="groupid" field="groupid"  hidden="false"></t:dgCol>
   <t:dgCol title="关注时间" field="subscribeTime" hidden="false"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
      <t:dgToolBar title="编辑" icon="icon-edit" url="gzUserInfoYwController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="gzUserInfoYwController.do?addorupdate" funname="detail"></t:dgToolBar>
   <t:dgDelOpt title="删除" url="gzUserInfoYwController.do?del&id={id}" />
   
  </t:datagrid>
  </div>
 </div>
 