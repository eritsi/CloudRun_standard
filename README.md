# CloudRun_standard
- gitpod開始時のインストールはYで進む
- Cloud Runのデプロイ先プロジェクトを指定する
- Cloud Runのデプロイ名を指定する[-は使用できるが、_は使用できない]

## 基本
sh cloud_run.sh <Dockerfileの名前.Dockerfile>
- (必要性確認中)自分のGoogleアカウント、リージョンをリストから選んで再設定する
- dockerコマンドが進行
- `Error response from daemon: No such image:` と出ていたらDockerファイルのミス。  
- 途中で止まった場合は `docker images` で正しくビルドできているか確かめる。NoneとなっていたらDockerファイルのミス。

## JupyterLabの環境をCloudRunで提供する
cloud_run.shの引数として`jupyterlab.Dockerfile`を使用  
Labに最初から入っていてほしいファイルをjupyterlabフォルダ内に置く  
`requirements_for_jupylab.txt`に、lab上に初期からpip installされていてほしいライブラリをリスト化する

## Streamlitの環境をCloudRunで提供する
Dockerfileと同じ階層に全ての関連ファイルを置く  
cloud_run.shの引数として`streamlit.Dockerfile`を使用  

## tips
GCR上でのmatplotlibのイメージ問題  
https://github.com/streamlit/streamlit/issues/3334  
https://discuss.streamlit.io/t/app-in-streamlit-cloud-not-running-in-the-same-way-as-on-local-host/20970/2  
  
GCR上でのjupyterlabにおけるContent Security Policy問題  
https://github.com/cameronraysmith/notebooks/blob/master/etc/jupyter_notebook_config.py