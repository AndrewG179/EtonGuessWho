import XCTest
@testable import EtonGuessWho

final class BoardTests: XCTestCase {
    func testFindAllPeopleWithEyeColor() {
        let board = Board.createDummyBoard()
        
        let brownEyedPeople = board.findAllPeople(withEyeColor: .brown)
        
        XCTAssertEqual(brownEyedPeople.count, 1)
    }
}
