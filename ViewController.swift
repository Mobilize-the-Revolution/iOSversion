//
//  ViewController.swift
//  Mobilize the Revolution
//
//  Copyright © 2016 Mobilize the Revolution. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import FBSDKShareKit
import MapKit

class ViewController: UIViewController, UIImagePickerControllerDelegate
    {
    //UINavigationControllerDelegate, FBSDKLoginButtonDelegate
    
   
    @IBOutlet var imageView: UIImageView!
     let imagePicker = UIImagePickerController()
    
    @IBAction func loadImageButtonTapped(sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        
        presentViewController(imagePicker, animated: true, completion: nil)
}

 //  class MapView: MKMapView {
   //     override func addGestureRecognizer(gestureRecognizer: UIGestureRecognizer) {
     //       [CLLocationManager ,requestWhenInUseAuthorization]
       // }
  //  }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    //    if (FBSDKAccessToken.currentAccessToken() == nil)
     //   {
       //     print ("Not logged in..")
       // }
       // else
       // {
         //   print ("Logged in...")
            
       // }
      //
       // let loginButton = FBSDKLoginButton()
       // loginButton.readPermissions = ["public_profile", "email", "user_friends", ]
       // loginButton.center = self.view.center
        
       // loginButton.delegate = self
       // self.view.addSubview(loginButton)
        
       // imagePicker.delegate = self
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Facebook Login
    
   // func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        
   //     if error == nil
   //     {
   //         print("Login Complete")
           
   //         self.performSegueWithIdentifier("showNew", sender: self)
            
            
   //     }
    //    else
      //  {
      //      print(error.localizedDescription)
      //  }
       // loginButton.hidden = true
       // loginButton.hidden = self.view.hidden
    // }

//    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        // print ("User logged out")
        
        
//    }
    
    // MARK: - UIImagePickerControllerDelegate Methods
    

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            //edit contentMode
            imageView.contentMode = .ScaleAspectFit
            imageView.image = pickedImage
    }
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
        
}

