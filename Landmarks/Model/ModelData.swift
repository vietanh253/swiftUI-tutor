//
//  ModelData.swift
//  Landmarks
//
//  Created by Đinh Trần Việt Anh on 05/09/2023.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.Json")

func load<T:Decodable>(_ filename:String)->T{
    let data: Data
    guard let   file = Bundle.main.url(forResource: filename, withExtension: nil) else{
        fatalError("couldnt find\(filename) in main bundle ")
    }
    
    do
    {
        data = try  Data(contentsOf: file)
    } catch {
        fatalError("couldnt load\(filename) from main bundle:\n\(error) ")
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch{
        fatalError("couldnt parse\(filename) as \(T.self):\n\(error)")
    }
}


