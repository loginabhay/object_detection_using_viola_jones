clear all
clc
FDetect = vision.CascadeObjectDetector;
I = imread('test1.jpg')
BB = step(FDetect,I);

figure,
imshow(I); hold on
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',3,'LineStyle','-','EdgeColor','g');
end
title('Face Detection');
hold off;

MouthDetect = vision.CascadeObjectDetector('Mouth','MergeThreshold',34);

BB=step(MouthDetect,I);

figure,
imshow(I); hold on
for i = 1:size(BB,1)
 rectangle('Position',BB(i,:),'LineWidth',3,'LineStyle','-','EdgeColor','b');
end
title('Mouth Detection');
hold off;

EyeDetect = vision.CascadeObjectDetector('EyePairBig');

I = imread('test2.jpg');

BB=step(EyeDetect,I);
figure,
imshow(I); hold on
for i = 1:size(BB,1)
 rectangle('Position',BB(i,:),'LineWidth',3,'LineStyle','-','EdgeColor','r');
end
title('Eye Detection');
hold off;
