//
//  ODR Manager.swift
//  test3
//
//  Created by Adam Robinson on 2/17/19.
//  Copyright © 2019 Adam Robinson. All rights reserved.
//

import Foundation

class ODRManager {
    
    // MARK: - Properties
    static let shared = ODRManager()
    var currentRequest: NSBundleResourceRequest?
    
    func requestSceneWith(tag: String,
                          onSuccess: @escaping () -> Void,
                          onFailure: @escaping (NSError) -> Void) {
        
        // 2
        currentRequest = NSBundleResourceRequest(tags: [tag])
        
        // 3
        guard let request = currentRequest else { return }
     
        request.loadingPriority = NSBundleResourceRequestLoadingPriorityUrgent
           request.endAccessingResources()
        
        request.beginAccessingResources { (error: Error?) in
            
            // 4
            if let error = error {
                onFailure(error as NSError)
                return
            }
            
            // 5
            onSuccess()
        }
    }
    
}
