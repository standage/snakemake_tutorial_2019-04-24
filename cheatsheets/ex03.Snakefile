rule genes:
    input: '{species}.gff3'
    output: '{species}.genes.gff3'
    shell: "grep '\tgene\t' {input} > {output}"