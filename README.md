# C.V.

| Actions                                                                                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [![Autogenerate PDF](https://github.com/jameone/resume/actions/workflows/on-push.yml/badge.svg)](https://github.com/jameone/resume/actions/workflows/on-push.yml)             |
| [![Create Release](https://github.com/jameone/resume/actions/workflows/create-release.yml/badge.svg)](https://github.com/jameone/resume/actions/workflows/create-release.yml) |
| [![Deploy to S3](https://github.com/jameone/resume/actions/workflows/deploy-to-s3.yml/badge.svg)](https://github.com/jameone/resume/actions/workflows/deploy-to-s3.yml)       |

## How to view

### Browser

The recommended way to view the resume is in a web browser. Any PDF viewer can be used, but hyperlinks may not be easily traversable. An up-to-date copy is hosted on AWS in a public S3 bucket; to view in a web browser follow this [link](https://s3.amazonaws.com/james-spears.com/resume.pdf).

### $ git clone

You could also obtain a copy by cloning this repository.

```bash
$ git clone https://github.com/jameone/resume.git
```

The compiled C.V. is located `./resume.pdf` relative to the installation path.

### Download latest release

You can find the latest version on the release page [here](https://github.com/jameone/resume/releases).

The compiled C.V. is located `./resume.pdf` relative to the extraction path.

### CRM friendly copies

There is a `.docx` (MS Word) formatted copy of the C.V. available for download [here](https://s3.amazonaws.com/james-spears.com/resume.docx). While the PDF version is intended to be optimized for human viewing, the `.docx` version is intended to be optimized for content ingestion and CRMs.

## Issues

If you happen to find a typo please use the issues page [here](https://github.com/jameone/resume/issues).
