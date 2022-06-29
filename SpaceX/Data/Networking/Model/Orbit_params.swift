/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Orbit_params : Codable {
	let reference_system : String?
	let regime : String?
	let longitude : Double?
	let semi_major_axis_km : Double?
	let eccentricity : Double?
	let periapsis_km : Double?
	let apoapsis_km : Double?
	let inclination_deg : Double?
	let period_min : Double?
	let lifespan_years : Double?
	let epoch : String?
	let mean_motion : Double?
	let raan : Double?
	let arg_of_pericenter : Double?
	let mean_anomaly : Double?

	enum CodingKeys: String, CodingKey {

		case reference_system = "reference_system"
		case regime = "regime"
		case longitude = "longitude"
		case semi_major_axis_km = "semi_major_axis_km"
		case eccentricity = "eccentricity"
		case periapsis_km = "periapsis_km"
		case apoapsis_km = "apoapsis_km"
		case inclination_deg = "inclination_deg"
		case period_min = "period_min"
		case lifespan_years = "lifespan_years"
		case epoch = "epoch"
		case mean_motion = "mean_motion"
		case raan = "raan"
		case arg_of_pericenter = "arg_of_pericenter"
		case mean_anomaly = "mean_anomaly"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		reference_system = try values.decodeIfPresent(String.self, forKey: .reference_system)
		regime = try values.decodeIfPresent(String.self, forKey: .regime)
		longitude = try values.decodeIfPresent(Double.self, forKey: .longitude)
		semi_major_axis_km = try values.decodeIfPresent(Double.self, forKey: .semi_major_axis_km)
		eccentricity = try values.decodeIfPresent(Double.self, forKey: .eccentricity)
		periapsis_km = try values.decodeIfPresent(Double.self, forKey: .periapsis_km)
		apoapsis_km = try values.decodeIfPresent(Double.self, forKey: .apoapsis_km)
		inclination_deg = try values.decodeIfPresent(Double.self, forKey: .inclination_deg)
		period_min = try values.decodeIfPresent(Double.self, forKey: .period_min)
		lifespan_years = try values.decodeIfPresent(Double.self, forKey: .lifespan_years)
		epoch = try values.decodeIfPresent(String.self, forKey: .epoch)
		mean_motion = try values.decodeIfPresent(Double.self, forKey: .mean_motion)
		raan = try values.decodeIfPresent(Double.self, forKey: .raan)
		arg_of_pericenter = try values.decodeIfPresent(Double.self, forKey: .arg_of_pericenter)
		mean_anomaly = try values.decodeIfPresent(Double.self, forKey: .mean_anomaly)
	}

}
