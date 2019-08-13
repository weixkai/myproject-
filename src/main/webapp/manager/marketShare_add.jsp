<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<script type="text/javascript" src="js/respond.min.js"></script>
<script type="text/javascript" src="js/PIE_IE678.js"></script>
<![endif]-->
<link href="${pageContext.request.contextPath}/manager/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/manager/css/style.css"/>       
<link href="${pageContext.request.contextPath}/manager/assets/css/codemirror.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/manager/assets/css/ace.min.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/manager/Widget/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/manager/assets/css/font-awesome.min.css" />
<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
<link href="${pageContext.request.contextPath}/manager/Widget/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/manager/Widget/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/manager/css/upload.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/manager/css/pro_add.css" rel="stylesheet" type="text/css" charset="utf-8"/>
<title>新增活动</title>
</head>
<body>
<input type="hidden" id="root" value="${pageContext.request.contextPath}"/>
<div class="clearfix" id="add_picture">
<div id="scrollsidebar" class="left_Treeview">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="widget-box side_content" >
     <div class="side_list">
 
  </div>
  </div>  
  </div>
   <div class="page_right_style">
   <div class="type_title">添加活动</div>
	<form action="" method="post" class="form form-horizontal" id="form-article-add">
		<div class="clearfix cl">
			<label class="form-label col-2"><span style="color:red">*</span>活动图片：</label>
			<div class="formControls col-2">
				<img alt="" src="" id='small-img' style="width:50px;height:50px;">
				<input type="file" style="display: none;" id="imgSmall" name="imgSmall"/>
				<span id="btn-img-add0" onclick="imgSmall.click()" class="btn btn-success">添加图片</span>
			</div>
		</div>
		<div class=" clearfix cl">
         <label class="form-label col-2"><span style="color:red">*</span>活动描述：</label>
	     <div class="formControls col-10"><input maxlength="200" type="text" class="input-text" value="" placeholder="" id="productDetails" onchange="productData.productDetails=this.value"></div>
		</div>
		<div class="clearfix cl">
			<div class="Add_p_s">
            <label class="form-label col-2"><span style="color:red"></span>所属店铺：</label>
			<div class="formControls col-2"><input type="hidden" value="${supermarketInfo.id }"  id="marketid"><input maxlength="20" type="text" class="input-text" value="${supermarketInfo.name }" placeholder="" ></div>
            </div>
		</div>
			<div class="clearfix cl">
			<label class="form-label col-2"><span style="color:red">*</span>轮播图：</label>
			<div class="formControls col-10">
				<div id="btn-container1" class="panel panel-default btn-container">
				</div>
				<input type="file" multiple="multiple" style="display:none;" id="banners" name="banners" class="btn-files1"/>
				<span id="btn-img-add1" onclick="banners.click()" class="btn btn-success">添加图片</span>
			</div>
		</div>
		<div class="clearfix cl">
         <label class="form-label col-2"><span style="color:red">*</span>活动标题：</label>
		 <div class="formControls col-10"><input maxlength="200" type="text" class="input-text" value="" placeholder="" id="productName" onchange="productData.productName=this.value"></div>
		</div>
		<div class="clearfix cl">
			<label class="form-label col-2"><span style="color:red">*</span>视频封面：</label>
			<div class="formControls col-2">
				<img alt="" src="" id='small-img1' style="width:50px;height:50px;">
				<input type="file" style="display: none;" id="imgSmall1" name="imgSmall1"/>
				<span id="btn-img-add0" onclick="imgSmall1.click()" class="btn btn-success">添加图片</span>
			</div>
		</div>
 		<div class="clearfix cl">
			<label class="form-label col-2"><span style="color:red">*</span>活动视频：</label>
			<div class="formControls  col-2">
				<img alt="" src="" id='large-img' style="width:50px;height:50px;">
				<input type="file"name="videofile" id="videofile" onchange="test(this.files)"><br>
			</div>
		</div>
		<div class="clearfix cl">
			<label class="form-label col-2"><span style="color:red">*</span>mp3：</label>
			<div class="formControls  col-2">
				<img alt="" src="" id='large-img' style="width:50px;height:50px;">
				<input type="file"name="mp3file" id="mp3file" onchange="testmp3(this.files)"><br>
			</div>
		</div>
		
		<div class="clearfix cl">
			<label class="form-label col-2"><span style="color:red">*</span>活动详情：</label>
			<div class="formControls col-10 ">
			<div id="btn-container" class="panel panel-default btn-container">
			</div>
			<input type="file" multiple="multiple" style="display: none;" id="files1" name="files1" class="btn-files"/>
			<span id="btn-img-add" onclick="files1.click()" class="btn btn-success">添加图片</span>
			</div>
		</div>
		<div class="clearfix cl">
         <label class="form-label col-2"><span style="color:red"></span>活动名称：</label>
		 <div class="formControls col-10"><input maxlength="50" type="text" class="input-text" value="" placeholder="" id="productUrl" onchange="productData.productUrlName=this.value"></div>
		</div>
		<div class="clearfix cl">
         <label class="form-label col-2"><span style="color:red"></span>活动外链：</label>
		 <div class="formControls col-10"><input maxlength="200" type="text" class="input-text" value="" placeholder="" id="productUrl" onchange="productData.productUrl=this.value"></div>
		</div>
		<div class="clearfix cl">
			<label class="form-label col-2"><span style="color:red">*</span>间隔图：</label>
			<div class="formControls col-2">
				<img alt="" src="" id='small-img2' style="width:50px;height:50px;">
				<input type="file" style="display: none;" id="imgSmall2" name="imgSmall2"/>
				<span id="btn-img-add0" onclick="imgSmall2.click()" class="btn btn-success">添加图片</span>
			</div>
		</div>
		<div class="clearfix cl">
         <label class="form-label col-2"><div style="display: flex;justify-content: space-between;"><span style="    width: 30rem;">活动表单：</span><input maxlength="50" type="checkbox" class="input-text" value="" placeholder="" id="productRadio"></div></label>
		 <div class="formControls col-10"></div>
		</div>
		<div class="clearfix cl">
         <label class="form-label col-2"><span style="color:red"></span>表单按钮：</label>
		 <div class="formControls col-10"><input maxlength="50" type="text" class="input-text" value="" placeholder="" id="productButton" onchange="productData.productButton=this.value"></div>
		</div>
		<div class="clearfix cl">
			<div class="Button_operation">
				<span onClick="product_save_submit();" class="btn btn-primary radius"><i class="icon-save"></i>保存</span>
				<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
    </div>
