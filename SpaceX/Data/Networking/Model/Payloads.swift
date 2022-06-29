/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Payloads : Codable {
	let payload_id : String?
	let norad_id : [Int]?
	let reused : Bool?
	let customers : [String]?
	let nationality : String?
	let manufacturer : String?
	let payload_type : String?
	let payload_mass_kg : Double?
	let payload_mass_lbs : Double?
	let orbit : String?
	let orbit_params : Orbit_params?
	let uid : String?

	enum CodingKeys: String, CodingKey {

		case payload_id = "payload_id"
		case norad_id = "norad_id"
		case reused = "reused"
		case customers = "customers"
		case nationality = "nationality"
		case manufacturer = "manufacturer"
		case payload_type = "payload_type"
		case payload_mass_kg = "payload_mass_kg"
		case payload_mass_lbs = "payload_mass_lbs"
		case orbit = "orbit"
		case orbit_params = "orbit_params"
		case uid = "uid"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		payload_id = try values.decodeIfPresent(String.self, forKey: .payload_id)
		norad_id = try values.decodeIfPresent([Int].self, forKey: .norad_id)
		reused = try values.decodeIfPresent(Bool.self, forKey: .reused)
		customers = try values.decodeIfPresent([String].self, forKey: .customers)
		nationality = try values.decodeIfPresent(String.self, forKey: .nationality)
		manufacturer = try values.decodeIfPresent(String.self, forKey: .manufacturer)
		payload_type = try values.decodeIfPresent(String.self, forKey: .payload_type)
		payload_mass_kg = try values.decodeIfPresent(Double.self, forKey: .payload_mass_kg)
		payload_mass_lbs = try values.decodeIfPresent(Double.self, forKey: .payload_mass_lbs)
		orbit = try values.decodeIfPresent(String.self, forKey: .orbit)
		orbit_params = try values.decodeIfPresent(Orbit_params.self, forKey: .orbit_params)
		uid = try values.decodeIfPresent(String.self, forKey: .uid)
	}

}
