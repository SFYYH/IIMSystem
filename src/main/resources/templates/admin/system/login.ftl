<!DOCTYPE html>
<html lang="zh">
<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8">
  <title>IIM系统登陆界面</title>
  <link rel="shortcut icon" type="image/x-icon" href="./admin/images/logo.jpg">
  <style>
    input:-webkit-autofill , textarea:-webkit-autofill, select:-webkit-autofill {
      -webkit-text-fill-color: #ededed !important;
      -webkit-box-shadow: 0 0 0px 1000px transparent  inset !important;
      background-color:transparent;
      background-image: none;
      transition: background-color 50000s ease-in-out 0s;
    }
    input {
      background-color:transparent;
    }


    *{
      /* 初始化 */
      padding: 0;
      margin: 0;
    }

    body{
      /* 100%的窗口高度 */
      height: 100vh;
      /* 弹性布局 水平+垂直居中 */
      display: flex;
      align-items: center;
      justify-content: center;
      /* 渐变背景 */
      background: linear-gradient(200deg,#f3e7e9,#e3eeff);
    }

    .container{
      background-color: #fff;
      width: 650px;
      height: 415px;
      /* 阴影 */
      box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1);
      /* 相对定位 */
      position: relative;
    }
    .form-box{
      /* 绝对定位 */
      position: absolute;
      top: -10%;
      left: 5%;
      background-color: #d3b7d8;
      width: 320px;
      height: 500px;
      border-radius: 5px;
      box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
      /* 弹性布局 水平+垂直居中 */
      display: flex;
      align-items: center;
      justify-content: center;
      z-index: 2;
      /* 动画过渡 加速之后 减速 */
      transition: 0.5s ease-in-out;
    }
    .register-box,.login-box{
      /* 弹性布局 垂直排列 */
      display: flex;
      flex-direction: column;
      align-items: center;
      width: 100%;
    }
    .hidden{
      display: none;
      transition: 0.5s;
    }

    h1{
      text-align: center;
      margin-bottom: 25px;
      /* 大写字母 */
      text-transform: uppercase;
      color: #fff;
      /* 字间距 */
      letter-spacing: 5px;
    }

    input{
      background-color: transparent;
      width: 70%;
      color: #fff;
      border: none;
      /* 下边框样式 */
      border-bottom: 1px solid rgba(255, 255, 255, 0.4);
      padding: 10px 0;
      text-indent: 10px;
      margin: 8px 0;
      font-size: 14px;
      /* 字间距 */
      letter-spacing: 2px;
    }
    input::placeholder{
      color: #fff;
    }

    input:focus{
      color: #a262ad;
      outline: none;
      border-bottom: 1px solid #a262ad80;
      transition: 0.5s;
    }
    input:focus::placeholder{
      opacity: 0;
    }

    .form-box button{
      width: 70%;
      margin: 10px 0;
      background-color: #f6f6f6;
      outline: none;
      border-radius: 8px;
      padding: 13px;
      color: #a262ad;
      letter-spacing: 2px;
      border: none;
      cursor: pointer;
    }

    .form-box button:hover{
      background-color: #a262ad;
      color: #f6f6f6;
      transition: background-color 0.5s ease;
    }
    .form-control:hover{
      background-color: #a262ad;
      color: #f6f6f6;
      transition: background-color 0.5s ease;
    }

    .form-control {
      width: 70%;
      margin: 10px 0;
      background-color: #f6f6f6;
      outline: none;
      border-radius: 8px;
      padding: 13px;
      color: #a262ad;
      letter-spacing: 2px;
      border: none;
      cursor: pointer;
    }
    .con-box{
      width: 50%;
      /* 弹性布局 垂直排列 居中 */
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      /* 绝对定位 */
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
    }

    .con-box.left{
      left: -2%;
    }

    .con-box.right{
      right: -2%;
    }

    .con-box h2{
      color: #8e9aaf;
      font-size: 25px;
      font-weight: bold;
      letter-spacing: 3px;
      text-align: center;
      margin-bottom: 4px;
    }

    .con-box p{
      font-size: 12px;
      letter-spacing: 2px;
      color: #8e9aaf;
      text-align: center;
    }
    .con-box span{
      color: #d3b7d8;
    }

    .con-box img{
      width: 150px;
      height: 150px;
      opacity: 0.9;
      margin: 40px 0;
    }

    .con-box button{
      margin-top: 3%;
      background-color: #fff;
      color: #a262ad;
      border: 1px solid #d3b7d8;
      padding: 6px 10px;
      letter-spacing: 1px;
      outline: none;
      /* 鼠标放上变小手 */
      cursor: pointer;
    }
    .con-box button:hover{
      background-color: #a262ad;
      color: #f6f6f6;
    }
    .form-control{
      margin-top: 3%;
      background-color: #fff;
      color: #a262ad;
      border: 1px solid #d3b7d8;
      padding: 6px 10px;
      letter-spacing: 1px;
      outline: none;
      /* 鼠标放上变小手 */
      cursor: pointer;
    }
    .form-control:hover{
      background-color: #a262ad;
      color: #f6f6f6;
    }
  </style>
  <script>
    function NumberLogin(){
      if (!window.localStorage) {
        alert('浏览器版本太低，无法登陆');
        return false;
      }
      let number=$("#username").val();
      let password=$("#password").val();
      let cpacha=$("#cpacha").val();
      if (number.length < 4 || number.length > 16) {
        alert("账号长度必须在4到16之间");
        return false;
      }
      if (password.length < 4 || password.length > 16) {
        alert("密码长度必须在4到16之间");
        return false;
      }
      if (cpacha.length !== 4) {
        alert("验证码必须为四位数");
        return false;
      }
    }
    function PhoneLogin(){
      if (!window.localStorage) {
        alert('浏览器版本太低，无法登陆');
        return false;
      }
      let phone=$("#LoginPhone").val();
      let loginCode=$("#loginCode").val();
      if(phone.length===0){
        alert("手机号不能为空");
        return false;
      }
    }
    function PhoneLoginVerification(){
      let phone=$("#LoginPhone").val();
      if(phone.length!==11){
        alert("请输入11位手机号");
        return false;
      }
    }
  </script>
