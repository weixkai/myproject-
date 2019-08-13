<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="role" uri="http://fangzhang.com/authortag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<title>网站后台管理系统  </title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="${pageContext.request.contextPath}/manager/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/manager/assets/css/font-awesome.min.css" />
		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/manager/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/manager/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/manager/assets/css/ace-skins.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/manager/css/style.css"/>
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="${pageContext.request.contextPath}/manager/assets/js/ace-extra.min.js"></script>
		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
        <!--[if !IE]> -->
		<script src="${pageContext.request.contextPath}/manager/js/jquery-1.9.1.min.js"></script>        
		<!-- <![endif]-->
		<!--[if IE]>
         <script type="text/javascript">window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");</script>
        <![endif]-->
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath}/manager/assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		<script src="${pageContext.request.contextPath}/manager/assets/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/manager/assets/js/typeahead-bs2.min.js"></script>
		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="${pageContext.request.contextPath}/manager/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath}/manager/assets/js/ace.min.js"></script>
        <script src="${pageContext.request.contextPath}/manager/assets/layer/layer.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/manager/assets/laydate/laydate.js" type="text/javascript"></script>
        
        
<script type="text/javascript">	
 $(function(){ 
 var cid = $('#nav_list> li>.submenu');
	  cid.each(function(i){ 
       $(this).attr('id',"Sort_link_"+i);
   
    })  
 })
 jQuery(document).ready(function(){ 	
    $.each($(".submenu"),function(){
	var $aobjs=$(this).children("li");
	var rowCount=$aobjs.size();
	var divHeigth=$(this).height();
    $aobjs.height(divHeigth/rowCount);	  	
  }); 
    //初始化宽度、高度    
    $("#main-container").height($(window).height()-76); 
	$("#iframe").height($(window).height()-140); 
	 
	$(".sidebar").height($(window).height()-99); 
    var thisHeight = $("#nav_list").height($(window).outerHeight()-173); 
	$(".submenu").height();
	$("#nav_list").children(".submenu").css("height",thisHeight);
	
    //当文档窗口发生改变时 触发  
    $(window).resize(function(){
	$("#main-container").height($(window).height()-76); 
	$("#iframe").height($(window).height()-140);
	$(".sidebar").height($(window).height()-99); 
	
	var thisHeight = $("#nav_list").height($(window).outerHeight()-173); 
	$(".submenu").height();
	$("#nav_list").children(".submenu").css("height",thisHeight);
  });
    $(".iframeurl").click(function(){
                var cid = $(this).attr("name");
				var cname = $(this).attr("title");
                $("#iframe").attr("src",cid).ready();
				$("#Bcrumbs").attr("href",cid).ready();
				$(".Current_page a").attr('href',cid).ready();	
                $(".Current_page").attr('name',cid);
				$(".Current_page").html(cname).css({"color":"#333333","cursor":"default"}).ready();	
				$("#parentIframe").html('<span class="parentIframe iframeurl"> </span>').css("display","none").ready();	
				$("#parentIfour").html(''). css("display","none").ready();		
      });
    
		
});
 
