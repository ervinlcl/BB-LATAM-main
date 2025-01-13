# Usa una imagen base de Ruby
FROM ruby:2.5

# Instala las dependencias del sistema necesarias
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  imagemagick \
  yarn \
  git

# Instala la versión compatible de bundler
RUN gem install bundler -v 2.3.27

# Configura la carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copia el Gemfile y Gemfile.lock primero para aprovechar el caché de Docker
COPY Gemfile Gemfile.lock ./

# Instala las gemas especificadas en el Gemfile
RUN bundle install && rm -rf ~/.bundle/cache

# Copia el resto del código de la aplicación al contenedor
COPY . .

# Expone el puerto 3000 para el servidor de Rails
EXPOSE 3000

# Comando por defecto para iniciar el servidor
CMD ["rails", "server", "-b", "0.0.0.0"]


