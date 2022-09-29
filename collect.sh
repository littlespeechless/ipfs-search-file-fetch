#!/bin/bash
source /home/zhenwu/anaconda/etc/profile.d/conda.sh
conda activate py3
cd /home/zhenwu/workspace/ipfs-search-video-fetch/
python collect_data.py

FILE=./data/$(date +%F)/$(date +%F-%H)_cid.txt
if [ -f "$FILE" ]; then
   ./ipfs-search-video-fetch -i "$FILE"
fi
