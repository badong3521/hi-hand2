# Sử dụng ảnh chứa Node.js
FROM node:16

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép package.json và package-lock.json (hoặc yarn.lock)
COPY package*.json ./

# Cài đặt các phụ thuộc
RUN npm install

# Sao chép toàn bộ mã nguồn dự án vào thư mục làm việc
COPY . .

# Cung cấp cổng mà ứng dụng sẽ lắng nghe
EXPOSE 8000

# Khởi chạy ứng dụng
CMD ["npm", "run", "dev"]
