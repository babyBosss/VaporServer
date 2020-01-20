import Vapor

public func routes(_ router: Router) throws {
    router.get { req in
        return "It works!"
    }
    
    router.get("hello") { req in
        return "Hello, world!"
    }
    router.get("info") {req in
        return req.description
    }

    
    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
