CUDA_VISIBLE_DEVICES=0 python3 netadapt/master.py models/fastdepth/prune-by-mac 3 224 224\
	-im model.pth -gp 0 \
	-mi 2 -bur 0.25 -rt FLOPS -irr 0.025 -rd 0.96 \
	-lr 0.001 -st 100 \
	-dp data/ --arch fastdepth_nyudepthv2 
