# Dogs-vs.-Cats
这是Kaggle的一个经典入门竞赛，用25000张带标签的猫狗图片（1是狗，0是猫），在caffe框架下训练CNN模型，再用已训练的模型识别12500张未带标签的猫狗图片。

1、create_random.sh随机分别在12500张猫和狗的图片中挑选图片作为验证集

2、create_filelist.sh创建训练集，验证集和测试集的文件列表。

3、create_lmdb.sh将图片转换成lmdb格式

4、catdog_train_val.prototxt catdogNet网络

5、solver.prototxt 网络超参

6、catdog_deploy.prototxt用于测试的网络

7、catdog.py 生成预测结果

本训练项目中代码参考《深度学习——Caffe之经典模型详解与实战》
