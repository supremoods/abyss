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

function topicGallery(temp){
    window.location.href = 'topic_gallery.php?topic='+temp;
}


function artdetails(temp){
    window.location.href = 'artdetails.php?abyssalsId='+temp;
}

function artFav(temp){
    $('.gallery-wrapper').load("./phpFunc/favUpdate.php",{'id': temp});
}

function artFavTopics(temp, topic){

    $('.gallery-wrapper').load("./phpFunc/favUpdateTopic.php",{
        'id': temp,
        'topic': topic
    });
}



function prevSlide(temp){
   
    window.location.href = 'artdetails.php?abyssalsId='+temp;
}

function nextSlide(temp){
    window.location.href = 'artdetails.php?abyssalsId='+temp;
}
function sidebarNav(){
    let sidebar = document.querySelector('.sidebar'); 
    let body = document.querySelector('.body-root')

    body.classList.toggle('active');
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
    let modal = document.querySelector('.modal-post');
    let body = document.querySelector('.body-root')
    
    modal.classList.toggle('modal');
    body.classList.toggle('modal');

}


function abyssalModal(){
    let modal_A = document.querySelector('.modal-abyssals');
    let body = document.querySelector('.body-root')

    modal_A.classList.toggle('modal_A');
    body.classList.toggle('modal');
}

function statusModalClose(){
    const coverImage = document.querySelector(".post-art");
    let modal = document.querySelector('.modal-post');
    let body = document.querySelector('.body-root')
    
    modal.classList.toggle('modal');
    body.classList.toggle('modal');

    coverImage.src = "Assets/img/sisu_bg-min.png"; 
    document.getElementById('add-post-btn').value = '';
    document.getElementById('post-title').value = '';
    document.getElementById('post-desc').value = '';

}


function abyssalModalClose(){
    let modal_A = document.querySelector('.modal-abyssals');
    let body = document.querySelector('.body-root')

    modal_A.classList.toggle('modal_A');
    body.classList.toggle('modal');
}


function backGallery(){
    window.location.href = 'home.php';
}

function modalProfile(){
    let profileModal = document.querySelector('.modal-upload-profile');
    let body = document.querySelector('.body-root')

    profileModal.classList.toggle('modal');
    body.classList.toggle('modal');
}

function modalCoverImage(){

    let coverProfileModal = document.querySelector('.modal-coverProfile-profile');
    let body = document.querySelector('.body-root')

    coverProfileModal.classList.toggle('modal');
    body.classList.toggle('modal');


}


function closeModalProfile(){
    let profileModal = document.querySelector('.modal-upload-profile');
    let body = document.querySelector('.body-root');
    let confirnmBtn = document.querySelector('.confirm-btn');
    
    profileModal.classList.toggle('modal');
    body.classList.toggle('modal');
    confirnmBtn.classList.toggle('modal');

    img.src = "";
    document.getElementById("confirmEnable").disabled = true;
}


function closeModalCoverProfile(){
    let profileModal = document.querySelector('.modal-coverProfile-profile');
    let body = document.querySelector('.body-root');
    let confirnmBtn = document.querySelector('.confirm-btn');
    
    profileModal.classList.toggle('modal');
    body.classList.toggle('modal');
    confirnmBtn.classList.toggle('modal');

    img.src = "";
    document.getElementById("confirmEnable").disabled = true;
}




