A processing sketch to make videos out of horizontally seamless textures 

assuming you have a horizontally seamless texture, this will spit out one full loop of video frames
then you can use the following to make it loop for 5 minutes, for ex:
```ffmpeg -loop 1 -i "%05d-tex.jpg" -c:v libx264 -crf 28 -r 30 -pix_fmt yuv420p -t 00:05:00 ..\loop.mp4```
