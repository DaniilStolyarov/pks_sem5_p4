# Практика 3 Столяров ЭФБО-01-22 22T0318
### Тема: список стрижек в парикмахерской
Предположим, что с сервера приходят данные в формате JSON. Вручную создадим его и поместим по пути /static/Services.json.
Также добавим все необходимые фотографии (также в папку static), ведь при выборе стрижки крайне важна визуальная часть.
В файлe pubsec.yaml добавим пункт assets во flutter:
<pre>
flutter:
  assets:
    - static/
</pre>
### Зависимости
<p>
  Для хранения данных используется JSON. Для сериализации нужна библиотека json_serializable:
</p>
<p>
  <code>flutter pub add json_annotation dev:build_runner dev:json_serializable</code>
</p>
<p>
  <code>flutter pub get</code>
</p>
<p>
  <code>dart run build_runner watch --delete-conflicting-outputs</code>
</p>
## Скриншоты

### Экран со списком стрижек
![изображение](https://github.com/user-attachments/assets/541af784-8853-4e28-bf4c-751eae18d3ec)
![изображение](https://github.com/user-attachments/assets/ffec0bef-8877-46f7-9937-d0c4479a3b96)
### Несколько экранов с просмотром стрижки
![изображение](https://github.com/user-attachments/assets/31b5baa3-3c55-4be7-9330-9093f6e8c1d6)
![изображение](https://github.com/user-attachments/assets/c436f8db-afa1-43c0-862e-a71258717899)
![изображение](https://github.com/user-attachments/assets/a98b1b1d-d1e7-4d0f-b2b9-6203d607c7cd)


