//
//  ViewController.swift
//  ARkittest2
//
//  Created by Maxim Mitin on 16.11.21.
//

import UIKit
import ARKit
import SceneKit

class ViewController: UIViewController,ARSCNViewDelegate {
    
    @IBOutlet weak var sceneView: ARSCNView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sceneView.delegate = self
        sceneView.debugOptions = [.showFeaturePoints]
        
        if let scene = SCNScene(named: "art.scnassets/ship.scn") {
            sceneView.scene = scene
        } 
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
    }

}

