clear;
clc;
close all;

net = setup_caffe(0);

im = imread('real-test\1_extracted.jpg');
[~, maxlabel] = test_caffe_forward(im, net);%��ȡ�÷ֵڶ�������0ΪCPU��1ΪGPU
score = pScores(maxlabel);

reset_caffe();
