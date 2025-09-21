export WANDB_BASE_URL=https://api.bandw.top

# # ddp
# torchrun --nproc_per_node 2 trainer/train_full_sft.py \
#     --out_dir /data/lishuochen/minimind/sft_output \
#     --epochs 10 \
#     --batch_size 32 \
#     --log_interval 100 \
#     --save_interval 1000 \
#     --use_wandb \
#     --ddp \
#     --data_path /data/lishuochen/minimind/sft_mini_512.jsonl \
#     --save_dir /data/lishuochen/minimind

# one node
export CUDA_VISIBLE_DEVICES=1

python trainer/train_full_sft.py \
    --out_dir /data/lishuochen/minimind/sft_output \
    --epochs 5 \
    --batch_size 48 \
    --log_interval 100 \
    --save_interval 1000 \
    --use_wandb \
    --data_path /data/lishuochen/minimind/dataset/sft_2048.jsonl \
    --save_dir /data/lishuochen/minimind/sft_output \
    --num_hidden_layers 16 \
    --hidden_size 768