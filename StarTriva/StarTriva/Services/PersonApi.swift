//
//  PersonApi.swift
//  StarTriva
//
//  Created by Kevin Janvier on 25/09/2018.
//  Copyright © 2018 Kevin Janvier. All rights reserved.
//

import Foundation

class PersonApi{
    func getRandomPersonSession() -> Person{
        
      
    //make network request
        guard let url  = URL(string: PERSON_URL) else { return }
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard error == nil else {
                debugPrint(error.debugDescription)
                return
            }
            guard let data = data else {return}
            
            do{
                 let jsonAny = try JSONSerialization.jsonObject(with: data, options: [])
                guard let json = jsonAny as? [String:Any] else { return }
                let person  = self.parsePersonManual(json: json)
                return person
                print(person.name)
                print(person.birth_year)
                
            } catch {
                debugPrint(error.localizedDescription)
            }
            
            print("Data = \(data)")
            print("Response \(response)")
            
        }
        task.resume()
    }
    
    private func parsePersonManual(json: [String:Any]) -> Person{
        //get the information we need
        let names = json["name"] as? String ?? ""
        let height = json["height"] as? String ?? ""
        let mass = json["mass"] as? String ?? ""
        let hair = json["hair_color"] as? String ?? ""
        let birthYear = json["birth_year"] as? String ?? ""
        let gender = json["gender"] as? String ?? ""
        let homeworld = json["homeworld"] as? String ?? ""
        let filmUrl = json["films"] as?[String] ?? [String]()
        let vehiclesUrl = json["vehicles"] as?[String] ?? [String]()
        let starshipsUrl = json["starships"] as?[String] ?? [String]()
        
        return Person(name: names, height:height, mass:mass, hair_color:hair, birth_year:birthYear,
                      gender:gender, homeworld:homeworld, fileUrls:filmUrl, vehiculeUrl:vehiclesUrl,
                      startships:starshipsUrl)
    }
}
