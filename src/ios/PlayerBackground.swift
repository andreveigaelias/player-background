import AVFoundation
import UIKit

@objc(PlayerBackground) class PlayerBackground: CDVPlugin {

     // This objc part is required above all plugin functions that you call from ionic.
     // It allows us to communicate with Cordova from Swift.
    @objc(startPlugin:)
    func startPlugin(command: CDVInvokedUrlCommand) { // This is our swift function.
        // Always set the plugin status as ERROR, until you do what you need to do.
        var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR);






        var player = AVPlayer()
        var playerViewcontroller = AVPlayerViewController()
        
        /*override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }*/

        //@IBAction func playVideo(_ sender: Any) {
            
            
            
            
            guard let url = URL(string: "https://evpp.mm.uol.com.br/band_live/terraviva/playlist.m3u8") else {
                return
            }
            
            // Create an AVPlayer, passing it the HTTP Live Streaming URL.
            player = AVPlayer(url: url)
            
            // Create a new AVPlayerViewController and pass it a reference to the player.
            playerViewcontroller.player = player
            playerViewcontroller.showsPlaybackControls = true
            
            // Modally present the player and call the player's play() method when complete.
       /*     present(playerViewcontroller, animated: true) {
                self.player.play()
            }
            */
        //}
        /*
        public func disconnectAVPlayer() {
            playerViewcontroller.player = nil
        }
        
        public func reconnectAVPlayer() {
            playerViewcontroller.player = player
        }
        */




        print("Testezão !"");






        // Plugin Command Arguments
        // let x:Int = command.arguments![0] as! Int; // Change this accordingly.
        // let y:Int = command.arguments![1] as! Int; // Change this accordingly.

        // Whatever your plugin does after startup goes here.
        /*print('PlayerBackground ran correctly!');
        print('Thank you for using the Ionic-Plugin-Assistant');
        print('Written by Jordan Benge @Bengejd');*/

        // We did the stuff, and now we're finished. Set the status as OK.
        pluginResult = CDVPluginResult(status: CDVCommandStatus_OK);
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
    }
}
