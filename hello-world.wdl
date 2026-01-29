version 1.0

workflow HelloWorld {
    input {
        String name = "Genomics Researcher"
    }

    call SayHello {
        input:
            name = name
    }

    output {
        String greeting = SayHello.message
    }
}

task SayHello {
    input {
        String name
    }

    command <<<
        echo "Hello, ~{name}! Welcome to AWS HealthOmics!"
    >>>

    output {
        String message = read_string(stdout())
    }

  runtime {
    memory: "1 GB"
    cpu: 1

  }
}