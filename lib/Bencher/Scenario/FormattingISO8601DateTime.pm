package Bencher::Scenario::FormattingISO8601DateTime;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;
use warnings;

our $scenario = {
    summary => 'Modules that format DateTime as ISO8601',
    participants => [
        {
            name => 'DFI:format_datetime',
            helper_modules => ['DateTime'],
            fcall_template => 'DateTime::Format::ISO8601->format_datetime(DateTime->now)',
        },
        {
            name => 'DFIF:format_datetime',
            module => 'DateTime::Format::ISO8601::Format',
            helper_modules => ['DateTime'],
            code_template => 'DateTime::Format::ISO8601::Format->new->format_datetime(DateTime->now)',
        },
        {
            name => 'DFIF:format_date',
            module => 'DateTime::Format::ISO8601::Format',
            helper_modules => ['DateTime'],
            code_template => 'DateTime::Format::ISO8601::Format->new->format_date(DateTime->now)',
        },
        {
            name => 'DFIF:format_time',
            module => 'DateTime::Format::ISO8601::Format',
            helper_modules => ['DateTime'],
            code_template => 'DateTime::Format::ISO8601::Format->new->format_time(DateTime->now)',
        },
    ],
};

1;
# ABSTRACT:
