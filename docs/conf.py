# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'VIA Datawarehouse'
copyright = '2023, VIA University College'
author = 'AOST'
release = '0.0.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration


#extensions = []
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.viewcode',
    'sphinx.ext.githubpages',
    'sphinx.ext.todo',
]


templates_path = ['_templates']
exclude_patterns = []

language = 'da'


# Display todos by setting to True
todo_include_todos = True


source_suffix = ['.rst', '.md', '.txt']


# The document name of the “master” document
master_doc = 'index'


# The name of the Pygments (syntax highlighting) style to use.
#pygments_style = 'sphinx'


#sys.path.insert(0,os.path.abspath('mymodule'))



# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output


html_static_path = ['_static']

# Image file
#html_logo = '../imgs/27-davinci-17x17cm.emf'
html_logo = '../imgs/VIAlogo.jpg'



#html_theme = 'alabaster'
#html_theme = 'classic'
#html_theme = 'sphinxdoc'
html_theme = 'sphinx_rtd_theme'

#html_theme_options = {
#'body_max_width': 'none',
#}

html_theme_options = {
    'body_max_width': 'none',
  #  'analytics_id': 'G-XXXXXXXXXX',  #  Provided by Google in your dashboard
    'analytics_anonymize_ip': False,
    'logo_only': False,
    'display_version': True,
    'prev_next_buttons_location': 'bottom',
    'style_external_links': False,
    'vcs_pageview_mode': '',
    'style_nav_header_background': '#9b9b9b',
    # Toc options
    'collapse_navigation': True,
    'sticky_navigation': True,
    'navigation_depth': 4,
    'includehidden': True,
    'titles_only': False
}



# -- Options for HTMLHelp output ---------------------------------------------

# Output file base name for HTML help builder.
htmlhelp_basename = 'viadoc'


# -- Options for CSS in HTML output -------------------------------------------------

def setup(app):
    app.add_css_file('css/custom.css')  # may also be an URL




# -- Options for LaTeX output ------------------------------------------------

latex_elements = {
    # The paper size ('letterpaper' or 'a4paper').
    #
     'papersize': 'a4paper',

    # The font size ('10pt', '11pt' or '12pt').
    #
     'pointsize': '12pt',

    # Additional stuff for the LaTeX preamble.
    #
    # 'preamble': '',
      'preamble': r'\usepackage{viadoc}',

    # Latex figure (float) alignment
    #
     'figure_align': 'thbp',

    # passing svgnames option to "xcolor" package i.e. \usepackage[svgnames]{xcolor} (?)
    #
    'passoptionstopackages': r'\PassOptionsToPackage{svgnames}{xcolor}',

}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title,
#  author, documentclass [howto, manual, or own class]).
latex_documents = [
    (master_doc, 'viadw.tex', 'VIA DW Dokumentation',
     'AOST', 'howto'),
]

latex_additional_files = ["viadw.sty"]
