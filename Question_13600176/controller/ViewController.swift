//
//  ViewController.swift
//  Question_13600176
//
//  Created by thanut jingjit on 10/11/2561 BE.
//  Copyright © 2561 thanut jingjit. All rights reserved.
//
import AVFoundation
import UIKit


class ViewController: UIViewController ,AVAudioPlayerDelegate {

    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var processLable: UILabel!
    @IBOutlet weak var progressBar: UILabel!
    @IBOutlet weak var correctAnsLabelReport: UILabel!
    @IBOutlet weak var wrongAnsLabelReport: UILabel!
    @IBOutlet weak var clickButton: UIButton!
    @IBOutlet weak var clickButton2: UIButton!
    
    
    
    let allQuestion = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    var correctScore = 0
    var wrongScore = 0
    let actionSound = ["Underwater"]
    var audioplayer : AVAudioPlayer!
    
    
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        clickButton.layer.cornerRadius = self.clickButton.frame.size.height / 2
        clickButton2.layer.cornerRadius = self.clickButton2.frame.size.height / 2
        
        

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
    
        if sender.tag == 1 {
            print("picked true")
            //ให้ค่ากับตัวแปลที่เก็บคำตอบ
            pickedAnswer = true
        }else if sender.tag == 2 {
            print("picked false")
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
        updateUI()
        playSound("Underwater")
    }// end func answerPressed
    
    func checkAnswer() {
        if questionNumber < 10 {
            let correctAnswer = allQuestion.list[questionNumber].answer
            if correctAnswer == pickedAnswer {
                print("Correct!")
                score += 1
                correctScore += 1
                ProgressHUD.showSuccess("ถูกจ้าา")
            } else {
                print("Wrong!")
                wrongScore += 1
                ProgressHUD.showError("ผิดจ้าา")
            }
        }
    }// end checkAnswer
    
    func startOver() {
        questionNumber = 0
        score = 0
        correctScore = 0
        wrongScore = 0
        updateUI()
    }// end startOver
    
    func nextQuestion() {
    }
    
    func updateUI() {
        progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(questionNumber)
        correctAnsLabelReport.text = "ข้อที่ถูก: \(correctScore) = \((Float(correctScore)/Float((questionNumber)))*100)%"
        wrongAnsLabelReport.text = "ข้อที่ผิด : \(wrongScore) = \((Float(wrongScore)/Float((questionNumber)))*100)%"
        
        if questionNumber < 10{
            questionLable.text = allQuestion.list[questionNumber].questionText
            scoreLable.text = "Score: \(score)"
            processLable.text = "\(questionNumber+1)/\(allQuestion.list.count)"
        }else {
            print("end of question")
            
            let alert = UIAlertController(title: "จบเกมแล้ว", message: "คะแนนของคุณ คือ  :  \(score)  อยากเล่นอีกรอบมั้ย ?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "เล่นอีกรอบ", style: .default, handler: {UIAlertAction in self.startOver()})
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func playSound(_ playThis : String){
        let soundURL = Bundle.main.url(forResource: playThis, withExtension: "mp3")
        audioplayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioplayer.play()
    }
    
   
    
        
        
    }
        

    


