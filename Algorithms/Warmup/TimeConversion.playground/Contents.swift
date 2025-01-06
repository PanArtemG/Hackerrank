import Foundation

// MARK: - Time Conversion

/*
 Given a time in -hour AM/PM format, convert it to military (24-hour) time.

 Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
 - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

 Example
    - s = `12:01:00PM'
    Return '12:01:00'.

    - s = `12:00:00AM'
    Return '00:01:00'.
 
 Function Description

 Complete the timeConversion function in the editor below. It should return a new string representing the input time in 24 hour format.

 timeConversion has the following parameter(s):
    - string s: a time in 12 hour format
 
 Returns
    - string: the time in 24  hour format
 */


func timeConversion(s: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "h:mm:ssa"
    
    guard let date = dateFormatter.date(from: s) else {
        return ""
    }
    dateFormatter.dateFormat = "HH:mm:ss"
    return dateFormatter.string(from: date)
}

timeConversion(s: "07:05:45AM")
