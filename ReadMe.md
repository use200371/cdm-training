# Google Cloud Deployment Manager

## 導入メリット

- 再利用可能なテンプレートとして構成を定義できる

- 予め定義したルールに基づき一貫性がある構成を管理できる

## 事前準備

- デフォルトのプロジェクトIDを設定

```
gcloud config set project [プロジェクトID]
```
- Deployment Manager APIを有効にします。使用するリソースを有効にする場合は、合わせて設定を行います。

```
gcloud services enable deploymentmanager.googleapis.com
```

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

## リファレンス

### Compute Engine 

- [API](https://cloud.google.com/compute/docs/reference/rest/v1/instances?hl=ja)

- [イメージ](https://cloud.google.com/compute/docs/images?hl=ja)