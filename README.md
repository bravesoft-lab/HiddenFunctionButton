# HiddenFunctionButton

## 概要
5秒以内に10回タップすると反応するUIButtonの拡張クラスです。

隠し機能などにお使いください。

## 使い方
HiddenFunctionButton.swiftをダウンロードして、任意のswiftプロジェクトに組みこんでください。

### サンプルコード
```
class ViewController: UIViewController, HiddenFunctionButtonDelegate {

...

let hiddenButton = HiddenFunctionButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
hiddenButton.delegate = self
view.addSubview(hiddenButton)

...

func hiddenFunctionButton(_ didFiredFunction: HiddenFunctionButton) {
    // do something
}
```

### カスタマイズ
検知する秒数とタップの回数は変更することができます。
```
// 3秒以内に5回タップで反応
hiddenButton.interval = 3 // 3秒
hiddenButton.maxCount = 5 // 5回
```

## ライセンス
HiddenFunctionButton is released under the MIT license. See [LICENSE](https://github.com/bravesoft-lab/HiddenFunctionButton/blob/master/LICENSE) for details.
