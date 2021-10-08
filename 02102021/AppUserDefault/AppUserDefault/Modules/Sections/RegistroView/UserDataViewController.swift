//
//  UserDataViewController.swift
//  AppUserDefault
//
//  Created by Ignacio Gilabert Bernal on 2/10/21.
//

import UIKit

class UserDataViewController: UIViewController {

    var existeFoto = false
    
    
    
    
    // MARK: - IBOutlets
    @IBOutlet weak var nombreTF: UITextField!
    @IBOutlet weak var apellidoTF: UITextField!
    @IBOutlet weak var direccionTF: UITextField!
    @IBOutlet weak var telefonoTF: UITextField!
    @IBOutlet weak var imagenIV: UIImageView!
    @IBOutlet weak var fechaActuLBL: UILabel!
    
    
    
    // MARK: - IBActions
    @IBAction func salvarDatosACTION(_ sender: Any) {
        if datosCumplimentados(){
            Utils.Constantes().kPrefs.set(self.nombreTF.text, forKey: Utils.Constantes().kNombre)
            Utils.Constantes().kPrefs.set(self.apellidoTF.text, forKey: Utils.Constantes().kApellido)
            Utils.Constantes().kPrefs.set(self.direccionTF.text, forKey: Utils.Constantes().kDireccion)
            Utils.Constantes().kPrefs.set(self.telefonoTF.text, forKey: Utils.Constantes().kTelefono)

            let imageData = self.imagenIV.image?.jpegData(compressionQuality: 0.5)
            Utils.Constantes().kPrefs.set(imageData, forKey: Utils.Constantes().kImage)
            
            let fechaActual = Date()
            Utils.Constantes().kPrefs.set(fechaActual, forKey: Utils.Constantes().kFechaActualización)

            self.present(Utils().muestraAlerta(titulo: "Hola", mensaje: "Los datos se han cumplimentados correctamente y la finfo se ha salvado con éxito", completionHandler: { _ in
                print("Has puilsado el boton")
                            }), animated: true, completion: {
            print("Has pulsado el boton salvar y vamos a mostrar la HomeTabBar")})


            
        } else {
            self.present(Utils().muestraAlerta(titulo: "Hola", mensaje: "Cumplimenta todos los campos y la foto", completionHandler: nil), animated: true, completion: nil)
        }
    }
    
        
    
    @IBAction func recuperarDatosACTION(_ sender: Any) {
      
        self.muestraDatosActualizados()
        self.muestraFechaActualizada()
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configIV()

        // Do any additional setup after loading the view.
    }

    private func muestraDatosActualizados(){
        if let imageData = Utils.Constantes().kPrefs.object(forKey: Utils.Constantes().kImage) as? Data{
            self.imagenIV.image = UIImage(data: imageData)
        }
        if let nombreDes = Utils.Constantes().kPrefs.object(forKey: Utils.Constantes().kNombre) as? String{
            self.nombreTF.text = nombreDes
    }
        if let apellidoDes = Utils.Constantes().kPrefs.object(forKey: Utils.Constantes().kApellido) as? String{
            self.apellidoTF.text = apellidoDes
        }
        if let direccionDes = Utils.Constantes().kPrefs.object(forKey: Utils.Constantes().kDireccion) as? String{
            self.direccionTF.text = direccionDes
        }
        if let telefonoDes = Utils.Constantes().kPrefs.object(forKey: Utils.Constantes().kTelefono) as? String{
            self.direccionTF.text = telefonoDes
        }
    }
    
    private func muestraFechaActualizada() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        if let ultimaActualizacion = Utils.Constantes().kPrefs.object(forKey: Utils.Constantes().kFechaActualización) as? Date{
            self.fechaActuLBL.text = "Ultima actualizacion: \(dateFormatter.string(from: ultimaActualizacion))"
        }
            
    }
    
    
    private func datosCumplimentados() -> Bool {
        return !(nombreTF.text?.isEmpty ?? false) && !(apellidoTF.text?.isEmpty ?? false) && !(direccionTF.text?.isEmpty ?? false) && !(telefonoTF.text?.isEmpty ?? false) && existeFoto
    }
    
    private func configIV(){
        self.imagenIV.isUserInteractionEnabled = true
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(muestraSelectorFoto))
        self.imagenIV.addGestureRecognizer(tapGR)
    }
    @objc
    func muestraSelectorFoto() {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            self.muestraPhotoMenu()
        } else {
            self.muestraPhotoLibrary()
        }
    }
    
    private func muestraPhotoMenu(){
        let actionSheetVC = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        actionSheetVC.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        actionSheetVC.addAction(UIAlertAction(title: "Tomar foto", style: .default, handler: { _ in
            self.tomafoto()
        }))
        actionSheetVC.addAction(UIAlertAction(title: "Escoge de la libreria", style: .default, handler: { _ in
            self.muestraPhotoLibrary()
        }))
        self.present(actionSheetVC, animated: true, completion: nil)
    }
    private func muestraPhotoLibrary(){
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    private func tomafoto() {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        self.present(imagePicker, animated: true, completion: nil)
    }
    
}

extension UserDataViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickerImage = info[.originalImage] as? UIImage{
            self.imagenIV.contentMode = .scaleAspectFill
            self.imagenIV.image = pickerImage
            self.existeFoto = true
        }
        
        // Codigo defensivo para evitar bloqueos en el hilo principal de la vista
        DispatchQueue.main.async {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        DispatchQueue.main.async {
            self.dismiss(animated: true, completion: nil)
        }
    }
}
