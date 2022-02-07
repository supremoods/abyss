function addWatching(temp){
    $('.addWatch').load("./phpFunc/addWatching.php",{'watchID': temp});
    $('#users-info').load(location.href + " #users-info");
    $('#list-watcher').load(location.href + " #list-watcher");
}

function chatUser(temp){
    window.location.href = 'Chat.php?userID='+temp;
}
