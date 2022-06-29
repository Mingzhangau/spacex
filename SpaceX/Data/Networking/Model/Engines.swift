/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Engines : Codable {
	let number : Int?
	let type : String?
	let version : String?
	let layout : String?
	let isp : Isp?
	let engine_loss_max : Int?
	let propellant_1 : String?
	let propellant_2 : String?
	let thrust_sea_level : Thrust_sea_level?
	let thrust_vacuum : Thrust_vacuum?
	let thrust_to_weight : Double?

	enum CodingKeys: String, CodingKey {

		case number = "number"
		case type = "type"
		case version = "version"
		case layout = "layout"
		case isp = "isp"
		case engine_loss_max = "engine_loss_max"
		case propellant_1 = "propellant_1"
		case propellant_2 = "propellant_2"
		case thrust_sea_level = "thrust_sea_level"
		case thrust_vacuum = "thrust_vacuum"
		case thrust_to_weight = "thrust_to_weight"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		number = try values.decodeIfPresent(Int.self, forKey: .number)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		version = try values.decodeIfPresent(String.self, forKey: .version)
		layout = try values.decodeIfPresent(String.self, forKey: .layout)
		isp = try values.decodeIfPresent(Isp.self, forKey: .isp)
		engine_loss_max = try values.decodeIfPresent(Int.self, forKey: .engine_loss_max)
		propellant_1 = try values.decodeIfPresent(String.self, forKey: .propellant_1)
		propellant_2 = try values.decodeIfPresent(String.self, forKey: .propellant_2)
		thrust_sea_level = try values.decodeIfPresent(Thrust_sea_level.self, forKey: .thrust_sea_level)
		thrust_vacuum = try values.decodeIfPresent(Thrust_vacuum.self, forKey: .thrust_vacuum)
		thrust_to_weight = try values.decodeIfPresent(Double.self, forKey: .thrust_to_weight)
	}

}