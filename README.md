### Distance Transform

- This project contains distance transform algorithm works on Black-White square images (foreground color black, background color white) written in MATLAB.


### Distance Transform Algorithm
- All border pixels are found and given a distance of 1. (If a pixel is adjacent to the background, that pixel is the border).

- Then, 2 distance values were given to the pixels located in 8 neighbors of the border pixels.

- This process was continued until all foreground pixels got the distance value (2,3,4 etc.).

- Normalization was made so that the maximum distance is 255 and the minimum distance is 0. A gray-level image was created by considering the distance value of each pixel as the brightness value of that pixel.

>Note : There can be multiple regions within a single image. The program works for each region.


### Example Images


##### `The binary image`

![alt text](https://github.com/melissagosme/Distace-Trasform/blob/master/examples/input1.jpg?raw=true)

##### `becomes`

![alt text](https://github.com/melissagosme/Distace-Trasform/blob/master/examples/output1.jpg?raw=true)

##### `Similarly,`

![alt text](https://github.com/melissagosme/Distace-Trasform/blob/master/examples/input2.jpg?raw=true)

##### `becomes`

![alt text](https://github.com/melissagosme/Distace-Trasform/blob/master/examples/output2.jpg?raw=true)
