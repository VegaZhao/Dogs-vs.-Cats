#!/usr/bin/env sh

cd /media/data-2/zwj/kaggle/catdog/
WORK=data

echo "Create train.txt..."
rm -rf $WORK/train.txt
find train -name cat.*.jpg | cut -d '/' -f2 | sed "s/$/ 0/">>$WORK/train0.txt
find train -name dog.*.jpg | cut -d '/' -f2 | sed "s/$/ 1/">>$WORK/train1.txt
cat $WORK/train0.txt $WORK/train1.txt >$WORK/train.txt
rm -rf $WORK/train0.txt
rm -rf $WORK/train1.txt
echo "Done.."

echo "Create valid.txt..."
rm -rf $WORK/valid.txt
find valid -name cat.*.jpg | cut -d '/' -f2 | sed "s/$/ 0/">>$WORK/valid0.txt
find valid -name dog.*.jpg | cut -d '/' -f2 | sed "s/$/ 1/">>$WORK/valid1.txt
cat $WORK/valid0.txt $WORK/valid1.txt >$WORK/valid.txt
rm -rf $WORK/valid0.txt
rm -rf $WORK/valid1.txt
echo "Done.."

echo "Create test.txt..."
rm -rf $WORK/test.txt
find test1 -name *.jpg | cut -d '/' -f2 >>$WORK/test.txt
echo "Done.."
