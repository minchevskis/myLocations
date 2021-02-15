//
//  Functions.swift
//  MyLocations
//
//  Created by Stefan Minchevski on 15.1.21.
//

import Foundation


let applicationDocumentDirectory: URL = {
    let paths = FileManager.default.urls(for: .documentDirectory,
                                         in: .userDomainMask)
    return paths[0]
}()

let dataSaveFailedNotification = Notification.Name(rawValue: "DataSaveFailedNotification")

func fatalCoreDataError(_ error: Error) {
    print("*** Fatal error: \(error)")
    NotificationCenter.default.post(name: dataSaveFailedNotification, object: nil)
}


func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds ,
                                  execute: run)
}
