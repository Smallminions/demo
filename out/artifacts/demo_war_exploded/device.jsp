<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@taglib prefix="mytag" uri="/WEB-INF/MyTag"%><!DOCTYPE html><html lang="zh-cn"><%@include file="WEB-INF/jspf/head.jsp"%><body><div class="lefter">    <div class="logo">        <a target="_blank"><img src="images/office.ico" alt="后台管理系统" /></a>    </div></div><div class="righter nav-navicon" id="admin-nav">    <div class="mainer">        <div class="admin-navbar">					<span class="float-right">                    <a class="button button-little bg-main" href="#">前台首页</a>                    <a class="button button-little bg-yellow" href="login.jsp">注销登录</a>                </span>            <ul class="nav nav-inline admin-nav">                <li>                    <a href="/index.jsp" class="icon-home"> 开始</a>                    <%@include file = "WEB-INF/jspf/header.jsp" %>                </li>                <li >                    <a href="/DisplayEmployeeServlet" class="icon-male"> 员工</a>                    <%@include file="WEB-INF/jspf/employee.jsp"%>                </li>                <li>                    <a href="/seat.jsp" class="icon-wheelchair"> 坐席</a>                    <%@include file="WEB-INF/jspf/seat.jsp"%>                </li>                <li class="active">                    <a href="/device.jsp" class="icon-briefcase"> 设备</a>                    <%@include file="WEB-INF/jspf/device.jsp"%>                </li>            </ul>        </div>        <div class="admin-bread">            <span>您好，${user.getEname()}，欢迎您的光临。</span>            <ul class="bread">                <li><a href="index.jsp" class="icon-home"> 开始</a></li>                <li><a href="employee.jsp">员工</a></li>                <li>员工管理</li>            </ul>        </div>    </div></div><div class="admin">    <div class="tab">        <div class="tab-head">            <strong>设备管理</strong>            <ul class="tab-nav">                <li class="active"><a href="#tab-visit">设备信息浏览</a></li>            </ul>        </div>        <div class="tab-body">            <br />            <div class="tab-panel active" id="tab-visit">                <div class="panel-head"><strong>设备信息列表</strong></div>                <form action="DisplayDeviceServlet" method="post">                    <div class="field x3"style="top: 8px">                        <mytag:departlisttag />                    </div>                    <div class="form-button padding border-bottom x9">                        <button type="submit" class="button button-small border-blue">浏览</button>                    </div>                </form>                <table class="table table-hover">                    <tr>                        <th width="120">ID</th>                        <th width="150">类型</th>                        <th width="150">区域</th>                        <th width="150">使用状态</th>                        <th width="*">备注</th>                        <th width="200">操作</th>                    </tr>                    <c:forEach items="${devices}" var="de">                        <tr>                            <td>${de.getDid()}</td>                            <td>${de.getDname()}</td>                            <td>${de.getDplace()}</td>                            <td>${de.isDstatus() ? "使用":"未使用"}</td>                            <td>这个设备很蠢什么都不会写!!!</td>                            <td>                                <c:if test="${!de.isDstatus()}"><a class="button border-green button-little" href="/UserDeviceServlet?did=${de.getDid()}">申请</a></c:if>                            </td>                        </tr>                    </c:forEach>                </table>                <div class="text-center margin-big-top">                    ${pagination.getPageBar()}                </div>            </div>            </div>        </div>    </div>    <p class="text-right text-gray">基于<a class="text-gray" target="_blank" href="http://www.pintuer.com">拼图前端框架</a>构建</p></div></body></html>