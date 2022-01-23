let menuToggle = document.querySelector('.deck-btn');
let sidebar = document.querySelector('.sidebar');
let statusUpdate = document.querySelector('.btn-status');
let modal = document.querySelector('.modal-status');

let closeBtn = document.querySelector('.closeBtn');

let statusUpdate1 = document.querySelector('.input-post-btn');
menuToggle.onclick = function(){
    sidebar.classList.toggle('active');
}


statusUpdate.onclick = function(){
    modal.classList.toggle('modal');
    disableScroll()
}
statusUpdate1.onclick = function(){
    modal.classList.toggle('modal');
    disableScroll()
}

closeBtn.onclick = function(){
    modal.classList.toggle('modal');
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