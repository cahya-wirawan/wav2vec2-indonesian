#!/usr/bin/env bash

export WANDB_ENTITY="cahya"
export WANDB_PROJECT="wav2vec2-base-indonesian"
export WANDB_LOG_MODEL="true"

python run_common_voice_indonesian_artificial.py indonesian_base.json
