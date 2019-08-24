//
//  AirJModel.swift
//  AirJs
//
//  Created by Dionte Silmon on 8/23/19.
//  Copyright © 2019 Dionte Silmon. All rights reserved.
//

import Foundation

class AirJordanModel {
    
    var ajShoes = [Shoes]() // Hold the shoes struct objects
    
    init() {
        
        var singleShoeObjects : Shoes // Create single shoes object
        
        singleShoeObjects = Shoes(shoeName: "Air Jordan I", shoeYear: "Year: 1984", shoeImageName: "aj1", shoeDescription: "The Air Jordan I was first produced for Michael Jordan in 1984. It was designed by Peter C. Moore. The red and black colorway of the Nike Air Ship, the prototype for the Jordan I, was later outlawed by then-NBA Commissioner David Stern for having very little white on them (this rule, known as the '51 percent' rule, was repealed in the late 2000s).")
        ajShoes.append(singleShoeObjects)
        
        singleShoeObjects = Shoes(shoeName: "Air Jordan II", shoeYear: "Year: 1986", shoeImageName: "aj2", shoeDescription: "The success of the Air Jordan I encouraged Nike to release a new Air Jordan in 1986 for the new basketball season. Designed by Peter Moore and Bruce Kilgore, the original Air Jordan II was unique in that it was made in Italy. The Air Jordan II introduced better cushioning with a polyurethane midsole and a full length encapsulated Nike air bubble for maximum comfort. The Air Jordan II was the first Jordan not to have the Nike swoosh on the upper.")
        ajShoes.append(singleShoeObjects)
        
        singleShoeObjects = Shoes(shoeName: "Air Jordan III", shoeYear: "Year: 1988", shoeImageName: "aj3", shoeDescription: "This campaign was known as \"Mars and Mike\", which was one of Nike's most successful advertisement campaigns. These were the first Jordans to feature the \"NIKE AIR\" logo on the back.")
        ajShoes.append(singleShoeObjects)
        
        singleShoeObjects = Shoes(shoeName: "Air Jordan IV", shoeYear: "Year: 1989", shoeImageName: "aj4", shoeDescription: "Michael Jordan wore the Air Jordan IV when he made \"The Shot,\" a series winner in Game 5 of the 1989 NBA First Round between the Chicago Bulls and the Cleveland Cavaliers. In 2012 a Cavalier colorway dubbed the \"Cavs\" was released to honor \"The Shot.\"")
        ajShoes.append(singleShoeObjects)
        
        singleShoeObjects = Shoes(shoeName: "Air Jordan V", shoeYear: "Year: 1990", shoeImageName: "aj5", shoeDescription: "Hatfield is believed to have drawn inspiration for the Air Jordan V from World War II fighter planes, which was most notably visible in the shark teeth shapes on the midsole. The Air Jordan V was reintroduced in 2000, including a new colorway featuring Michael Jordan's high school (Laney High) colors.")
        ajShoes.append(singleShoeObjects)
        
    }
    
}
