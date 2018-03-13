import os
import sys
import numpy as np
import matplotlib.pyplot as plt
import struct

caffe_root = '/media/file/zwj/caffe-master/'
sys.path.insert(0, caffe_root + 'python')
import caffe
MODEL_FILE = '/media/file/zwj/caffe-master/examples/kaggle/catdog/catdog_deploy.prototxt'
PRETRAINED = '/media/data-1/zwj/output_model/catdog/_iter_110000.caffemodel'
IMAGE_FILE = '/media/data-2/zwj/kaggle/catdog/test1/'

net = caffe.Classifier(MODEL_FILE, PRETRAINED)
#net = caffe.Net(MODEL_FILE,PRETRAINED,caffe.TEST)
predict_file = open('test_prediction.txt','a')

for i in xrange(12500):
	imgstr = IMAGE_FILE + str(i+1) + '.jpg'
	input_image=caffe.io.load_image(imgstr,color=True)
	prediction=net.predict([input_image],oversample = False)
	caffe.set_mode_cpu()
	#print prediction[0].argmax()
	predict_file.write(str(prediction[0].argmax())+'\n')
predict_file.close()
