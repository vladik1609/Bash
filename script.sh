if [ -n "$1" ]
then
    for file in "$*" do
    if [ -f "$file" ] && [ -r "$file" ]; then
            date >> "$file"
            echo "Timestamp добавлен в файл $file"
        else
            echo "Ошибка: $file не текстовый файл"
        fi
    done
else
    echo "Параметров не найдено"
fi