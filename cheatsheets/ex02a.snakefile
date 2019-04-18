rule genes:
    input:
        annot='Epeg.gff3'
    output:
        genes='Epeg.genes.gff3'
    shell: "grep '\tgene\t' {input.annot} > {output.genes}"
