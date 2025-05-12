# 🏥 Clinic Appointment Booking System

## 📌 Description

This project is a relational database system built using **MySQL** to manage appointments at a medical clinic. It stores information about patients, doctors, specialties, clinics, and appointments.

Key Features:
- Tables with proper constraints (PK, FK, UNIQUE, NOT NULL)
- Relationships: One-to-Many, Many-to-Many
- Well-commented SQL script

## 🚀 How to Run / Setup the Project

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/clinic-booking-system.git
2. Open your MySQL client (CLI or GUI).
3. Create and use a database:
     ```bash
     CREATE DATABASE clinic_booking;
     USE clinic_booking;
4. Import the SQL file:
     ```bash
     SOURCE path/to/clinic_booking_system.sql;

## 🗺️ Entity Relationship Diagram (ERD)
You can view the ERD diagram here:
[![ERD Diagram](https://mermaid.ink/img/pako:eNqtVU2PmzAQ_SvI5-yKkMB2ua12tVLVS6SqlyoSmuAJWAs2ss22bJL_XvNNwNn2UA4RzBu_efM8dk4kFhRJSFC-MEgk5HvumOeHQumcz3d34uS8iFgL6YROCqpFvxcYM8h0tUhRLcI-UEWMt9nPGeMsvk6NuqAhFUp3tB3LjcRfQr6pCLQt96koBOM6R65NJmiNnHakO9CsDlszD0K8KZvK67RMxIZF8CXj-ex85aqUwGOcOjRd3-XtoOqrsixDGh2qPZ-4fWrf68esdEoTixh1dt_GuNKS8aSBOOS4AApQythEI6MjHVHkZe5IkXULLn3ZcRtntVUP3BAwFh-4OvtmRHET_SvLJAiUSlRq2VoqOEamkQPKBYg5sGwmqBuQmSDaDtVM0NTv16XQI5NKR1a5GSyQxu3EDKBFqL2LheW9hqGZfuRm3RRt-Ia__0E2BY3NTySO0YFJnX7m_aeNDr2M52XWDesB2_ZMWrXsUCHFOzPK7d0WImNxtbD9mAkwIyreUUKCUYEyNhWsYxTZx_v2NC0Hf2CcXg0zPhghG-lY7vXf3LlWMkWajZ2WqwMjrFl-DdeB2awoDbpcHlSJoPqbsq_U0MUG0ebaA70Y7iq3Dnd1y4iZT9PG2k2FXJT9Vg6Cc9SpoBZlBbArWWRFEskoCbUscUVylGbGzSdpFO6JTtG4QULzSvEIZab3ZM8vZlkB_KcQeb9SijJJSXiETJmvsqgrdn-zQ0pz4p5ruSRcew0FCU_kt_nabu_97ZeN769dz988usGKVCT03PvA9R881_dcd_3oby4r8tEUXd-7gbfePGwC3-BBEHiXP4-heBI)](https://mermaid.ink/svg/pako:eNqtVU2PmzAQ_SvI5-yKkMB2ua12tVLVS6SqlyoSmuAJWAs2ss22bJL_XvNNwNn2UA4RzBu_efM8dk4kFhRJSFC-MEgk5HvumOeHQumcz3d34uS8iFgL6YROCqpFvxcYM8h0tUhRLcI-UEWMt9nPGeMsvk6NuqAhFUp3tB3LjcRfQr6pCLQt96koBOM6R65NJmiNnHakO9CsDlszD0K8KZvK67RMxIZF8CXj-ex85aqUwGOcOjRd3-XtoOqrsixDGh2qPZ-4fWrf68esdEoTixh1dt_GuNKS8aSBOOS4AApQythEI6MjHVHkZe5IkXULLn3ZcRtntVUP3BAwFh-4OvtmRHET_SvLJAiUSlRq2VoqOEamkQPKBYg5sGwmqBuQmSDaDtVM0NTv16XQI5NKR1a5GSyQxu3EDKBFqL2LheW9hqGZfuRm3RRt-Ia__0E2BY3NTySO0YFJnX7m_aeNDr2M52XWDesB2_ZMWrXsUCHFOzPK7d0WImNxtbD9mAkwIyreUUKCUYEyNhWsYxTZx_v2NC0Hf2CcXg0zPhghG-lY7vXf3LlWMkWajZ2WqwMjrFl-DdeB2awoDbpcHlSJoPqbsq_U0MUG0ebaA70Y7iq3Dnd1y4iZT9PG2k2FXJT9Vg6Cc9SpoBZlBbArWWRFEskoCbUscUVylGbGzSdpFO6JTtG4QULzSvEIZab3ZM8vZlkB_KcQeb9SijJJSXiETJmvsqgrdn-zQ0pz4p5ruSRcew0FCU_kt_nabu_97ZeN769dz988usGKVCT03PvA9R881_dcd_3oby4r8tEUXd-7gbfePGwC3-BBEHiXP4-heBI)


<p align="center"> <img src="https://mermaid.ink/svg/pako:eNqtVU2PmzAQ_SvI5-yKkMB2ua12tVLVS6SqlyoSmuAJWAs2ss22bJL_XvNNwNn2UA4RzBu_efM8dk4kFhRJSFC-MEgk5HvumOeHQumcz3d34uS8iFgL6YROCqpFvxcYM8h0tUhRLcI-UEWMt9nPGeMsvk6NuqAhFUp3tB3LjcRfQr6pCLQt96koBOM6R65NJmiNnHakO9CsDlszD0K8KZvK67RMxIZF8CXj-ex85aqUwGOcOjRd3-XtoOqrsixDGh2qPZ-4fWrf68esdEoTixh1dt_GuNKS8aSBOOS4AApQythEI6MjHVHkZe5IkXULLn3ZcRtntVUP3BAwFh-4OvtmRHET_SvLJAiUSlRq2VoqOEamkQPKBYg5sGwmqBuQmSDaDtVM0NTv16XQI5NKR1a5GSyQxu3EDKBFqL2LheW9hqGZfuRm3RRt-Ia__0E2BY3NTySO0YFJnX7m_aeNDr2M52XWDesB2_ZMWrXsUCHFOzPK7d0WImNxtbD9mAkwIyreUUKCUYEyNhWsYxTZx_v2NC0Hf2CcXg0zPhghG-lY7vXf3LlWMkWajZ2WqwMjrFl-DdeB2awoDbpcHlSJoPqbsq_U0MUG0ebaA70Y7iq3Dnd1y4iZT9PG2k2FXJT9Vg6Cc9SpoBZlBbArWWRFEskoCbUscUVylGbGzSdpFO6JTtG4QULzSvEIZab3ZM8vZlkB_KcQeb9SijJJSXiETJmvsqgrdn-zQ0pz4p5ruSRcew0FCU_kt_nabu_97ZeN769dz988usGKVCT03PvA9R881_dcd_3oby4r8tEUXd-7gbfePGwC3-BBEHiXP4-heBI" width="550" higth="550">

## 🧠 Question 1
The file clinic_booking_system.sql contains:
- CREATE TABLE statements
- Proper use of constraints and relationships
- Clear comments explaining each table and column


---

**Hope you find this project clear and useful — it's all set and ready to go!**
