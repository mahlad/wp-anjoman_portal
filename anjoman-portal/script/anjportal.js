/*----------Slideshow----------*/
$(function(){
	var all_txt=$('div.slideshow > .sltext > ul.eachtxt'),
		each_txt=$('div.slideshow > .sltext > ul.eachtxt li'),
		all_pic=$('div.slideshow div.slpic .eachimg'),
		each=$('div.slideshow div.slpic .eachimg img'),
		total_img=$('div.slideshow div.slpic .eachimg img').length,
		curr_slid=0;
	(goToslide=function(n){
		if(n<0)n=total_img-1;
		if(n>total_img-1)n=0;
		var right_pic=-555*n;
		all_pic.css({'right':right_pic+'px'});
		curr_slid=n;
	})(0);
	nextslide=function(){
			goToslide(curr_slid+1);
		};
	var auto=false;
		(autoplay=function(){
			if(auto) return;
			auto=setInterval(nextslide,2500);
		})();
	stop_autoplay=function(){
		clearInterval(auto)
		auto=false
	}
	all_pic.mouseout(autoplay);
	all_pic.mouseover(stop_autoplay);
	each_txt.click(function(){
		stop_autoplay();
		goToslide($(this).index());
		//alert($(this).index())
	});
	all_txt.mouseover(function(){
		autoplay();
	})
})