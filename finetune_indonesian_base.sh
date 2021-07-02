#!/usr/bin/env bash

export WANDB_ENTITY="cahya"
export WANDB_PROJECT="wav2vec2-base-indonesian"
export WANDB_LOG_MODEL="true"

python run_common_voice_indonesian.py indonesian_base.json \
  --num_train_epochs="2" \
  --output_dir="/workspace/output_models/wav2vec2-base-cv"


