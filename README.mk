rbenv-gemset
============

rbenv-gemset is an extension for the [rbenv][rbenv] ruby version manager that
allows you to use "gemsets", sandboxed collections of gems. This lets you have
multiple collections of gems installed in different sandboxes, and specify (on
a per-application basis) which sets of gems should be used.


Installation
------------

Put `rbenv-gemset` somewhere (anywhere) in your path.

Then,

    rbenv gemset install

This will install the necessary scripts needed to hook into rbenv, to add this
functionality.

To uninstall,

    rbenv gemset uninstall


Usage
-----

In your application directory, create a file named `.rbenv-gemsets` and put the
names of the gemsets you want to use in it, separated by whitespace. The first
gemset in the list will be the primary gemset, where new gems will be
installed.

    $ echo my-gemset > .rbenv-gemsets

Now, all commands involving gems will use the gemsets you specified.

The gemset plugin will cause rbenv to search for the `.rbenv-gemsets` file in
the current directory, as well as in all ancestor directories, so as long
as there is an `.rbenv-gemsets` file at or above the current directory.


License
-------

This code is placed in the public domain by the author, Jamis Buck. Use it as
you wish. Please prefer good over evil.


[rbenv]: http://github.com/sstephenson/rbenv