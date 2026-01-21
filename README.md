# 🚀 Automated High Availability Web Cluster with Ansible

![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)
![HAProxy](https://img.shields.io/badge/haproxy-%23141E88.svg?style=for-the-badge&logo=haproxy&logoColor=white)
![Apache](https://img.shields.io/badge/apache-%23D42029.svg?style=for-the-badge&logo=apache&logoColor=white)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)

> **Tugas Besar Sistem Linux & Virtualisasi (SLV)**
> *Kelompok 5 - Infrastruktur Skalabel dengan Load Balancing & Automation*

---

## 👨‍💻 Team Members (Kelompok 5)

| NIM | Nama | Role |
| :--- | :--- | :--- |
| **[NIM_WIDAD]** | **Widad** | **Team Lead / DevOps Engineer** |
| [NIM_YUNAN] | Yunan | System Administrator |
| [NIM_NIKO] | Niko | Network Engineer |
| [NIM_HAIKAL] | Haikal | Security Analyst |
| [NIM_YESA] | Yesa | Documentation Specialist |

---

## 📖 Project Overview

Proyek ini mendemonstrasikan implementasi **Infrastructure as Code (IaC)** untuk membangun klaster web server yang **High Availability (HA)**. Kami menggunakan **Ansible** untuk melakukan provisioning otomatis terhadap seluruh infrastruktur.

Sistem ini menggabungkan dua jenis web server berbeda (**Apache & Nginx**) di belakang **HAProxy Load Balancer**, membuktikan bahwa sistem kami fleksibel (agnostic) dan robust.

### 🌟 Key Features
* **Zero-Touch Provisioning:** Deploy seluruh infrastruktur hanya dengan satu perintah `ansible-playbook`.
* **Hybrid Backend:** Mengelola Apache (Port 8080) dan Nginx (Port 3000) secara bersamaan.
* **Smart Dashboard UI:** Tampilan dashboard yang menyesuaikan identitas server (Apache = **Tema Biru**, Nginx = **Tema Hijau**).
* **Real-time Monitoring:** Dilengkapi halaman monitoring interaktif dengan animasi grafik CPU/RAM.
* **Load Balancing:** Menggunakan algoritma **Round Robin** untuk distribusi trafik yang merata.

---

## 🏗️ Architecture Topology

| Role | Hostname | IP Address | Service Port | Description |
| :--- | :--- | :--- | :--- | :--- |
| **Controller** | `ansible-control` | `192.168.33.91` | - | Node Pengendali Utama |
| **Load Balancer** | `haproxy_server` | `192.168.33.92` | **80** | Gateway Utama & Traffic Distributor |
| **Web Server 1** | `web1` | `192.168.33.93` | 8080 | Backend Apache (Blue) |
| **Web Server 2** | `web2` | `192.168.33.94` | 8080 | Backend Apache (Blue) |
| **Web Server 3** | `web3` | `192.168.33.95` | 3000 | Backend Nginx (Green) |

---

## 🛠️ Tech Stack

* **Automation:** Ansible Core
* **OS:** Ubuntu Server 24.04 LTS
* **Load Balancer:** HAProxy 2.x
* **Web Server:** Apache2 & Nginx
* **Templating:** Jinja2 (Dynamic HTML Generation)
* **Security:** SSH Key-Based Authentication (Ed25519)

---

## 🚀 Installation & Usage

### 1. Prerequisites
Pastikan koneksi SSH tanpa password (Passwordless SSH) sudah terbentuk antara Controller dan semua Managed Nodes.

### 2. Clone Repository
```bash
git clone [https://github.com/widad-sksn/Tugas-SLV.git](https://github.com/widad-sksn/Tugas-SLV.git)
cd Tugas-SLV
