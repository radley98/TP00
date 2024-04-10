//
//  Model.swift
//  TP00
//
//  Created by Rad on 2024/4/10.
//

import Foundation

//设备的照片库信息,实例数为设备数n+1最新本地PhotoLib
class PhotoLibofDev{
    var name: String?
    
    var photoNum = 0
}

//与最新PhotoLibDev对比的ring
class RingofDev{
    var photoLibDev: PhotoLibofDev?
    
    //更新Ring,输入参数为Phone的PhotoLib的引用
    func updateRing(photoLibPhone: PhotoLibofDev) -> Void{
        
    }
}
