import { Injectable } from '@angular/core';
import { Cordova, IonicNativePlugin, Plugin } from '@ionic-native/core';

/**
 * @name PlayerBackground
 * @description
 * plays video
 *
 * @interfaces
 * PlayerBackgroundStartupOptions
 */

export interface PlayerBackground_INTERFACE_OPTIONS {
  option?: any;
}

@Plugin({
  pluginName: 'PlayerBackground',
  plugin: 'player-background',
  pluginRef: 'PlayerBackground',
  repo: 'REPO',
  platforms: ['iOS,Android'],
})
@Injectable()
export class PlayerBackground extends IonicNativePlugin {
  /**
   * Starts PlayerBackground.
   * @param {PlayerBackground_INTERFACE_OPTIONS} options
   * @return {Promise<any>}
   */
  @Cordova({
    successIndex: 1,
    errorIndex: 2,
  })
  startPlugin(options: PLUGIN_INTERFACE_OPTIONS): Promise<any> {
    return;
  }
  pause(options: PLUGIN_INTERFACE_OPTIONS): Promise<any> {
    return;
  }
}
