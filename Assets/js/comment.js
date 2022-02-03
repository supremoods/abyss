$("#userComment").keyup(function (event) {
  if (event.keyCode == 13 && event.shiftKey) {
    var content = this.value;
    var caret = getCaret(this);
    this.value =
      content.substring(0, caret) +
      "\n" +
      content.substring(carent, content.length - 1);
    event.stopPropagation();
  } else if (event.keyCode == 13) {
    if ($.trim($("textarea#userComment").val())) {
        var artID = this.dataset.id;
        var comment = $("textarea#userComment").val();
        $(".user-comment-wrapper").load("./phpFunc/comment.php", {
          artID: artID,
          comment: comment,
        });
    }
    $("textarea#userComment").val("");
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

function sendRequest() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.getElementById("loadComment").innerHTML = this.responseText;
        }
    }
    xhr.open("POST", "./phpFunc/loadComment.php", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var art_ID = document.querySelector('#loadFav');
    var artID = art_ID.dataset.id;
    xhr.send(`artID=${artID}`);
}

setInterval(function(){
    sendRequest();
},1000);
window.onload = sendRequest;


function sendRequestFavCount() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            $('#fav-count').load(location.href + " #fav-count");
            $('#comment-count').load(location.href + " #comment-count");
        }
    }
    xhr.open("POST", "./phpFunc/getAbyssals.php", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send();
}

setInterval(function(){
    sendRequestFavCount();
},1000);
window.onload = sendRequestFavCount;

function gotoComment(temp){
    window.location.href = 'artdetails.php?abyssalsId='+temp+'#comment-section';

}