//jQuery( document).ready(function(){
//	  $("#submit").click(function(){
//	// var num=0;
//     var str="";
//     $("input[type$='password']").each(function(n){
//          if($(this).val()=="")
//          {
//              // num++;
//			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
//                title: '提示框',				
//				icon:0,				
//          }); 
//             // layer.msg(str+=""+$(this).attr("name")+"不能为空！\r\n");
//             layer.close(index);
//          }		  
//     });    
//})		
//	});
/*********************点击事件*********************/
$( document).ready(function(){
  $('#nav_list').find('li.home').click(function(){
	$('#nav_list').find('li.home').removeClass('active');
	$(this).addClass('active');
  });	
												

//时间设置
  function currentTime(){ 
    var d=new Date(),str=''; 
    str+=d.getFullYear()+'年'; 
    str+=d.getMonth() + 1+'月'; 
    str+=d.getDate()+'日'; 
    str+=d.getHours()+'时'; 
    str+=d.getMinutes()+'分'; 
    str+= d.getSeconds()+'秒'; 
    return str; 
} 
setInterval(function(){$('#time').html(currentTime)},1000); 
//修改密码
$('.change_Password').on('click', function(){
    layer.open({
    type: 1,
	title:'修改密码',
	area: ['300px','300px'],
	shadeClose: true,
	content: $('#change_Pass'),
	btn:['确认修改'],
	yes:function(index, layero){		
		   if ($("#password").val()==""){
			  layer.alert('原密码不能为空!',{
              title: '提示框',				
				icon:0,
			    
			 });
			return false;
          } 
		  if ($("#Nes_pas").val()==""){
			  layer.alert('新密码不能为空!',{
              title: '提示框',				
				icon:0,
			    
			 });
			return false;
          } 
		   
		  if ($("#c_mew_pas").val()==""){
			  layer.alert('确认新密码不能为空!',{
              title: '提示框',				
				icon:0,
			    
			 });
			return false;
          }
		    if(!$("#c_mew_pas").val || $("#c_mew_pas").val() != $("#Nes_pas").val() )
        {
            layer.alert('密码不一致!',{
              title: '提示框',				
				icon:0,
			    
			 });
			 return false;
        }   
		 else{	
			 var oldPass = $("#password").val();
			 var newPass = $("#c_mew_pas").val();
			 $.post('${pageContext.request.contextPath}/manager/user/updatePassword.do',{oldPass:oldPass,newPass:newPass},function(data){
				 if(data.code==0){
					 if(data.result==true){
						 layer.alert('修改成功！',{
			                title: '提示框',				
							icon:1,		
						  }); 
						  layer.close(index); 
					 }
				 }
			 },'json');
			       
		  }	 
	}
    });
});
  $('#Exit_system').on('click', function(){
      layer.confirm('是否确定退出系统？', {
     btn: ['是','否'] ,//按钮
	 icon:2,
    }, 
	function(){
	  location.href="${pageContext.request.contextPath}/manager/login.jsp";
        
	  location.href="${pageContext.request.contextPath}/manager/user/logout.do";
        $.post("${pageContext.request.contextPath}/manager/user/logout.do",{},function(data){
        	if(data.code==0){
        		document.location.href = "${pageContext.request.contextPath}/manager/user/to/login.do";
        	}
        });
    });
});
})
</script>	
	</head>
	<body>
		<div class="navbar navbar-default" id="navbar">
        <script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>					
						<img src="${pageContext.request.contextPath}/manager/images/logo.png">
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->
			   <div class="navbar-header pull-right" role="navigation">
               <ul class="nav ace-nav">	
                <li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<span  class="time"><em id="time"></em></span><span class="user-info"><small>欢迎光临,</small>${user.realName}</span>
								<i class="icon-caret-down"></i>
							</a>
							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
<!-- 								<li><a href="#"><i class="icon-cog"></i>设置</a></li> -->
<!-- 								<li><a href="#"><i class="icon-user"></i>个人资料</a></li> -->
<!-- 								<li class="divider"></li> -->
								<li><a href="javascript:void(0)" class="change_Password"><i class="icon-cog"></i>修改密码</a></li>
								<li><a href="javascript:ovid(0)" id="Exit_system"><i class="icon-off"></i>退出</a></li>
							</ul>
						</li>
<!-- 	                   <li class="purple"> -->
<!-- 						<a data-toggle="dropdown" class="dropdown-toggle" href="#" style="height:inherit;padding-top:14px;"><i class="icon-bell-alt"></i><span class="badge badge-important">8</span></a> -->
<!-- 							<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close"> -->
<!--                             <li class="dropdown-header"><i class="icon-warning-sign"></i>8条通知</li> -->
<!--                             <li> -->
<!--                               <a href="#"> -->
<!-- 										<div class="clearfix"> -->
<!-- 											<span class="pull-left"> -->
<!-- 												<i class="btn btn-xs no-hover btn-pink icon-comment"></i> -->
<!-- 												新闻评论 -->
<!-- 											</span> -->
<!-- 											<span class="pull-right badge badge-info">+12</span> -->
<!-- 										</div> -->
<!-- 									</a> -->
<!-- 								</li> -->

