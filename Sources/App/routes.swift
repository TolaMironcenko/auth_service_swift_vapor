import Vapor

// MARK: RegisterRoutesFunc
func routes(_ app: Application) throws {
    try app.register(collection: UserController())
}
