# BIMG Client Documentation Framework

## Installation Instructions

To install the BIMG Client Documentation Framework you can either clone the
repository or download the zipfile to the right. Ensure that the following
dependencies are satisfied before running the included doc_builder script.

### Dependencies

The following software is required to run the doc_builder script.

* [cmark](https://github.com/jgm/cmark "CommonMark C Implementation")
* [zip](http://www.info-zip.org/Zip.html "Zip Compression Utility")

## Using the Framework

After satisfying the required dependencies, navigate to the BIMG Client
Documentation Framework directory and run the following command to create the
initial working environment.

    $ ./doc_builder --init

Now that your environment is initialized, edit the two markdown files (body.md
and nav.md) in the md/ directory to create your documentation.

### body.md

This file will contain the main body of your documentation. It complies to the
[CommonMark Markdown Specification](http://spec.commonmark.org "CommonMark
Specification"). The included example file is heavily commented and describes
the expected format.

### nav.md

This file contains the primary navigation links for your documentation. It
follows the same specification as body.md and is likewise commented.

### Images

Images should be placed in the images/ directory created during initialization.
Images in this directory can be referenced in body.md in the manner
demonstrated in the example file.

### Building The Documentation Website

After completing your markdown files and adding any images, you can build the
website by executing the following command.

    $ ./doc_builder --build

You will be asked to provide a name and URL for your website. These values will
replace the keywords described in the example body.md file. This command will
compile your markdown into valid HTML5 and bundle the compiled files along with
the included CSS stylesheet and index.php into a compressed archive
(documentation.zip) that can be extracted into your site's documentation
directory.
