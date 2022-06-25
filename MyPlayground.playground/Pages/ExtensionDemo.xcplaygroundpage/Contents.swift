// ต่อไปเราจะมาใช้ตัว extensions กัน
// extensions เป็นฟังก์ชันที่ช่วยให้เราเพิ่มความสามารถให้กับ class ปัจจุบันได้
// อารมณ์แบบว่าเราทำงานเสร็จไปแล้ว แล้วลูกค้าบอกว่าเอ๊อยากเพิ่มฟังก์ชันนี้เข้าไปในแอปของเค้า
// เเล้วเราไม่ต้องการที่จะไปแก้โค้ดใน class ให้มันมีปัญหา ดังนั้น extensions ก็จะมาช่วยเราในส่วนนี้

import UIKit

var myDouble = 3.14159

let myRoundedDouble = String(format:"%.1f" , myDouble)

// คือตัว Double หงะมันจะมี fn ชื่อว่า round ให้ใช้งานอยู่แล้ว แต่ว่าวิธีใช้ของมันคือไม่มีการส่ง parameter ไป แต่อย่างที่เห็น
// เราทำการส่ง param ไป 1 ตัวแล้วโค้ดมัน error ทีนี้เราจะไปขยายความสามารถของ fn round ให้มันสามารถรับ param ได้
myDouble.round(to: 3)

// ขยายมันด้วยการใช้ extension ยังไงล้า
// ขยายความสามารถของคลาส Double
extension Double {
//    ใน fn round
    func round(to places:Int) -> Double {
        let precisionNumber = pow(10 , Double(places))
        var n = self    // self = ค่าที่เรากำหนดมาจากตอนประกาศตัวแปร
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}

// จะเห็นว่าเราจะได้ทศนิยมมา 2 ตำแหน่งตามที่ส่ง param ไป
myDouble.round(to:2)

// นี่แหละนะ extension สิ่งที่เอามาขยายความสามารถของ class ที่เราต้องการ
// นอกจากจะเอามาขยายความสามารถแล้ว ยังเอามากำหนดค่าเริ่มต้นให้กับตัว protocol ได้ด้วยแหละ

print(myRoundedDouble)
