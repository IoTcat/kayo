<script type="text/javascript" src="https://cdn.yimian.xyz/ushio-js/ushio-footer.min.js"></script>
<script>
session.onload(function(){
    if(session.get('group') != 'anonymous'){
        function insertNick(){
            if($('.vnick').length){
                $('.vnick').val(session.get('nickname'));
            }else{
                setTimeout(insertNick, 500);
            }
        }
        function insertMail(){
            if($('.vmail').length){
                $('.vmail').val(session.get('email'));
            }else{
                setTimeout(insertMail, 500);
            }
        }

        if(session.get('nickname')){
            insertNick();
        }

        if(session.get('email')){
            insertMail();
        }
    }
});
</script>
