#!/usr/bin/env bash
DATADIR=data/omniglot/data

mkdir -p $DATADIR
# curl -O images_background.zip https://github.com/brendenlake/omniglot/blob/master/python/images_background.zip
# curl -O images_evaluation.zip https://github.com/brendenlake/omniglot/blob/master/python/images_evaluation.zip
unzip images_background.zip -d $DATADIR
unzip images_evaluation.zip -d $DATADIR
mv $DATADIR/images_background/* $DATADIR/
mv $DATADIR/images_evaluation/* $DATADIR/
rmdir $DATADIR/images_background
rmdir $DATADIR/images_evaluation
