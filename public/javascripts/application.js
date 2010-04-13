function add_benefit(link, content) {  
    var new_id = new Date().getTime();    
    $(link).before(content.replace("NEW_RECORD", new_id));  
}