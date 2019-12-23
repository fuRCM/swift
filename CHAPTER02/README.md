# CHAPTER02　関数

## 2.1 関数定義の基本

**関数定義**

```
func 関数名 (仮引数名) -> (戻り値の型){

return 戻り値
}
```

ここで、引数と戻り値は省略ができる

**外部引数名**

```
func profile(age:Int, weight:Int){
  print("age:\(age)", "weight:\(weight)Kg", separator:", ")
}

profile( 20, weight: 50)
```

第二仮引数名以降は外部引数名にもなる。
ここでは第一外部引数名は付いていないので注意


**外部引数名を明示的に記述する**

```
func profile(age a:Int, weight w:Int){
  print("age:\(a)", "weight:\(w)Kg", separator:", ")
}

profile(age: 20, weight: 50)
```

外部引数名をつけたくないときは_（アンダーバー）をつける
ワイルドカード

<br>

## 2.2 関数定義における様々な設定

**呼び出し側の変数の変更**
```
var cnt = 0

func count(inout i:Int){
  i = i + 1; 
}

for a in 1...9 {
  count(&cnt)
  print(cnt)
}
```
関数に変数を入れるときに&を忘れずに
++はswift3から使えないので注意(--も同様)


**引数を変更(swift3からは使えない)**

```
func week(var i:Int){
  if i > 7 {
    i = 1
  }
}
```
借り引数名の前にvarをつけるだけ

**関数内の関数(ネスト関数)**

```
func circle(pi:Float) -> (Float -> Float) {
  func circle_area (radius:Float) -> Float {
    return radius * radius * pi
  }
  return circle_area
}

let circle1 = circle(3.14)
let circle2 = circle(3)

print(circle1(4.0))
print(circle2(2.0))
//クロージャが使える！に発展するみたいなので、試しに円の面積を求める関数作りました
```


<br>
##2.3オーバーロード

引数の個数・型・戻り値の違う同名の関数
外部引数名の違う同名の違う関数
を、作ることができる



##資料
<br>
https://docs.google.com/presentation/d/1Sg_lR-0UX2CyhlkFytAcHijtKNAJvhydqkWm6r60t8g/edit?usp=sharing