</div>
</div>
<script src="${pageContext.request.contextPath}/manager/js/jquery-1.9.1.min.js"></script>   
<script src="${pageContext.request.contextPath}/manager/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/manager/assets/js/typeahead-bs2.min.js"></script>
<script src="${pageContext.request.contextPath}/manager/assets/layer/layer.js" type="text/javascript" ></script>
<script src="${pageContext.request.contextPath}/manager/assets/laydate/laydate.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/manager/Widget/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/manager/Widget/icheck/jquery.icheck.min.js"></script> 
 <script type="text/javascript" src="${pageContext.request.contextPath}/manager/Widget/zTree/js/jquery.ztree.all-3.5.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/manager/Widget/Validform/5.3.2/Validform.min.js"></script> 
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/manager/Widget/webuploader/0.1.5/webuploader.min.js"></script> --%>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/manager/Widget/ueditor/1.4.3/ueditor.config.js"></script> --%>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/manager/Widget/ueditor/1.4.3/ueditor.all.min.js"> </script> --%>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/manager/Widget/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>  --%>
<script src="${pageContext.request.contextPath}/manager/js/lrtk.js" type="text/javascript" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/manager/js/H-ui.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/manager/js/H-ui.admin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/manager/js/pro_add.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/manager/js/pro_source.js"></script>  
<script type="text/javascript">

