$("#messageContent").keyup(function (event) {
    if (event.keyCode == 13 && event.shiftKey) {
      var content = this.value;
      var caret = getCaret(this);
      this.value =
        content.substring(0, caret) +
        "\n" +
        content.substring(carent, content.length - 1);
      event.stopPropagation();
    } else if (event.keyCode == 13) {
      if ($.trim($("textarea#messageContent").val())) {
          var message = $("textarea#messageContent").val();
          $(".chat_convo").load("./phpFunc/sendMessage.php", {
            outgoing_message: message,
          });
      }
      $("textarea#messageContent").val("");
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

$("#sendBtn").click(function () {
    var chat = $("textarea#messageContent").val();
    alert(chat);
    $("textarea#messageContent").val("");
});


function loadChat() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.getElementById("chat_convo").innerHTML = this.responseText;
        }
    }
    xhr.open("POST", "./phpFunc/loadMessage.php", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send();
}

setInterval(function(){
    loadChat();
},100);
window.onload = loadChat;