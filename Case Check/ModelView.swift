//
//  ModelView.swift
//  Case Check
//
//  Created by Tadreik Campbell on 9/17/22.
//

import UIKit
import SwiftUI
import SceneKit

struct ModelView: View {
    var sceneDirectory: String
    @State private var bgColor: Color = Color.black
    
    var scene: SCNScene? {
        let s = SCNScene(named: sceneDirectory)
        s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "BackCover")?.diffuse.contents = UIColor(bgColor)
        s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "CaseSides")?.diffuse.contents = UIColor(bgColor)
        if sceneDirectory.contains("11 Pro") {
            s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "mat-cam-backplate")?.diffuse.contents = UIColor(bgColor)
            s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "mat-vol-up")?.diffuse.contents = UIColor(bgColor)
            s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "mat-vol-down")?.diffuse.contents = UIColor(bgColor)
            s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "sim-slot")?.diffuse.contents = UIColor(bgColor)
            s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "mat-silencer")?.diffuse.contents = UIColor(bgColor)
            s?.rootNode.childNode(withName: "Body", recursively: true)?.geometry?.material(named: "mat-on-off-button")?.diffuse.contents = UIColor(bgColor)
        }
        return s
    }
    
    var cameraNode: SCNNode? {
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 6, z: 20)
        return cameraNode
    }
    
    var body: some View {
        VStack {
            SceneView(
                scene: scene,
                pointOfView: cameraNode,
                options: [
                    .allowsCameraControl,
                    .autoenablesDefaultLighting,
                    .temporalAntialiasingEnabled
                ]
            )
            ColorPicker("Set the phone color", selection: $bgColor, supportsOpacity: false)
                .padding(.horizontal)
                .frame(height: 60)
        }
    }
}
