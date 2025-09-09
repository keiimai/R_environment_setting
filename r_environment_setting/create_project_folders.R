library(fs)

# 作業ディレクトリの指定
path <- "/Users/keiimai/Documents/R/r_auto/"
setwd(path)

# 作業ディレクトリのパスの取得
wd <- path_wd()
wd

# 一時ディテクトリのパスの取得
tmp_wd <- path_temp()
tmp_wd

# プロジェクトの親フォルダ名を設定
project_name <- "r_auto"

# 作成したいフォルダのパスを定義
folders_to_create <- c(
  project_name,
  path(project_name, "01_data", "original_data"),
  path(project_name, "02_document"),
  path(project_name, "03_output"),
  path(project_name, "04_script")
)

# フォルダが存在しない場合にのみ作成
dir_create(folders_to_create)

# 作業ディレクトリのフルパス一覧を取得
dir_ls(path = path_wd())

# 作業ディレクトリの構造を取得
dirs <- dir_tree(
  type = "directory"
)
dirs

dir_information <- dir_info()
dir_information

#--- ファイル・ディレクトリの作成 ---
# ディレクトリが存在しない場合にのみ、まとめて作成します
# このコードはプロジェクトのフォルダ構成を自動でセットアップするのに便利です
folders_to_create <- c("data/raw", "data/processed", "docs")
dir_create(folders_to_create)

#--- ファイルの作成 ---
# 新しい空のファイルを生成します
file_create("data/raw/data.csv")

#--- ファイルの移動 ---
# ファイルを別の場所へ移動します
# 元のファイルは削除されます
file_move("data/raw/data.csv", "data/processed/data_2024.csv")

#--- ファイルのコピー ---
# ファイルを別の場所へ複製します
# 元のファイルは残ります
copy_files("data/processed/data_2024.csv", "docs/backup_data.csv")

#--- ファイルの削除 ---
# 指定したファイルを削除します
file_delete("docs/backup_data.csv")

#--- ディレクトリ内のファイル一覧の取得 ---
# 指定したディレクトリ内のファイルやフォルダのフルパスを一覧で取得します
dir_ls(path = "data")

#--- ディレクトリ構造の取得 ---
# 指定したディレクトリの階層構造をツリー形式で表示します
dir_tree(path = "data")


install.packages("extrafont")
install.packages("Cairo")
