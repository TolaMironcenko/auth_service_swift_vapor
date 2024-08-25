import Vapor
import Fluent
import FluentSQLiteDriver


// MARK: configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    // register routes
    app.databases.use(.sqlite(.file("auth_service.sqlite")), as: .sqlite)
    try routes(app)
}
