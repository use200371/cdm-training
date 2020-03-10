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
gcloud deployment-manager deployments create sample1 --config sample1.yaml
```


- 作成された事が確認出来たら後片付けをします。

```sh
gcloud deployment-manager deployments delete sample1
```

## サービスアカウントの作成

- 例えばGCEインスタンスに対して役割を与えたい場合、まずサービスアカウントを作成して役割を付与します。

- この作成したサービスアカウントをインスタンスに割り当てします。

- デフォルトで割り当てされるサービスアカウントは編集者の役割が付与されておりある程度の操作が行える為、最小限の権限を付与したサービスアカウントを使用する事が望ましいです。