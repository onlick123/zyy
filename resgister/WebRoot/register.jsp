<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'register.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript">
  //验证用户名是否为空
  $(function(){
  var username=false;
  var password=false;
  var passwordSure=false;
    $(":text:eq(0)").blur(function(){
     if(this.value==""){
      $(this).next().css("color","red").html("X");
      username=false;
     }else{
       $(this).next().css("color","green").html("✔");
       username=true;
     }    
    });
   //验证密码  
   $(":password:eq(0)").blur(function(){
     if(!$(this).val().match(/^\w{6,12}$/)){
      $(this).next().css("color","red").html("X");
      password=false;
     }else{
      $(this).next().css("color","green").html("✔");
      password=true;
      }
    });
    //确认密码
     $(":password:eq(1)").blur(function(){
     if($(this).val()==""||$(this).val()!=$(":password:eq(0)").val()){
      $(this).next().css("color","red").html("X");
      passwordSure=false;
     }else{
      $(this).next().css("color","green").html("✔");
      passwordSure=true;
      }
    });
    
    $(":submit").click(function(){
      if(username==false||password==false||passwordSure==false||$(":file").val()==""){
        alert("请输入完整信息");
        return false;
      }
    });
    
  });
 
 
  </script>
  
  </head>
  
  <body>
    <form action="register" method="post" enctype="multipart/form-data">
     用户名:<input type="text" name="username"/><span></span><br/>
      密码 :<input type="password" name="password"/><span></span><br/>
   确认密码:<input type="password" name="passwordSure"/><span></span><br/>
  头像:<input type="file" name="file" /><br/>
  <input type="submit" value="注册" />    
    </form>
  </body>
</html>
