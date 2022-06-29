/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Launch : Codable {
	let flight_number : Int?
	let mission_name : String?
	let mission_id : [String]?
	let upcoming : Bool?
	let launch_year : String?
	let launch_date_unix : Int?
	let launch_date_utc : String?
	let launch_date_local : String?
	let is_tentative : Bool?
	let tentative_max_precision : String?
	let tbd : Bool?
	let launch_window : Int?
	let rocket : Rocket?
	let ships : [String]?
	let telemetry : Telemetry?
	let launch_site : Launch_site?
	let launch_success : Bool?
	let launch_failure_details : Launch_failure_details?
	let links : Links?
	let details : String?
	let static_fire_date_utc : String?
	let static_fire_date_unix : Int?
	let timeline : Timeline?

	enum CodingKeys: String, CodingKey {

		case flight_number = "flight_number"
		case mission_name = "mission_name"
		case mission_id = "mission_id"
		case upcoming = "upcoming"
		case launch_year = "launch_year"
		case launch_date_unix = "launch_date_unix"
		case launch_date_utc = "launch_date_utc"
		case launch_date_local = "launch_date_local"
		case is_tentative = "is_tentative"
		case tentative_max_precision = "tentative_max_precision"
		case tbd = "tbd"
		case launch_window = "launch_window"
		case rocket = "rocket"
		case ships = "ships"
		case telemetry = "telemetry"
		case launch_site = "launch_site"
		case launch_success = "launch_success"
		case launch_failure_details = "launch_failure_details"
		case links = "links"
		case details = "details"
		case static_fire_date_utc = "static_fire_date_utc"
		case static_fire_date_unix = "static_fire_date_unix"
		case timeline = "timeline"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		flight_number = try values.decodeIfPresent(Int.self, forKey: .flight_number)
		mission_name = try values.decodeIfPresent(String.self, forKey: .mission_name)
		mission_id = try values.decodeIfPresent([String].self, forKey: .mission_id)
		upcoming = try values.decodeIfPresent(Bool.self, forKey: .upcoming)
		launch_year = try values.decodeIfPresent(String.self, forKey: .launch_year)
		launch_date_unix = try values.decodeIfPresent(Int.self, forKey: .launch_date_unix)
		launch_date_utc = try values.decodeIfPresent(String.self, forKey: .launch_date_utc)
		launch_date_local = try values.decodeIfPresent(String.self, forKey: .launch_date_local)
		is_tentative = try values.decodeIfPresent(Bool.self, forKey: .is_tentative)
		tentative_max_precision = try values.decodeIfPresent(String.self, forKey: .tentative_max_precision)
		tbd = try values.decodeIfPresent(Bool.self, forKey: .tbd)
		launch_window = try values.decodeIfPresent(Int.self, forKey: .launch_window)
		rocket = try values.decodeIfPresent(Rocket.self, forKey: .rocket)
		ships = try values.decodeIfPresent([String].self, forKey: .ships)
		telemetry = try values.decodeIfPresent(Telemetry.self, forKey: .telemetry)
		launch_site = try values.decodeIfPresent(Launch_site.self, forKey: .launch_site)
		launch_success = try values.decodeIfPresent(Bool.self, forKey: .launch_success)
		launch_failure_details = try values.decodeIfPresent(Launch_failure_details.self, forKey: .launch_failure_details)
		links = try values.decodeIfPresent(Links.self, forKey: .links)
		details = try values.decodeIfPresent(String.self, forKey: .details)
		static_fire_date_utc = try values.decodeIfPresent(String.self, forKey: .static_fire_date_utc)
		static_fire_date_unix = try values.decodeIfPresent(Int.self, forKey: .static_fire_date_unix)
		timeline = try values.decodeIfPresent(Timeline.self, forKey: .timeline)
	}

}
