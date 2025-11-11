import Foundation
import UIKit // VIOLATION: Rule 7 (UIKit in non-UI file) - Unnecessary import

// VIOLATION: Rule 10 (Avoid NSObject)
class LegacyUserService: NSObject {

    // VIOLATION: Rule 9 (Variable Naming) - Should be 'userName'
    var UserName: String?

    // VIOLATION: Rule 5 (Magic String)
    let defaultTitle = "Profile"

    init(name: String?) {
        self.UserName = name
    }

    // VIOLATION: Rule 3 (TODO Formatting) - Missing ticket number [PROJ-XXX]
    // TODO: Refactor this function
    func loadUser() {

        // VIOLATION: Rule 1 (Avoid Force Unwrapping)
        let name = self.UserName!

        // VIOLATION: Rule 2 (Developer Logging) - Should be print()
        NSLog("Loading user: \(name)")

        // VIOLATION: Rule 5 (Magic Number)
        if name.count > 5 {
            print("Long name")
        }
    }

    func parseData(data: Data?) {
        guard let data = data else { return }

        do {
            // VIOLATION: Rule 4 (Avoid Force Try)
            let json = try! JSONSerialization.jsonObject(with: data, options: [])
            print("Parsed: \(json)")

        } catch {
            // VIOLATION: Rule 6 (Empty Catch Blocks)
        }
    }
}

// VIOLATION: Rule 8 (Type Naming) - Should be 'UserData'
struct userData {
    let id: Int
}
