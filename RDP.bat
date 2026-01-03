@echo off
setlocal

REM ==========================================
REM 設定エリア：ここを書き換えてください
REM ==========================================
set TARGET_IP=[接続先のIPアドレスまたはホスト名]
set USER_NAME=[ドメイン名]\[ユーザー名]
set PASSWORD=[パスワード]

REM ==========================================
REM 実行エリア：ここから下は共通で使えます
REM ==========================================

echo %TARGET_IP% に自動ログインを試みます...

REM 1. 接続元のWindowsに資格情報を一時登録
cmdkey /generic:TERMSRV/%TARGET_IP% /user:%USER_NAME% /pass:%PASSWORD%

REM 2. リモートデスクトップ起動
mstsc /v:%TARGET_IP%

REM 3. 画面を閉じたら資格情報を削除
echo 接続が終了しました。資格情報を削除しています...
cmdkey /delete:TERMSRV/%TARGET_IP%

echo 完了しました。
pause
