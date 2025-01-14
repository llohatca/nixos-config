#!/usr/bin/env bash
file_path="$HOME/.config/hyprshade/shaders/blue-light-filter.glsl"

if [ ! -f "$file_path" ]; then
  echo "Ошибка: файл $file_path не найден."
  exit 1
fi

current_brightness=$(awk -F'=' '/float brightness/ {gsub(/[^0-9.]/, "", $2); print $2}' "$file_path")

if [ -z "$current_brightness" ]; then
  echo "Ошибка: не удалось найти значение brightness в файле."
  exit 1
fi

if [ "$1" == "+up" ] && [ -n "$2" ]; then
  new_brightness=$(echo "$current_brightness + $2" | bc)
elif [ "$1" == "-up" ] && [ -n "$2" ]; then
  new_brightness=$(echo "$current_brightness - $2" | bc)
else
  echo "Использование: $0 [+up <значение> | -up <значение>]"
  exit 1
fi

# Ограничение значений яркости
if (( $(echo "$new_brightness < 0.0" | bc -l) )); then
  new_brightness=0.0
elif (( $(echo "$new_brightness > 100.0" | bc -l) )); then
  new_brightness=100.0
fi

formatted_brightness=$(LC_NUMERIC=C printf "%.1f" "$new_brightness")

# Обновление только значения яркости в файле с форматированием
awk -v new_brightness="$formatted_brightness" '{if ($0 ~ /float brightness/) {sub(/float brightness = [0-9]+.[0-9]+;/, "float brightness = " new_brightness ";")} print}' "$file_path" > temp && mv temp "$file_path"

