//
//Chapter2 関数
//

func kansu (){
    print("実行できました")
}

kansu()

func profile(age:Int, weight:Int){
    print("age:\(age)", "weight:\(weight)Kg", separator:", ")
}

profile(20, weight: 50)//第一外部引き数名は書かない（エラーになる）

func profile1(age a:Int, weight w:Int){
    print("age:\(a)", "weight:\(w)Kg", separator:", ")
}

profile1(age: 20, weight: 50)//第一外部引き数名が書ける

//呼び出し側の変数の値を変更したい

var cnt = 0

func count(inout i:Int){
    i = i + 1; //++はswift3から使えなくなる
}

for a in 1...9 {
    count(&cnt)
    print(cnt)
}

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
