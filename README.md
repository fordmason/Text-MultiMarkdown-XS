Text-MultiMarkdown-XS
=====================

This is an initial version (0.001_01) of a Perl module that wraps Fletcher T. Penney's
MultiMarkdown 4 library.

Basic usage is:

    use Text::MultiMarkdown::XS qw(markdown);

    my $html = markdown($text, $options);

where $options is a hash reference.  Valid keys are:

`output`
:  the output format (case insensitive string) - one of `html` (default), `text`,
   `latex`, `beamer`, `memoir`

`smart`
:  boolean indicating whether smart quote processing should be enabled



