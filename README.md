# NurseryConnect MVP 🧭

**NurseryConnect** is a specialized iOS application designed for nursery keyworkers (Early Years Practitioners). It provides a seamless, offline-first experience for tracking children's daily activities, including meals, sleep, mood, and health-related events.

## 🎯 Key Features

### 👤 My Children Dashboard
- **Real-time Overview**: View a list of all assigned children.
- **Search & Filter**: Quickly find children by name using the integrated search bar.
- **Health Alerts**: Immediate visual indicators for children with registered allergies.
- **Daily Progress**: Smart badges highlight children who are missing diary entries for the current day.

### 📅 Child Diary Timeline
- **Chronological Tracking**: A clean, color-coded timeline of all daily events.
- **Activity Types**: Specialized tracking for Meals, Sleep, Nappy changes, Mood, and Activities.
- **Smart Filtering**: Toggle between "Today Only" and "Full History" views.
- **Emergency Access**: Quick-action button to view emergency contact details and call primary guardians.

### 📝 Add Diary Entry (Dynamic Form)
- **Conditional UI**: The form adapts based on the activity type (e.g., Food/Portion for meals, Start/End times for sleep).
- **Validation**: Built-in alerts ensure critical data is captured before saving.
- **Notes**: Support for detailed observations and practitioner comments.

## 🛠 Technical Stack

- **Platform**: iOS 17.0+
- **Language**: Swift
- **UI Framework**: SwiftUI
- **Storage**: SwiftData (Local, Offline-first)
- **Architecture**: Lightweight MVVM

## 📁 Project Structure & Files

### 📂 App/
- **[NurseryConnectApp.swift](file:///c:/Users/buddh/Desktop/swiftuiapp/NurseryConnect/App/NurseryConnectApp.swift)**: The entry point of the application. It initializes the SwiftData container and handles the initial data seeding.

### 📂 Models/
- **[Child.swift](file:///c:/Users/buddh/Desktop/swiftuiapp/NurseryConnect/Models/Child.swift)**: Defines the `Child` entity with attributes like `name`, `age`, and `allergies`.
- **[DiaryEntry.swift](file:///c:/Users/buddh/Desktop/swiftuiapp/NurseryConnect/Models/DiaryEntry.swift)**: Defines the `DiaryEntry` entity and the `EntryType` enum (Meal, Sleep, Mood, etc.).

### 📂 ViewModels/
- **[ChildViewModel.swift](file:///c:/Users/buddh/Desktop/swiftuiapp/NurseryConnect/ViewModels/ChildViewModel.swift)**: Manages the business logic for the main dashboard, including search and child status computation.
- **[DiaryViewModel.swift](file:///c:/Users/buddh/Desktop/swiftuiapp/NurseryConnect/ViewModels/DiaryViewModel.swift)**: Handles the logic for a specific child's timeline, such as filtering and adding new entries.

### 📂 Views/
- **[MyChildrenView.swift](file:///c:/Users/buddh/Desktop/swiftuiapp/NurseryConnect/Views/MyChildrenView.swift)**: The main dashboard screen displaying the list of children.
- **[ChildDiaryView.swift](file:///c:/Users/buddh/Desktop/swiftuiapp/NurseryConnect/Views/ChildDiaryView.swift)**: The timeline view for a specific child.
- **[AddEntryView.swift](file:///c:/Users/buddh/Desktop/swiftuiapp/NurseryConnect/Views/AddEntryView.swift)**: The dynamic form for adding new activities.

### 📂 Views/Components/
- **[ChildRow.swift](file:///c:/Users/buddh/Desktop/swiftuiapp/NurseryConnect/Views/Components/ChildRow.swift)**: A reusable row view for the children list.
- **[DiaryEntryRow.swift](file:///c:/Users/buddh/Desktop/swiftuiapp/NurseryConnect/Views/Components/DiaryEntryRow.swift)**: A reusable row view for the diary timeline.

### 📂 Data/
- **[SampleData.swift](file:///c:/Users/buddh/Desktop/swiftuiapp/NurseryConnect/Data/SampleData.swift)**: Contains the seeding logic to ensure the app has initial data for testing.

### 📂 Utils/
- **[Extensions.swift](file:///c:/Users/buddh/Desktop/swiftuiapp/NurseryConnect/Utils/Extensions.swift)**: Provides helpful extensions for `Date` and `Color` used throughout the app.

## 🚀 Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Buddhila-Herath/swift-ui.git
   ```
2. **Open in Xcode**: Open the project folder in Xcode 15 or later.
3. **Run**: Select an iOS 17+ Simulator or a physical device and press `Cmd + R`.
4. **Sample Data**: The app automatically seeds 3 sample children (Noah, Lily, Oliver) upon the first launch for immediate testing.

## 🔐 Compliance & Security (MVP Scope)

- **Data Minimization**: Only essential care tracking data is collected.
- **Local Storage**: Data remains on the device, reducing exposure risks in the MVP stage.
- **Sensitive Info**: Allergies and emergency contacts are prioritized for safety.

---
*Built with ❤️ for Early Years Practitioners.*
