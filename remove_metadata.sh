#!/bin/sh

for notebook_path in plamo_3_hf_inference_example.ipynb plamo_3_vllm_inference_example.ipynb
do
    jq '.metadata.widgets."application/vnd.jupyter.widget-state+json" += {"state": {}}' $notebook_path > temp_${notebook_path}
    mv temp_${notebook_path} $notebook_path
done
