#!/usr/bin/env bash
#python -m torch.distributed.launch --nproc_per_node=8 run_common_voice_turkish.py \
python run_common_voice_turkish.py \
    --model_name_or_path="facebook/wav2vec2-large-xlsr-53" \
    --dataset_config_name="tr" \
    --output_dir=/root/Work/indonesian-speech-recognition/wav2vec2-large-xlsr-turkish \
    --overwrite_output_dir \
    --num_train_epochs="60" \
    --per_device_eval_batch_size="8" \
    --per_device_train_batch_size="32" \
    --evaluation_strategy="steps" \
    --learning_rate="1e-4" \
    --warmup_steps="300" \
    --fp16 \
    --freeze_feature_extractor \
    --save_steps="100" \
    --eval_steps="100" \
    --save_total_limit="1" \
    --logging_steps="100" \
    --group_by_length \
    --feat_proj_dropout="0.04" \
    --layerdrop="0.041" \
    --attention_dropout="0.094" \
    --activation_dropout="0.055" \
    --hidden_dropout="0.047" \
    --mask_time_prob="0.4" \
    --gradient_checkpointing \
    --do_train --do_eval \
    --gradient_accumulation_steps="2" \
    --dataloader_num_workers="8"
