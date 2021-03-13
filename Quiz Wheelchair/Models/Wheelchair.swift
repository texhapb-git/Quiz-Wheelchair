//
//  Wheelchair.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 12.03.2021.
//

import UIKit

enum Wheelchair: String {
    case standartCradle = "\"Стандартная люлька\""
    case foldingCradle = "\"Складная люлька\""
    case book = "\"Коляска-книжка\""
    case stick = "\"Коляска-трость\""
    
    var image: UIImage {
        switch self {
        case .standartCradle:
            return #imageLiteral(resourceName: "standartCradle")
        case .foldingCradle:
            return #imageLiteral(resourceName: "foldingCradle")
        case .book:
            return #imageLiteral(resourceName: "book")
        case .stick:
            return #imageLiteral(resourceName: "stick")
        }
    }
        
    var definition: String {
        switch self {
        case .standartCradle:
            return "Коляски люльки подходят для совсем маленьких деток. Большие колёса обеспечивают комфорт малышу вне зависимости от ровности дороги. Сложности могут возникнуть только при перевозке коляски в маленькой машине, седане или самолёте, но вам это, судя по ответам, и не требуется ;)"
        case .foldingCradle:
            return "Малышам обязательно нужна коляска-люлька, так как они ещё не могут сидеть. Вам подойдёт складная коляска-люлька, которую можно достаточно удобно перевозить в небольших машинах, седанах и при некоторых условиях даже в самолётах."
        case .book:
            return "Для деток старше года, которые уже умеют сидеть лучший вариант это коляска-книжка. У них большие колёса, которые делают комфортным перемещение по любой поверхности и они складываются, помещаясь даже в большинство седанов."
        case .stick:
            return "Самая компактная коляска, подходящая для путешествий и которая без труда помещается в любые автомобили. Единственная слабость этого типа - требовательность к ровной поверхности. Тем не менее, в нашей подборке будет пара вариантов колясок с большими колёсами и повышенной проходимостью."
        }
    }
    
}
