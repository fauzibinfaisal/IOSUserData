//
//  ViewController.swift
//  IOSUserData
//
//  Created by Fauzi Fauzi on 05/07/19.
//  Copyright © 2019 Fauzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordTF: UITextField!
    @IBOutlet weak var dataLabel: UILabel!
    
    //key bakalan disimpan ditempat yg sama
    let userDef = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        dataLabel.text = userDef.string(forKey: "word")

        // Do any additional setup after loading the view.
    }
    @IBAction func saveButton(_ sender: UIButton) {
        
        //Menambahkan key baru
        userDef.set(wordTF.text, forKey: "word")
        //Memanggil userDef yang tersimpan
        dataLabel.text = userDef.string(forKey: "word")
        
        //Menampilkan lokasi userDef tersimpan
        print(NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true))
        
        
    }
    
    
    
    

}

