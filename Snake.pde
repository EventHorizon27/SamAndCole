ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
int w = 30, h = 30, bs = 30, dir = 2;
int[] dx = {0,0,1,-1}, dy = {1,-1,0,0};
void setup() {
  size(600,600);
  //size(w*bs, h*bs);
  x.add(5);
  y.add(5);
}
void draw() {
  background(255);
  for(int i = 0 ; i < w; i++) line(i*bs, 0, i*bs, height);
  for(int i = 0 ; i < h; i++) line(0, i*bs, width, i*bs);
  for(int i = 0 ; i < x.size(); i++){
    fill(0, 255, 0);
    rect(x.get(i)*bs, y.get(i)*bs, bs, bs);
  }
  if (frameCount%5==00){
    x.add(0,x.get(0) + dx[dir]);
    y.add(0,y.get(0) + dy[dir]);
    x.remove(x.size()-1);
    y.remove(y.size()-1);
  }
}