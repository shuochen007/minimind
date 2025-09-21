export WANDB_BASE_URL=https://api.bandw.top

# ddp
# torchrun --nproc_per_node 2 trainer/train_pretrain.py \
#     --out_dir /data/lishuochen/minimind/pretrain_output \
#     --epochs 10 \
#     --batch_size 128 \
#     --log_interval 100 \
#     --save_interval 1000 \
#     --use_wandb \
#     --ddp \
#     --data_path /data/lishuochen/minimind/dataset/pretrain_hq.jsonl \

# one node
python trainer/train_pretrain.py \
    --out_dir /data/lishuochen/minimind/pretrain_output \
    --epochs 8 \
    --batch_size 48 \
    --log_interval 100 \
    --save_interval 1000 \
    --use_wandb \
    --data_path /data/lishuochen/minimind/dataset/pretrain_hq.jsonl \
    --num_hidden_layers 16 \
    --hidden_size 768
