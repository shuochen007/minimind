# 从modelscope上下载模型
from modelscope.hub.snapshot_download import snapshot_download

model_dir = snapshot_download('gongjy/minimind_dataset', cache_dir='/data/lishuochen/minimind/dataset', revision='master')
