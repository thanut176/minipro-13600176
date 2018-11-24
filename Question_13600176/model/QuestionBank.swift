//
//  QuestionBank.swift
//  Question_13600176
//
//  Created by thanut jingjit on 10/11/2561 BE.
//  Copyright © 2561 thanut jingjit. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question] ()
    //ชื่อตัวแปร ชนิดของมัน ชนิด question แบบ Arrey เพราะ []
    
    init() {
        
        let item = Question(text: "นักร้องนำชื่อพี่เล็ก", correctAnswer: true)
        
        list.append(item)
        
        
        list.append(Question(text: "ชื่อจริงนักร้องนำชื่อ อภิชัย ตระกูลเผด็จไกร ", correctAnswer: true))
        list.append(Question(text: "แสงสุดท้ายเป็นเพลงของ Greasy Cafe", correctAnswer: true))
        list.append(Question(text: " อภิชัยมีคอนเสิร์ตใหญ่ของตัวเองมาแล้ว 1 ครั้ง", correctAnswer: false))
        list.append(Question(text: "Greasy Cafe มีสมาชิก 2 คน", correctAnswer: true))
        list.append(Question(text: "เขาเคยได้ รางวัลภาพยนตร์แห่งชาติ สุพรรณหงส์ ครั้งที่ 25", correctAnswer: true))
        list.append(Question(text: "เขามีภรรยา 2 คน", correctAnswer: false))
        list.append(Question(text: "เขามีลูกชาย 1 คน", correctAnswer: false))
        list.append(Question(text: "ทิศทาง เป็นผลงานเพลงของเขา", correctAnswer: true))
        list.append(Question(text: "เขามี อายุ 45", correctAnswer: false))
       
        
        
        
        
        
    }
    
}
