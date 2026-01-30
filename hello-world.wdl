version 1.0

# =============================================================================
# AWS HealthOmics Hello World Workflow
# =============================================================================
#
# AWS HealthOmics is a purpose-built service for storing, querying, and 
# analyzing genomic, transcriptomic, and other omics data at scale. It enables
# researchers and healthcare organizations to:
#
#   - Run bioinformatics workflows (WDL, Nextflow, CWL) on managed infrastructure
#   - Store and query genomic variants efficiently with Omics Analytics
#   - Manage biological sequence data with Omics Storage
#
# This simple workflow demonstrates the basics of WDL on HealthOmics.
# =============================================================================

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
        echo "=============================================="
        echo "  Welcome to AWS HealthOmics!"
        echo "=============================================="
        echo ""
        echo "Hello, ~{name}!"
        echo ""
        echo "You're running your first HealthOmics workflow."
        echo "HealthOmics makes it easy to run genomics"
        echo "pipelines at scale without managing servers."
        echo ""
        echo "Happy analyzing!"
        echo "=============================================="
    >>>

    output {
        String message = read_string(stdout())
    }

    runtime {
        cpu: 1
        memory: "1 GB"
        docker: "ubuntu:20.04"
    }
}