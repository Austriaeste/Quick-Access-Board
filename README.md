# HTA Shared Folder Launcher Generator

**VBA-powered HTA generator for quick access to shared folders.**

## 概要 (Overview)

このプロジェクトは、Excelで管理された共有フォルダのリストから、軽量で高速な**HTA（HTML Application）ランチャー**を自動生成するツールです。

## 特徴 (Features)

* **文字化け対策済み:** Unicode (UTF-16) 出力により、日本語のパスやフォルダ名も正しく表示・動作します。
* **セキュリティ回避設計:** 直接エクスプローラーを叩かず `cmd /c start` を経由することで、制限の厳しい社内PC環境でもフォルダ起動が可能です。
* **自動レイアウト:** Excelのリストから、使い勝手の良い 3×5 のグリッド配置を自動生成します。
* **デスクトップ固定:** 画面の右下にピッタリ配置されるよう自動計算されます。

## 使い方 (How to Use)

1. **Excelの準備:**
* A列に「ボタン名（表示名）」、B列に「共有フォルダのパス」を入力します。


2. **マクロの実行:**
* Excel内の生成ボタン（マクロ `GenerateMyLauncher`）をクリックします。


3. **ランチャーの起動:**
* デスクトップに生成された `SharedLauncher.hta` を実行してください。

## 技術スタック (Tech Stack)

* **Excel VBA:** HTAファイルの自動生成、文字列処理、ファイルI/O
* **HTA (HTML Application):** UIフロントエンド
* **JavaScript (JScript):** Windows Shell操作、ウィンドウ制御

---
