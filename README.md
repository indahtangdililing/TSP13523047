# TSP Solver - Dynamic Programming

Solusi Traveling Salesman Problem menggunakan Dynamic Programming dengan Bitmask.

## 🚀 Quick Start

```bash
cd src
ruby main.rb
```

## 📁 Structure

```
src/
├── main.rb    # Entry point
├── app.rb     # Application controller
├── tsp.rb     # Core TSP algorithm
├── input.rb   # Input handler
└── sample.rb  # Sample data
```

## 💡 Features

- **Input Manual**: Masukkan graph sendiri
- **Sample Data**: Gunakan contoh default 4 kota
- **Optimal Solution**: Menampilkan rute dan total jarak minimum

## ⚡ Algorithm

- **Method**: Dynamic Programming with Bitmask
- **Complexity**: O(n²2ⁿ)
- **Best for**: Small to medium graphs (n ≤ 15)

## 📝 Usage

1. Jalankan `ruby main.rb`
2. Pilih mode (manual/default)
3. Lihat hasil optimal

---
**Author**: TSP13523047 | **Language**: Ruby