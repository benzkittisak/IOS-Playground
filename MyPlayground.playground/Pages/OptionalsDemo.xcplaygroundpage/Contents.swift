// วันนี้เราจะมาเรียนรู้เกี่ยวกับการ unwrap ตัว optional เพิ่มเติมกัน

let myOptional : String?

myOptional = "Tree"

// อย่างที่รู้ว่าแบบนี้มันทำไม่ได้แน่นอน เพราะตัวแปร myOptional ตัว swift มันยังไม่ได้แกะตัว optional ออกเลย
let text:String = myOptional

// ดังนั้นวิธีที่เราจะมาแกะห่อกันโดยวิธีแรกก็เหมือนกับที่เคยพิมพ์ไปแล้วคือ บังคับให้มัน unwrap เลย แต่ต้องชัวนะว่ามีค่ามีตัวแปรแล้วจริง ๆ ไม่งั้นพังเลยนา
let text1:String = myOptional!

// หรือจะใช้อีกวิธีที่เคยพิมพ์ไปแล้วคือการใช้ if
if myOptional != nil {
    let text3:String = myOptional!
} else {
    print("myOptional was found to be nil")
}

// หรือจะใช้ if let ก็ด๊ะ เราจะเรียกว่า Optional Binding ถ้า Optional มันไม่ได้เป็นค่า nil ให้เอาค่าไปเก็บไว้ที่ safeOptional ก่อนถึงจะเอาไปใช้
if let safeOptional = myOptional {
    let text4:String = safeOptional
} else {
    print("myOptional was found to be nil")
}

// จะใช้ guard let ก็ได้แหละ
guard let text5:String = myOptional else { return print("myOptional was found to be nil") }

// หรือจะใช้สิ่งที่เราเรียกว่า Optional Coalescing Operator ก็ได้ (??)
let text6:String = myOptional ?? "myOptional was found to be nil"

// แล้วแต่จะใช้แหละเลือกเอาล้ากัล


//ต่อไปแล้วถ้าสมมติว่า struct หรือ class มันเป็น optional ล่ะจะทำไง

struct myStructOptional {
    var property = 123
    func method(){
        print("I am the struct's method.")
    }
}

let myOptional3:myStructOptional?

myOptional3 = myStructOptional()

// ถ้าเราพยายามจะ print มันจะทำไม่ได้ เพราะว่า swift ยังห่อด้วย optional อยู่เลย ถึงจะบังคับห่อได้ ก็ไม่รู้ว่ามันไปใช้ struct ได้จริงไหมอีก
myOptional3.method()

// ดังนั้นเราจะใช้ Optional Chaining
//สังเกตว่ามีการเพิ่ม ? ไว้หลังตัวแปรที่มาจาก Optional แปลว่าถ้าตัว myOptional3 สามารถใช้ struct ได้จริงถึงจะไปเรียกใช้ method()
myOptional3?.method()
