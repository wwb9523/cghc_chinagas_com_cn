		var une_active = 1;
		var une_switch = false;
		function afficher_une(num) {
			if (num == une_active) return false;
			if (une_switch) return false;
			une_switch = true;
			$('.selec_une img').attr('src', '/Public/Images/blanc-off.png');
			$('#selec_une' + num + ' img').attr('src', '/Public/Images/blanc-on.png');
			// $(".selec_une").fadeOut();
			//$(".selec_fleche").fadeOut();
			$("#une" + une_active + " .selection0").animate({"left": "-490px" }, 300, "easeOutQuad", function() {
				$("#une" + une_active + " .selection2").animate({"right": "-320px" }, 100, "easeOutQuad", function() {
					$("#une" + une_active + " .selection1").animate({"left": "-320px" }, 100, "easeOutQuad", function() {
						$('#une' + une_active).hide();
						$('#une' + num + " .selection0").css({"left": "-490px" });
						$('#une' + num + " .selection1").css({"left": "-320px" });
						$('#une' + num + " .selection2").css({"right": "-320px" });
						$('#une' + num).show();
							$('#une' + num + " .selection2").animate({"right": "60px" }, 200, "easeOutQuad", function() {
								$('#une' + num + " .selection1").animate({"left": "60px" }, 200, "easeOutQuad", function() {
									$('#une' + num + " .selection0").animate({"left": "240px" }, 300, "easeOutQuad");
									// $(".selec_une").fadeIn();
									// $(".selec_fleche").fadeIn();
									une_active = num;
									une_switch = false;
								});
							});
					});
				});
			});
		}
		function afficher_une_suivante() {
			var une = une_active + 1;
			if (une > 3) une = 1;
			afficher_une (une);
		}
		function afficher_une_precedante() {
			var une = une_active - 1;
			if (une < 1) une = 3;
			afficher_une (une);
		}
		var num_competence = 1;
		function animer_competences(num) {
			if (num == -1) num = num_competence - 1;
			if (num == 10) num = num_competence + 1;
			if (num > 3) num = 1;
			if (num < 1) num = 3;
			if (num == num_competence) return false;
			$("#competences .gris").attr("src", "/Public/Images/gris-off.png");
			$("#competences #gris"+num).attr("src", "/Public/Images/gris-on.png");
			$('#competences .conteneur ul').animate({'marginLeft' : ((num-1) * -960) + 'px'}, "easeInOutCirc"); 
			num_competence = num;
			return false;
		}
		$(document).ready(function() {
			$(".selection1 .click").bind("mouseover", function() {
				if (!une_switch) {
					$("#une" + une_active + " .selection0").stop().animate({"left": "340px"}, 200, "easeOutCirc")
					$("#une" + une_active + " .selection1").stop().animate({"left": "0px"}, 200, "easeOutCirc")
				}
			});
			$(".selection1 .click").bind("mouseout", function() {
				if (!une_switch) {
					$("#une" + une_active + " .selection0").stop().animate({"left": "240px"}, 400, "easeOutCirc")
					$("#une" + une_active + " .selection1").stop().animate({"left": "60px"}, 400, "easeOutCirc")
				}
			});
			$(".selection2 .click").bind("mouseover", function() {
				if (!une_switch) {
					$("#une" + une_active + " .selection0").stop().animate({"left": "140px"}, 200, "easeOutCirc")
					$("#une" + une_active + " .selection2").stop().animate({"right": "0px"}, 200, "easeOutCirc")
				}
			});
			$(".selection2 .click").bind("mouseout", function() {
				if (!une_switch) {
					$("#une" + une_active + " .selection0").stop().animate({"left": "240px"}, 400, "easeOutCirc")
					$("#une" + une_active + " .selection2").stop().animate({"right": "60px"}, 400, "easeOutCirc")
				}
			});
			$(".selection li .click").bind("mouseover", function() {
				if (!une_switch) {
					$(this).parent("li").children(".plus").fadeIn("slow");						
					$(this).parent("li").children(".texte").animate({"marginTop": "0px"}, 200, function() {
						$(this).children(".chapo").animate({"marginLeft": "0px"});
					});
				}
			});
			$(".selection li .click").bind("mouseout", function() {
				if (!une_switch) {
					$(this).parent("li").children(".texte").children(".chapo").animate({"marginLeft": "-500px"}, 200, function () {
						$(this).parent(".texte").animate({"marginTop": "-200px"});
						$(this).parent(".texte").parent("li").children(".plus").fadeOut();
					});
				}
			});
		});