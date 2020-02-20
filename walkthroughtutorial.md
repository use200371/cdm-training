# Cloud Deploy Manager 入門

## 目標

+ コードからのGCE上へのインスタンスの展開

### 前準備

デフォルトのプロジェクトIDを設定します。

```
gcloud config set project [プロジェクトID]
```

### CentOSサーバーの立ち上げ

```
gcloud deployment-manager deployments create sample2 --config sample2.yaml
```