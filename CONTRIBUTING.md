# 🤝 Contributing to Flutter Starter App

First off, thank you for considering contributing to `flutter_starter_app`! 🎉 

This project is built **by and for the Flutter community**. Whether you're a complete beginner looking to make your first open-source contribution or a seasoned Flutter developer with architectural insights, **you are welcome here**.

---

## 📜 Code of Conduct
By participating in this project, you agree to abide by our Code of Conduct. In short: **Be kind, inclusive, and respectful.** We are all here to learn and grow together.

---

## ❓ How Can I Contribute?

### 1. Reporting Bugs or Requesting Features
- Check the **Issues** tab to see if your bug/idea has already been reported.
- If not, open a **New Issue** and use the provided template.
- Be specific—include your Flutter version, device/emulator details, and steps to reproduce.

### 2. Answering Questions
- Help others by answering questions in the **Discussions** tab or in Issue threads.
- Even a simple "Have you tried `flutter clean`?" can save someone hours of frustration.

### 3. Improving Documentation
- Found a typo in the README or a confusing comment in the code?
- Submit a Pull Request with a fix. Good documentation is just as important as good code!

### 4. Writing Code (Bugs & Features)
- Check the **Issues** tab for tasks labeled `good first issue` or `help wanted`.
- Comment on the issue to let everyone know you are working on it.

---

## 🚀 Your First Contribution (Step-by-Step)

**New to open-source?** Here is exactly how to make your first Pull Request (PR):

1. **Fork the Repository**  
   Click the "Fork" button at the top right of this page.

2. **Clone your Fork**  
   ```bash
   git clone https://github.com/YOUR_USERNAME/flutter_starter_app.git
   cd flutter_starter_app
   ```

3. **Create a Branch**  
   Give your branch a descriptive name:
   ```bash
   git checkout -b fix/update-readme-typo
   ```
   *(Use `fix/` for bug fixes, `feat/` for new features, `docs/` for documentation.)*

4. **Make Your Changes**  
   Write clean, readable code. Remember, beginners will read this code—keep it simple!

5. **Test Your Changes**  
   Ensure the app runs without errors:
   ```bash
   flutter pub get
   flutter run
   ```

6. **Commit with a Clear Message**  
   ```bash
   git add .
   git commit -m "docs: fixed typo in installation guide"
   ```

7. **Push to Your Fork**  
   ```bash
   git push origin fix/update-readme-typo
   ```

8. **Open a Pull Request**  
   Go to the original repository and click "Compare & pull request."  
   Fill in the template explaining *what* you changed and *why*.

---

## 📝 Pull Request Guidelines

- **Link to an Issue**: If your PR fixes an open issue, mention it like this: `Closes #123`.
- **Keep it Focused**: One PR should address one thing. Avoid mixing bug fixes with new features.
- **Check Formatting**: Run `dart format .` before committing to keep the code tidy.
- **Write Tests**: If you add a new feature or fix a bug, add a test to prevent it from breaking later.

---

## 🧩 Architecture & Future Vision

We are actively migrating towards a **LEGO Architecture** (modular "bricks") and **bloc_signals** for state management. 

- If you are contributing a new feature, please consider how it could work as a self-contained "brick."
- Check the **[ROADMAP.md](./ROADMAP.md)** to see where the project is headed.

---

## 🙋 Need Help?

- Open a **Discussion** for high-level questions about architecture.
- Tag a maintainer in your issue/PR for a faster response.
- Don't be shy—we were all beginners once!

---

## 🎉 Recognition

Every contributor will be added to the **Contributors** section of the README. Open-source is about building together, and we celebrate every single contribution.

---

**Thank you for making Flutter better for everyone!** 🚀
