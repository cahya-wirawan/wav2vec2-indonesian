#!/usr/bin/env bash

export WANDB_ENTITY="cahya"
export WANDB_PROJECT="wav2vec2-base-indonesian"
export WANDB_LOG_MODEL="true"

python run_common_voice.py indonesian_base_artificial.json