</head>
<body>
<div class="container">
  <div class="form-box">
    <div class="login-box">
      <h1 class="h1dl">管理员登录</h1>
      <input type="text" placeholder="请输入您的账号"  name="username" id="username" tips="请填写账号" />
      <input type="password" placeholder="请输入密码" id="password" name="password" tips="请填写密码" />
      <input type="text" name="cpacha" id="cpacha" maxlength="4"placeholder="验证码" tips="请填验证码" >
      <span class="mdi mdi-check-all form-control-feedback" aria-hidden="true"></span>
      <img src="/cpacha/generate_cpacha?vl=4&fs=25&w=128&h=40&method=admin_login" class="pull-right" id="captcha" style="cursor: pointer;" onclick="this.src=this.src+'&d='+Math.random();" title="点击刷新" alt="captcha">
      <button class="btn btn-block btn-primary" onclick="NumberLogin()" type="button" id="submit-btn">立即登录</button>
    </div>
    <div class="register-box hidden">
      <h1 class="h1dl">管理员登录</h1>
      <input type="text" id="LoginPhone" placeholder="手机号">
      <button type="button" onclick="PhoneLoginVerification()" id="btn">获取手机验证码</button>
      <input type="text" id="loginCode" placeholder="验证码" >
      <button type="button" onclick="PhoneLogin()" id="phoneLogin">登录</button>
    </div>
    <form method="post" action="/loginToken" id="loginToken" style="display: none">
      <input type="text" id="Number" name="number">
      <input type="password" id="Password" name="password">
    </form>
  </div>
  <div class="con-box left">
    <h2><span>IIM管理系统</span></h2>
    <p>这里是<span class="spandl">管理员</span>界面</p>
    <img src="https://p3.itc.cn/q_70/images03/20211006/0e0458cff3754657ab433c6b5266f263.png" alt="">
    <button id="login">前往账号登陆</button>
  </div>
  <div class="con-box right">
    <h2><span>IIM管理系统</span></h2>
    <p>这里是<span class="spandl">管理员</span>界面</p>
    <img src="https://p3.itc.cn/q_70/images03/20211006/0e0458cff3754657ab433c6b5266f263.png" alt="">
    <button id="register">前往手机号快捷登陆</button>
    <select name="type" class="form-control" id="type">
      <#list loginTypes as loginType>
        <option value="${loginType.code}">${loginType.value}登录</option>
      </#list>
    </select>
  </div>
