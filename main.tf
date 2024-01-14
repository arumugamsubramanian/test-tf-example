terraform {
    required_providers {
      local = {
        source = "hashicorp/local"
      }
    }
}

resource "local_file" "hello" {
    content = "hello world"
    filename = "hellosss.txt"
}

terraform {
  backend "pg" {
    conn_str = "postgres://postgres:password@postgresql-hl.database:5432/tf?sslmode=disable"
  }
}
