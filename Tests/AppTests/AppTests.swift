@testable import App
import XCTVapor

final class AppTests: XCTestCase {
    var app: Application!
    
    override func setUp() async throws {
        self.app = try await Application.make(.testing)
        try await configure(app)
    }
    
    override func tearDown() async throws { 
        try await self.app.asyncShutdown()
        self.app = nil
    }
    
    func testPostUsers() async throws {
        try await self.app.test(.POST, "api/users", afterResponse: { res async in
            XCTAssertEqual(res.status, .ok)
        })
    }
    
    func testPostRegisterUser() async throws {
        try await self.app.test(.POST, "api/users/register", afterResponse: { res async in
            XCTAssertEqual(res.status, .ok)
        })
    }
    
    func testPostGetToken() async throws {
        try await self.app.test(.POST, "api/users/token", afterResponse: { res async in
            XCTAssertEqual(res.status, .ok)
        })
    }
    
    func testPostChangeUser() async throws {
        try await self.app.test(.POST, "api/users/change", afterResponse: { res async in
            XCTAssertEqual(res.status, .ok)
        })
    }
    
    func testPostCreateUser() async throws {
        try await self.app.test(.POST, "api/users/create", afterResponse: { res async in
            XCTAssertEqual(res.status, .ok)
        })
    }
}
