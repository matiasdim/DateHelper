//
//  DateHelper.swift
//  DateHelper
//
//  Created by Matías  Gil Echavarría on 12/04/21.
//

import Foundation

struct DateHelper {
    
    /// Returns a string  date from a time stamp, using custom format
    /// - Parameters:
    ///   - timestamp: Integer timestamp representing the date
    ///   - format: The date format for the returning string
    /// - Returns: Formated date string
    static func stringDateFrom(timestamp: Int, withFormat format: DateFormatter) -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(timestamp))
        return format.string(from: date)
    }
    
    /// Returns a string  date from a time stamp, using custom string format
    /// - Parameters:
    ///   - timestamp: Integer timestamp representing the date
    ///   - stringFormat: The string format for returning string
    /// - Returns: Formated date string
    static func stringDateFrom(timestamp: Int, withFormat stringFormat: String) -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(timestamp))
        let format = Self.formatter(stringFormat: stringFormat)
        return format.string(from: date)
    }
    
    /// Returns date formatter from a provided string format
    /// - Parameter stringFormat: The string format to  convert
    /// - Returns: Date formatter
    static func formatter(stringFormat: String) -> DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = stringFormat
        
        return formatter
    }
}
