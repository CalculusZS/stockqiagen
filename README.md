
# Parts Web App — Website Deploy Pack (Docker)

ชุดไฟล์สำหรับรันเว็บแอปเป็นเว็บไซต์ โดยไม่ต้องติดตั้งบนเครื่องผู้ใช้

## โครงสร้าง
- Dockerfile — สร้างคอนเทนเนอร์ Flask + Gunicorn
- docker-compose.yml — รวม app + Nginx reverse proxy
- nginx.conf — เสิร์ฟผ่านพอร์ต 80
- .env — ตัวอย่าง environment variables (แก้ไขตามจริง)
- app.py / wsgi.py — จุดเริ่มต้นเซิร์ฟเวอร์ (แทนที่ด้วยไฟล์ของคุณได้)

## วิธีใช้งาน (เครื่องเซิร์ฟเวอร์หรือ VM ที่ติดตั้ง Docker + Docker Compose)
1. คัดลอกโค้ด **Phase 1** ของคุณมาใส่ในโฟลเดอร์นี้ (แทนที่ `app.py`, โฟลเดอร์ `templates/`, `static/`, `data/`)
2. ตั้งค่า `.env`
3. รัน:
   ```bash
   docker compose up -d --build
   ```
4. เปิดเว็บเบราว์เซอร์ไปที่ `http://<IP-Server>`

## การอัปเดต
- เมื่อแก้โค้ด ให้สั่ง:
  ```bash
  docker compose up -d --build
  ```

## การสำรองข้อมูล
- โฟลเดอร์ `data/` ถูก mount ออกมานอกคอนเทนเนอร์แล้ว สำรองไฟล์นี้เป็นระยะ

