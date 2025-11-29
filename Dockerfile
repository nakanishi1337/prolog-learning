FROM ubuntu:22.04

# パッケージ更新と必要なツールのインストール
RUN apt-get update && apt-get install -y \
    git

# gprologのインストール
RUN apt-get install -y \
    gprolog \
    && rm -rf /var/lib/apt/lists/*

CMD ["gprolog"]
