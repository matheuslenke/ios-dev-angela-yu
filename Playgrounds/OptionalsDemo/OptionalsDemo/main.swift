
let myOptional: String?

myOptional = nil

if let safeOptional = myOptional {
    let text: String = safeOptional
    print(text)
} else {
    print("myOptional was found to be nil.")
}

// Second approach
let text: String = myOptional ?? "I am the default value"

print(text)


struct MyOptional {
    var property = 123
    func method() {
        print("Struct method")
    }
}
let myOptionalStruct: MyOptional?

myOptionalStruct = MyOptional()

print(myOptionalStruct?.property ?? "Default Value")
