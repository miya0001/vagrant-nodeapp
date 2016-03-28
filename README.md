# Development environment for Node.js App

## Getting Started

```
$ vagrant up
```

Or

```
$ GIT_REPO=https://github.com/<your-account>/<your-app> vagrant up
```

Then visit [http://192.168.33.10](http://192.168.33.10).

If you want to use `$GIT_REPO`, you should define follwoing commands in your app's packgage.json.

* `npm buid`
* `npm start`

This vagrant environment will execute them automatically after provision.

## Features

* Ubuntu 14.04 LTS
* Latest version of Node.js is installed.
* Agent forwarding over SSH connections is enabled.
* You can switch Node.js version via [n](https://github.com/tj/n).

## Switching the version of the Node.js.

### Installing a specific version of the Node.js.

Installs stable version of Node.js.

```
$ sudo n stable
```

Installs LTS version of Node.js.

```
$ sudo n lts
```

### Switching to the specific version of the Node.js.

Type n to prompt selection of an installed Node.js. Use the up / down arrow to navigate, and press enter or the right arrow to select, or ^C to cancel:

```
$ sudo n

  0.8.14
ο 0.8.17
  0.9.6
```