</div>
<#include "../common/footer.ftl"/>
<script type="text/javascript">
  $(document).ready(function(){
    $("#submit-btn").click(function(){
      if(!checkForm("login-form")){
        return;
      }
      var type = $("#type").val();
      var username = $("#username").val();
      var password = $("#password").val();
      var cpacha = $("#cpacha").val();
      $.ajax({
        url:'/system/login',
        type:'POST',
        data:{username:username,password:password,cpacha:cpacha,type:type},
        dataType:'json',
        success:function(data){
          if(data.code == 0){
            window.location.href = 'index';
          }else{
            alert(data.msg);
          }
        },
        error:function(data){
          alert('网络错误!');
        }
      });
    });
  });
  var globalTyep;
  var optionElement = document.querySelector('#type option');
  globalTyep = optionElement.value + optionElement.innerHTML;
  let login = document.getElementById("login");
  let register = document.getElementById("register");
  let form_box = document.getElementsByClassName("form-box")[0];
  let register_box = document.getElementsByClassName("register-box")[0];
  let login_box = document.getElementsByClassName("login-box")[0];

  register.addEventListener('click',()=>{
    form_box.style.transform='translateX(80%)';
    login_box.classList.add('hidden');
    register_box.classList.remove('hidden');
  })

  login.addEventListener('click',()=>{
    form_box.style.transform='translateX(0%)';
    register_box.classList.add('hidden');
    login_box.classList.remove('hidden');
  })

  // 监听右键菜单事件
  document.addEventListener('contextmenu', function(event) {
    // 阻止默认的右键菜单弹出
    event.preventDefault();
  });

  var selectElement = document.getElementById("type");
  var previousOptionContent = ""; // 保存上一次的 optionContent 值

  // 监听 select 元素的 change 事件
  selectElement.addEventListener("change", function() {
    // 获取选中的 option 元素
    var selectedOption = selectElement.options[selectElement.selectedIndex];

    // 获取选中的 option 的内容
    var optionContent = selectedOption.text;
    console.log(optionContent);

    // 检查 optionContent 是否发生变化
    if (optionContent !== previousOptionContent) {


      // 更新 previousOptionContent 的值
      previousOptionContent = optionContent;
      // 调用 checksf() 函数
      checksf();
    }
  });
function checksf() {
  // 获取 select 元素
  var selectElement = document.getElementById("type");

// 获取选中的 option 元素
  var selectedOption = selectElement.options[selectElement.selectedIndex];

// 获取选中的 option 的内容
  var optionContent = selectedOption.text;
  console.log(optionContent)
  //替换登录身份内容
  var elements = document.getElementsByClassName("h1dl");
  for (var i = 0; i < elements.length; i++) {
    elements[i].textContent = optionContent;
  }
  var elements1 = document.getElementsByClassName("spandl");
  for (var i = 0; i < elements1.length; i++) {
    elements1[i].textContent = optionContent;
    content = elements1[i].textContent;
    var updatedContent = content.replace("登录", "");
    elements1[i].textContent = updatedContent;
  }
}
</script>
</body>
</html>