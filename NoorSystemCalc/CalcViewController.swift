//
//  ViewController.swift
//  NoorSystemCalc
//
//  Created by Faisal Alkhotaifi on 1/31/18.
//  Copyright © 2018 Faisal Alkhotaifi. All rights reserved.
//

import UIKit

class CalcViewController: UIViewController {
    
    let GoldColor: UIColor? = UIColor(red: 203/255, green: 190/255, blue: 101/255, alpha: 1.0)
    let BlueColor: UIColor? = UIColor(red: 27/255, green: 116/255, blue: 179/255, alpha: 1.0)
    
    let imageBackground: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background")
        image.contentMode = .scaleToFill
        image.alpha = 0.8
        
        return image
    }()
    
    let imagrViewAlpha: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.alpha = 0.7
        
        return view
    }()
    
    lazy var textFieldHolderOne: UIView = {
        let tf = UIView()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = BlueColor
        
        return tf
    }()
    
    let factlityAndStudent: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor.white
        tf.textAlignment = .center
        tf.text = "اختر نوع الكادر التعليمي"
        tf.tintColor = UIColor.clear
        
        return tf
    }()
    
    let toolBar: UIToolbar = {
        let tb = UIToolbar()
        tb.barStyle = .default
        tb.isTranslucent = true
        tb.tintColor = UIColor.blue
        tb.sizeToFit()
        tb.isUserInteractionEnabled = true
        
        return tb
    }()
    
    let inputTextViewHolder: UIView = {
        let tf = UIView()
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        return tf
    }()
    
    lazy var lineOne: UIView = {
        let tf = UIView()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = BlueColor
        
        return tf
    }()
    
    lazy var lineTwo: UIView = {
        let tf = UIView()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = BlueColor
        
        return tf
    }()
    
    lazy var lineThree: UIView = {
        let tf = UIView()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = BlueColor
        
        return tf
    }()
    
    let totalPeopleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "العدد الكلي"
        label.textAlignment = .center
        label.textColor = UIColor.white
        
        return label
    }()
    
    let attendLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "عدد الحضور"
        label.textAlignment = .center
        label.textColor = UIColor.white
        
        return label
    }()
    
    let absentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "عدد الغياب"
        label.textAlignment = .center
        label.textColor = UIColor.white
        
        return label
    }()
    
    let totalPeopleTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor.white
        tf.textAlignment = .center
        tf.keyboardType = .asciiCapableNumberPad
        
        return tf
    }()
    
    let attendTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor.white
        tf.textAlignment = .center
        tf.keyboardType = .asciiCapableNumberPad
        
        return tf
    }()
    
    let absentTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor.white
        tf.textAlignment = .center
        tf.keyboardType = .asciiCapableNumberPad
        
        return tf
    }()
    
    lazy var calcBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("احسب", for: .normal)
        btn.backgroundColor = GoldColor
        
        btn.addTarget(self, action: #selector(calc), for: .touchUpInside)
        
        return btn
    }()
    
    let LogoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "educationILogo")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    let pickView: UIPickerView = UIPickerView()
    let factlityAndStudentArray = ["اختر نوع الكادر التعليمي", "إداريات","معلمات","طالبات"]
    
    let screenWidth = UIScreen.main.bounds.width
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = BlueColor
        
        view.addSubview(imageBackground)
        view.addSubview(textFieldHolderOne)
        view.addSubview(inputTextViewHolder)
        view.addSubview(calcBtn)
        view.addSubview(LogoImage)
        
        setUpImageBackground()
        setUpfactlityAndStudentView()
        setUpInputView()
        setUpCalcBtn()
        setUpLogoImage()
        
        setUpPickerView()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func setUpLogoImage(){
        let imageHieghtAndWidth = (UIScreen.main.bounds.height * 0.2)
        
        LogoImage.topAnchor.constraint(equalTo: calcBtn.bottomAnchor, constant: 40).isActive = true
        LogoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        LogoImage.heightAnchor.constraint(equalToConstant: imageHieghtAndWidth)
        LogoImage.widthAnchor.constraint(equalToConstant: imageHieghtAndWidth)
    }
    
    func setUpImageBackground(){
        imageBackground.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageBackground.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        imageBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageBackground.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        //        imageBackground.addSubview(imagrViewAlpha)
        //
        //        imagrViewAlpha.topAnchor.constraint(equalTo: imageBackground.topAnchor).isActive = true
        //        imagrViewAlpha.rightAnchor.constraint(equalTo: imageBackground.rightAnchor).isActive = true
        //        imagrViewAlpha.bottomAnchor.constraint(equalTo: imageBackground.bottomAnchor).isActive = true
        //        imagrViewAlpha.leftAnchor.constraint(equalTo: imageBackground.leftAnchor).isActive = true
    }
    
    func setUpfactlityAndStudentView(){
        let spacingFromTop = (UIScreen.main.bounds.height * 0.15)
        
        textFieldHolderOne.topAnchor.constraint(equalTo: view.topAnchor, constant: spacingFromTop).isActive = true
        textFieldHolderOne.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        textFieldHolderOne.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        textFieldHolderOne.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        textFieldHolderOne.addSubview(factlityAndStudent)
        
        factlityAndStudent.topAnchor.constraint(equalTo: textFieldHolderOne.topAnchor, constant: 1).isActive = true
        factlityAndStudent.rightAnchor.constraint(equalTo: textFieldHolderOne.rightAnchor, constant: -1).isActive = true
        factlityAndStudent.bottomAnchor.constraint(equalTo: textFieldHolderOne.bottomAnchor, constant: -1).isActive = true
        factlityAndStudent.leftAnchor.constraint(equalTo: textFieldHolderOne.leftAnchor, constant: 1).isActive = true
        
    }
    
    let inputViewHeight = (UIScreen.main.bounds.height) - ((UIScreen.main.bounds.height * 0.6) + 80)
    func setUpInputView(){
        
        inputTextViewHolder.topAnchor.constraint(equalTo: textFieldHolderOne.bottomAnchor, constant: 20).isActive = true
        inputTextViewHolder.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        inputTextViewHolder.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        inputTextViewHolder.heightAnchor.constraint(equalToConstant: inputViewHeight).isActive = true
        
        inputTextViewHolder.addSubview(totalPeopleLabel)
        inputTextViewHolder.addSubview(attendLabel)
        inputTextViewHolder.addSubview(absentLabel)
        inputTextViewHolder.addSubview(lineOne)
        inputTextViewHolder.addSubview(lineTwo)
        inputTextViewHolder.addSubview(lineThree)
        
        setUpLabelsAndTextfieldForInputView()
    }
    
    func setUpLabelsAndTextfieldForInputView(){
        let height = (inputViewHeight - 30) / 3
        let width = (UIScreen.main.bounds.width - 60) / 2
        
        setUpRowOne(height: height, width: width)
        setUpRowTwo(height: height, width: width)
        setUpRowThree(height: height, width: width)
    }
    
    func setUpRowOne(height: CGFloat, width: CGFloat){
        lineOne.topAnchor.constraint(equalTo: inputTextViewHolder.topAnchor, constant: 5).isActive = true
        lineOne.leftAnchor.constraint(equalTo: inputTextViewHolder.leftAnchor, constant: 5).isActive = true
        lineOne.heightAnchor.constraint(equalToConstant: height).isActive = true
        lineOne.widthAnchor.constraint(equalToConstant: width).isActive = true
        
        totalPeopleLabel.topAnchor.constraint(equalTo: inputTextViewHolder.topAnchor, constant: 5).isActive = true
        totalPeopleLabel.rightAnchor.constraint(equalTo: inputTextViewHolder.rightAnchor, constant: -5).isActive = true
        totalPeopleLabel.heightAnchor.constraint(equalToConstant: height).isActive = true
        totalPeopleLabel.widthAnchor.constraint(equalToConstant: width).isActive = true
        
        lineOne.addSubview(totalPeopleTextField)
        setUpTotalPeopleTextField()
    }
    
    func setUpTotalPeopleTextField(){
        totalPeopleTextField.topAnchor.constraint(equalTo: lineOne.topAnchor, constant: 1).isActive = true
        totalPeopleTextField.rightAnchor.constraint(equalTo: lineOne.rightAnchor, constant: -1).isActive = true
        totalPeopleTextField.bottomAnchor.constraint(equalTo: lineOne.bottomAnchor, constant: -1).isActive = true
        totalPeopleTextField.leftAnchor.constraint(equalTo: lineOne.leftAnchor, constant: 1).isActive = true
    }
    
    func setUpRowTwo(height: CGFloat, width: CGFloat){
        lineTwo.topAnchor.constraint(equalTo: lineOne.bottomAnchor, constant: 10).isActive = true
        lineTwo.leftAnchor.constraint(equalTo: inputTextViewHolder.leftAnchor, constant: 5).isActive = true
        lineTwo.heightAnchor.constraint(equalToConstant: height).isActive = true
        lineTwo.widthAnchor.constraint(equalToConstant: width).isActive = true
        
        attendLabel.topAnchor.constraint(equalTo: lineOne.bottomAnchor, constant: 10).isActive = true
        attendLabel.rightAnchor.constraint(equalTo: inputTextViewHolder.rightAnchor, constant: -5).isActive = true
        attendLabel.heightAnchor.constraint(equalToConstant: height).isActive = true
        attendLabel.widthAnchor.constraint(equalToConstant: width).isActive = true
        
        lineTwo.addSubview(attendTextField)
        setUpattendTextField()
    }
    
    func setUpattendTextField(){
        attendTextField.topAnchor.constraint(equalTo: lineTwo.topAnchor, constant: 1).isActive = true
        attendTextField.rightAnchor.constraint(equalTo: lineTwo.rightAnchor, constant: -1).isActive = true
        attendTextField.bottomAnchor.constraint(equalTo: lineTwo.bottomAnchor, constant: -1).isActive = true
        attendTextField.leftAnchor.constraint(equalTo: lineTwo.leftAnchor, constant: 1).isActive = true
    }
    
    func setUpRowThree(height: CGFloat, width: CGFloat){
        lineThree.topAnchor.constraint(equalTo: lineTwo.bottomAnchor, constant: 10).isActive = true
        lineThree.leftAnchor.constraint(equalTo: inputTextViewHolder.leftAnchor, constant: 5).isActive = true
        lineThree.heightAnchor.constraint(equalToConstant: height).isActive = true
        lineThree.widthAnchor.constraint(equalToConstant: width).isActive = true
        
        absentLabel.topAnchor.constraint(equalTo: lineTwo.bottomAnchor, constant: 10).isActive = true
        absentLabel.rightAnchor.constraint(equalTo: inputTextViewHolder.rightAnchor, constant: -5).isActive = true
        absentLabel.heightAnchor.constraint(equalToConstant: height).isActive = true
        absentLabel.widthAnchor.constraint(equalToConstant: width).isActive = true
        
        lineThree.addSubview(absentTextField)
        setUpabsentTextField()
    }
    
    func setUpabsentTextField(){
        absentTextField.topAnchor.constraint(equalTo: lineThree.topAnchor, constant: 1).isActive = true
        absentTextField.rightAnchor.constraint(equalTo: lineThree.rightAnchor, constant: -1).isActive = true
        absentTextField.bottomAnchor.constraint(equalTo: lineThree.bottomAnchor, constant: -1).isActive = true
        absentTextField.leftAnchor.constraint(equalTo: lineThree.leftAnchor, constant: 1).isActive = true
    }
    
    func setUpPickerView(){
        pickView.dataSource = self
        pickView.delegate = self
        factlityAndStudent.delegate = self
        factlityAndStudent.inputView = self.pickView
        let cancelButton = UIBarButtonItem(title: "إغلاق", style: .plain, target: self, action: #selector(cancelClick))
        toolBar.setItems([cancelButton], animated: false)
        factlityAndStudent.inputAccessoryView = toolBar
    }
    
    func setUpCalcBtn(){
        calcBtn.topAnchor.constraint(equalTo: inputTextViewHolder.bottomAnchor, constant: 20).isActive = true
        calcBtn.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        calcBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        calcBtn.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    @objc func cancelClick(){
        factlityAndStudent.resignFirstResponder()
    }
    
    @objc func calc(){
        var totalAttendent: Int = 0
        var totalAbsent: Int = 0
        
        let total = totalPeopleTextField.text!
        let attend = attendTextField.text!
        let absent = absentTextField.text!
        
        if (total.isEmpty || attend.isEmpty || absent.isEmpty){ return }
        
        let doubleTotal: Double = Double(total)!
        let doubleAttend: Double = Double(attend)!
        let doubleAbsent: Double = Double(absent)!
        
        let currentTotal = doubleAttend + doubleAbsent
        
        if (currentTotal != doubleTotal){
            return
        }
        
        print("input --> \(doubleTotal) \(doubleAttend) \(doubleAbsent) \(currentTotal)")
        
        totalAttendent = Int((doubleAttend / doubleTotal) * 100)
        totalAbsent = Int((doubleAbsent / doubleTotal) * 100)
        
        print("output --> \(totalAttendent) \(totalAbsent)")
        
        let StringFaclityName = factlityAndStudent.text!
        let StringAttendentName = "الحضور"
        let StringAbsnetName = "الغياب"
        
        let MessageTitle = "\(StringFaclityName) \n \(StringAttendentName): %\(totalAttendent) \n \(StringAbsnetName):  %\(totalAbsent)"
        let Message = UIAlertController(title: MessageTitle, message: "", preferredStyle: .alert)
        
        let done = UIAlertAction(title: "اوكي", style: .default, handler: { (action) in
            self.factlityAndStudent.text = "اختر نوع الكادر التعليمي"
            self.totalPeopleTextField.text?.removeAll()
            self.attendTextField.text?.removeAll()
            self.absentTextField.text?.removeAll()
        })
        
        let cancel = UIAlertAction(title: "إلغاء", style: .cancel, handler: nil)
        
        Message.addAction(cancel)
        Message.addAction(done)
        self.present(Message, animated: true, completion: nil)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = factlityAndStudentArray[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return factlityAndStudentArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return factlityAndStudentArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        factlityAndStudent.text = factlityAndStudentArray[row]
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

