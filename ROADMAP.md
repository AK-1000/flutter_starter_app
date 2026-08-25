# 🗺️ Project Roadmap: Becoming the Gold Standard Flutter Starter

**Vision**: To transform `flutter_starter_app` from a single GetX template into a comprehensive, modular **Monorepo** that teaches modern Flutter architecture through "LEGO Bricks" and `bloc_signals`.

---

## ✅ Phase 1: Foundation (Current State)
**Status: COMPLETED**
- [x] Establish Clean Architecture (Presentation / Domain / Data).
- [x] Implement GetX for State, Routing, and DI.
- [x] Apply SOLID principles across the codebase.
- [x] Provide a fully runnable template for beginners.

---

## 🔨 Phase 2: Monorepo & Core "Bricks" (Q3 2026)
**Status: IN PROGRESS**
- [ ] Set up a Dart/Flutter Monorepo structure (using Melos or similar).
- [ ] Extract core functionalities into individual "brick" packages (e.g., `network_brick`, `auth_brick`, `theme_brick`).
- [ ] **Develop a modular Auth Brick that supports plug-and-play authentication providers, giving developers the freedom to choose between JWT, Firebase Auth, Supabase Auth, or custom backends without changing the core application logic.** *(New Addition)*
- [ ] Establish clear interfaces between bricks to ensure true modularity and interchangeability.

---

## 🚀 Phase 3: The Big Migration (GetX → LEGO + bloc_signals)
**Status: PLANNED**
- [ ] Introduce `bloc_signals` as the new state management backbone.
- [ ] Migrate existing GetX controllers to BLoC + Signals pattern (ensuring glitch-free state propagation).
- [ ] Refactor the routing layer to work with the new modular "bricks".
- [ ] Ensure 100% backwards compatibility for beginners who just want a quick start.

---

## 📚 Phase 4: Documentation & Education
**Status: PLANNED**
- [ ] Write comprehensive "Why LEGO?" guides for beginners.
- [ ] Create interactive tutorials showing how to assemble different "bricks".
- [ ] Record video walkthroughs comparing the old GetX structure vs. the new modular system.
- [ ] Achieve 100% unit/widget test coverage for all core bricks.

---

## 🌍 Phase 5: Community Growth & Tooling
**Status: PLANNED**
- [ ] Automate CI/CD pipelines for testing and publishing individual bricks.
- [ ] Introduce a CLI tool to generate new "bricks" for the community.
- [ ] Actively recruit external maintainers to grow the ecosystem.
- [ ] Apply for additional grants to fund dedicated community support.

---

*This roadmap is dynamic and driven by community feedback. If you have suggestions, please open an issue!*