$(function() { 
	$("#add_picture").fix({
		'float' : 'left',
		skin : 'green',	
		durationTime :false,
		stylewidth:'220',
		spacingw:0,
		spacingh:260,
	});
});
$( document).ready(function(){
//初始化宽度、高度
  
   $(".widget-box").height($(window).height()); 
   $(".page_right_style").height($(window).height()); 
   $(".page_right_style").width($(window).width()-220); 
  //当文档窗口发生改变时 触发  
    $(window).resize(function(){
	 $(".widget-box").height($(window).height()); 
	 $(".page_right_style").height($(window).height()); 
	 $(".page_right_style").width($(window).width()-220); 
	});	
});
// $(function(){
// 	var ue = UE.getEditor('editor');
// });
/******树状图********/
var setting = {
	view: {
		dblClickExpand: false,
		showLine: false,
		selectedMulti: false
	},
	data: {
		simpleData: {
			enable:true,
			idKey: "id",
			pIdKey: "pId",
			rootPId: ""
		}
	},
	callback: {
		beforeClick: function(treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("tree");
			if (treeNode.isParent) {
				zTree.expandNode(treeNode);
				return false;
			} else {
				productData.typeId = treeNode.id;
				return true;
			}
		}
	}
};

var zNodes =${array};
		
var code;
		
function showCode(str) {
	if (!code) code = $("#code");
	code.empty();
	code.append("<li>"+str+"</li>");
}
$(document).ready(function(){
	var t = $("#treeDemo");
	t = $.fn.zTree.init(t, setting, zNodes);
	demoIframe = $("#testIframe");
	//demoIframe.bind("load", loadReady);
	var zTree = $.fn.zTree.getZTreeObj("tree");
	//zTree.selectNode(zTree.getNodeByParam("id",'11'));
});			
</script>
<script type="text/javascript">
var files=null;
function getSuffix(id){
	var dom=document.getElementById(id).value;//根据id得到值
	var index=dom.lastIndexOf(".")//得到最后一个"."在第几位
	return dom.substring(index).toLowerCase(); //截断"."之前的，得到后缀[忽略大写]
}	
function test(obj){
	files = obj;
	var suffix=getSuffix('videofile');
	if(suffix!=".mp4"&&suffix!=".avi"&&suffix!=".3gp"&&suffix!=".rmvb"&&suffix!=".rm"){  //根据后缀，判断是否符合图片格式
		layer.msg("不是指定视频格式,重新选择"); 
        
   }
}
var mp3file=null;
function testmp3(obj){
	mp3file = obj;
	var suffix=getSuffix('mp3file');
	if(suffix!=".mp3"){  //根据后缀，判断是否符合图片格式
		layer.msg("不是指定音频格式,重新选择"); 
   }
}

