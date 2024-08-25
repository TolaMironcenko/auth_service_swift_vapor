import Vapor

// MARK: UserController
struct UserController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        let users = routes.grouped("api", "users")
        users.post(use: index)
        users.post("create", use: create)
        users.post("register", use: register)
        users.post("token", use: token)
        users.post("change", use: change)
    }
    
    // MARK: GetAllUsersFunc
    @Sendable
    func index(req: Request) async throws -> [User] {
        return [User(id: "0", username: "tola", email: "tola", group: "tola", password: "2808", is_superuser: true)]
    }
    
    // MARK: RegisterUserFunc
    @Sendable
    func register(req: Request) async throws -> User {
        return User(id: "0", username: "tola", email: "tola", group: "tola", password: "2808", is_superuser: true)
    }
    
    // MARK: GetTokenFunc
    @Sendable
    func token(req: Request) async throws -> Token {
        return Token(token: "asdf")
    }
    
    // MARK: CreateUserFunc
    @Sendable
    func create(req: Request) -> User {
        return User(id: "0", username: "tola", email: "tola", group: "tola", password: "2808", is_superuser: true)
    }
    
    // MARK: ChangeUserFunc
    @Sendable
    func change(req: Request) -> User {
        return User(id: "0", username: "tola", email: "tola", group: "tola", password: "2808", is_superuser: true)
    }
}
