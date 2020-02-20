# Cloud Deploy Manager 入門

## 目標

+ コードからのGCE上へのインスタンスの展開

### プロジェクト選択

チュートリアルを展開するプロジェクトを選択して下さい。

<walkthrough-project-setup></walkthrough-project-setup>

## 前準備

デフォルトのプロジェクトIDを設定します。

```sh
gcloud config set project {{project-id}}
```

## CentOSサーバーの立ち上げ

```sh
gcloud deployment-manager deployments create sample2 --config sample2.yaml
```