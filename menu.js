
	let windowsize;
	let positionTop;
	let positionRight;
	
	let num = 2;
	
	function threadMenuClicked(){
		positionTop = "4.05vw";
		positionRight = "4.6vw";
		openAndClose();
	}
	
	function responceMenuClicked(){
		positionTop = window.innerHeight / 2 + "px";
		positionRight = window.innerWidth / 2 + "px";
		openAndClose();
	}
	
	function openAndClose(){
		if(document.getElementById("post-effect-circle").style.width == "0px"){
			if(window.innerWidth > window.innerHeight){
				windowSize = window.innerWidth;
			}else{
				windowSize = window.innerHeight;
			}
			
			document.getElementById("post-effect-circle").style.width = windowSize * 3 + "px";
			document.getElementById("post-effect-circle").style.height = windowSize * 3 + "px";
			document.getElementById("post-effect-circle").style.top = windowSize * -1.5 + "px";
			document.getElementById("post-effect-circle").style.right = windowSize * -1.5 + "px";
			
			setTimeout(function(){
				document.getElementById("content").classList.add('pointer-events-none');
				document.getElementById("post-wrapper").classList.remove('display-none');
				document.getElementById("post-effect-circle").classList.add('effect-donut');
			}, 300);
			
			setTimeout(function(){
				document.getElementById("post-effect-circle").classList.add('display-none');
			},600);
		}else{
			
			document.getElementById("post-effect-circle").classList.remove('display-none');
			
			setTimeout(function(){
				document.getElementById("post-effect-circle").classList.remove('effect-donut');
			},10);
			
			setTimeout(function(){
				document.getElementById("post-wrapper").classList.add('display-none');
				document.getElementById("post-effect-circle").style.width = "0px";
				document.getElementById("post-effect-circle").style.height = "0px";
				document.getElementById("post-effect-circle").style.top = positionTop;
				document.getElementById("post-effect-circle").style.right = positionRight;
				document.getElementById("content").classList.remove('pointer-events-none');
			}, 300);
		}
	}
	
	function selectIcon(num){
		var element = document.getElementById("post-wrapper");
		var elements = element.icon;
		elements[num - 1].checked = true;
		
		document.getElementById("post-icon-0").classList.remove('post-icon-effect');
		document.getElementById("post-icon-1").classList.remove('post-icon-effect');
		document.getElementById("post-icon-2").classList.remove('post-icon-effect');
		document.getElementById("post-icon-3").classList.remove('post-icon-effect');
		
		document.getElementById("post-icon-" + (num - 1)).classList.add('post-icon-effect');
		
	}
