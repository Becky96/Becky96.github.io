
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("p").hide();
    });
});


$(document).ready(function()
{
    $("a").hover(function(e)
    {
        var randomClass = getRandomClass();
        $(e.target).attr("class", randomClass);
    });
});


function getRandomClass()
{
    //Store available css classes
    var classes = new Array("green", "purple", "teal", "violet", "pink");
    
    //Give a random number from 0 to 5
    var randomNumber = Math.floor(Math.random()*6);
    
    return classes[randomNumber];

}
</script>