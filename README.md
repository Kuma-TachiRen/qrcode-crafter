# QR Code Crafter

Minecraft 内で String 型の NBT から QR コードを作成できるデータパック．

※ QRコードは株式会社デンソーウェーブの登録商標．

## 動作確認バージョン

- 1.20.2

マクロが使用できるバージョンであれば動くはず．

## 仕様

### 未実装・実装予定の要素

- 特殊文字 `"'\` の変換に対応
- 適用するマスクの選択に対応

### 生成できる QR コードについて

- モデル2．
- バージョンは 1 から 40 まで対応．
- 数字モード，英数モード，バイナリモードに対応し，漢字モードは非対応．
- 誤り訂正レベルは L,M,Q,H に対応．

実装にあたっては[QR Code Tutorial - Thonky.com](https://www.thonky.com/qr-code-tutorial/)を全面的に参考にした．

### 使い方

1. `maxCommandChainLength` を十分大きく設定しておく（多分 `1000000` 程度あればよい）．
2. storage `qrcc:` の `Text` に変換したい文字列を設定する．
3. storage `qrcc:` の `ECLevel` に誤り訂正レベルを `0,1,2,3`（int，この順に `L,M,Q,H` に対応する）のいずれかで設定する．
4. `function:hoge` を呼び出す．
5. storage `qrcc:` の `Result` に生成された QR コードのデータが入る．

生成されたデータは次の形で表される．

- `Size`: QR コードの一辺の長さを表す．
- `Code`: 「Byte からなる長さ `Size` の List」からなる長さ `Size` の List である．`Code[x][y]` が上から `x` 行目，左から `y` 行目のマスのデータを表し，`0b` が明，`1b` が暗を意味する．

### バイナリモードで変換可能な文字の追加方法

（準備中）

### エラーメッセージの書き換え

（準備中）
