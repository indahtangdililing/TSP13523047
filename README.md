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

## 📊 Example

```
Pilihan (1/2): 2

Contoh default graph (4 kota):
[0, 10, 15, 20]
[5, 0, 9, 10]
[6, 13, 0, 12]
[8, 8, 9, 0]

=== Hasil ===
Total jarak minimum: 35
Rute optimal: 1 -> 2 -> 4 -> 3 -> 1
```

## ⚡ Algorithm

- **Method**: Dynamic Programming with Bitmask
- **Complexity**: O(n²2ⁿ)

## 📝 Usage

1. Jalankan `ruby main.rb`
2. Pilih mode (manual/default)
3. Lihat hasil optimal

---
**Author**: TSP13523047 | **Language**: Ruby
