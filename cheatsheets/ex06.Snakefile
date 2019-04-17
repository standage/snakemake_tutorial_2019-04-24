rule alldist:
    input: expand('{species}.gene.lengthdist.txt', species=['Bvul', 'Docc', 'Dori', 'Emon', 'Epeg', 'Hhae', 'Hdiu'])

rule allgenes:
    input: expand('{species}.genes.gff3', species=['Bvul', 'Docc', 'Dori', 'Emon', 'Epeg', 'Hhae', 'Hdiu'])

rule genes:
    input: '{species}.gff3'
    output: '{species}.genes.gff3'
    shell: "sleep 5 && grep '\tgene\t' {input} > {output}"

rule genelengthdist:
    input: '{species}.genes.gff3'
    output: '{species}.gene.lengthdist.txt'
    shell: 'awk "{{print \$4-\$3+1}}" < {input} > {output}'