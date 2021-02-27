//import UIKit

// Create ice cream shop mode object w/ a menu of flavors, toppings, cone sizes, and order from the menu

// Create a struct, enum, struct, class, function, function, constants..

struct Flavor {
    let name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor.name)")
    }
    
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String]) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = 0.00
    }
   
    func listTopFlavors() {
        
        for flavor in flavors {
            
            if flavor.rating >= 4 {
                print("Our top flavors are \(flavor.name)")
        
            }
        }
    }
        
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let order = Cone(flavor: flavor, topping: topping, size: size)
        
        totalSales += order.size.rawValue
        
        if let topping = order.topping {
            print("Your \(order.flavor.name) with \(topping) is \(order.size.rawValue)")
        } else {
            print("Your \(order.flavor) is \(order.size.rawValue)")
        }
        return order
    }
}

let sizes = [Size.small, Size.medium, Size.large]

let cookiesCream = Flavor(name: "Cookies & Cream", rating: 4.2)
let vanilla = Flavor(name: "Vanilla", rating: 3.2)
let chocolate = Flavor(name: "Chocolate", rating: 4.5)
let rainbowSherbert = Flavor(name: "Rainbow Sherbet", rating: 3.8)

var flavors = [cookiesCream, vanilla, chocolate, rainbowSherbert]

var toppings = ["Caramel", "Sprinkles", "Cherries", "Whipped Cream", "Cheesecake bites"]

let shop = IceCreamShop(flavors: flavors, sizes: sizes, toppings: toppings)

shop.listTopFlavors()

let myOrder = shop.orderCone(flavor: cookiesCream, topping: toppings[0], size: .medium)

myOrder?.eat()

print(shop.totalSales)
