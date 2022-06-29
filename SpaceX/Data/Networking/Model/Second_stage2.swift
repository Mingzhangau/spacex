/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Second_stage2 : Codable {
	let reusable : Bool?
	let engines : Int?
	let fuel_amount_tons : Double?
	let burn_time_sec : Int?
	let thrust : Thrust?
	let payloads : Payloads2?

	enum CodingKeys: String, CodingKey {

		case reusable = "reusable"
		case engines = "engines"
		case fuel_amount_tons = "fuel_amount_tons"
		case burn_time_sec = "burn_time_sec"
		case thrust = "thrust"
		case payloads = "payloads"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		reusable = try values.decodeIfPresent(Bool.self, forKey: .reusable)
		engines = try values.decodeIfPresent(Int.self, forKey: .engines)
		fuel_amount_tons = try values.decodeIfPresent(Double.self, forKey: .fuel_amount_tons)
		burn_time_sec = try values.decodeIfPresent(Int.self, forKey: .burn_time_sec)
		thrust = try values.decodeIfPresent(Thrust.self, forKey: .thrust)
		payloads = try values.decodeIfPresent(Payloads2.self, forKey: .payloads)
	}

}
