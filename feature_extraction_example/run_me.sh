./clean.sh
./prepair_image_sample_classes.sh

python extract_features.py images_sample alexnet_imagenet/deploy.prototxt alexnet_imagenet/model.caffemodel alexnet_imagenet/mean.npy alexnet_imagenet
python extract_features.py images_sample alexnet_mit_places/deploy.prototxt alexnet_mit_places/model.caffemodel alexnet_mit_places/mean.npy alexnet_mit_places

python pca_2d.py image_sample_classes images_sample alexnet_imagenet
python pca_2d.py image_sample_classes images_sample alexnet_mit_places

python t_sne_2d.py image_sample_classes images_sample alexnet_imagenet
python t_sne_2d.py image_sample_classes images_sample alexnet_mit_places

