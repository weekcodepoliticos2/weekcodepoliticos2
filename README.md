# WeekCode Políticos 2

An app to vote and rank politics

## Prerequisites

>You just need have docker-compose installed in your machine.

## Getting Started

  ```docker
    docker-compose build
    docker-compose up
    docker-compose exec web rake db:create
    docker-compose exec web rake db:migrate
    docker-compose exec web rake db:seed
    docker-compose exec web yarn install
  ```

## Built With

* [Ruby on Rails](https://rubyonrails.org/) - Dependency Management
* [Bulma](https://bulma.io/) - Dependency Management

## Authors

* **Anderson Brandão** - [abrandao](https://github.com/abrandao)
* **Tiago Tobias** - [tiagotobias2003](https://github.com/tiagotobias2003)
* **Adriano Avelino** - [adrianoavelino](https://github.com/adrianoavelino)
* **Rafael Prallon** - [RafaelPrallon](https://github.com/rafaelprallon)
* **Chrystiam Andrade** - [chrystiamweb](https://github.com/chrystiamweb)
* **Guilherme Rodrigues** - [Guilherme2020](https://github.com/Guilherme2020)
* **Lucas Brandão** - [brandaoplaster](https://github.com/brandaoplaster)
* **Heitor Toledo** - [heitoledo](https://github.com/heitoledo)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