<!-- 								<li> -->
<!-- 									<a href="#"> -->
<!-- 										<i class="btn btn-xs btn-primary icon-user"></i> -->
<!-- 										切换为编辑登录.. -->
<!-- 									</a> -->
<!-- 								</li> -->

<!-- 								<li> -->
<!-- 									<a href="#"> -->
<!-- 										<div class="clearfix"> -->
<!-- 											<span class="pull-left"> -->
<!-- 												<i class="btn btn-xs no-hover btn-success icon-shopping-cart"></i> -->
<!-- 												新订单 -->
<!-- 											</span> -->
<!-- 											<span class="pull-right badge badge-success">+8</span> -->
<!-- 										</div> -->
<!-- 									</a> -->
<!-- 								</li> -->

<!-- 								<li> -->
<!-- 									<a href="#"> -->
<!-- 										<div class="clearfix"> -->
<!-- 											<span class="pull-left"> -->
<!-- 												<i class="btn btn-xs no-hover btn-info icon-twitter"></i> -->
<!-- 												粉丝 -->
<!-- 											</span> -->
<!-- 											<span class="pull-right badge badge-info">+11</span> -->
<!-- 										</div> -->
<!-- 									</a> -->
<!-- 								</li> -->

<!-- 								<li> -->
<!-- 									<a href="#"> -->
<!-- 										查看所有通知 -->
<!-- 										<i class="icon-arrow-right"></i> -->
<!-- 									</a> -->
<!-- 								</li> -->
<!-- 							</ul> -->
<!-- 						</li> -->

					
					</ul>
                <!-- <div class="right_info">
                 
                   <div class="get_time" ><span id="time" class="time"></span>欢迎光临,管理员</span></div>
					<ul class="nav ace-nav">	
						<li><a href="javascript:ovid(0)" class="change_Password">修改密码</a></li>
                        <li><a href="javascript:ovid(0)" id="Exit_system">退出系统</a></li>
                       
					</ul>
				</div>-->
                </div>
			</div>
		</div>
		<div class="main-container" id="main-container">
        <script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>
				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>
					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
                     <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						网站后台管理系统  
						</div>
						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>
							<span class="btn btn-info"></span>
							<span class="btn btn-warning"></span>
							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->
					<ul class="nav nav-list" id="nav_list">
				   <%-- <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/system/home.do" class="iframeurl" title=""><i class="icon-dashboard"></i><span class="menu-text"> 系统首页 </span></a></li> --%>
                      <role:author no="1">
                     <li><a href="#" class="dropdown-toggle"><i class="icon-desktop"></i><span class="menu-text"> 产品管理 </span><b class="arrow icon-angle-down"></b></a>
					   <ul class="submenu">
					   	<role:author no="11">
                         <li class="home"><a  href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/product/index.do"  title="产品类表" class="iframeurl"><i class="icon-double-angle-right"></i>产品类表</a></li>
                         </role:author>
<!-- 						 <li class="home"><a  href="javascript:void(0)" name="Brand_Manage.html" title="品牌管理"  class="iframeurl"><i class="icon-double-angle-right"></i>品牌管理</a></li> -->
						 <role:author no="12">
						 <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/protype/index.do" title="分类管理"  class="iframeurl"><i class="icon-double-angle-right"></i>分类管理</a></li>
						</role:author>
						</ul>
					</li>
					</role:author>
				 	<role:author no="2">
					<li>
					<a href="#" class="dropdown-toggle"><i class="icon-picture "></i><span class="menu-text"> 图片管理 </span><b class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<role:author no="21">
							<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/banner/mhome.do" title="移动首页轮播" class="iframeurl"><i class="icon-double-angle-right"></i>移动首页轮播</a></li>
							</role:author>
							<role:author no="22">
							<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/banner/mhome1.do" title="商城首页轮播" class="iframeurl"><i class="icon-double-angle-right"></i>商城首页轮播</a></li>
							</role:author>
