$(".input-cmnt").keyup(function (event) {
    var userCommentID = "userComment_"+this.dataset.id;
    

    if (event.keyCode == 13 && event.shiftKey) {
        var content = this.value;
        var caret = getCaret(this);
        this.value =
            content.substring(0, caret) +
            "\n" +
            content.substring(carent, content.length - 1);
        event.stopPropagation();
    } else if (event.keyCode == 13) {
        if ($.trim($("textarea#"+userCommentID).val())) {
            var postID = this.dataset.id;
            var comment = $("textarea#"+userCommentID).val();
            $("#loadComment_"+this.dataset.id).load("./phpFunc/commentPost.php",{
                postID: postID,
                comment: comment,
            });
    
            
        }
        
        $("textarea#"+userCommentID).val("");
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                $('#loadPostdata').load(location.href + " #loadPostdata");
              
            }
        }
        xhr.open("POST", "./postData.php", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send();
    }

});

function getCaret(el) {
    if (el.selectionStart) {
        return el.selectionStart;
    } else if (document.selection) {
        el.focus();

        var r = document.selection.createRange();
        if (r == null) {
            return 0;
        }

        var re = el.createTextRange(),
            rc = re.duplicate();
        re.moveToBookmark(r.getBookmark());
        rc.setEndPoint("EndToStart", re);

        return rc.text.length;
    }
    return 0;
}


//  function sendRequestFavCount() {
//      var xhr = new XMLHttpRequest();
//      xhr.onreadystatechange = function() {
//          if (xhr.readyState == 4 && xhr.status == 200) {
//              $('#loadPostdata').load(location.href + " #loadPostdata");
          
//          }
//      }
//      xhr.open("POST", "./sample.php", true);
//      xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//      xhr.send();
//  }

//  setInterval(function(){
//      sendRequestFavCount();
//  },2000);

//  window.onload = sendRequestFavCount;