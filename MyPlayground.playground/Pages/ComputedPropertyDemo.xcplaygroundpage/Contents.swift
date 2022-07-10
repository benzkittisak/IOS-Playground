
let pizzaInInches :Int = 12

// 6 มาจากที่พิซซ่าแต่ละชิ้นเราจะหันมันทุก ๆ 4 นิ้ว ดังนั้นมันก็จะได้พิซซ่า 6 นิ้วให้เราหั่นออก
var numberOfSlices:Int = 6

print(numberOfSlices)

// จะเห็นว่าเราเปลี่ยนตัวแปรเป็น 4 ธรรมดาแหละ แต่อันนี้คือเราคิดเอง แล้วถ้าเราต้องการที่จะให้มันคำนวณล่ะ
numberOfSlices = 4

// เราก็จะใช้ตัว computed perpoty กันรูปแบบการใช้งานก็จะเป็นแบบนิ้
// อันนี้เค้าเรียก getter เพราะว่าเราไปเอาค่าของตัวแปรอื่นมาคำนวณ ไม่ได้มีการ set ค่าให้ตัวแปรใหม่
var numberOfSlices2 :Int {
    return pizzaInInches - 4
}

// จะเห็นว่าตัวแปรมันอัปเดตให้อัตโนมัติเลยเมื่อตัวแปรที่เราใช้ในการคำนวณมันมีการเปลี่ยนแปลง
print(numberOfSlices2)

// แล้วถ้าเราจะเขียนตัว setter ล่ะเราจะทำยังไง
// ตัว setter จะช่วยให้เราสามารถกำหนค่าใหม่กับตัว comeputed property ได้นั่นเอง
var numberOfSlices3:Int {
    get{
        return pizzaInInches - 4
    }
    set{
        numberOfSlices = newValue
        print("numberOfSlice4 now has a new value which is \(newValue)")
    }
}

// วิธีใช้ setter ก็ง่ายๆ  ก็คือเรากำหนดค่าตัวแปรให้มันใหม่ก็แค่นั้นแหละ
numberOfSlices3 = 12
// หรือจะใช้ผ่านฟังก์ชันแบบนี้ก็ได้
print(numberOfSlices3)


//MARK: - ยกตัวอย่างประกอบแบบง่าย ๆ
// สมมติว่าเรามีสินค้าตัวนึงคือกระดาษ เรามีอยู่ 10 แผ่น
var paper:Int = 10
// แล้วเราก็มีราคาต่อแผ่นอยู่ที่ 5 บาท
var paperPrice:Float = 5.0

var totalPrice:Float = 0.0

// จากนั้นเรากำหนดราคาขายว่าถ้าขาย 1 แผ่นเนี่ยจะต้องรวมภาษีมวลค่าเพิ่ม 7 % ด้วยนะ ดังนั้นเราจะสร้างตัวแปร calculatePrice ขึ้นมาซึ่งเป็น computed property
var calculatePrice : Float
    {
        get{
            let vat:Float = Float(paperPrice) * 0.07
            paper -= 1
            return Float(paperPrice) + vat
        }
        set{
            let vat:Float = (paperPrice * newValue) * 0.07
            paper -= Int(newValue)
            totalPrice = (paperPrice * newValue) + vat
        }
    }


// ลองเอา totalPrice มาแสดงผลเล่น ๆ ดูจะๆได้ผลลัพธ์ดังด้านขวามือ
print(calculatePrice)

// จากนั้นเราจะทำการเพิ่ม set เพื่อที่ว่า ถ้าเกิดว่ามีการใส่จำนวนของกระดาษลงมาที่ calculate จะให้มันคำนวณผลออกมาใหม่
// แล้วเราก็จะทำการทดลองใช้งานกันดู
calculatePrice = 2

// จากนั้นเราจะทำการเอาตัวแปรมาแสดงผลดูว่าว่าของมันจะเปลี่ยนไปจากเดิมไหม
print(paper)
print(totalPrice)
// จะเห็นว่าข้อมูลมันจะมีการเปลี่ยนแปลงไปตามที่ calculatePrice มันคำนวณออกมาได้


//MARK: - Observer
/*
 เราจะมาเรียนรู้เรื่องของ Observer กันต่อ อะไรคือ Observer
 property ที่เป็น Observer คือจะเป็นตัวที่ตอบสนองต่อเหตุการณ์ต่าง ๆ เช่น มีการเปลี่ยนแปลงค่าภายในตัวแปรไหม ถ้ามีก่อนที่จะเปลี่ยนจะให้ทำอะไร (willSet)
 แล้วหลังเปลี่ยนจะให้ทำอะไร (didSet) เช่น
 */

var totalScore:Int = 0 {
    willSet{
        print("คะแนนเก่าคือ \(totalScore)")
    }
    didSet{
        print("คะแนนใหม่คือ \(totalScore)")
    }
}

print(totalScore)

// แล้วถ้าเราเปลี่ยนค่า สังเกตสิ่งที่เกิดขึ้นในคอนโซลเอาละกัน
totalScore = 10
print(totalScore)

// หรือเราสามารถเอานางมาเช็คได้ว่าถ้้าหากกรอกคะแนนเกิน 100 ให้นางแสดงข้อความว่า ใส่คะแนนเกิน 100 แล้วให้มันเซ็ตค่าคะแนนที่ 100 เลย

var totalScore2:Int = 0 {
    willSet{
        print("คะแนนเก่าคือ \(totalScore)")
    }
    didSet{
        if totalScore2 > 100 {
            print("ไม่สามารถกรอกคะแนนเกิน 100 ได้ , ทำการเปลี่ยนค่าคะแนนจาก \(totalScore2) เป็น 100 ให้แล้ว")
            totalScore2 = 100
        }
    }
}

totalScore2 = 104
print(totalScore2)

//MARK: - challenge time !!

var width:Float = 1.5
var height:Float = 2.3

// ให้ทำการเขียนโค้ดคำนวนว่า จะต้องใช้ถังสีที่ถังถึงจะทาสีได้ทั้งห้อง
// กำหนดให้ถังสี 1 ถังทาสีได้ 1.5
var bucketOfPaint:Int {
    get{
        let area = width * height
        let areaCoverPerBucket:Float = 1.5
        let numberOfBuckets = area / areaCoverPerBucket
        return Int(numberOfBuckets.rounded(.up))
    }
//    อันนี้ชาเล้นข้อ 2 คือ ถ้าเราใส่ค่ามา เช่นใส่จำนวนถังสีมา ให้มันคำนวณว่าจะสามารถทาสีได้พื้นที่เท่าไหร่
    set{
        let areaCanCover = Float(newValue) * 1.5
        print("สามารถทาสีได้ \(areaCanCover) ตารางเมตร")
    }
}

print(bucketOfPaint)

// ลองการบ้านข้อ2
bucketOfPaint = 4
