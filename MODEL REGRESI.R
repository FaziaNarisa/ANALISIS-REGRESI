#1. membuat model regresi linear penuh dan model regresi linear null(tanpa peubah X)
lm.full <- lm(price ~  br + lsqft + bsqft, data = house_sales)
lm.null <- lm(price ~ 1, data = house_sales)
drop1(lm.full, test = "F")

#2. variabel br merupakan peubah yang paling tidak signifikan
drop1(update(lm.full, ~ . -br), test = "F")

#3. summary model akhir
summary(update(lm.full, ~ .-br))

#4. memanggil model regresi linear
lm(formula = price ~ lsqft + bsqft, data = house_sales)

