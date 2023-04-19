// assuming you have a horizontally seamless texture, this will spit out one full loop of video frames
// then you can use the following to make it loop for 5 minutes, for ex:
// ffmpeg -loop 1 -i "%05d-tex.jpg" -c:v libx264 -crf 28 -r 30 -pix_fmt yuv420p -t 00:05:00 ..\loop.mp4

String filename = "trashywater1.png";
PImage img;
int move_by = 1;
int counter = 0;

void setup() {
  size(1024, 512);
  img = loadImage(filename);
  imageMode(CORNER);
}

void draw() {
  image(img, width - (counter*move_by), 0);
  image(img, 0 - (counter*move_by), 0);
  counter++;
  saveFrame("frames/#####-tex.jpg");
  if(counter == width/move_by) exit();
}
