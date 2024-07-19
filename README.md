# Django Multi-Database Product Order System

## Overview

This Django project implements a comprehensive multi-database setup for managing products, orders, roles, and users. It provides user registration, login, and logout functionality, along with role-based access control. Users can download data in CSV format and upload images using Cloudinary. The dashboard features a bar chart displaying product sale prices, with data fetched from an API endpoint. The project also includes a Dockerized setup for easy deployment.

## Features

- **Multi-Database Migration**: Separate databases for products, orders, roles, and users using SQLite.
- **User Authentication**: Registration, login, and logout functionality.
- **CSV Download**: Users can download data in CSV format.
- **Role-Based Access Control**: Different sections are accessible based on user roles.
- **Image Upload**: Upload images using Cloudinary.
- **Dashboard**: Displays product sale prices with a bar chart, fetching data from an API endpoint.
- **Docker Support**: Dockerized setup for easy deployment.

## Installation

### Prerequisites

- Docker
- Docker Compose
- Python
- Django

### Setup

1. **Clone the repository**:
    ```sh
    git clone https://github.com/hn-agnihotri29/django_admin.git
    cd django_admin
    ```

2. **Run Docker Compose**:
    ```sh
    docker-compose up
    ```

3. **Apply Migrations**:
    ```sh
    docker-compose run web python manage.py makemigrations
    docker-compose run web python manage.py migrate
    ```

4. **Create a Superuser**:
    ```sh
    docker-compose run web python manage.py createsuperuser
    ```

5. **Access the Application**:
    Open your web browser and navigate to `http://localhost:8000`.

## Usage

### User Registration and Login

- **Register**: Visit `/register` to create a new account.
- **Login**: Visit `/login` to log in to your account.
- **Logout**: Visit `/logout` to log out of your account.

### CSV Download

- Navigate to the specific section based on your role and download data in CSV format.

### Image Upload

- Use the image upload feature to upload images to Cloudinary.

### Dashboard

- Access the dashboard to view product sale prices displayed in a bar chart. The data is fetched from an API endpoint.

## Project Structure

- **models.py**: Defines the database models for products, orders, roles, and users.
- **views.py**: Contains the logic for handling user registration, login, logout, CSV download, and image upload.
- **urls.py**: Maps URLs to views.
- **templates/**: Contains HTML templates for rendering the user interface.
- **static/**: Contains static files such as CSS and JavaScript.
- **management/commands/**: Custom management commands for database migration and other tasks.

## Contributing

Contributions are welcome! Please create a pull request with a detailed description of your changes.

## License

This project is licensed under the MIT License.
