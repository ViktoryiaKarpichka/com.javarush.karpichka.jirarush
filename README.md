## [REST API](http://localhost:8080/doc)

## Концепция:

- Spring Modulith
    - [Spring Modulith: достигли ли мы зрелости модульности](https://habr.com/ru/post/701984/)
    - [Introducing Spring Modulith](https://spring.io/blog/2022/10/21/introducing-spring-modulith)
    - [Spring Modulith - Reference documentation](https://docs.spring.io/spring-modulith/docs/current-SNAPSHOT/reference/html/)

```
  url: jdbc:postgresql://localhost:5432/jira
  username: jira
  password: JiraRush
```

- Есть 2 общие таблицы, на которых не fk
    - _Reference_ - справочник. Связь делаем по _code_ (по id нельзя, тк id привязано к окружению-конкретной базе)
    - _UserBelong_ - привязка юзеров с типом (owner, lead, ...) к объекту (таска, проект, спринт, ...). FK вручную будем
      проверять

## Аналоги

- https://java-source.net/open-source/issue-trackers

## Тестирование

- https://habr.com/ru/articles/259055/

Список выполненных задач:

1. Разобраться со структурой проекта (onboarding).
2. Удалить социальные сети: vk, yandex.
3. Вынести чувствительную информацию в отдельный проперти файл:
   логин
   пароль БД
   идентификаторы для OAuth регистрации/авторизации
   настройки почты
   Значения этих проперти должны считываться при старте сервера из переменных окружения машины.
4. =
5. Написать тесты для всех публичных методов контроллера ProfileRestController.
   Хоть методов только 2, но тестовых методов должно быть больше, т.к. нужно проверить success and unsuccess path.
6. Сделать рефакторинг метода com.javarush.jira.bugtracking.attachment.
   FileUtil#upload чтоб он использовал современный подход для работы с файловой системмой.
7. =
8. =
9. Написать Dockerfile для основного сервера.