# Google Cloud Deployment Manager

## 導入メリット

- 再利用可能なテンプレートとして構成を定義できる

- 予め定義したルールに基づき一貫性がある構成を管理できる

## 事前準備

- デフォルトのプロジェクトIDを設定

```
gcloud config set project [プロジェクトID]
```
- Deployment Manager APIを有効にします。

```
gcloud services enable deploymentmanager.googleapis.com
```

使用するリソースのAPIも有効化する必要があります。

例. Compute Engine(※課金アカウントがプロジェクトに設定されている必要があります。またプロジェクト作成直後はAPIの有効化に時間が掛かります。)

```
gcloud services enable compute.googleapis.com
```

## サンプルの使い方

- 以下のボタンから自身のCloud Shell上に当リポジトリを展開します

[![Open in Cloud Shell](http://gstatic.com/cloudssh/images/open-btn.svg)](https://console.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https%3A%2F%2Fgithub.com%2Fuse200371%2Fcdm-training.git&cloudshell_tutorial=walkthroughtutorial.md)

- Cloud Shellにて当リポジトリをクーロンします。

- 下記のコマンドにて作成、プレビューします。

- 最後に必ず削除を行います。

## コマンド

### 作成

```
gcloud deployment-manager deployments create [デプロイ名] --config [YAMLファイル名]
```

### プレビュー

```
gcloud deployment-manager deployments create [デプロイ名] --config [YAMLファイル名] --preview
```

### 削除

```
gcloud deployment-manager deployments delete [デプロイ名]
```

## サンプル

### 参照

- 別のリソース(ディスクやネットワーク)に対して値を直接指定せずに構成を定義ができる

- リソース間の依存関係を解決するために参照元を先に作成する。参照が正しく解決されない場合デプロイに失敗する

```
$(ref.[RESOURCE_NAME].[PROPERTY])
```

[サポートされるリソースタイプ](https://cloud.google.com/deployment-manager/docs/configuration/supported-resource-types?hl=ja)

### テンプレート

- 基本的にYAMLファイルにて構成を管理するが、テンプレートを用いる事で再利用可能な構成を作成する事が可能となる

- テンプレートを使用する事でYAMLには設定値を記述するだけに留める事となる

## サポートリソース

- Cloud Deploy Managerにてサポートされるリソースは以下のとおり

- ただし、下記のリソース中の全てを扱えるわけではない(制御出来ないものも存在する)

| リソース名 |
----|
| Google App Engine |
| BigQuery |
| Resource Manager |
| Compute Engine |
| Google Kubernetes Engine |
| Cloud Pub/Sub |
| Cloud DNS |
| Cloud IAM |
| Stackdriver Logging |
| Cloud Spanner |
| Cloud SQL |
| Cloud Storage |

## リファレンス

[サポートされるリソース](https://cloud.google.com/deployment-manager/docs/configuration/supported-resource-types?hl=ja)

### Compute Engine 

- [API](https://cloud.google.com/compute/docs/reference/rest/v1/instances?hl=ja)

- [イメージ](https://cloud.google.com/compute/docs/images?hl=ja)