# hello-django
Djangoのチュートリアルをやっていきます

## セットアップ
### ローカルで動かす
```
python -m venv .venv
python -m pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
```

http://localhost:8000 を開く

### dockerで動かす
```
docker compose up
```

http://localhost:8000 を開く

### クラウドのワークスペースで動かす

<a href="https://gitpod.io/#https://github.com/EngineMaker/hello-django">
  <img
    src="https://img.shields.io/badge/Contribute%20with-Gitpod-908a85?logo=gitpod"
    alt="Contribute with Gitpod"
  />
</a>

