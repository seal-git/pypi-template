# pypy-template
pypyパッケージ作成用のテンプレート。

## ローカルでの使い方
1. `python setup.py sdist bdist_wheel`を実行
2. `pip install .`を実行
## pypiアップロード方法
1. .envファイルに`pypipassword=hogehoge`と追加する。
2. setup.shを実行してtestpypiにアップロードする。

