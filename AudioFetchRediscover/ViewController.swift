import UIKit

class ViewController: UIViewController {

    @IBAction func init_tapped(_ sender: Any) {
        print("[REDISCOVER]: calling AudioManager.shared")
        let _ = AudioManager.shared
    }

    @IBAction func resetDiscovery_tapped(_ sender: Any) {
        print("[REDISCOVER]: calling resetDiscovery()")
        AudioManager.shared.resetDiscovery(false) { (restarted) in
            print("[REDISCOVER]: resetDiscovery(): restarted = \(restarted)")
        }
    }

    @IBAction func listChannels_tapped(_ sender: Any) {
        print("[REDISCOVER]: listChannels:")
        AudioManager.shared.allApbs.forEach { apb in
            apb.channelList.forEach({ channel in
                print("[REDISCOVER]: - \(channel.name)")
            })
        }
    }
    
    @IBAction func playChannel0_tapped(_ sender: Any) {
        print("[REDISCOVER]: calling startAudio(on: 0)")
        AudioManager.shared.startAudio(on: 0)
    }

    @IBAction func stopAudio(_ sender: Any) {
        print("[REDISCOVER]: calling stopAudio()")
        AudioManager.shared.stopAudio()
    }
}

