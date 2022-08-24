usage: manage.py sqlmigrate [-h] [--database DATABASE] [--backwards]
                            [--version] [-v {0,1,2,3}] [--settings SETTINGS]
                            [--pythonpath PYTHONPATH] [--traceback]
                            [--no-color] [--force-color] [--skip-checks]
                            app_label migration_name

Prints the SQL statements for the named migration.

positional arguments:
  app_label             App label of the application containing the migration.
  migration_name        Migration name to print the SQL for.

optional arguments:
  -h, --help            show this help message and exit
  --database DATABASE   Nominates a database to create SQL for. Defaults to
                        the "default" database.
  --backwards           Creates SQL to unapply the migration, rather than to
                        apply it
  --version             Show program's version number and exit.
  -v {0,1,2,3}, --verbosity {0,1,2,3}
                        Verbosity level; 0=minimal output, 1=normal output,
                        2=verbose output, 3=very verbose output
  --settings SETTINGS   The Python path to a settings module, e.g.
                        "myproject.settings.main". If this isn't provided, the
                        DJANGO_SETTINGS_MODULE environment variable will be
                        used.
  --pythonpath PYTHONPATH
                        A directory to add to the Python path, e.g.
                        "/home/djangoprojects/myproject".
  --traceback           Raise on CommandError exceptions.
  --no-color            Don't colorize the command output.
  --force-color         Force colorization of the command output.
  --skip-checks         Skip system checks.
