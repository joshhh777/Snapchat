//
//  iniciarSesionViewController .swift
//  Snapchat
//
//  Created by Mac 09 on 6/2/21.
//  Copyright © 2021 Mac 09. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController_: UIViewController {
    
    @IBOutlet weak var TextUsuario: UITextField!
    @IBOutlet weak var TextContraseña: UITextField!

    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: TextUsuario.text!, password: TextContraseña.text!) {
            (user, error) in
            print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presento el siguiente error: \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
            
        }
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
