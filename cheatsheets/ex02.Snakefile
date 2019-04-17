rule genes:
    input: 'Epeg.gff3'
    output: 'Epeg.genes.gff3'
    shell: "grep '\tgene\t' {input} > {output}"