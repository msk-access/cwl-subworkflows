{
    "$graph": [
        {
            "class": "CommandLineTool",
            "id": "#bcftools_bgzip_1.15.1.cwl",
            "baseCommand": [
                "bgzip"
            ],
            "inputs": [
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/stdout",
                    "type": "boolean",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-c"
                    },
                    "doc": "Stdandard output for bgzip"
                },
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 10
                    },
                    "doc": "input VCF file"
                },
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Name of the output file"
                }
            ],
            "label": "bgzip",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/bcftools:1.15.1"
                },
                {
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        {
                            "entry": "$(inputs.input)"
                        }
                    ]
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdout": "${ \n    if (inputs.output_file_name) { \n        return inputs.output_file_name \n    } else { \n        return inputs.input.basename.replace(/.vcf/, '.vcf.gz') \n    } \n}",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "bgzip",
                    "http://usefulinc.com/ns/doap#revision": "1.15.1"
                }
            ],
            "outputs": [
                {
                    "id": "#bcftools_bgzip_1.15.1.cwl/bgzip/zippedVcf",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${ \n    if (inputs.output_file_name) { \n        return inputs.output_file_name \n    } else { \n        return inputs.input.basename.replace(/.vcf/, '.vcf.gz') \n    } \n}"
                    }
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#bcftools_norm_1.15.1.cwl",
            "baseCommand": [
                "bcftools",
                "norm"
            ],
            "inputs": [
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/check_ref",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 99,
                        "prefix": "--check-ref"
                    }
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/multiallelics",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 99,
                        "prefix": "-m"
                    },
                    "doc": "use any"
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/output_type",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 99,
                        "prefix": "-O"
                    }
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 99,
                        "prefix": "-o"
                    }
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 100
                    },
                    "doc": "input vcf file",
                    "secondaryFiles": [
                        ".tbi"
                    ]
                },
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/fastaRef",
                    "type": "File",
                    "inputBinding": {
                        "position": 99,
                        "prefix": "-f"
                    },
                    "secondaryFiles": [
                        ".fai"
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#bcftools_norm_1.15.1.cwl/norm/normalized_vcf",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_name) {\n        return inputs.output_name\n    } else {\n        return inputs.input.basename.replace(/.vcf/, '_norm.vcf') \n    } \n}"
                    }
                }
            ],
            "label": "bcftools_norm",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/bcftools:1.15.1"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "stdout": "${\n          if(inputs.output_name) {\n              return inputs.output_name\n          } else {\n              return inputs.input.basename.replace(/.vcf/, '_norm.vcf') \n          } \n      }",
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "bcftools norm",
                    "http://usefulinc.com/ns/doap#revision": "1.15.1"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#bcftools_sort._1.15.1.cwl",
            "baseCommand": [
                "bcftools",
                "sort"
            ],
            "inputs": [
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--threads"
                    }
                },
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Output file name"
                },
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/output_type",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 99,
                        "prefix": "-O"
                    },
                    "doc": "compressed BCF (b), uncompressed BCF (u), compressed VCF (z), uncompressed VCF (v)"
                },
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 100
                    },
                    "doc": "input vcf files",
                    "secondaryFiles": [
                        ".tbi"
                    ]
                }
            ],
            "outputs": [
                {
                    "id": "#bcftools_sort._1.15.1.cwl/bcftools_sort/sorted_file",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_name) {\n        return inputs.output_name\n    } else {\n        return inputs.input.basename.replace(/.vcf/, '.sorted.vcf') \n    } \n}"
                    }
                }
            ],
            "label": "bcftools_sort",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "-o",
                    "valueFrom": "${\n    if(inputs.output_name) {\n        return inputs.output_name\n    } else {\n        return inputs.input.basename.replace(/.vcf/, '.sorted.vcf') \n        } \n    }"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/bcftools:1.15.1"
                },
                {
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        "$(inputs.input)"
                    ]
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "bcftools sort",
                    "http://usefulinc.com/ns/doap#revision": "1.15.1"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#bcftools_tabix_1.15.1.cwl",
            "baseCommand": [
                "tabix"
            ],
            "inputs": [
                {
                    "id": "#bcftools_tabix_1.15.1.cwl/tabix/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#bcftools_tabix_1.15.1.cwl/tabix/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#bcftools_tabix_1.15.1.cwl/tabix/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#bcftools_tabix_1.15.1.cwl/tabix/preset",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-p"
                    },
                    "doc": "input file type can be gff, bed, sam or vcf"
                },
                {
                    "id": "#bcftools_tabix_1.15.1.cwl/tabix/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 99
                    },
                    "doc": "Input bgziped file"
                }
            ],
            "outputs": [
                {
                    "id": "#bcftools_tabix_1.15.1.cwl/tabix/tabixIndex",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "$(inputs.input.basename)"
                    },
                    "secondaryFiles": [
                        ".tbi"
                    ]
                }
            ],
            "label": "tabix",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 4000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/bcftools:1.15.1"
                },
                {
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        "$(inputs.input)"
                    ]
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:sivaprk@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Karthigayini Sivaprakasam"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "tabix",
                    "http://usefulinc.com/ns/doap#revision": "1.15.1"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#main",
            "label": "variant_normalize_sort",
            "inputs": [
                {
                    "id": "#main/input",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 427.6875
                },
                {
                    "id": "#main/fastaRef",
                    "type": "File",
                    "secondaryFiles": [
                        ".fai"
                    ],
                    "https://www.sevenbridges.com/x": 506.94903564453125,
                    "https://www.sevenbridges.com/y": 374.2265625
                },
                {
                    "id": "#main/stdout",
                    "type": "boolean",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#main/bgzip_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 534.609375
                },
                {
                    "id": "#main/preset",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 231.125,
                    "https://www.sevenbridges.com/y": 246.3046875
                },
                {
                    "id": "#main/output_type",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.84375
                },
                {
                    "id": "#main/norm_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.765625
                },
                {
                    "id": "#main/multiallelics",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 506.94903564453125,
                    "https://www.sevenbridges.com/y": 267.3046875
                },
                {
                    "id": "#main/check_ref",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 506.94903564453125,
                    "https://www.sevenbridges.com/y": 481.1484375
                },
                {
                    "id": "#main/sort_output_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.921875
                }
            ],
            "outputs": [
                {
                    "id": "#main/bgzip_normalize_sort_output",
                    "outputSource": [
                        "#main/tabix_2/tabixIndex"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "secondaryFiles": [
                        ".tbi"
                    ],
                    "https://www.sevenbridges.com/x": 1623.7470703125,
                    "https://www.sevenbridges.com/y": 320.765625
                }
            ],
            "steps": [
                {
                    "id": "#main/bgzip",
                    "in": [
                        {
                            "id": "#main/bgzip/stdout",
                            "source": "#main/stdout"
                        },
                        {
                            "id": "#main/bgzip/input",
                            "source": "#main/input"
                        },
                        {
                            "id": "#main/bgzip/output_file_name",
                            "source": "#main/bgzip_output_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/bgzip/zippedVcf"
                        }
                    ],
                    "run": "#bcftools_bgzip_1.15.1.cwl",
                    "label": "bgzip",
                    "https://www.sevenbridges.com/x": 231.125,
                    "https://www.sevenbridges.com/y": 374.2265625
                },
                {
                    "id": "#main/tabix",
                    "in": [
                        {
                            "id": "#main/tabix/preset",
                            "source": "#main/preset"
                        },
                        {
                            "id": "#main/tabix/input",
                            "source": "#main/bgzip/zippedVcf"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/tabix/tabixIndex"
                        }
                    ],
                    "run": "#bcftools_tabix_1.15.1.cwl",
                    "label": "tabix",
                    "https://www.sevenbridges.com/x": 506.94903564453125,
                    "https://www.sevenbridges.com/y": 153.3828125
                },
                {
                    "id": "#main/norm",
                    "in": [
                        {
                            "id": "#main/norm/check_ref",
                            "source": "#main/check_ref"
                        },
                        {
                            "id": "#main/norm/multiallelics",
                            "source": "#main/multiallelics"
                        },
                        {
                            "id": "#main/norm/output_type",
                            "source": "#main/output_type"
                        },
                        {
                            "id": "#main/norm/output_name",
                            "source": "#main/norm_output_name"
                        },
                        {
                            "id": "#main/norm/input",
                            "source": "#main/tabix/tabixIndex"
                        },
                        {
                            "id": "#main/norm/fastaRef",
                            "source": "#main/fastaRef"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/norm/normalized_vcf"
                        }
                    ],
                    "run": "#bcftools_norm_1.15.1.cwl",
                    "label": "bcftools_norm",
                    "https://www.sevenbridges.com/x": 697.1942749023438,
                    "https://www.sevenbridges.com/y": 285.765625
                },
                {
                    "id": "#main/tabix_1",
                    "in": [
                        {
                            "id": "#main/tabix_1/preset",
                            "source": "#main/preset"
                        },
                        {
                            "id": "#main/tabix_1/input",
                            "source": "#main/norm/normalized_vcf"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/tabix_1/tabixIndex"
                        }
                    ],
                    "run": "#bcftools_tabix_1.15.1.cwl",
                    "label": "tabix",
                    "https://www.sevenbridges.com/x": 998.9910278320312,
                    "https://www.sevenbridges.com/y": 313.765625
                },
                {
                    "id": "#main/bcftools_sort",
                    "in": [
                        {
                            "id": "#main/bcftools_sort/output_name",
                            "source": "#main/sort_output_name"
                        },
                        {
                            "id": "#main/bcftools_sort/output_type",
                            "source": "#main/output_type"
                        },
                        {
                            "id": "#main/bcftools_sort/input",
                            "source": "#main/tabix_1/tabixIndex"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/bcftools_sort/sorted_file"
                        }
                    ],
                    "run": "#bcftools_sort._1.15.1.cwl",
                    "label": "bcftools_sort",
                    "https://www.sevenbridges.com/x": 1189.236328125,
                    "https://www.sevenbridges.com/y": 306.765625
                },
                {
                    "id": "#main/tabix_2",
                    "in": [
                        {
                            "id": "#main/tabix_2/preset",
                            "source": "#main/preset"
                        },
                        {
                            "id": "#main/tabix_2/input",
                            "source": "#main/bcftools_sort/sorted_file"
                        }
                    ],
                    "out": [
                        {
                            "id": "#main/tabix_2/tabixIndex"
                        }
                    ],
                    "run": "#bcftools_tabix_1.15.1.cwl",
                    "label": "tabix",
                    "https://www.sevenbridges.com/x": 1433.501953125,
                    "https://www.sevenbridges.com/y": 313.765625
                }
            ],
            "requirements": [],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:sivaprk@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Karthigayini Sivaprakasam"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows/variant_postprocessing",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:sivaprk@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Karthigayini Sivaprakasam"
                },
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/dateCreated": "2020-13-7",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0"
        }
    ],
    "cwlVersion": "v1.0",
    "$schemas": [
        "http://schema.org/version/latest/schemaorg-current-http.rdf"
    ],
    "$namespaces": {
        "s": "https://schema.org/",
        "sbg": "https://www.sevenbridges.com/"
    }
}