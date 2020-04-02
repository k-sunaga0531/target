
function changeColor(idname){
  var obj = document.getElementById(idname);
  obj.style.color = '#ffffff';            //文字色を白にする
  obj.style.backgroundColor = '#ff0000';  //背景色を赤にする
}

function canvasClickaka() {
  var cvs = document.getElementById('testcanvas2');
  var byouga = cvs.getContext('2d');
  byouga.fillStyle = "red";
  byouga.fillRect(50, 50, 70, 70);
}