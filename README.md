# AudioFetchRediscoveryBug

Steps to reproduce:

1. Open workspace in Xcode
2. Connect a physical device
3. Run the app on device
4. Tap `init` button, see AudioFetch initializing in Xcode console
5. Tap `list channels` button, see channels listed in Xcode console
6. Tap `resetDiscovery` button, see AudioFetch doing something in Xcode console
7. Tap `list channels` button, multiple times in needed, see the app crash.
   -- if the app does not crash after a few taps, restart the app and try again. It crashes about 50% of the time.
   
Also note:
After resetDiscovery is listing channels produces incorrect results. Here's how to test:
1. Tap `list channels` button, see channels listed in Xcode console
2. Go to AudioFetch admin panel, change channels (change channel name or number of channels)
3. Tap `resetDiscovery` button, see AudioFetch doing something in Xcode console
4. Tap `list channels` button, see channels listed in Xcode console -- notice that channels did not update, they are same as in step 1.

It also often crashes in this scenario at step 3. right after calling `resetDiscovery`. 


Tested with:
- Xcode version: 10.1 and 10.2
- iPhone: 6s Plus with iOS 12.1.2, and iPhone Xs Max with iOS 12.3.1
