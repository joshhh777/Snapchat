//
//  SnapsViewController.swift
//  Snapchat
//
//  Created by Mac 09 on 6/2/21.
//  Copyright © 2021 Mac 09. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    @IBAction func cerrarSesionTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        print("Se ha cerrado Sesion")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
