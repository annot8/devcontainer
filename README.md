# Annot8 Dev Container

A Visual Studio Code development container for the Annot8 ecosystem,

The Annot8 code base is spread accross a number of repositories and organisations.
This container clones those container to provide a development environment for all of Annot8.

This is useful for whole scale testing and releasing, but you can also 

## Setup

Install Visual Studio Code, install the 'Remote - Containers' extension (or the 'Remote Developement' extension pack).

You'll see a green `><` in the bottom left, click and select 'Clone repository into Dev Container'.

Enter the URL (https://github.com/annot8/devcontainer) or short name `annot8/devcontainer`. VSCode will build you the devcontainer.

Once done, open the terminal (e.g. `Ctrl+` ` Mac, but see Terminal menu):

```shell
# To clone all current repos 
./clone.sh

# To build all repos - this will need to download all dependencies first time around
./build.sh
```


Of course, you can just use the sh scripts in your own environment withouth using devcontainers.

## Specific tasks

### Release

To release Annot8 to mvn you will need:

* Permission to release under io.annot8.
* GPG signing key (find the id with `gpg --list-keys --keyid-format=short`)
* GPG passphrase

When you have these in place, add to your `~/.m2/settings.xml`:

```xml
<settings>
  <servers>
    <server>
      <id>ossrh</id>
      <!-- Replace these with your OSSHR credentials -->
      <username> <!-- your-jira-id --> </username>
      <password> <!-- your-jira-pwd --> </password>
    </server>
  </servers>
    <profiles>
    <profile>
      <id>ossrh</id>
      <activation>
        <activeByDefault>true</activeByDefault>
      </activation>
      <properties>
        <!-- May be gpg or gpg2 depending on your system -->
        <gpg.executable>gpg</gpg.executable>
        <gpg.keyname><!-- your GPG key id, if you have more than one --></gpg.keyname>
        <!-- If you wish to set your passhrase, you can do so here.
        Though this does not work on Mac
        <gpg.passphrase>your GPG passphrase</gpg.passphrase>
        -->
      </properties>
    </profile>
  </profiles>
</settings>
```

To perform an Annot8 release, but moving to the correct directory (e.g. `cd annot8`) then:

```
mvn -P release clean deploy
```

## Contributions and other projects

If you have a annot8 library, please feel free to submit a pull request to add it to `clone.sh`.
