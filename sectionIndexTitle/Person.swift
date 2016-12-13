//
//  Person.swift
//  sectionIndexTitle
//
//  Created by Pham Ngoc Hai on 12/13/16.
//  Copyright © 2016 pnh. All rights reserved.
//

import Foundation
class Person {
    
    static var arrFirstNameMen: [String]!
    static var arrFirstNameWomen: [String]!
    static var lastName: [String]!
    static var arrMidNameMen: [String]!
    static var arrMidNameWomen: [String]!
    static var arr09x: [String]!
    
    var fullName: String!
    var lastName: String!
    var firstName: String!
    var middleName: String!
    var mobilePhone: String!
    
    static var isCheck: Bool = true
    
    
    init() {
        if Person.isCheck == true{
            
            Person.arrFirstNameMen = ["Anh", "Bắc", "Biên", "Chung", "Chiến", "Chính", "Công", "Dương", "Dũng", "Đạo", "Điền", "Đạt", "Kiên", "Kiểm", "Long", "Mạnh", "Nam", "Nhân", "Phúc", "Phước", "Phú", "Quảng", "Quân", "Sáng", "Trung", "Tú", "Cần", "Minh", "Phương", "Thế", "Duy", "Cường", "Huy", "Thắng", "Tiến", "Tùng", "Bình"]
            Person.arrFirstNameWomen = ["An", "Anh", "Ánh", "Chung", "Dung", "Giang", "Hằng", "Hương", "Khánh", "Liên", "Linh", "Liễu", "Mai", "Nhi", "Nhung", "Oanh", "Phúc", "Quyên", "Quỳnh", "Thuỷ", "Thảo", "Tú", "Phương",  "Hoa", "Huệ", "Uyên",  "Xinh", "Yến"]
            Person.arrMidNameMen = ["Văn", "Đăng", "Bảo", "Đình", "Minh", "Vĩnh", "Hữu", "Công", "Khắc", "Duy", "Kim", "Thế", "Xuân"]
            Person.arrMidNameWomen = ["Thị", "Ngọc", "Thuỳ"]
            Person.lastName = ["Hoàng", "Trần", "Nguyễn", "Đặng", "Phạm", "Trịnh", "Đỗ", "Đinh", "Lê", "Vũ", "Bùi", "Hồ", "Ngô",  "Dương", "Lý", "Lương", "Doãn"]
            
            Person.arr09x = ["091", "092", "093", "094", "096", "097", "098", "(04)-", "(08)-"]
            
            Person.isCheck = false
            
            
        }
        let genderIndex = arc4random_uniform(2)
        if genderIndex == 0
        {
            middleName = Person.arrMidNameWomen[Int(arc4random_uniform(UInt32(Person.arrMidNameWomen.count)))]
            firstName = Person.arrFirstNameWomen[Int(arc4random_uniform(UInt32(Person.arrFirstNameWomen.count)))]
            
        }else {
            
            middleName = Person.arrMidNameMen[Int(arc4random_uniform(UInt32(Person.arrMidNameMen.count)))]
            firstName = Person.arrFirstNameMen[Int(arc4random_uniform(UInt32(Person.arrFirstNameMen.count)))]
            
        }
        
        lastName = Person.lastName[Int(arc4random_uniform(UInt32(Person.lastName.count)))]
        fullName = lastName + " " +  middleName + " " + firstName
        mobilePhone = Person.arr09x[Int(arc4random_uniform(UInt32(Person.arr09x.count)))] + " " + "\(100000000 / (arc4random_uniform(90) + 11))"
//
    }
    
    
    
    
    
    
}
