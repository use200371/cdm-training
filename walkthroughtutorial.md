# Cloud Deploy Manager 入門

## 目標

+ コードからのGCE上へのインスタンスの作成
+ サービスアカウントの作成
+ ファイアウォールの作成
+ ネットワークの作成
+ Ansibleによるstackdriverの導入
+ stackdriverの設定

## プロジェクト選択

チュートリアルを展開するプロジェクトを選択して下さい。

<walkthrough-project-setup></walkthrough-project-setup>

## 前準備

- デフォルトのプロジェクトIDを設定します。これは毎回、Cloud Shellを開く際に毎回行います。

```sh
gcloud config set project {{project-id}}
```

- APIを有効にします。既に有効化されている場合はスキップします。

```sh
gcloud services enable deploymentmanager.googleapis.com compute.googleapis.com
```

## CentOSサーバーの立ち上げ

<walkthrough-editor-open-file filePath="example/sample2.yaml"></walkthrough-editor-open-file>

- ディレクトリを移動します。

```sh
cd example
```

- CentOSサーバのインスタンスを作成します。

```sh
gcloud deployment-manager deployments create sample2 --config sample2.yaml
```

- 作成された事が確認出来たら後片付けをします。

```sh
gcloud deployment-manager deployments delete sample2
```