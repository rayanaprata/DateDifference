import UIKit

let calendar = Calendar.current

let date1 = calendar.date(bySettingHour: 15, minute: 30, second: 00, of: Date())!
let date2 = calendar.date(bySettingHour: 16, minute: 00, second: 00, of: Date())!

let result = date2.timeIntervalSince(date1)
