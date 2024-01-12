terraform {
    required_providers {
      local = {
        source = "hashicorp/local"
      }
    }
}

resource "local_file" "hello" {
    content = "hello world"
    filename = "hello.txt"
}

terraform {
  backend "pg" {
    conn_str = "postgres://postgres:password@postgres.127-0-0-1.nip.io:5444/tf?sslmode=disable"
  }
}
