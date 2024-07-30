# ミー散乱を計算

## 使用法

```c++:
#include "Mie_scattering.h"

AndoLab::Mie_scattering mie(lambda, radius, reflactive_index);
double Scattering_Cross_section = mie.scs(Scattering_Angle_in_rad);
double Total_SCS = mie.scs_t();
```

## 必要なもの

* Booth/math
* [complex_bessel](https://github.com/joeydumont/complex_bessel)

## クラスの説明

### コンストラクタ
Mie_scattering(void)
Mie_scattering(double lambda, double a, std::complex <double> m)

### アクセサ
void set(double lambda, double a, std::complex <double> m)
void set_series_number(int N)

### 散乱断面積の計算
double scs(double th)
double scs(double a, double th)
  
### 全散乱断面積の計算
double scs_t(void)
double scs_t(double a)