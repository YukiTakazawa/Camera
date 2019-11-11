//
//  File.swift
//  Camera_app
//
//  Created by kiyolab01 on 2019/11/09.
//  Copyright © 2019 takazawa. All rights reserved.
//

import Foundation
import Photos

extension ViewController:AVCapturePhotoCaptureDelegate {
    //映像をキャプチャする
    func photoOutput(_ output: AVCapturePhotoOutput,
                     didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        //Dataを取り出す
        guard let photoData = photo.fileDataRepresentation() else {
            return
        }
        //Dataから写真イメージを作る
        if let stillImage = UIImage(data: photoData) {
            //アルバムに追加する
            UIImageWriteToSavedPhotosAlbum(stillImage, self, nil, nil)
        }
    }
}
