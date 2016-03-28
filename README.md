# Development environment for Node Apps

## Getting Started

```
$ GIT_REPO=https://github.com/<your-acount>/<your-app> vagrant up
```

Then visit [http://192.168.33.10](http://192.168.33.10).

You should define follwoing commands in your app's packgage.json.

* `npm buid`
* `npm start`

This vagrant environment will execute them automatically after provision.

## Features

* Latest version of nodejs is installed.
* Agent forwarding over SSH connections is enabled.
* You can switch Node version via [n](https://github.com/tj/n).

## Switching the version of Node.

### Installing a specific version of Node.

Installs stable version of Node.

```
$ sudo n stable
```

Installs LTS version of Node.

```
$ sudo n lts
```

### Switching to the specific version of Node.

Type n to prompt selection of an installed node. Use the up / down arrow to navigate, and press enter or the right arrow to select, or ^C to cancel:

```
$ sudo n

  0.8.14
ο 0.8.17
  0.9.6
```
