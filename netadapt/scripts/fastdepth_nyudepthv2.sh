CUDA_VISIBLE_DEVICES=0,1,2,3 python3 netadapt/master.py netadapt/models/fastdepth/prune-by-mac 3 224 224\
	-im model.pth -gp 0 1 2 3  \
	-mi 30 -bur 0.25 -rt FLOPS -irr 0.025 -rd 0.96 \
	-lr 0.001 -st 300 \
	-dp data/ --arch fastdepth_nyudepthv2 
