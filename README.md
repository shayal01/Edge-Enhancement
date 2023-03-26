# Edge-Enhancement
The project was done as part of my coursework in image processing class.
## Input image
The input image for the edge enhancement system is a 512 x 512,8 bits per pixel image(Fig 1).
## Methodology and Results

_Case-1_:
In the first case, we are just calculating the gradient of the image by using Robert’s convolution mask. Here, the image is convolved with two convolution masks and each of the convolved results is squared and then added together(pixel-wise). The square root of the result is taken and that will be the gradient image (Fig-2).
In the gradient Image, it assumes large values(white) for prominent edges of the objects in the image and small values in regions that are fairly smooth, being zero only in regions that have a constant gray level. This will have an edge enhancement effect.

_Case-2_:
In this case, we are applying a threshold value of 25 to the above gradient image (Fig-2), i.e., the resulting image has pixel values the same as the gradient image if the pixel values are greater than 25, else it will be the same as that of the input image pixel values (Fig-3).
As we can see it emphasizes the edges of the objects in the image, but without destroying the smooth background of the image

_Case-3_:
In this case, we are applying a threshold value of 25 and a gray level of 255 to the above gradient image (fig-2), i.e., the resulting image has pixel values of 255, if the pixel values are greater than 25, else it will be the same as that of the input image pixel values (Fig-4).
This results in setting the edges of the objects in the image to a specific gray level(255-white).

_Case-4_:
In this case, we are applying a threshold value of 25 and a gray level of 0 to the above gradient image (fig-2), i.e., the resulting image has pixel values the same as the gradient image if the pixel values are greater than 25, else it will be 0. (Fig-5)
This results in setting the background of the image to a specific gray level(0-black). It is similar to the gradient image in Fig-2

_Case-5_:
In this case, we are applying a threshold value of 25, a gray level of 0, and a gray level of 255 to the above gradient image (fig-2), i.e., the resulting image has pixel values of 225 if the pixel values are greater than 25, else it will be set to 0. (Fig-6)
This results in getting a binary gradient image, where the edges and background are displayed only on 2 specified gray level, which is 255(white) and 0(black) respectively

