for file in G:/lost_ark/assets/icons/paladin/*.png
do
"C:\Program Files\libwebp\bin\cwebp.exe" -q 80 "$file" -o "${file%.png}.webp"
done