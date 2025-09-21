export CUDA_VISIBLE_DEVICES=1

python eval_model.py \
    --model_mode 0 \
    --out_dir /data/lishuochen/minimind/sft_output \
    --hidden_size 768 \
    --num_hidden_layers 16 \