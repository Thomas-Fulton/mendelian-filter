#!/usr/bin/env nextflow

/* 
===================================================================
                        Mendelian Filter 
    (github)
    (nf-core)
===================================================================
  This pipeline is designed to functional annotation of human variants, and find any variants with potential functional significance controlling Mendelian traits in .

*/ 

nextflow.enable.dsl = 2


def helpMessage() {
    log.info nfcoreHeader()
    log.info"""
        Usage:
        The typical command for running the pipeline is as follows:
          nextflow run nf-core/atacseq --input design.csv --genome GRCh37 -profile docker

        Mandatory arguments:
          --input [file]                  Comma-separated file containing information about the samples in the experiment (see docs/usage.md) (Default: './design.csv')
          --fasta [file]                  Path to Fasta reference. Not mandatory when using reference in iGenomes config via --genome (Default: false)
          --gtf [file]                    Path to GTF file. Not mandatory when using reference in iGenomes config via --genome (Default: false)
          -profile [str]                  Configuration profile to use. Can use multiple (comma separated)
                                          Available: conda, docker, singularity, awsbatch, test

""".stripIndent()



// ===================================
//     Workflow
// ===================================

workflow {
    read_pairs_ch = channel.fromPath(params.input_vcf, checkIfExists: true )


    
// ====================================
//     Parameters
// ====================================

// Files:
params.input_vcf = "$projectDir/data.*.vcf"
params.gtf       = WorkflowMain.getGenomeAttribute(params, 'gtf')

// Options:
params.search = false



// ====================================
//     Processes 
// ====================================

process CHECK_FILES {
    input:

    output:
    
}



