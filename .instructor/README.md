# About the Notebooks

Each notebook in this repository contains lecture slides for an algorithms course. The notebooks are designed to be interactive teaching tools and can be easily converted to HTML slideshow format.

## Converting to Slides

To convert any notebook to an HTML presentation:

```bash
jupyter nbconvert --to slides notebook.ipynb
```

The resulting HTML file can be opened in any web browser and presented full-screen during lectures.

## Usage Tips

- **Interactive Cells**: Students can run code cells directly in the notebooks to see algorithms in action
- **Batch Conversion**: To convert all notebooks at once, use:
  ```bash
  jupyter nbconvert --to slides *.ipynb
  ```
- **Customization**: You can further customize the slide output by using nbconvert options like `--reveal-prefix` or `--output-directory`

## Structure

Each notebook follows a consistent format with:
- Slide content separated by markdown cells
- Code examples demonstrating key concepts
- Visual explanations of algorithmic techniques

For more information on nbconvert options, see the [Jupyter documentation](https://nbconvert.readthedocs.io/).