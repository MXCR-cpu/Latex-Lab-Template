# ECE-Latex-Lab-Template

A simple repository host a lab report that should be easy get up an running so that you can focus on writing the report.

## Running

Depends on:

- `lualatex`
- `find`
- `awk`

Clone the repository with `git clone` as the directory that you would like to use:
```sh
git clone https://github.com/MXCR-cpu/Latex-Lab-Template.git -O <directory name>
```

Execute (on macOS and Linux):
```sh
./build.sh
```
This command will generate a `input.tex` file that has all the file links that your project will depend on and is called from lab_report.tex. If you are on macOS, it will also open it.
(There will occur a lot of unecessary warnings and errors that I have not resolved yet. Just press space until the compilation is finished.)

## Structure Breakdown

- `/data` holds data (preferably csv) for the report
- `/images` holds images that can be inserted into the latex document
- `/schematics` holds latex schematic examples that can be used or reiterated upon according to your needs
- `/commands` holds the latex documents specifying the commands that will be used throughout your latex project

## Commands

The current commands defined in the project are:

- `\image{<image_name>}{<image_file_name>}{<caption text>}`
- `\databodeplot{<plot_name>}{<csv_data_file_name>}{<gain minimum y value>}{<gain maximum y value>}{<phase minimum y value>}{<phase maximum y value>}`
- `\dataslewplot{<plot_name>}{<csv_data_file_name>}{<gain minimum y value>}{<gain maximum y value>}{<phase minimum y value>}{<phase maximum y value>}`

Note: File names are to be specified without file path or extensions (ex: `screenshot` and not `./images/screenshot.jpeg`).
Note: `\databodeplot` and `\dataslewplot` utilize specific csv column names, ensure that they are in your csv file or change the latex commands to comply with them.

## Contributing

Ways to be helpful:

- Adding more schematics to the schematics folder 
- Adding more commands to the commands folder and documenting them

