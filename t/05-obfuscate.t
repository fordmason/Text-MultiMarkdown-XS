#!/usr/bin/env perl

# Test processing of email obfuscation

use blib;
use Test::More;
use Text::MultiMarkdown::XS;

my $input = <<EOS;
Heading
-------

[Email me][]!

[Email me]: mailto:fred\@example.com
EOS

my $output_obfuscation_enabled = <<EOS;
<h2 id="heading">Heading</h2>

<p><a href="&#x6d;&#97;&#x69;&#x6c;&#x74;&#x6f;&#58;&#102;&#x72;&#x65;&#100;&#x40;&#101;&#x78;&#x61;&#109;&#112;&#108;&#101;&#46;&#x63;&#111;&#x6d;">&#x45;&#109;&#97;&#105;&#x6c; &#x6d;&#x65;</a>!</p>
EOS

my $output_obfuscation_disabled = <<EOS;
<h2 id="heading">Heading</h2>

<p><a href="mailto:fred\@example.com">Email me</a>!</p>
EOS

chomp($output_obfuscation_enabled);
chomp($output_obfuscation_disabled);

is(markdown($input, { obfuscate => 1  } ), $output_obfuscation_enabled,  'email obfuscation enabled');
is(markdown($input, { obfuscate => 0  } ), $output_obfuscation_disabled, 'email obfuscation disabled');
is(markdown($input, {                 } ), $output_obfuscation_disabled, 'email obfuscation default setting');

done_testing();
