import Cocoa
import Darwin
print("Whats up!")

enum PasswordError: Error {
    case short, obvious
}

func checkPassword (_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count < 8 {
        return "ok"
        
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
let string = "12345"

do {
   let result = try checkPassword(string)
    print("Password rating \(result).")
} catch PasswordError.short {
    print("The password is too short.")
} catch PasswordError.obvious {
    print("The password is too obvious.")
} catch {
    print("There was an error.")
}
