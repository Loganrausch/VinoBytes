
# 🍇 VinoBytes

**VinoBytes** is a beautifully designed iOS app that delivers wine education in byte-sized pieces. Whether you're just starting your wine journey or preparing for WSET/CMS exams, VinoBytes combines learning, logging, AI, and interactivity into one seamless experience.

Built by a Certified Sommelier and developed in SwiftUI, VinoBytes breaks down complex wine topics into fun, approachable lessons — anytime, anywhere.

---

## 📲 Key Features

### 1. 🏠 Dashboard
- **Wine Fact of the Day** – Bite-sized wine insights updated 5x/week
- **Latest Wine Byte** – Expert-written educational articles (Pro only)
- **Digital Napkin Mode** – Visual contrast tool for tasting environments
- **Recently Added Wines** – Instantly revisit your newest logs and tastings

### 2. 🧠 Flashcards
- **1,500+ Cards** across 14 countries: grape varieties, soils, climates, and terminology
- **Session-Based Learning** – Study by country or category with instant feedback
- **Free Tier** includes flashcards from Argentina, Hungary, and Portugal
- **Pro Unlocks** the full flashcard set for deep-dive prep

### 3. 💬 Vino Chat
- **AI Wine Assistant** powered by OpenAI: ask questions, get instant wine answers
- **Chat Memory** – Save previous conversations for review
- **Pro Required** to unlock unlimited AI-powered wine chats

### 4. 🍷 My Wines
- **Personal Wine Log** – Record tasting notes and organize by region
- **Attach Photos** – Add images of wine bottles or labels to each entry
- **Free Tier** allows logging up to 5 wines, with Pro unlocking unlimited entries

### 5. 📚 Wine Library
- **130+ Grape Profiles**, **150+ Regions**, and a rich glossary
- **Food Pairings, Flaws, and Styles** – Find perfect matches or identify faults
- **Pro Unlocks** the full library for deep research and discovery

---

## 🛠 Technologies Used
- **SwiftUI** — modern declarative UI framework
- **Core Data** — local flashcard, wine, and session storage
- **CloudKit** — syncing across devices and backups
- **OpenAI API** — conversational wine assistant
- **RevenueCat** — subscription and entitlement management
- **Contentful** — dynamic delivery of wine facts and new bytes

---

## 💡 Development Notes
- Modular MVVM architecture across flashcards, chat, and dashboard views
- Uses Core Data entities with unique identifiers for syncing and fast fetch
- Onboarding, paywall gating, and Pro features handled through RevenueCat
- Push notifications triggered via Heroku + Contentful pipeline

---

## 📂 Project Structure

- `AccountSettings/` — User settings, reset options, and support tools
- `AppStartup/` — Tab navigation, paywall presentation, and startup coordination
- `Core/` — Local persistence layer using Core Data and CloudKit
- `Dashboard/` — Daily wine facts, educational bytes, and recently logged wines
- `Flashcards/` — Region-based flashcard decks and session-based study mode
- `Global/` — Shared helpers and services (RevenueCat logic, review prompts, image picker, etc.)
- `MyWines/` — Personal wine log with detailed tasting entries and optional images
- `Services/` — External integrations, including Contentful push system
- `VinoChat/` — OpenAI-powered wine assistant UI and chat logic
- `Welcome/` — Onboarding flow and initial app experience
- `WineLibrary/` — Grape varieties, wine regions, glossary terms, food pairings, and wine faults

---

## 🔐 Privacy

VinoBytes is built with user privacy at its core. All AI and chat interactions are securely processed through OpenAI, and wine logs are stored locally or synced via iCloud — never shared or exposed to third parties. We do not collect, sell, or monetize any personal data.

---

## 🚀 Future Roadmap
- **Progress Tracking** – Visualize flashcard mastery by region
- **Tasting Challenges** – Daily quiz and recall prompts
- **AI Journal Summaries** – Chat-based summaries of your tasting logs
- **Offline Mode** – Flashcard and tasting access without internet

---

Thanks for checking out **VinoBytes**! 🍷  

