# workstation

This cookbook sets up my development workstation for the Windows platform.  Support for Linux and / or Mac will likely follow as I determine my working space.

Requirements
============

* Windows

Cookbooks
---------

There are no cookbook dependencies at present, if one is created hopefully Berkshelf handles that for us.

Usage
===========
#### local::default
```json
{
  "name":"my_node",
  "run_list": [
	"recipe[local]"
  ]
}
```

Contributing
============

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
===================

Authors:: Derek Groh (<derekgroh@gmail.com>)