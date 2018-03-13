#!/bin/bash
cd /media/data-2/zwj/kaggle/catdog/
for ((i=0;i<1250;++i));do
  cp train/'cat.'$(($RANDOM%12500+1))'.jpg' valid/
  echo cp train/'cat.'$(($RANDOM%12500+1))'.jpg' valid/ ...
done

for ((i=0;i<1250;++i));do
  cp train/'dog.'$(($RANDOM%12500+1))'.jpg' valid/
  echo cp train/'dog.'$(($RANDOM%12500+1))'.jpg' valid/ ...
done
