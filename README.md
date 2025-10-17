# 📱 Appetizers – Food App *(SwiftUI + Supabase)*  

![Build](https://img.shields.io/badge/build-passing-brightgreen)
![Swift](https://img.shields.io/badge/Swift-6.2-orange?logo=swift&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-17+-lightgrey?logo=apple)
![License](https://img.shields.io/badge/license-MIT-blue)

A modern **food browsing app** built entirely in **SwiftUI**, powered by **Supabase** as backend.  
It offers a clean, modular architecture and a sleek interface optimized for **iOS 17+**.

---

## ✨ Features

- 🍽️ **Beautiful SwiftUI Interface**  
  - Fully responsive and visually appealing layout.  
  - Adaptive to iPhone and iPad.  

- 🔄 **API Integration via Supabase**  
  - Fetch and manage real-time data from Supabase.  
  - Includes Auth, Database, and Storage layers.  

- 🔐 **Secure Credentials Management**  
  - Sensitive keys stored in `Secrets.xcconfig`.  
  - File excluded from version control.  

- 🧱 **Clean Architecture (MVVM)**  
  - Clear separation between Views, Models, and ViewModels.  
  - Scalable structure ready for production.  

- 📲 **iOS 17+ Compatibility**  
  - Built using the latest SDKs and Swift 6.2 features.  

---

## 🛠️ Tech Stack

| Category | Technology |
|-----------|-------------|
| 🧩 Language | Swift 6.2 |
| 🎨 UI Framework | SwiftUI |
| ☁️ Backend | Supabase (PostgreSQL + Auth + Storage) |
| 🧱 Architecture | MVVM |
| 🔒 Security | Secrets.xcconfig (excluded from VCS) |
| 🧰 IDE | Xcode 26 |

---

## 🚀 Installation & Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/GermanBonnettini/Food_App_SwiftUI.git
   cd Food_App_SwiftUI
Open the project in Xcode 26

Configure your Secrets.xcconfig file with your Supabase credentials:

bash
Copy code
SUPABASE_URL = https://<your-project>.supabase.co
SUPABASE_ANON_KEY = <your-anon-key>
Run the app
Select a simulator or physical device and press ⌘R.

---

##  🔐 Security

🔑 Private keys are never pushed to the repository.

🧩 All sensitive data is handled via Secrets.xcconfig.

🧾 The file is listed in .gitignore to ensure safety and portability.

🛡️ The app remains secure, modular, and production-ready.

---

|                    🏠 Home                   |                    🍔 Detail                   |                   🛍️ Orders                   |                    👤 Profile                   |
| :------------------------------------------: | :--------------------------------------------: | :--------------------------------------------: | :---------------------------------------------: |
| <img src="Screenshots/Home.png" width="250"> | <img src="Screenshots/Detail.png" width="250"> | <img src="Screenshots/Oreders.png" width="250"> | <img src="Screenshots/Profile.png" width="250"> |

---

## 🧑‍💻 Author

**German Bonnettini**  
iOS & Game Developer  
🎮 Creating interactive and visually immersive mobile experiences.  
📍 [Matecode Studio](https://matecodestudio.io/)

---

##  🚀 Roadmap

📦 Add Favorites & Search filtering

☁️ Implement Supabase Realtime for live menu updates

🔒 Integrate user authentication and sessions

💳 Add payment simulation for mock checkout flow

🎨 Improve UI with animated transitions and parallax effects

---

##  🏷️ License
This project is available under the MIT License.
You are free to use, modify, and learn from it — attribution to **German Bonnettini**
