//	Duolingo Next Lesson Bookmarklet
//	scroll to next incomplete lesson in duolingo
//	v1.0	[√] tested on 2017/04/23
//	© 2017 Max Garber <max.garber+dev@gmail.com>

// raw javascript block -- block enclosures omitted
var n=document.getElementsByClassName('unlocked');
window.scrollTo(0,(n[n.length-1]).offsetTop);


//EOF
