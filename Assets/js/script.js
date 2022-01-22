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

let menuToggle = document.querySelector('.deck-btn');
let sidebar = document.querySelector('.sidebar');
let topicitem = document.getElementsByClassName('topic-gallery-item');
let galleryItem = document.getElementsByClassName('gallery-item');

menuToggle.onclick = function(){
    sidebar.classList.toggle('active');
}

for (var i = 0; i < topicitem.length; i++) {
    topicitem[i].onclick = function(){
        window.location.href = 'topic_gallery.html';
    }
}

for (var i = 0; i < galleryItem.length; i++) {
    galleryItem[i].onclick = function(){
        window.location.href = 'artdetails.html';
    }
}


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