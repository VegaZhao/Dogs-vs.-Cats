#!/usr/bin/env sh

cd /media/data-2/zwj/kaggle/catdog/
WORK=data

echo "Create train lmdb..."
rm -rf $WORK/catdog_train_lmdb
/media/file/Ckk/caffe/build/tools/convert_imageset \
--shuffle \
--resize_height=128 \
--resize_width=128 \
train/ \
$WORK/train.txt \
$WORK/catdog_train_lmdb


echo "Create valid lmdb..."
rm -rf $WORK/catdog_valid_lmdb
/media/file/Ckk/caffe/build/tools/convert_imageset \
--shuffle \
--resize_height=128 \
--resize_width=128 \
valid/ \
$WORK/valid.txt \
$WORK/catdog_valid_lmdb
echo "Done.."


echo "Create test lmdb..."
rm -rf $WORK/catdog_test_lmdb
/media/file/Ckk/caffe/build/tools/convert_imageset \
--shuffle \
--resize_height=128 \
--resize_width=128 \
test1/ \
$WORK/test.txt \
$WORK/catdog_test_lmdb
echo "Done.."
