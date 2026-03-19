import XCTest
import SwiftData
@testable import NurseryConnect

@MainActor
final class DiaryViewModelTests: XCTestCase {
    var container: ModelContainer!
    var context: ModelContext!
    var child: Child!
    var viewModel: DiaryViewModel!

    override func setUp() {
        super.setUp()
        // Initialize in-memory SwiftData container for testing
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        container = try! ModelContainer(for: Child.self, DiaryEntry.self, configurations: config)
        context = container.mainContext
        
        child = Child(name: "Test Child", age: 3)
        context.insert(child)
        
        viewModel = DiaryViewModel(modelContext: context, child: child)
    }

    override func tearDown() {
        container = nil
        context = nil
        child = nil
        viewModel = nil
        super.tearDown()
    }

    func testAddEntryIncreasesCount() {
        // Given
        let initialCount = child.diaryEntries.count
        
        // When
        viewModel.addEntry(type: .meal, note: "Ate well", timestamp: Date(), food: "Apple", portion: "Full")
        
        // Then
        XCTAssertEqual(child.diaryEntries.count, initialCount + 1)
        XCTAssertEqual(child.diaryEntries.first?.type, .meal)
    }
    
    func testDeleteEntryDecreasesCount() {
        // Given
        viewModel.addEntry(type: .mood, note: "Happy", timestamp: Date())
        let entry = child.diaryEntries.first!
        let countAfterAdd = child.diaryEntries.count
        
        // When
        viewModel.deleteEntry(entry)
        
        // Then
        XCTAssertEqual(child.diaryEntries.count, countAfterAdd - 1)
    }
    
    func testFilteringTodayEntries() {
        // Given
        let today = Date()
        let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        
        viewModel.addEntry(type: .meal, note: "Today", timestamp: today)
        viewModel.addEntry(type: .meal, note: "Yesterday", timestamp: yesterday)
        
        // When
        viewModel.showOnlyToday = true
        let filtered = viewModel.sortedEntries
        
        // Then
        XCTAssertEqual(filtered.count, 1)
        XCTAssertTrue(Calendar.current.isDateInToday(filtered.first!.timestamp))
    }
}
