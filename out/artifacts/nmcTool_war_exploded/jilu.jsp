<%--
  Created by IntelliJ IDEA.
  User: Leong
  Date: 2015/10/18
  Time: 2:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <title></title>
  <link rel="stylesheet" href="css/reset.css" />
  <link rel="stylesheet" href="css/style.css" />
  <script type="text/javascript">
    function test1 (){
      document.getElementById('div1').style.display="none";
      document.getElementById('div2').style.display="block";
      document.form3.submit();
    }
    function test2 (){
      document.getElementById('div2').style.display="none";
      document.getElementById('div1').style.display="block";
    }
    function change1 (){
      document.getElementById('solve_2').style.display="none";
      document.getElementById('solve_1').style.display="block";
      document.form4.submit();
    }
    function change2 (){
      document.getElementById('solve_1').style.display="none";
      document.getElementById('solve_2').style.display="block";
    }
  </script>
  <script type="text/javascript">
    var winWidth = 0;
    var winHeight = 0;
    function findDimensions() //函数：获取页面尺寸
    {
      //获取窗口宽度
      if (window.innerWidth)
        winWidth = window.innerWidth;
      else if ((document.body) && (document.body.clientWidth))
        winWidth = document.body.clientWidth;
      //获取窗口高度
      if (window.innerHeight)
        winHeight = window.innerHeight;
      else if ((document.body) && (document.body.clientHeight))
        winHeight = document.body.clientHeight;

      //通过深入Document内部对body进行检测，获取窗口大小
      if (document.documentElement  && document.documentElement.clientHeight &&
              document.documentElement.clientWidth)
      {
        winHeight = document.documentElement.clientHeight;
        winWidth = document.documentElement.clientWidth;
      }
      //在这里写你的处理函数，winWidth和winHeight这两个全局变量分别是页面宽度和高度

    }
    findDimensions();                  //调用函数，获取数值
    window.onresize=findDimensions;    //绑定窗口尺寸改变事件
  </script>
  <script type="text/javascript">
    function mySubmit3 () {
      document.form3.submit();
    }
    function mySubmit4 () {
      document.form4.submit();
    }
    function mySubmit5 () {
      document.form4.submit();
      location.replace(document.referrer);
      document.referrer;
    }
  </script>
</head>
<body>
<div class="head">
  <img src="images/logo.png" alt="" />
  <img src="images/text.png" alt="" />
</div>
<div class="left" id="left">
  <div class="left_list">
    <ul>
      <li><a href="index.jsp">签到</a></li>
      <li><a href="">未完成事项</a></li>
      <li><a href="">新问题记录</a></li>
      <li><a href="">问题总览</a></li>
    </ul>
  </div>
  <div class="left_bottom">
    <ul>
      <li><a href="">关于</a></li>
    </ul>
  </div>