<!-- 						<li class="home"><a href="javascript:void(0)" name="Sort_ads.html" title="分类管理"  class="iframeurl"><i class="icon-double-angle-right"></i>分类管理</a></li> -->
						</ul>
					</li>
					</role:author> 
					 <role:author no="3">
					<li>
					<a href="#" class="dropdown-toggle"><i class="icon-list"></i><span class="menu-text"> 交易管理 </span><b class="arrow icon-angle-down"></b></a>
                    <ul class="submenu">
                    	<role:author no="31">
                    	<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/order/orderList.do" title="订单管理"  class="iframeurl"><i class="icon-double-angle-right"></i>订单管理</a></li>
                    	</role:author>
                    	<role:author no="32">
                    	<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/order/orderSend.do" title="发货处理"  class="iframeurl"><i class="icon-double-angle-right"></i>发货处理</a></li>
                    	</role:author>
                    	<role:author no="33">
                    	<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/order/orderSettlement.do" title="订单结算"  class="iframeurl"><i class="icon-double-angle-right"></i>订单结算</a></li>
                    	</role:author>
                    	<role:author no="36">
                    	<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/order/wxAccount.do" title="微信账单"  class="iframeurl"><i class="icon-double-angle-right"></i>微信账单（商城）</a></li>
                    	</role:author>
                    	<role:author no="34">
                    	<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/service/serviceList.do" title="退款/售后"  class="iframeurl"><i class="icon-double-angle-right"></i>退款/售后</a></li>
                    	</role:author>
                    	<role:author no="35">
                    	<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/yingli/home.do" title="退款/售后"  class="iframeurl"><i class="icon-double-angle-right"></i>英利订单</a></li>
                    	</role:author>
                   </ul>
				  </li>
				  </role:author>
				<role:author no="4">
                  <li>
					<a href="#" class="dropdown-toggle"><i class="icon-user"></i><span class="menu-text"> 会员管理 </span><b class="arrow icon-angle-down"></b></a>
                    <ul class="submenu">
                    	<role:author no="41">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/user/index.do" title="商城会员列表"  class="iframeurl"><i class="icon-double-angle-right"></i>商城会员列表</a></li>
	                    </role:author>
	                    <role:author no="42">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/user/redIndex.do" title="网络销售列表"  class="iframeurl"><i class="icon-double-angle-right"></i>网络销售列表</a></li>
	                    </role:author>
                   	</ul>
				  </li> 
				  </role:author>
				  <role:author no="5">
				  <li>
					<a href="#" class="dropdown-toggle"><i class="icon-list-alt"></i><span class="menu-text"> 超市管理 </span><b class="arrow icon-angle-down"></b></a>
                    <ul class="submenu">
                    	<role:author no="51">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/market/marketList.do" title="超市列表"  class="iframeurl"><i class="icon-double-angle-right"></i>超市列表</a></li>
	                    </role:author>
	                    <role:author no="51">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/market/marketProList.do" title="商品列表"  class="iframeurl"><i class="icon-double-angle-right"></i>商品列表</a></li>
	                    </role:author>
	                     <role:author no="51">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/market/marketShareList.do" title="活动列表"  class="iframeurl"><i class="icon-double-angle-right"></i>活动列表</a></li>
	                    </role:author>
	                    <role:author no="51">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/market/marketOrderList.do" title="线下订单"  class="iframeurl"><i class="icon-double-angle-right"></i>线下订单</a></li>
	                    </role:author>
	                    <role:author no="51">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/market/marketAppointment.do" title="预约信息"  class="iframeurl"><i class="icon-double-angle-right"></i>预约信息</a></li>
	                    </role:author>
	                    <role:author no="51">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/market/findListVipcn.do" title="动态管理"  class="iframeurl"><i class="icon-double-angle-right"></i>动态管理</a></li>
	                    </role:author>
	                    <role:author no="51">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/market/findListAttract.do" title="招商信息"  class="iframeurl"><i class="icon-double-angle-right"></i>招商信息</a></li>
	                    </role:author>
	                    <role:author no="51">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/market/marketProiList.do" title="积分商品"  class="iframeurl"><i class="icon-double-angle-right"></i>积分商品</a></li>
	                    </role:author>
	                     <role:author no="51">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/market/storeProiList.do" title="福利管理"  class="iframeurl"><i class="icon-double-angle-right"></i>福利管理</a></li>
	                    </role:author>
	                    <role:author no="51">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/market/secondProiList.do" title="便民管理"  class="iframeurl"><i class="icon-double-angle-right"></i>便民管理</a></li>
	                    </role:author>
                   	</ul>
				  </li>
				 </role:author>
				 <role:author no="7">
                  <li>
					<a href="#" class="dropdown-toggle"><i class="icon-user"></i><span class="menu-text">商圈管理</span><b class="arrow icon-angle-down"></b></a>
                    <ul class="submenu">
                    	<role:author no="41">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/benefit/findCoalition.do" title="盟主商圈列表"  class="iframeurl"><i class="icon-double-angle-right"></i>盟主商圈列表</a></li>
	                    </role:author>
	                    <role:author no="42">
	                    <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/benefit/findBenefit.do" title="子联盟列表"  class="iframeurl"><i class="icon-double-angle-right"></i>子联盟列表</a></li>
	                    </role:author>
                   	</ul>
				  </li> 
				  </role:author>
				 		<role:author no="6">
						<li><a href="#" class="dropdown-toggle"><i class="icon-edit"></i><span class="menu-text"> 消息管理 </span><b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
								<role:author no="61">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/radio/index.do" title="广播列表" class="iframeurl"><i class="icon-double-angle-right"></i>广播列表</a></li>
								</role:author>
								<role:author no="62">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/tidings/index.do" title="消息列表" class="iframeurl"><i class="icon-double-angle-right"></i>消息列表</a></li>
                                </role:author>
                                <role:author no="63">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/join/index.do" title="加盟代理" class="iframeurl"><i class="icon-double-angle-right"></i>加盟代理</a></li>
                                </role:author>
                                <role:author no="64">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/opinion/index.do" title="意见反馈" class="iframeurl"><i class="icon-double-angle-right"></i>意见反馈</a></li>
                                </role:author>
                                <role:author no="65">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/company/news/index.do" title="官网新闻" class="iframeurl"><i class="icon-double-angle-right"></i>官网新闻</a></li>
                                </role:author>
                                <role:author no="66">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/company/opinion/index.do" title="官网意见反馈" class="iframeurl"><i class="icon-double-angle-right"></i>官网意见反馈</a></li>
                                </role:author>
							</ul>
						</li>
						</role:author>
						<role:author no="7">
						<li><a href="#" class="dropdown-toggle"><i class="icon-file-text-alt"></i><span class="menu-text"> 评价管理 </span><b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
								<role:author no="71">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/evaluate/home.do" title="评价列表" class="iframeurl"><i class="icon-double-angle-right"></i>评价列表</a></li>
								</role:author>
								<role:author no="72">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/evaluate/dustbin.do" title="垃圾箱" class="iframeurl"><i class="icon-double-angle-right"></i>垃圾箱</a></li>
                                </role:author>
							</ul>
						</li>
						</role:author>
						<role:author no="8">
                        <li><a href="#" class="dropdown-toggle"><i class="icon-list"></i><span class="menu-text"> 分销管理 </span><b class="arrow icon-angle-down"></b></a> 
 							<ul class="submenu">
 							<role:author no="81">
							   <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/distribution/user/index.do" title="分销会员管理"  class="iframeurl"><i class="icon-double-angle-right"></i>分销会员管理</a></li>
 							</role:author> 
 							<role:author no="82">
		                       <li class="home"><a  href="javascript:void(0)" name="${pageContext.request.contextPath}/distribution/order/index.do"  title="分销订单列表" class="iframeurl"><i class="icon-double-angle-right"></i>分销订单管理</a></li>				
 							</role:author> 
 							<role:author no="83">
		                       <li class="home"><a  href="javascript:void(0)" name="${pageContext.request.contextPath}/distribution/productCate/index.do"  title="分销产品分类" class="iframeurl"><i class="icon-double-angle-right"></i>分销分类管理</a></li>				
 							</role:author> 
 							<role:author no="84">
                        	   <li class="home"><a  href="javascript:void(0)" name="${pageContext.request.contextPath}/distribution/product/index.do"  title="分销产品类表" class="iframeurl"><i class="icon-double-angle-right"></i>分销产品类表</a></li>
 							</role:author> 
 							<role:author no="85">
                        	   <li class="home"><a  href="javascript:void(0)" name="${pageContext.request.contextPath}/distribution/withdraw/index.do"  title="分销提现管理" class="iframeurl"><i class="icon-double-angle-right"></i>分销提现管理</a></li>
 							</role:author> 
 							<role:author no="86">
                        	   <li class="home"><a  href="javascript:void(0)" name="${pageContext.request.contextPath}/distribution/commission/index.do"  title="分销佣金明细" class="iframeurl"><i class="icon-double-angle-right"></i>分销佣金明细</a></li>
 							</role:author> 
 							<role:author no="87">
                        	   <li class="home"><a  href="javascript:void(0)" name="${pageContext.request.contextPath}/distribution/financial/index.do"  title="分销财务明细" class="iframeurl"><i class="icon-double-angle-right"></i>分销财务明细</a></li>
 							</role:author> 
							</ul> 
						</li> 
						</role:author> 
					 <role:author no="9">
						<li><a href="#" class="dropdown-toggle"><i class="icon-edit"></i><span class="menu-text"> 红包代金券</span><b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
							<role:author no="91">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/redpack/index.do" title="红包概率列表" class="iframeurl"><i class="icon-double-angle-right"></i>红包概率</a></li>
							</role:author>
							<role:author no="92">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/redpack/queryBufaRedCount.do" title="红包补发" class="iframeurl"><i class="icon-double-angle-right"></i>红包补发</a></li>
							</role:author>
							<role:author no="93">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/red_fafang.jsp" title="红包发放" class="iframeurl"><i class="icon-double-angle-right"></i>红包发放</a></li>
							</role:author>
							<role:author no="94">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/red_qiyefukuan.jsp" title="企业转账" class="iframeurl"><i class="icon-double-angle-right"></i>企业转账</a></li>
							</role:author>
							<role:author no="911">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/user/queryWanghongCount.do" title="网销提现" class="iframeurl"><i class="icon-double-angle-right"></i>网销提现</a></li>
							</role:author>
							<role:author no="910">
								<li class="home"><a href="https://pay.weixin.qq.com/index.php/extend/mktcreatebatch/createBatch/3"  target="_blank" name="" title="代金券创建" class="iframeurl"><i class="icon-double-angle-right"></i>代金券创建</a></li>
							</role:author>
							<role:author no="95">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/red_voucher_add.jsp" title="代金券添加" class="iframeurl"><i class="icon-double-angle-right"></i>代金券添加</a></li>
							</role:author>
							<role:author no="99">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/redpack/queryVoucherCount.do" title="代金券可用" class="iframeurl"><i class="icon-double-angle-right"></i>代金券可用</a></li>
								</role:author>
							<role:author no="96">

								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/redpack/queryFzvoruserCount.do" title="代金券发放" class="iframeurl"><i class="icon-double-angle-right"></i>代金券发放</a></li>
							</role:author>
							<role:author no="97">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/redpack/queryOverdueVouchersCountBytime.do" title="代金券已过期列表" class="iframeurl"><i class="icon-double-angle-right"></i>代金券已过期</a></li>
							</role:author>
							<role:author no="98">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/redpack/getActivitiesCountList.do" title="代金券未使用列表" class="iframeurl"><i class="icon-double-angle-right"></i>代金券未使用</a></li>
							</role:author>
								
							</ul>
						</li>
						</role:author>
						<role:author no="10">
						<li><a href="#" class="dropdown-toggle"><i class="icon-share"></i><span class="menu-text">后台管理 </span><b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
							<role:author no="101">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/index.do" title="加盟商超" class="iframeurl"><i class="icon-double-angle-right"></i>加盟商超</a></li>
							</role:author>
							<role:author no="102">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/amount.do" title="收款列表" class="iframeurl"><i class="icon-double-angle-right"></i>收款列表</a></li>
							</role:author>
							<role:author no="103">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/payment.do" title="结算列表" class="iframeurl"><i class="icon-double-angle-right"></i>结算列表</a></li>
							</role:author>
							 <role:author no="104">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/redpack.do" title="代理商管理" class="iframeurl"><i class="icon-double-angle-right"></i>代理商管理</a></li>
							</role:author> 

							<role:author no="104">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/commission.do" title="佣金比例" class="iframeurl"><i class="icon-double-angle-right"></i>佣金比例</a></li>
							</role:author>
							<role:author no="104">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/commissionSettlement.do" title="佣金结算单" class="iframeurl"><i class="icon-double-angle-right"></i>佣金结算单</a></li>
							</role:author>
							<role:author no="106">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/salesman.do" title="业务员列表" class="iframeurl"><i class="icon-double-angle-right"></i>业务员列表</a></li>
							</role:author>
							<role:author no="106">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/ceiling.do" title="商户推荐新人管理" class="iframeurl"><i class="icon-double-angle-right"></i>商户推荐新人管理</a></li>
							</role:author>
							<role:author no="106">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/fashionable.do" title="商户分账管理" class="iframeurl"><i class="icon-double-angle-right"></i>商户分账管理</a></li>
							</role:author>
							</ul>
						</li>
						</role:author>
							<role:author no="12">
						<li><a href="#" class="dropdown-toggle"><i class="icon-share"></i><span class="menu-text">会员系统管理 </span><b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
							<role:author no="101">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/members/index.do" title="会员门店" class="iframeurl"><i class="icon-double-angle-right"></i>会员门店</a></li>
							</role:author>
							<role:author no="102">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/amount.do" title="收款列表" class="iframeurl"><i class="icon-double-angle-right"></i>收款列表</a></li>
							</role:author>
							<role:author no="103">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/payment.do" title="结算列表" class="iframeurl"><i class="icon-double-angle-right"></i>结算列表</a></li>
							</role:author>
							 <role:author no="104">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/redpack.do" title="代理商管理" class="iframeurl"><i class="icon-double-angle-right"></i>代理商管理</a></li>
							</role:author> 

							<role:author no="104">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/commission.do" title="佣金比例" class="iframeurl"><i class="icon-double-angle-right"></i>佣金比例</a></li>
							</role:author>
							<role:author no="104">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/commissionSettlement.do" title="佣金结算单" class="iframeurl"><i class="icon-double-angle-right"></i>佣金结算单</a></li>
							</role:author>
							<role:author no="106">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/salesman.do" title="业务员列表" class="iframeurl"><i class="icon-double-angle-right"></i>业务员列表</a></li>
							</role:author>
							<role:author no="106">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/ceiling.do" title="商户推荐新人管理" class="iframeurl"><i class="icon-double-angle-right"></i>商户推荐新人管理</a></li>
							</role:author>
							<role:author no="106">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/alliance/fashionable.do" title="商户分账管理" class="iframeurl"><i class="icon-double-angle-right"></i>商户分账管理</a></li>
							</role:author>
							</ul>
						</li>
						</role:author>
						<role:author no="110">
                        <li><a href="#" class="dropdown-toggle"><i class="icon-group"></i><span class="menu-text"> 管理员管理 </span><b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
							<role:author no="111">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/user/rolelist.do" title="角色管理"  class="iframeurl"><i class="icon-double-angle-right"></i>角色管理</a></li>
							</role:author>
							<role:author no="112">
                                <li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/user/list.do" title="管理员列表" class="iframeurl"><i class="icon-double-angle-right"></i>管理员列表</a></li>
							</role:author>
							</ul>
						</li>
						</role:author>
							<role:author no="110">
                        <li><a href="#" class="dropdown-toggle"><i class="icon-group"></i><span class="menu-text"> 房产管理</span><b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
							<role:author no="111">
								<li class="home"><a href="javascript:void(0)" name="${pageContext.request.contextPath}/manager/market/marketList.do" title="房产管理"  class="iframeurl"><i class="icon-double-angle-right"></i>房产管理</a></li>
							</role:author>
							</ul>
						</li>
						</role:author>
					</ul>
					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>
                    <script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>
				<div class="main-content">
                <script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>
					<div class="breadcrumbs" id="breadcrumbs">
						<ul class="breadcrumb">
							<li style="padding-top:7px;">
								<i class="icon-home home-icon"></i>
								<a href="${pageContext.request.contextPath}/manager/system/index.do">首页</a>
							</li>
							<li class="active"><span class="Current_page iframeurl"></span></li>
                            <li class="active" id="parentIframe"><span class="parentIframe iframeurl"></span></li>
							<li class="active" id="parentIfour"><span class="parentIfour iframeurl"></span></li>
						</ul>
					</div>
                    
                 <iframe id="iframe" style="border:0; width:100%; background-color:#FFF;" name="iframe" frameborder="0" src="${pageContext.request.contextPath}/manager/system/home.do">  </iframe>
				 

