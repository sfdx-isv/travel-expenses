# How to Set Up Salesforce DX with Circle CI

This guide shows one way you can successfully setup Salesforce DX with Circle CI and will cover the following s To that end, the assumptions in this document are:

- You know how to get your Github repository setup with Circle CI. (Here's their [Getting Started guide](https://circleci.com/docs/2.0/).)
- You have properly setup JWT-Based Authorization Flow (i.e. headless). I recommend using [these steps for generating your Self-Signed SSL Certificate](https://devcenter.heroku.com/articles/ssl-certificate-self). 

If any any of these assumptions aren't true, the following steps won't work.

## Getting Started

1) Make sure you have the Salesforce CLI installed. Check by running `sfdx force --help` and confirm you see the command output. If you don't have it installed you can download and install it from [here](https://developer.salesforce.com/tools/sfdxcli).

2) Confirm you can perform a JWT-based auth: `sfdx force:auth:jwt:grant --clientid <your_consumer_key> --jwtkeyfile server.key --username <your_username> --setdefaultdevhubusername`

   **Note:** For more info on setting up JWT-based auth see [Authorize an Org Using the JWT-Based Flow](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_auth_jwt_flow.htm) in the [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev).

3) [Fork](http://help.github.com/fork-a-repo/) this repo into your github account using the fork link at the top of the page.

4) Clone your forked repo locally: `git clone https://github.com/<git_username>/sfdx-circleci.git`

4) Encrypt and store the server.key generated above using the instructions below.
> "Circle does a nice job of allowing you to set environment variables inside the UI in a protected way." (attribution to [Kevin O'Hara](https://github.com/kevinohara80))

- First, we will generate a key and initializtion vector (iv) to encrypt your server.key file locally.  The key and iv will be used by Circleci to decrypt your server key in the build environment.

```bash
$ openssl enc -aes-256-cbc -k <passphrase here> -P -md sha1 -nosalt
  key=E5E9FA1BA31ECD1AE84F75CAAA474F3A663F05F412028F81DA65D26EE56424B2
  iv =E93DA465B309C53FEC5FF93C9637DA58
```

> Make note of the `key` and `iv` values output to the screen. You will use the values following `key=` and `iv =` to encrypt your `server.key` in the next step.

- Encrypt the `server.key` using the newly generated `key` and `iv` values.  The `key` and `iv` values *should* only be used once, don't use them to encrypt more than the `server.key`.  While you can re-use this pair to encrypt other things, it is considered a security violation to do so.  Every time you run the command above, a new `key` and `iv` value will be generated.  IE, you can not regenerated the same pair, so if you lose these values you will need to generated new ones and encrypt again.

```bash
openssl enc -nosalt -aes-256-cbc -in assets/server.key -out assets/server.key.enc -base64 -K <key from above> -iv <iv from above>
```
 
- Store the `key`, `iv` and contents of `server.key.enc` as protected environment variables in the Circleci UI. These valus are considered *secret* so please treat them as such.

5) From you JWT-Based connected app on Salesforce, retrieve the generated `Consumer Key` and store in a Circleci environment variable named `HUB_CONSUMER_KEY` using the Circleci UI.

6) Store the user name that you use to access your Dev Hub in a Circleci environment variable named `HUB_SFDX_USER` using the Circleci UI. Note that this username is the username that you use to access your Dev Hub.

7) Store the `key` and `iv` values used above in Circleci environment variables named `DECRYPTION_KEY` and `DECRYPTION_IV` respectively.  When finished setting environment variables you environment variables setup screen should look like the one below.

![alt text](assets/images/screenshot-194.png)

8   ) IMPORTANT! Remove your `server.key`: `rm assets/server.key`, you should never store keys or certificates in a public place.

And you should be ready to go! Now when you commit and push a change, your change will kick off a Circle CI build.

Enjoy!

## Contributing to the Repository ###

If you find any issues or opportunities for improving this repository, fix them!  Feel free to contribute to this project by [forking](http://help.github.com/fork-a-repo/) this repository and make changes to the content.  Once you've made your changes, share them back with the community by sending a pull request. Please see [How to send pull requests](http://help.github.com/send-pull-requests/) for more information about contributing to Github projects.

## Reporting Issues ###

If you find any issues with this demo that you can't fix, feel free to report them in the [issues](https://github.com/forcedotcom/sfdx-circleci/issues) section of this repository.

Test





### What type of files should be kept in this directory?

This directory should contain only the following files or file types.

```
README.md    -- This file
*-meta.xml   -- Specific metadata type files
.gitignore   -- Configured to exclude all other files
```

### How are these files used?

The files in this directory are used in the following ways.

* Used like this
* Used like that
* Used like this

### Why are these files located here within the SFDX-Falcon project framework?

This directory and the files it contains are located here within the SFDX-Falcon project framework because...

* Reason one
* Reason two
* Reason three

## Relevant Documentation

* [FlexiPage Type][1] - Specific Metadata Type Reference
* [Metadata Types][2] - General Metadata Type Reference
* [Metadata Components and Types][3] - Supplemental Reference
* [Unsupported Metadata Types][4] - Supplemental Reference

[1]: https://developer.salesforce.com/docs/atlas.en-us.api_meta.meta/api_meta/meta_flexipage.htm
[2]: https://developer.salesforce.com/docs/atlas.en-us.api_meta.meta/api_meta/meta_types_list.htm
[3]: https://developer.salesforce.com/docs/atlas.en-us.api_meta.meta/api_meta/meta_objects_intro.htm
[4]: https://developer.salesforce.com/docs/atlas.en-us.api_meta.meta/api_meta/meta_unsupported_types.htm