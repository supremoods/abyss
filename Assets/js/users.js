function addWatching(temp){
    $('.addWatch').load("./phpFunc/addWatching.php",{'watchID': temp});
}

function chatUser(temp){
    window.location.href = 'Chat.php?userID='+temp;
}
