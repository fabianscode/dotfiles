sub nickserv_identify_with_pass {
    my ($server) = @_;
    my $address = $server->{address};
    my $nick = $server->{nick};

    # query password with pass command
    return if system("pass ls pers/$address/$nick > /dev/null 2>&1");
    my $password = `pass show pers/$address/$nick`;

    # identify in irc with nickserv
    $server->command("^msg nickserv identify $password");
}

Irssi::signal_add_last('event connected', 'nickserv_identify_with_pass');
