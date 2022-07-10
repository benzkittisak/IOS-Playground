
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
        numberOfSlices3 = newValue
        print("numberOfSlice4 now has a new value which is \(newValue)")
    }
}

// วิธีใช้ setter ก็ง่ายๆ  ก็คือเรากำหนดค่าตัวแปรให้มันใหม่ก็แค่นั้นแหละ
numberOfSlices3 = 12
print(numberOfSlices3)
