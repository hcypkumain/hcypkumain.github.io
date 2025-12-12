---
layout: project
title: Spike-stero
image: images/dataset_image/spift.png
tags:
  - depth estimation
  - stereo
  - spike camera
  - high-speed
  - dataset
collaborators: 
collaborator_icons: []
---

用途：为脉冲相机提供立体视觉数据集，支持深度信息提取和高速运动物体检测。
场景类别：包含室内和室外场景，涵盖不同光照条件和静态/动态场景。
数据格式：二进制spike数据流（.dat文件），包含左右两个视角的同步数据。
数据规模：高时间分辨率（20kHz采样率），远超传统相机的30-60fps。

### 数据集特点
高时间分辨率：能够捕捉高速运动细节，采样率高达20kHz。
立体视觉特性：包含左右两个视角的同步数据，基线距离固定，便于立体匹配。
场景多样性：涵盖室内和室外场景，包含不同光照条件和运动状态。

### 数据集结构
```
Spike-Stero/
├── indoor/                    # 室内场景
│   ├── left/                 # 左视图
│   │   ├── 0000/            # 场景0
│   │   │   ├── 0000/        # 时间序列0
│   │   │   │   ├── 0000.dat        # spike数据
│   │   │   │   └── 0000_gt.npy     # 标注数据
│   │   │   ├── 0001/        # 时间序列1
│   │   │   │   ├── 0001.dat
│   │   │   │   └── 0001_gt.npy
│   │   │   └── ...
│   │   ├── 0001/            # 场景1
│   │   │   ├── 0000/
│   │   │   └── ...
│   │   └── ...
│   └── right/                # 右视图（结构与left相同）
│       ├── 0000/
│       │   ├── 0000/
│       │   └── ...
│       └── ...
└── outdoor/                  # 室外场景（结构与indoor相同）
    ├── left/
    └── right/
```

### 可支持的任务：
- 立体匹配：利用左右视图进行立体深度估计
- 高速运动物体检测：利用高时间分辨率捕捉快速移动目标
- 深度信息提取：从立体数据中恢复场景深度
- 场景理解：在复杂环境下进行视觉分析

### 应用与拓展方向
- 高速运动目标跟踪
- 自动驾驶场景理解
- 机器人视觉导航
- 多相机系统集成
- 与其他传感器融合

数据集链接：待更新

{% include figure.html image="/images/dataset_image/spift.png" width="100%" %}
{% include figure.html image="/images/dataset_image/spift.png" caption="数据集示例" width="100%" %}