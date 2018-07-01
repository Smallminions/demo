<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html><html lang="zh-cn"><%@include file="WEB-INF/jspf/head.jsp"%><body><div class="lefter">    <div class="logo">        <a target="_blank"><img src="images/office.ico" alt="后台管理系统" /></a>    </div></div><div class="righter nav-navicon" id="admin-nav">    <div class="mainer">        <div class="admin-navbar">					<span class="float-right">                    <a class="button button-little bg-main" href="#">前台首页</a>                    <a class="button button-little bg-yellow" href="login.jsp">注销登录</a>                </span>            <ul class="nav nav-inline admin-nav">                <li>                    <a href="index.jsp" class="icon-home"> 开始</a>                    <%@include file = "WEB-INF/jspf/header.jsp" %>                </li>                <li class="active">                    <a href="/DisplayEmployeeServlet" class="icon-male"> 员工</a>                    <%@include file="WEB-INF/jspf/employee.jsp"%>                </li>                <li>                    <a href="seat.jsp" class="icon-wheelchair"> 坐席</a>                    <%@include file="WEB-INF/jspf/seat.jsp"%>                </li>                <li><a href="device.jsp" class="icon-briefcase"> 设备</a></li>            </ul>        </div>        <div class="admin-bread">            <span>您好，${user.getEname()}，欢迎您的光临。</span>            <ul class="bread">                <li><a href="index.jsp" class="icon-home"> 开始</a></li>                <li><a href="employee.jsp">员工</a></li>                <li>员工管理</li>            </ul>        </div>    </div></div><div class="admin">    <div class="tab">        <div class="tab-head">            <strong>员工管理</strong>            <ul class="tab-nav" id="emp">                <li class="active" ><a href="#tab-add">员工信息修改</a></li>            </ul>        </div>        <div class="tab-body">            <br />            <div class="tab-panel active " id="tab-visit">                <div class="panel-head"><strong>员工修改密码</strong></div>                <div>                    <form method="post" action="/DeleteEmployeeServlet">                        <div class="form-group">                            <div class="label x1-move">                                <label for="pwd2">                                    初始密码</label>                            </div>                            <div class="field x1-move">                                <input type="password" class="input input-big" size="20" id="pwd1"                                       name="pwd1" size="20"  style="width:500px;"                                       data-validate="required:必填"                                       placeholder="输入自己初始密码" />                            </div>                        </div>                        <div class="form-group">                            <div class="label x1-move">                                <label for="pwd2">                                    新的密码</label>                            </div>                            <div class="field x1-move">                                <input type="password" class="input input-big" size="20" id="pwd2"                                       name="pwd2" size="30" style="width:500px;"                                       data-validate="required:必填"                                       placeholder="请输入新的密码" />                            </div>                        </div>                        <div class="form-group">                            <div class="label x1-move">                                <label for="pwd2">                                    新的密码</label>                            </div>                            <div class="field x1-move">                                <input type="password" class="input input-big" size="20" id="pwd3" onblur="checkPass()"                                       name="pwd3" size="30" style="width:500px;"                                       data-validate="required:必填"                                       placeholder="再次请输入新的密码" />                                <div id="hint"></div>                            </div>                        </div>                        <div class="form-button x1-move" style="margin-top:10px">                            <button class="button border-green" type="submit">                                确认</button>                            <button class="button form-reset bg-yellow" type="reset">                                重设</button>                        </div>                    </form>                </div>            </div>        </div>    </div>    <p class="text-right text-gray">基于<a class="text-gray" target="_blank" href="http://www.pintuer.com">拼图前端框架</a>构建</p></div><script>    function checkPass(){        var pwd2=document.getElementById("pwd2").value;        var pwd3=document.getElementById("pwd3").value;        if(pwd2!=pwd3){            document.getElementById('hint').innerHTML='二次密码不一样，请重新输入。';            document.getElementById(pwd2).value='';            document.getElementById(pwd3).value='';            return false;        }else{            document.getElementById('hint').innerHTML='';            return true;        }    }</script></body></html>