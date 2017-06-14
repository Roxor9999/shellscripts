# shellscripts
My personal shellscripts and instructions on how to use

## streamchecker.sh
### A simple script that gets and displays all live channels that a user is following without going through any OAuth process.

First you need to fill in the Client-ID: and the Cookie: headers, to do that you need to [generate a Client-ID](https://www.twitch.tv/kraken/oauth2/clients/new)

Fill it in with any info, but redirect URI can be http://localhost

When it is created it will give you a Client-ID which you will then put inside the Client-ID: header

To fill in the cookie header you will need to have created and logged in to your twitch account at least once in your current browser. The cookie you are looking for is called "persistent" under "twitch.tv"

To find it in...

### Firefox
Preferences -> Privacy -> remove individual cookies

### Chrome
Settings -> Show advanced settings -> Content settings -> All cookies and site data

Its content will be a fairly long string that you then put in the Cookie: Header

Your file should now contain something like this:

    -H 'Client-ID: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' \
    -H 'Cookie: persistent=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;' \

Then make sure the shellscript has executable permission

Remove the -s flag if you need error outputs or additional info about the request

## toggle-presentation.sh
##### A simple script that toggles the presentation mode of the Power manager program to prevent screen dimming.

Requires xfce4-power-manager and xfce4-notifyd to be installed
