# 🚩 Cybersec-vigyaanrang:

This repository represents the collaborative effort of our team to build a complete, real-time security monitoring and event-handling pipeline. We have successfully linked an **Ubuntu OS** terminal environment to a **Web Dashboard** and **Discord Alerting** system.

## 🌐 Project Links
- **Team Repositories:** 
  - [Benjamin's Repo](https://github.com/bchbenjamin/ctf-vigyaanrang)
  - [Jitesh's Repo](https://github.com/Itz-Jitesh/vigyarang)

---

## 🧠 How the System Works
We have built a "Digital Guard" that manages two main security tasks:

1. **Flag Validation (The Reporting System):** 
   - When a user completes a challenge, they run the `flag` command. 
   - This command sends their data to our **n8n Automation Engine**. 
   - n8n then parses the data and instantly updates the **Web Dashboard** with the user's progress.

2. **FailSafe Monitoring (The Alarm System):** 
   - A background script (`failsafe.sh`) acts like a security camera for critical system files (`1.txt` and `2.txt`).
   - If these files are ever deleted or tampered with, the system immediately sends a high-priority alert to our **Discord Server** via a webhook.

## 🛠️ Components & Roles
- **Ubuntu Terminal Scripts:** Custom Bash scripts for flag submission and system monitoring.
- **n8n Automation:** The central "brain" (Workflow included as `n8n_workflow.json`) that connects the terminal to the dashboard.
- **Real-time Alerting:** Discord Webhook integration for instant incident response.

### 👥 Team Contributions
- **Benjamin (@bchbenjamin):** Developed the core Ubuntu environment and initial repository structure.
- **Jitesh (@Itz-Jitesh):** Assisted in the logic for the Vigyaanrang system integration (Created Web dashboard and n8n workflow).
- **C Yogeetha (@gitGojo):** Implemented the n8n automation pipeline, connected the Web Dashboard API, and established the Discord FailSafe alerting system.

---

## ✅ Final Test Instructions
To verify the system is working:

1. **Update Dashboard:** 
   Run `flag -d 555555`. Check the [Live Dashboard]to see User 555555 appear.
   
2. **Trigger Discord Alert:** 
   Run `rm ~/players/user_123/1.txt`. Check your Discord for the "🚨 SECURITY ALERT" notification
