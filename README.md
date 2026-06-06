### Application Web Container

Webアプリケーションをコンテナ環境（Docker）で安定稼働させるための設定リポジトリ

### Architecture Overview
開発環境から本番環境まで同一のコンテナイメージを使用することで環境による動作差異を解消する

```mermaid
graph LR
    Code[Source Code] --> Dockerfile
    Dockerfile --> Build[Docker Build]
    Build --> Image[Container Image]
    Image --> Registry[Container Registry]
    Registry --> Container[Run Container]
    subgraph Environment
        Container --> App[Web App]
    end
