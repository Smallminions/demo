<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">

<%@include file="WEB-INF/jspf/head.jsp"%>

<body>
<div class="lefter">
  <div class="logo">
    <a  target="_blank"><img src="images/office.ico" alt="后台管理系统" /></a>
  </div>
</div>
<div class="righter nav-navicon" id="admin-nav">
  <div class="mainer">
    <div class="admin-navbar">
					<span class="float-right">
                    <a class="button button-little bg-main" href="http://www.pintuer.com" target="_blank">前台首页</a>
                    <a class="button button-little bg-yellow" href="login.jsp">注销登录</a>
                </span>
      <ul id="mobile" class="nav nav-inline admin-nav">
        <li data-id="start" class="active">
          <a href="/index.jsp" class="icon-home"> 开始</a>
          <%@include file = "WEB-INF/jspf/header.jsp" %>
        </li>
        <li data-id="employee">
          <a href="/DisplayEmployeeServlet" class="icon-male"> 员工</a>
          <%@include file="WEB-INF/jspf/employee.jsp"%>
        </li>
        <li data-id="seat">
          <a href="/seat.jsp" class="icon-wheelchair"> 坐席</a>
          <%@include file="WEB-INF/jspf/seat.jsp"%>
        </li>
        <li data-id="device">
          <a href="/device.jsp" class="icon-briefcase"> 设备</a>
        </li>
      </ul>
    </div>
    <div class="admin-bread">
      <span>您好，${user.getEname()}，欢迎您的光临。</span>
      <ul class="bread">
        <li><a href="index.jsp" class="icon-home"> 开始</a></li>
        <li>后台首页</li>
      </ul>
    </div>
  </div>
</div>
<div id="content" class="admin">

  <div class="line-big">
    <div class="xm3">
      <div class="panel border-back">
        <div class="panel-body text-center">
          <img src="images/face.jpg" width="120" class="radius-circle" />
          <br /> ${user.getEauthority()}
        </div>
      </div>
      <br />
      <br />
    </div>
    <div class="xm9">
      <div class="alert alert-yellow"><span class="close"></span><strong>注意：</strong>您有5条未读信息，<a href="#">点击查看</a>。</div>
      <div class="alert">
        <h4>欢迎来到移动办公应用系统</h4>
        <p class="text-gray padding-top">移动办公应用系统具有用户管理,设备管理,坐席管理一整套管理方案</p>
        <a class="button bg-dot icon-code" href="/DisplayEmployeeServlet">员工一览</a>
        <a class="button bg-main icon-download" href="seat.jsp">坐席一览</a>
        <a class="button border-main icon-file" href="device.jsp">设备一览</a>
      </div>
      <div class="panel">
      </div>
    </div>
  </div>
  <p class="text-right text-gray">基于<a class="text-gray" target="_blank" href="http://www.pintuer.com">拼图前端框架</a>构建</p>

  <br />

</div>

<div class="hidden">
  <script>
      var _hmt = _hmt || [];
      (function() {
          var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
          document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F637f0fe043ea4b7f59c05d4491e27667' type='text/javascript'%3E%3C/script%3E"));
      })();
  </script>
</div>
</body>

</html>