</div>
<div class="right">
  <form action="" name="form3">
    <div class="right_1" >
      <div class="right_1_search" id="div1">
        <ul>
          <li>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" maxlength="12" /></li>
          <li>用户IPV4：<input type="text"/></li>
          <li>用户MAC：<input type="text" /></li>
        </ul>
        <ul>
          <li>所在楼宇：<input type="text" /></li>
          <li>所在房间&nbsp;：<input type="text" /></li>
          <li><div class="right_search_button"><a href="javascript:test1 ()" >查询</a></div></li>
        </ul>
      </div>
      <div class="right_1_result" id="div2">
        <div class="right_1_return">
          <img src="images/return.png" alt="返回" onclick="test2()" />
        </div>
        <!-- <div class="right_1_more">
            <img src="images/more.png" alt="更多" onclick="test1()"/>

            </div> -->
        <ul>
          <li><input type="checkbox" name="VoteOption2" value="" />用户名：201309010329&nbsp;&nbsp;&nbsp;用户姓名：赵浩然&nbsp;&nbsp;&nbsp;用户状态：正常</li>
          <li><input type="checkbox" name="VoteOption2" value="" />用户名：201309010329&nbsp;&nbsp;&nbsp;用户姓名：赵浩然&nbsp;&nbsp;&nbsp;用户状态：正常</li>
          <li><input type="checkbox" name="VoteOption2" value="" />用户名：201309010329&nbsp;&nbsp;&nbsp;用户姓名：赵浩然&nbsp;&nbsp;&nbsp;用户状态：正常</li>
        </ul>

      </div>
    </div>
    <div class="right_2">
      <form action="" name="form4">
        <ul>
          <li>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" maxlength="12" /></li>
          <li>用户IPV4：<input type="text"/></li>
          <li>用户MAC：<input type="text" /></li>
        </ul>
        <ul>
          <li>所在楼宇：<input type="text" /></li>
          <li>所在房间&nbsp;：<input type="text" /></li>
          <li>记&nbsp;&nbsp;录&nbsp;&nbsp;人&nbsp;：<input type="text" /></li>
        </ul>
        <div class="right_5">
          <div class="right_5_1" id="solve_1">
            <ul>
              <li style="boder-top:soild 2px"><input type="radio" name="reason" value="" />认证失败，无法链接认证服务器</li>
              <li style="boder-top:soild 2px"><input type="radio" name="reason" value="" />动态IP地址类型绑定错误</li>
            </ul>
            <ul>
              <li><input type="radio" name="reason" value="" />获取IP信息失败</li>
              <li><input type="radio" name="reason" value="" />在线用户数量达到上限</li>
            </ul>
            <ul>
              <li><input type="radio" name="reason" value="" />IP/MAC地址绑定错误</li>
              <li><input type="radio" name="reason" value="" />与已有IP地址绑定错误</li>
            </ul>
            <ul>
              <li><input type="radio" name="reason" value="" />密码错误/忘记密码</li>
              <li><input type="radio" name="reason" value="" />找不到网卡</li>
            </ul>
            <ul>
              <li><input type="radio" name="reason" value="" />仿冒MAC地址上网</li>
              <li><input type="radio" name="reason" value="" />通过认证，但没有网速</li>
            </ul>
            <ul>
              <li><input type="radio" name="reason" value="" />其他</li>
              <li><div class="right_5_button"><a href="#top" onclick="mySubmit5 ()" >登记</a></div><div class="right_5_button_2"><a href="javascript:change2 ()">返回</a></div></li>
            </ul>
          </div>
          <div class="right_5_2" id="solve_2">
            <ul>
              <li><input type="radio" name="solve" value="" />动态IP地址类型绑定错误</li>
              <li><input type="radio" name="solve" value="" />动态IP地址类型绑定错误</li>
            </ul>
            <ul>
              <li><input type="radio" name="solve" value="" />动态IP地址类型绑定错误</li>
              <li><input type="radio" name="solve" value="" />动态IP地址类型绑定错误</li>
            </ul>
            <ul>
              <li><input type="radio" name="solve" value="" />动态IP地址类型绑定错误</li>
              <li><input type="radio" name="solve" value="" />动态IP地址类型绑定错误</li>
            </ul>
            <ul>
              <li><input type="radio" name="solve" value="" />动态IP地址类型绑定错误</li>
              <li><input type="radio" name="solve" value="" />动态IP地址类型绑定错误</li>
            </ul>
            <ul>
              <li><input type="radio" name="solve" value="" />动态IP地址类型绑定错误</li>
              <li><input type="radio" name="solve" value="" />动态IP地址类型绑定错误</li>
            </ul>
            <ul>
              <li><input type="radio" name="solve" value="" />动态IP地址类型绑定错误</li>
              <li>是否解决问题？<a href="javascript:change1 ()">是</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" >否</a></li>
            </ul>
          </div>
        </div>

      </form>
    </div>
  </form>
</div>
</body>
</html>
