var nav = document.getElementById('navi');
                window.onscroll = function(){
                                if(window.pageYOffset >100){
                                                nav.style.background= "white";
                                                nav.style.boxShadow="0px 4px 2px black";
                                }
                                else{
                                                nav.style.background = "transparent";
                                                nav.style.boxShadow="none";
                                }
                }