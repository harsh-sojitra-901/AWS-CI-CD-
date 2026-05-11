#!/bin/bash

echo "Moving to Laravel project directory..."
cd /var/www/html

echo "Creating .env file..."
if [ ! -f .env ]; then
    cp .env.example .env
fi

echo "Installing Composer dependencies..."
composer install --no-interaction --prefer-dist --optimize-autoloader

echo "Installing NPM dependencies..."
npm install

echo "Building frontend assets..."
npm run build || true

echo "Generating Laravel app key..."
php artisan key:generate --force

echo "Running database migrations..."
php artisan migrate --force

echo "Setting permissions..."
sudo chown -R ubuntu:www-data storage bootstrap/cache
sudo chmod -R 775 storage bootstrap/cache

echo "Install script completed successfully."