
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
		ositionRight = window.innerWidth / 2 + "px";
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
			document.getElementById("post-wrapper").classList.remove('display-none');
			
			setTimeout(function(){
				document.getElementById("content").classList.add('display-none');
				document.getElementById("post-wrapper").classList.remove('opacity-zero');
				document.getElementById("post-effect-circle").classList.add('opacity-zero');
				
			}, 300);
			
			setTimeout(function(){
				document.getElementById("post-effect-circle").classList.add('display-none');
			}, 600);
		}else{
			document.getElementById("post-wrapper").classList.add('opacity-zero');
			
			setTimeout(function(){
				document.getElementById("post-wrapper").classList.add('display-none');
				document.getElementById("post-effect-circle").classList.remove('opacity-zero');
				document.getElementById("post-effect-circle").classList.remove('display-none');
			}, 300);
			setTimeout(function(){
				document.getElementById("content").classList.remove('display-none');
				document.getElementById("post-effect-circle").style.width = "0px";
				document.getElementById("post-effect-circle").style.height = "0px";
				document.getElementById("post-effect-circle").style.top = positionTop;
				document.getElementById("post-effect-circle").style.right = positionRight;
			}, 600);
		}
	}
	
	function selectIcon(a){
		var element = document.getElementById("post-wrapper");
		var elements = element.icon;
		elements[a - 1].checked = true;
	}
