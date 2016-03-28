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

## What's Installed

* Latest version of nodejs is installed.
* Agent forwarding over SSH connections is enabled.
