import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;



num circle_x = flag_w / 4;
num circle_y = flag_h / 4;


void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');
  
  querySelector("#cub").onClick.listen((e) => drawCUB(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}
void drawCUB(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  //藍色
  ctx.fillStyle = 'rgb(0,0,180)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  //白色
  ctx.fillStyle = '#fff';
  ctx.fillRect(0, 40, flag_w, flag_h/5);
  ctx.fillRect(0, 120, flag_w, flag_h/5);
  // 紅色  
  ctx.strokeStyle = 'rgb(200,0,0)';
  ctx.lineWidth = 2;
  ctx.beginPath();
  ctx.moveTo(0,0);
  ctx.lineTo(140,100);
  ctx.stroke();
  ctx.strokeStyle = 'rgb(200,0,0)';
  ctx.lineWidth = 2;
  ctx.beginPath();
  ctx.moveTo(0,200);
  ctx.lineTo(140,100);
  ctx.stroke();
  
  ctx.fillStyle = 'rgb(200,0,0)';
  ctx.fill();
}
void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}
