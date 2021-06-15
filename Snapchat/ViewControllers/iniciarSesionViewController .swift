//
//  iniciarSesionViewController .swift
//  Snapchat
//
//  Created by Mac 09 on 6/2/21.
//  Copyright © 2021 Mac 09. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore
import FirebaseDatabase
import FirebaseAuth
import GoogleSignIn

class iniciarSesionViewController_: UIViewController {
    
    @IBOutlet weak var TextUsuario: UITextField!
    @IBOutlet weak var TextContraseña: UITextField!
    @IBOutlet weak var signInButton: GIDSignInButton!
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: TextUsuario.text!, password: TextContraseña.text!) {
            (user, error) in
            print("Intentando Iniciar Sesion")
            if error != nil{
                let alerta = UIAlertController(title: "Usuario no Existe", message: "Usuario: \(self.TextUsuario.text!) no se encuentra Registrado", preferredStyle: .alert)
                let btnOk = UIAlertAction(title: "Crear", style: .default, handler: {(UIAlertAction) in
                    self.performSegue(withIdentifier: "ResgistrarseVentana", sender: nil)
                })
                let btnCancel = UIAlertAction(title: "Cancelar", style: .default, handler: {(UIAlertAction) in
                    
                })
                alerta.addAction(btnOk)
                alerta.addAction(btnCancel)
                self.present(alerta, animated: true, completion: nil)
            }else{
                print("Inicio de sesion exitoso")
                self.performSegue(withIdentifier: "iniciarSesionSegue", sender: nil)
            }
            
        }
    }
    
    
    @IBAction func CrearUsuario(_ sender: Any) {
        self.performSegue(withIdentifier: "ResgistrarseVentana", sender: nil)
    }
    
    override func viewDidLoad() {
        //super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().signIn()

        // Do any additional setup after loading the vie
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
