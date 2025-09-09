# 【R Docker Trial】
This repository created by Kei Imai, RN, MSN.

# 【格納されているファイルの説明】
r_docker_trial/

├── .Rprofile

├── .gitignore

├── Dockerfile

├── R-versions

├── README.md

├── renv.lock

└── requirements.txt

# 【実行方法】
・クローンを作成

git clone URL_HERE

・ディレクトリへ移動

cd REPOSITORY

・Dockerイメージをビルドする

docker build -t my-project .

・Dockerコンテナを実行

docker run --rm -p 8787:8787 -v "$(pwd)"/r_docker_trial:/home/rstudio/my_project -e PASSWORD=your_password_here my-project

#【環境の削除】
・Dockerイメージを削除

docker rmi my-project

・ディレクトリから親ディレクトリに戻る

cd ..

・ディレクトリを強制的に再帰的に削除

rm -rf REPOSITORY
