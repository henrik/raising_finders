# Raising Finders

Rails plugin that enables methods like

    find!(:all, …)

and

    find_by_username!(…)

that raise `ActiveRecord::RecordNotFound` for empty results.

## Credits

By [Henrik Nyh](http://henrik.nyh.se/) and [Christoffer Sawicki](http://termos.vemod.net/).

Developed independently of the functionally equivalent `whiny_finder` plugin.
