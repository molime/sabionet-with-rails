# Proyecto Sabionet

Este proyecto es una aplicación web desarrollada con Ruby on Rails y GraphQL. La aplicación gestiona tres modelos de datos principales: author, book y review.

## Modelos

### Author

Representa al autor de los libros. Cuenta con los siguientes campos:

- `id`: identificador único.
- `name`: nombre del autor.
- `date_of_birth`: fecha de nacimiento del autor.
- `place_of_birth`: lugar de nacimiento del autor.
- `created_at`: fecha y hora de creación del registro.
- `updated_at`: fecha y hora de la última actualización del registro.

### Book

Representa a los libros. Cuenta con los siguientes campos:

- `id`: identificador único.
- `title`: título del libro.
- `pages`: número de páginas del libro.
- `rating`: calificación del libro.
- `year_published`: año de publicación del libro.
- `description`: descripción del libro.
- `created_at`: fecha y hora de creación del registro.
- `updated_at`: fecha y hora de la última actualización del registro.
- `author_id`: identificador del autor del libro.
- `published_this_year`: indica si el libro fue publicado en el año en curso.

### Review

Representa las reseñas o críticas realizadas a los libros. Cuenta con los siguientes campos:

- `id`: identificador único.
- `message`: mensaje de la reseña.
- `rating`: calificación de la reseña.
- `created_at`: fecha y hora de creación del registro.
- `updated_at`: fecha y hora de la última actualización del registro.
- `book_id`: identificador del libro al que corresponde la reseña.

## Inicio rápido

### Requisitos

- Ruby
- Ruby on Rails
- GraphQL

Asumiendo que ya tienes instalado Ruby y Ruby on Rails, puedes clonar el repositorio y ejecutar:

```bash
bundle install
rails db:create db:migrate
rails server
```

## Contribución

Las contribuciones son bienvenidas. Por favor, crea un 'fork' de este repositorio, realiza cambios y envía una solicitud de 'Pull Request'.