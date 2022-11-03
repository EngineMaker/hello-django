# hello-django
Djangoのチュートリアルをやっていきます

https://django.mktoho.dev

## セットアップ
### ローカルで動かす
```
# データベースサーバー
brew install postgresql@15
set -x LDFLAGS $LDFLAGS -L/opt/homebrew/opt/postgresql@15/lib
brew services start postgresql@15
createdb poll

# アプリケーションサーバーの開発環境
python -m venv .venv
cp .env_example .env
pip install --use-pep517 -r requirements.txt
python manage.py migrate
python manage.py shell < docker/dev/create-admin-user.py
python manage.py runserver

# tailwindとhot reload
python manage.py install
python manage.py build
python manage.py start
```

http://localhost:8000 を開く


Docker/Gitpodに乗り換えた後にデータベースサーバーを片付ける
```
dropdb poll
brew services stop postgresql@15
brew uninstall postgresql@15
```

### dockerで動かす
```
docker compose -f docker/dev/docker-compose.yaml up
```

http://localhost:8000 を開く

### クラウドのワークスペースで動かす

<a href="https://gitpod.io/#https://github.com/EngineMaker/hello-django">
  <img
    src="https://img.shields.io/badge/Contribute%20with-Gitpod-908a85?logo=gitpod"
    alt="Contribute with Gitpod"
  />
</a>

