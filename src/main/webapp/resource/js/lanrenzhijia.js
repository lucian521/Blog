/* 代码整理：懒人之家 www.lanrenzhijia.com */
$(function(){		
	//设计案例切换
	$('.title-list li').mouseover(function(){
		var liindex = $('.title-list li').index(this);
		$(this).addClass('on').siblings().removeClass('on');
		$('.product-wrap div.product').eq(liindex).fadeIn(150).siblings('div.product').hide();
		var liWidth = $('.title-list p').width();
		$('.lanrenzhijia .title-list p').stop(false,true).animate({'left' : liindex * liWidth+20 + 'px'},400);
	});
	
	//设计案例hover效果
	$('.product-wrap .product li').hover(function(){
		$(this).css("border-color","#ff6600");
		$(this).find('p > a').css('color','#ff6600');
	},function(){
		$(this).css("border-color","#fafafa");
		$(this).find('p > a').css('color','#666666');
	});
	});

$(function(){
	//设计案例切换
	$('.titlezfb-list li').mouseover(function(){
		var liindex = $('.titlezfb-list li').index(this);
		$(this).addClass('on').siblings().removeClass('on');
		$('.productzfb-wrap div.productzfb').eq(liindex).fadeIn(150).siblings('div.productzfb').hide();
		var liWidth = $('.titlezfb-list p').width();
		$('.lanrenzhijiazfb .titlezfb-list p').stop(false,true).animate({'left' : liindex * liWidth+10 + 'px'},400);
	});

	//设计案例hover效果
	$('.productzfb-wrap .productzfb li').hover(function(){
		$(this).css("border-color","#ff6600");
		$(this).find('p > a').css('color','#ff6600');
	},function(){
		$(this).css("border-color","#fafafa");
		$(this).find('p > a').css('color','#666666');
	});
});

