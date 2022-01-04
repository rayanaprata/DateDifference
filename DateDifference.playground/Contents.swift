import UIKit

let calendar = Calendar.current

let date1 = calendar.date(bySettingHour: 15, minute: 30, second: 00, of: Date())!
let date2 = calendar.date(bySettingHour: 17, minute: 15, second: 43, of: Date())!

let result = date2.timeIntervalSince(date1)

let time = Int(result)

let seconds = time % 60
let minutes = (time / 60) % 60
let hours = time / 3600

struct DateHMS {
    let second: Int
    let minute: Int
    let hour: Int
}

extension Date {
    func diffToHMS(by date: Date) -> DateHMS {
        let result = date2.timeIntervalSince(date1)
        let time = Int(result)
        let seconds = time % 60
        let minutes = (time / 60) % 60
        let hours = time / 3600
        return DateHMS(second: seconds,
                       minute: minutes,
                       hour: hours)
    }
}

print(date1.diffToHMS(by: date2))