//数据提交
var productData={};
function product_save_submit(){
/* 	if(!productData.typeId){
		layer.msg('请现选择左侧商品分类！');
		return false;
	} */
	if(!productData.productName||productData.productName.replace(/^\s+|\s+$/g,'')==''){
		layer.msg('请现填写商品标题！');
		return false;
	}
	if(!productData.productDetails||productData.productDetails.replace(/^\s+|\s+$/g,'')==''){
		layer.msg('请现填写简略标题！');
		return false;
	}
	var marketid=$('#marketid').val();
/* 	if(!productData.productNumber||productData.productNumber.replace(/^\s+|\s+$/g,'')==''){
		layer.msg('请现填写产品编号！');
		return false;
	} */
/* 	if(!productData.productKeys||productData.productKeys.replace(/^\s+|\s+$/g,'')==''){
		layer.msg('请现填写关键词！');
		return false;
	} */
	/* if(!productData.province||productData.province.replace(/^\s+|\s+$/g,'')==''){
		layer.msg('请现填写所属省份！');
		return false;
	}
	if(!productData.productArea||productData.productArea.replace(/^\s+|\s+$/g,'')==''){
		layer.msg('请现填写产地！');
		return false;
	} */
	/* var group = $('.spec-group');
	if(group.length==0){
		return false;
	}
	var inputs = group.eq(0).find('input');
	productData.spec = [];
	group.each(function(){
		var input = $(this).find('input');
		if(!input.eq(0).val()||!input.eq(1).val()
				||!input.eq(2).val()){
			var s = {
					original:0,
					current:0,
					repertory:0
				};
		}else{
			var s = {
				original:input.eq(0).val(),
				current:input.eq(1).val(),
				repertory:input.eq(2).val()
			};
			
			productData.spec.push(s);
		}
	}); */
	if(!productData.imgSmall){
		layer.msg("请添加商品图片！");
		return false;
	}
	/*  if(productData.banners.length==0){
		layer.msg("请添加商品轮播图！");
		return false;
	}  */
	if(productData.fileData.length==0){
		layer.msg("请添加商品详情！");
		return false;
	}
	var formData = new FormData();
	for(var i=0;i<productData.fileData.length;i++){
		formData.append('files',productData.fileData[i]);
	}
	var productRadio;
	 if ($("#productRadio").get(0).checked) {
		 productRadio=1;
	    }else{
	    productRadio=0;
	    }
	
	
	for(var i=0;i<productData.banners.length;i++){
		formData.append('banners',productData.banners[i]);
	} 
	if(files!=null){
		formData.append('videofile',files[0]);
	}
	if(mp3file!=null){
		formData.append('mp3file',mp3file[0]);
	}
	//formData.append('typeId',productData.typeId);
	formData.append('marketid',marketid);
	formData.append('imgSmall',productData.imgSmall);
	//视频封面图
	formData.append('imgSmall1',productData.imgSmall1);
	//推广海报
	formData.append('imgSmall2',productData.imgSmall2);
	//推广海报
	formData.append('productName',productData.productName);
	formData.append('productDetails',productData.productDetails);
	
	formData.append('productRadio',productRadio);
	var productUrl='';
	if(!productData.productUrl||productData.productUrl.replace(/^\s+|\s+$/g,'')==''){
	}else{
		productUrl=productData.productUrl;
	}

	formData.append('productUrl',productUrl);
	var productUrlName='';
	if(!productData.productUrlName||productData.productUrlName.replace(/^\s+|\s+$/g,'')==''){
	}else{
		productUrlName=productData.productUrlName;
	}
	formData.append('productUrlName',productUrlName);
	
	var productButton='';
	if(!productData.productButton||productData.productButton.replace(/^\s+|\s+$/g,'')==''){
	}else{
		productButton=productData.productButton;
	}
	formData.append('productButton',productButton);
	//formData.append('productNumber',productData.productNumber);
	/* formData.append('productKeys',productData.productKeys); */
	//formData.append('province',productData.province);
	/* if(productData.productDegree){
		formData.append('degree',productData.productDegree);
	} */
	/* if(productData.productRecom){
		formData.append('recom',productData.productRecom);
	} */
	/* if(productData.productSource){
		formData.append('productSource',productData.productSource);
	} */
	/* if(productData.thirdID){
		formData.append('productID',productData.thirdID);
	} */
	//formData.append('productArea',productData.productArea);
	/* formData.append('productSpec',JSON.stringify(productData.spec)); */
	var httpRequest = new XMLHttpRequest();  
    httpRequest.onreadystatechange = function(){  
        if(httpRequest.readyState == 4 && httpRequest.status == 200){  
            var data = JSON.parse(httpRequest.responseText);
            if(data.code==0){
            	if(data.result==true){
            		layer.msg("新增成功！");
            		setTimeout(function(){
            			document.location.reload();
            		},1500);            		
            	}
            }
        }  
    };  
    httpRequest.open("post",'${pageContext.request.contextPath}/manager/market/uploadShare.do',true);  
    //httpRequest.setRequestHeader("Content-type","multipart/form-data");  
    httpRequest.send(formData); 
}
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/manager/js/upload.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/manager/js/upload2.js"></script> 
</body>
</html>