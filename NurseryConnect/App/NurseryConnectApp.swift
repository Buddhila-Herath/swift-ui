import SwiftUI
import SwiftData

@main
struct NurseryConnectApp: App {
    let container: ModelContainer
    
    var body: some Scene {
        WindowGroup {
            MyChildrenView()r
                .modelContainer(container)
        }
    }
    
    init() {
        do {
            container = try ModelContainer(for: Child.self, DiaryEntry.self)
            
            // Seed sample data on first launch
            Task { @MainActor in
                SampleData.shared.seed(modelContext: container.mainContext)
            }
        } catch {
            fatalError("Failed to initialize SwiftData container: \(error)")
        }
    }
}
