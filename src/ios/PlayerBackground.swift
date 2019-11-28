import UIKit
import AVFoundation
import AVKit

@objc(PlayerBackground) class PlayerBackground: CDVPlugin {

    var player = AVPlayer()
    var playerViewcontroller = AVPlayerViewController()
    

    @objc(startPlugin:)
    func startPlugin(command: CDVInvokedUrlCommand) {
        var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR);
        
        print("Antes >>>>>>>>>>");
                
        guard let url = URL(string: "https://evpp.mm.uol.com.br/band_live/terraviva/playlist.m3u8") else {
            return
        }
        
        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
        player = AVPlayer(url: url)
        
        // Create a new AVPlayerViewController and pass it a reference to the player.
        playerViewcontroller.player = player
        playerViewcontroller.showsPlaybackControls = true
        
        
        // Modally present the player and call the player's play() method when complete.
        //present(playerViewcontroller, animated: true) {
            self.player.play()
        // }

        print("Depois >>>>>>>>>>");

        // We did the stuff, and now we're finished. Set the status as OK.
        pluginResult = CDVPluginResult(status: CDVCommandStatus_OK);
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
    }
    
    
    //@objc(pause:)
    public func pause() {
        self.player.pause()
    }
    
    public func disconnectAVPlayer() {
        playerViewcontroller.player = nil
    }
   
    public func reconnectAVPlayer() {
        playerViewcontroller.player = player
    }
}
