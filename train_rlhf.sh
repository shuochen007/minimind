# one node
export CUDA_VISIBLE_DEVICES=2

python trainer/train_dpo.py \
    --out_dir /data/lishuochen/minimind/rlhf_output \
    --epochs 5 \
    --batch_size 48 \
    --log_interval 100 \
    --save_interval 1000 \
    --data_path /data/lishuochen/minimind/dataset/dpo.jsonl \
    --num_hidden_layers 8 \
    --hidden_size 512