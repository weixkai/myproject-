
$('#imgSmall').on('change',function(e){
	var r = new FileReader();
	productData.imgSmall = e.target.files[0];
	r.readAsDataURL(e.target.files[0]);
	r.onload = function(e) {
		document.getElementById('small-img').src = this.result;
	}
});

$('#imgSmall1').on('change',function(e){
	var r = new FileReader();
	productData.imgSmall1 = e.target.files[0];
	r.readAsDataURL(e.target.files[0]);
	r.onload = function(e) {
		$("#small-img1").attr("src", this.result); 
	}
});
$('#imgLarge').on('change',function(e){
	var r = new FileReader();
	productData.imgLarge = e.target.files[0];
	r.readAsDataURL(e.target.files[0]);
	r.onload = function(e) {
		document.getElementById('large-img').src = this.result;
	}
});
$(document).on('click','.protime li',function(){
	var val = $(this).find('a').html();
	$(this).parents('ul').prev().find('span').first().html(val);
	$(this).parents('ul').prev().find('span').first().attr('qtype',$(this).attr('qtype'));
});