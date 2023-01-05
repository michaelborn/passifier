# Passifier

A password strength checker based on [zxcvbn4j](https://github.com/nulab/zxcvbn4j).

![Demo of Passifier showing "Time to crack: Centuries" on a registration form password field](https://raw.githubusercontent.com/michaelborn/passifier/master/passifier-demo.png)

## Installation

```bash
box install passifier
```

## Configuration

No configuration as of yet. 😁

## Usage

Use `Passifier.measure( password )` to measure password complexity:

```bash
var strength = getInstance( "Passifier@passifier" ).measure( "myBadPassword" );
```

You can then read complexity using a number of methods:

* `strength.getCrackTimeSeconds().getOfflineFastHashing1e10PerSecond()`
* `strength.getCrackTimeDisplay().getOnlineNoThrottling10perSecond()`
* `strength.getFeedback()`

### Feedback

The Feedback object is acquired by running `Passifier.measure( "myBadPassword" ).getFeedback()`.

* `feedback.getWarning()`
* `feedback.getSuggestions()`

### CrackTimeSeconds

The CrackTimeSeconds object is acquired by running `Passifier.measure( "myBadPassword" ).getCrackTimeSeconds()`.

* `getOnlineThrottling100perHour()`
* `getOnlineNoThrottling10perSecond()`
* `getOfflineSlowHashing1e4perSecond()`
* `getOfflineFastHashing1e10PerSecond()`

### CrackTimeDisplay

The CrackTimeDisplay object is acquired by running `Passifier.measure( "myBadPassword" ).getCrackTimeDisplay()`.

* `getOnlineThrottling100perHour()`
* `getOnlineNoThrottling10perSecond()`
* `getOfflineSlowHashing1e4perSecond()`
* `getOfflineFastHashing1e10PerSecond()`

## Contributions

## Thanks

All original functionality courtesy of [zxcvbn4j](https://github.com/nulab/zxcvbn4j), a super awesome port of DropBox's [zxcvbn](https://github.com/dropbox/zxcvbn) library.

## License

Apache License, Version 2.0.

> The ColdBox Websites, logo and content have a separate license and they are a separate entity.

## The Good News

> For all have sinned, and come short of the glory of God ([Romans 3:23](https://www.kingjamesbibleonline.org/Romans-3-23/))

> But God commendeth his love toward us, in that, while we were yet sinners, Christ died for us. ([Romans 5:8](https://www.kingjamesbibleonline.org/Romans-5-8))

> That if thou shalt confess with thy mouth the Lord Jesus, and shalt believe in thine heart that God hath raised him from the dead, thou shalt be saved. ([Romans 10:9](https://www.kingjamesbibleonline.org/Romans-10-9/))

## Repository

Copyright 2022 (and on) - [Ortus Solutions](https://www.ortussolutions.com/)

* [Homepage](https://github.com/coldbox-modules/cbmeilisearch)
* [Issue Tracker](https://github.com/coldbox-modules/cbmeilisearch/issues)
* [New BSD License](https://github.com/coldbox-modules/cbmeilisearch/blob/master/LICENSE.txt)
