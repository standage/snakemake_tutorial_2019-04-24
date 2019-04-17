rule allgenes:
    input: expand('{species}.genes.gff3', species=['Bvul', 'Docc', 'Dori', 'Emon', 'Epeg', 'Hhae', 'Hdiu'])

rule genes:
    input: '{species}.gff3'
    output: '{species}.genes.gff3'
    shell: "grep '\tgene\t' {input} > {output}"