<!-- /.page-content -->
				</div><!-- /.main-content -->	
                
                  <div class="ace-settings-container" id="ace-settings-container">
                      <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                          <i class="icon-cog bigger-150"></i>
                      </div>
  
                      <div class="ace-settings-box" id="ace-settings-box">
                          <div>
                              <div class="pull-left">
                                  <select id="skin-colorpicker" class="hide">
                                      <option data-skin="default" value="#438EB9">#438EB9</option>
                                      <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                      <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                      <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                  </select>
                              </div>
                              <span>&nbsp; 选择皮肤</span>
                          </div>
  
                          <div>
                              <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                              <label class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
                          </div>
  
                          <div>
                              <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                              <label class="lbl" for="ace-settings-rtl">切换到左边</label>
                          </div>
  
                          <div>
                              <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                              <label class="lbl" for="ace-settings-add-container">
                                  切换窄屏
                                  <b></b>
                              </label>
                          </div>
                      </div>
                  </div><!-- /#ace-settings-container -->		
	</div><!-- /.main-container-inner -->
			
		</div>
         <!--底部样式-->
       
<!--          <div class="footer_style" id="footerstyle">   -->
<!--           <p class="l_f">版权所有：南京四美软件  苏ICP备11011739号</p> -->
<!--           <p class="r_f">地址：南京市鼓楼区阅江楼街道公共路64号  邮编：210011 技术支持：XXXX</p> -->
<!--          </div> -->
         <!--修改密码样式-->
         <div class="change_Pass_style" id="change_Pass">
            <ul class="xg_style">
             <li><label class="label_name">原&nbsp;&nbsp;密&nbsp;码</label><input name="原密码" type="password" class="" id="password"></li>
             <li><label class="label_name">新&nbsp;&nbsp;密&nbsp;码</label><input name="新密码" type="password" class="" id="Nes_pas"></li>
             <li><label class="label_name">确认密码</label><input name="再次确认密码" type="password" class="" id="c_mew_pas"></li>
              
            </ul>
     <!--       <div class="center"> <button class="btn btn-primary" type="button" id="submit">确认修改</button></div>-->
         </div>
        <!-- /.main-container -->
		<!-- basic scripts -->
		
</body>
</html>

