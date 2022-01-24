$('.carousel').owlCarousel({
    margin: 10,
    loop: true,
    autoplay: true,
    autoplayTimeOut: 2000,
    autoplayHoverPause: true,
    responsive: {
        0:{
            items: 1,
            nav: false
        },
        600:{
            items: 2,
            nav: false
        },
        800:{
            items: 4,
            nav: false
        },
        1000:{
            items: 5,
            nav: false
        },
        1200:{
            items: 6,
            nav: false
        },
        1920:{
            items: 7,
            nav: false
        }
    }
});




let list = document.querySelectorAll('.list');

    for (let i=0; i<list.length; i++){
        list[i].onclick = function(){
        let j = 0;
        while(j < list.length){
            list[j++].className = 'list';
        }
        list[i].className = 'list active';
        }
    }

function topicGallery(){
    window.location.href = 'topic_gallery.php';
}


function artdetails(){
    window.location.href = 'artdetails.php';
}


function sidebarNav(){
    let sidebar = document.querySelector('.sidebar'); 
    sidebar.classList.toggle('active');
 
}

function join(){
    let joinBtn = document.querySelector('.join-foot');

    joinBtn.onclick = function(){
        window.location.href = 'join.php';
    }
}

function login(){
    let loginBtn = document.querySelector('.login-foot');
    loginBtn.onclick = function(){
        window.location.href = 'login.php';
    }
    
}

function statusModal(){
    let modal = document.querySelector('.modal-status');

    modal.classList.toggle('modal');
    disableScroll()
}


function abyssalModal(){
    let modal_A = document.querySelector('.modal-abyssals');

    modal_A.classList.toggle('modal_A');
    disableScroll()
}

function statusModalClose(){
    let modal = document.querySelector('.modal-status');

    modal.classList.toggle('modal');
    enableScroll()
}


function abyssalModalClose(){
    let modal_A = document.querySelector('.modal-abyssals');

    modal_A.classList.toggle('modal_A');
    enableScroll()
}


function disableScroll() {
    // Get the current page scroll position
    scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    scrollLeft = window.pageXOffset || document.documentElement.scrollLeft,
  
        // if any scroll is attempted, set this to the previous value
        window.onscroll = function() {
            window.scrollTo(scrollLeft, scrollTop);
        };
}
  
function enableScroll() {
    window.onscroll = function() {};
}





function backGallery(){
    window.location.href = 'home.php';
}