const img = document.querySelector(".avatar-profile");
const defaultBtn = document.querySelector("#profileImg");
let regExp = /[0-9a-zA-Z\^\&\'\@\{\}\[\]\,\$\=\!\-\#\(\)\.\%\+\~\_ ]+$/;

function profileAvatar(){
    defaultBtn.click();
}

function getImage(){
    defaultBtn.addEventListener("change", function(){
        const file = this.files[0];
        if(file){
          const reader = new FileReader();
          reader.onload = function(){
            const result = reader.result;
            img.src = result;
          }
          document.getElementById("confirmEnable").disabled = false;

          reader.readAsDataURL(file);
        } 
      });
     
}


const coverImg = document.querySelector(".avatar-coverProfile");
const coverProfileBtn = document.querySelector("#coverProfileImg");


function coverProfileAvatar(){
    coverProfileBtn.click();
}

function getCoverImage(){
    coverProfileBtn.addEventListener("change", function(){
        const file = this.files[0];
        if(file){
          const reader = new FileReader();
          reader.onload = function(){
            const result = reader.result;
            coverImg.src = result;
          }
          document.getElementById("confirmEnable").disabled = false;

          reader.readAsDataURL(file);
        } 
      });
     
}


const imgAbyssal = document.querySelector(".abyssal-art");
const postAbyssal = document.querySelector(".post-art");
const abyssalBtn = document.querySelector("#add-abyysals-btn");
const postBtn = document.querySelector("#add-post-btn");

function abyssalBtnActive(){
    abyssalBtn.click();
}

function postBtnActive(){
    postBtn.click();
}


function getAbyssalImage(){
    abyssalBtn.addEventListener("change", function(){
        const file = this.files[0];
        if(file){
          const reader = new FileReader();
          reader.onload = function(){
            const result = reader.result;
            imgAbyssal.src = result;
          }

          reader.readAsDataURL(file);
        } 
      });
     
}


function getPostImage(){
    postBtn.addEventListener("change", function(){
        const file = this.files[0];
        if(file){
          const reader = new FileReader();
          reader.onload = function(){
            const result = reader.result;
            postAbyssal.src = result;
          }

          reader.readAsDataURL(file);
        } 
      });
     
}

// uplaod image ajax
        


    $(document).ready(function(){
        $("#uploadImg").on("submit",function(e){
            e.preventDefault();
            var form_data = new FormData(this);     
            $.ajax({
                url : "./phpFunc/uploadImage.php",
                method: "POST",
                data: form_data,
                dataType: "JSON",
                processData:false,
                contentType:false,
                success:function(data){
                    console.log(data.output);
                    alert(data.output);
                    $('.gallery-wrapper').empty();
                    $('.gallery-wrapper').load("./phpFunc/loadAbyssals.php");
                }     
            });
            abyssalModalClose()
        });
    });

    
    $(document).ready(function(){
        $("#uploadStatus").on("submit",function(e){

            e.preventDefault();
            var form_data = new FormData(this);     
            $.ajax({
                url : "./phpFunc/uploadStatus.php",
                method: "POST",
                data: form_data,
                dataType: "JSON",
                processData:false,
                contentType:false,
                success:function(data){
                    console.log(data.output);
                    alert(data.output);
                    $('.post-data-wrapper').empty();
                    $('.post-data-wrapper').load("./phpFunc/loadStatus.php");

                }     
            });
            statusModalClose()

        });
    });


    $(document).ready(function(){
        $("#uploadAvatar").on("submit",function(e){
            e.preventDefault();
            var form_data = new FormData(this);     
            $.ajax({
                url : "./phpFunc/uploadAvatar.php",
                method: "POST",
                data: form_data,
                dataType: "JSON",
                processData:false,
                contentType:false,
                success:function(data){
                    console.log(data.output);
                    alert(data.output);
                    $('.user-container').empty();
                    $('.user-container').load("./phpFunc/loadAvatar.php");
                }     
            });
            closeModalProfile();

        });
    });


    $(document).ready(function(){
        $("#coverProfileAvatar").on("submit",function(e){
            e.preventDefault();
            var form_data = new FormData(this);     
            $.ajax({
                url : "./phpFunc/uploadCoverImage.php",
                method: "POST",
                data: form_data,
                dataType: "JSON",
                processData:false,
                contentType:false,
                success:function(data){
                    console.log(data.output);
                    alert(data.output);
                    $('.loadCoverImage').empty();
                    $('.loadCoverImage').load("./phpFunc/loadCoverProfile.php");
                }     
            });
            closeModalCoverProfile();

        });
    });