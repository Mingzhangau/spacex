/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Cores : Codable {
	let core_serial : String?
	let flight : Int?
	let block : Int?
	let gridfins : Bool?
	let legs : Bool?
	let reused : Bool?
	let land_success : Bool?
	let landing_intent : Bool?
	let landing_type : String?
	let landing_vehicle : String?

	enum CodingKeys: String, CodingKey {

		case core_serial = "core_serial"
		case flight = "flight"
		case block = "block"
		case gridfins = "gridfins"
		case legs = "legs"
		case reused = "reused"
		case land_success = "land_success"
		case landing_intent = "landing_intent"
		case landing_type = "landing_type"
		case landing_vehicle = "landing_vehicle"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		core_serial = try values.decodeIfPresent(String.self, forKey: .core_serial)
		flight = try values.decodeIfPresent(Int.self, forKey: .flight)
		block = try values.decodeIfPresent(Int.self, forKey: .block)
		gridfins = try values.decodeIfPresent(Bool.self, forKey: .gridfins)
		legs = try values.decodeIfPresent(Bool.self, forKey: .legs)
		reused = try values.decodeIfPresent(Bool.self, forKey: .reused)
		land_success = try values.decodeIfPresent(Bool.self, forKey: .land_success)
		landing_intent = try values.decodeIfPresent(Bool.self, forKey: .landing_intent)
		landing_type = try values.decodeIfPresent(String.self, forKey: .landing_type)
		landing_vehicle = try values.decodeIfPresent(String.self, forKey: .landing_vehicle)
	}

}
