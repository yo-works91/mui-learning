# ベースイメージとしてNode.jsを使用
FROM node:20

# 作業ディレクトリを設定
WORKDIR /app

# package.jsonとpackage-lock.jsonをコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションのソースコードをコピー
COPY . .

# Next.jsをビルド
RUN npm run build

# コンテナ起動時にNext.jsを立ち上げる
CMD ["npm", "start"]