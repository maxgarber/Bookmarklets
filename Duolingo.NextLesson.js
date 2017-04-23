//	Duolingo.NextLesson.js
//	scroll to next incomplete lesson in duolingo
//	v1.0	[√] tested on 2017/04/23
//	© 2017 Max Garber <max.garber+dev@gmail.com>

javascript:(function(){
	var u = document.getElementsByClassName('unlocked');
	window.scrollTo(0,u[u.length-1].offsetTop-100);
});

//	encoded output: (converted by http://mrcoles.com/bookmarklet/)
javascript:(function()%7Bjavascript%3A(function()%7Bvar%20u%20%3D%20document.getElementsByClassName('unlocked')%3Bwindow.scrollTo(0%2Cu%5Bu.length-1%5D.offsetTop-100)%3B%7D)%7D)()

// EOF
