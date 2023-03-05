javascript:(function(){
  console.log("abc");    let jquery = document.createElement('script');    jquery.src = 'https://code.jquery.com/jquery-3.3.1.min.js';    document.getElementsByTagName('head')[0].appendChild(jquery);      document.getElementsByClassName("share_page__btn")[0].click();      $("#js_app > div > div").css("background", "none");      $("#js_app > div > div").css("background", "#282828");      $("#js_go_app").css("display", "none");      $("#js_app > div > div.mlive_host > div.user_meta").css("display", "none");      $("#js_app > div > div.mlive_fans_queue > div > div > img").css("display", "none");      $("#js_app > div > div.mlive_host > div.mlive_host__col > div:nth-child(1)").css("display", "none");      setInterval(function() {            $("#js_app > div > div.mlive_inter > div > ul > li > div.noble.noble_M.noble_n").css("display", "none");             $("#js_app > div > div.mlive_inter > div > ul > li > div.mlive_aumsg__main > div.mlive_aumsg__gft").css("color", "#fff");    }, 1000);    console.log("def");
})()

console.log("abc");
let jquery = document.createElement('script');
jquery.src = 'https://code.jquery.com/jquery-3.3.1.min.js';
document.getElementsByTagName('head')[0].appendChild(jquery);
document.getElementsByClassName("share_page__btn")[0].click();

$("#js_app > div > div").css("background", "none");
$("#js_app > div > div").css("background", "#282828");
$("#js_go_app").css("display", "none");
$("#js_app > div > div.mlive_host > div.user_meta").css("display", "none");
$("#js_app > div > div.mlive_fans_queue > div > div > img").css("display", "none");
$("#js_app > div > div.mlive_host > div.mlive_host__col > div:nth-child(1)").css("display", "none");
setInterval(function() {
     $("#js_app > div > div.mlive_inter > div > ul > li > div.noble.noble_M.noble_n").css("display", "none");
     $("#js_app > div > div.mlive_inter > div > ul > li > div.mlive_aumsg__main > div.mlive_aumsg__gft").css("color", "#fff");
}, 1000);
console.log("def");


setInterval(function() {
    let nxt_btn = $("body > div.qrcodebox > div.qrcode > div.nextware > a");
    let replay_btn=$("body > div.qrcodebox > div.qrcode > div.review > a");
    let play_btn=$("#J_prismPlayer_component_12756850-D7E9-40B9-BE1D-0E379892395C");
    if(nxt_btn){
        nxt_btn.click();
        console.log(nxt_btn.html());
    }
    if(replay_btn){
        replay_btn.click();
        console.log(replay_btn.html());
    }
    if(play_btn){
        play_btn.click();
        console.log("play the video");
    }
}, 1000);


let nxt_btn = $("body > div.qrcodebox > div.qrcode > div.nextware > a");
if(nxt_btn){
    console.log(nxt_btn.html())
}