/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Rocket2 : Codable {
	let id : Int?
	let active : Bool?
	let stages : Int?
	let boosters : Int?
	let cost_per_launch : Int?
	let success_rate_pct : Int?
	let first_flight : String?
	let country : String?
	let company : String?
	let height : Height?
	let diameter : Diameter?
	let mass : Mass?
	let payload_weights : [Payload_weights]?
	let first_stage : First_stage2?
	let second_stage : Second_stage2?
	let engines : Engines?
	let landing_legs : Landing_legs?
	let flickr_images : [String]?
	let wikipedia : String?
	let description : String?
	let rocket_id : String?
	let rocket_name : String?
	let rocket_type : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case active = "active"
		case stages = "stages"
		case boosters = "boosters"
		case cost_per_launch = "cost_per_launch"
		case success_rate_pct = "success_rate_pct"
		case first_flight = "first_flight"
		case country = "country"
		case company = "company"
		case height = "height"
		case diameter = "diameter"
		case mass = "mass"
		case payload_weights = "payload_weights"
		case first_stage = "first_stage"
		case second_stage = "second_stage"
		case engines = "engines"
		case landing_legs = "landing_legs"
		case flickr_images = "flickr_images"
		case wikipedia = "wikipedia"
		case description = "description"
		case rocket_id = "rocket_id"
		case rocket_name = "rocket_name"
		case rocket_type = "rocket_type"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		active = try values.decodeIfPresent(Bool.self, forKey: .active)
		stages = try values.decodeIfPresent(Int.self, forKey: .stages)
		boosters = try values.decodeIfPresent(Int.self, forKey: .boosters)
		cost_per_launch = try values.decodeIfPresent(Int.self, forKey: .cost_per_launch)
		success_rate_pct = try values.decodeIfPresent(Int.self, forKey: .success_rate_pct)
		first_flight = try values.decodeIfPresent(String.self, forKey: .first_flight)
		country = try values.decodeIfPresent(String.self, forKey: .country)
		company = try values.decodeIfPresent(String.self, forKey: .company)
		height = try values.decodeIfPresent(Height.self, forKey: .height)
		diameter = try values.decodeIfPresent(Diameter.self, forKey: .diameter)
		mass = try values.decodeIfPresent(Mass.self, forKey: .mass)
		payload_weights = try values.decodeIfPresent([Payload_weights].self, forKey: .payload_weights)
		first_stage = try values.decodeIfPresent(First_stage2.self, forKey: .first_stage)
		second_stage = try values.decodeIfPresent(Second_stage2.self, forKey: .second_stage)
		engines = try values.decodeIfPresent(Engines.self, forKey: .engines)
		landing_legs = try values.decodeIfPresent(Landing_legs.self, forKey: .landing_legs)
		flickr_images = try values.decodeIfPresent([String].self, forKey: .flickr_images)
		wikipedia = try values.decodeIfPresent(String.self, forKey: .wikipedia)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		rocket_id = try values.decodeIfPresent(String.self, forKey: .rocket_id)
		rocket_name = try values.decodeIfPresent(String.self, forKey: .rocket_name)
		rocket_type = try values.decodeIfPresent(String.self, forKey: .rocket_type)
	}

}
