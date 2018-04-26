//
//  ViewController.swift
//  closureOrCallbackExample
//
//  Created by KWTMAC01 on 1/25/18.
//  Copyright © 2018 KWTMAC01. All rights reserved.
//



//Callback example using Property Closure and completion Handler

import UIKit


//using closure variable


//class ViewController: UIViewController {
//
//    private let dataModel = DataModel()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        dataModel.onUpdate={ (dataa:String) in
//            let a=dataa
//            print(a)
//        }
//        dataModel.dataRequest()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//
//
//}
//
//class DataModel
//{
//    var onUpdate:((_ data:String)->Void)?
//
//
//    func dataRequest() {
//        // the data was received and parsed to String
//        let data = "Data from wherever"
//
//        onUpdate?(data)
//
//    }
//
//}



//using completion Handler

class ViewController:UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        let dM = DataModel()
        dM.requestData {[weak self]  (data) in
            print(data)
            self?.useData(data: data)
            
            
        }
        
        
    }
    
    private func useData(data: String) {
        print(data)
    }
    
    
}

class DataModel{
    
    func requestData(completion:(_ data:String)->Void) {
        let data="this is for testing"
        completion(data)
        
    }
    

    
}
