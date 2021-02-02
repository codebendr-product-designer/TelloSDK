import XCTest
import TelloSDK

final class TelloSDKCommandsTests: XCTestCase {
    //validated takeoff command
    func test_start() {
       XCTAssertEqual(Command.start.rawValue, "command")
    }
    
    func test_takeoff() {
       XCTAssertEqual(Command.takeoff.rawValue, "takeoff")
    }
    
    func test_land() {
        XCTAssertEqual(Command.land.rawValue, "land")
    }
    
    func test_video_is_on() {
        XCTAssertEqual(Command.video().rawValue, "streamon")
    }
    
    func test_video_is_off() {
        XCTAssertEqual(Command.video(false).rawValue, "streamoff")
    }
    
    func test_emergency() {
        XCTAssertEqual(Command.emergency.rawValue, "emergency")
    }
    
    func test_fly_up_20_cm() {
        XCTAssertEqual(Command.fly(.direction(.up), cm: 20).rawValue, "up 20")
    }
    
    func test_fly_down_20_cm() {
        XCTAssertEqual(Command.fly(.direction(.down), cm: 20).rawValue, "down 20")
    }
    
    func test_fly_left_20_cm() {
        XCTAssertEqual(Command.fly(.direction(.left), cm: 20).rawValue, "left 20")
    }
    
    func test_fly_right_20_cm() {
        XCTAssertEqual(Command.fly(.direction(.right), cm: 20).rawValue, "right 20")
    }
    
    func test_fly_forward_20_cm() {
        XCTAssertEqual(Command.fly(.forward, cm: 20).rawValue, "forward 20")
    }
    
    func test_fly_back_20_cm() {
        XCTAssertEqual(Command.fly(.back, cm: 20).rawValue, "back 20")
    }
    
    func test_rotate_right_90_degrees() {
        XCTAssertEqual(Command.rotate(.right, degrees: 90).rawValue, "cw 90")
    }
    
}
