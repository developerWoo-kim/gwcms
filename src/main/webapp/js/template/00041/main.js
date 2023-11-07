//팝업존
$(document).ready(function(){		
	var param = "#popup";
	var obj = ".pop>li";
	var btn = param+" .control";
	var interval = 5000; 
	var speed = 0;
	var viewSize = 1;
	var moreSize = 0;
	var dir = "x";
	var data = 0;
	var auto = true;
	var hover = false;
	var method = "easeInOutCubic";
	var op1 = false;		 
	stateScrollObj(param,obj,btn,interval,speed,viewSize,moreSize,dir,data,auto,hover,method,op1);
});

//배너존
$(document).ready(function(){		
	var param = "#mbanner";
	var obj = ".obj>li";
	var btn = param+" .control";
	var interval = 4000;
	var speed = 600;
	var viewSize = 1;
	var moreSize = 0;
	var dir = "x";
	var data = 0;
	var auto = true;
	var hover = false;
	var method = "easeInOutCubic";
	var op1 = false;
	stateScrollObj(param,obj,btn,interval,speed,viewSize,moreSize,dir,data,auto,hover,method,op1);		
});

