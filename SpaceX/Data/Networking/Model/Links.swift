/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Links : Codable {
	let mission_patch : String?
	let mission_patch_small : String?
	let reddit_campaign : String?
	let reddit_launch : String?
	let reddit_recovery : String?
	let reddit_media : String?
	let presskit : String?
	let article_link : String?
	let wikipedia : String?
	let video_link : String?
	let youtube_id : String?
	let flickr_images : [String]?

	enum CodingKeys: String, CodingKey {

		case mission_patch = "mission_patch"
		case mission_patch_small = "mission_patch_small"
		case reddit_campaign = "reddit_campaign"
		case reddit_launch = "reddit_launch"
		case reddit_recovery = "reddit_recovery"
		case reddit_media = "reddit_media"
		case presskit = "presskit"
		case article_link = "article_link"
		case wikipedia = "wikipedia"
		case video_link = "video_link"
		case youtube_id = "youtube_id"
		case flickr_images = "flickr_images"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		mission_patch = try values.decodeIfPresent(String.self, forKey: .mission_patch)
		mission_patch_small = try values.decodeIfPresent(String.self, forKey: .mission_patch_small)
		reddit_campaign = try values.decodeIfPresent(String.self, forKey: .reddit_campaign)
		reddit_launch = try values.decodeIfPresent(String.self, forKey: .reddit_launch)
		reddit_recovery = try values.decodeIfPresent(String.self, forKey: .reddit_recovery)
		reddit_media = try values.decodeIfPresent(String.self, forKey: .reddit_media)
		presskit = try values.decodeIfPresent(String.self, forKey: .presskit)
		article_link = try values.decodeIfPresent(String.self, forKey: .article_link)
		wikipedia = try values.decodeIfPresent(String.self, forKey: .wikipedia)
		video_link = try values.decodeIfPresent(String.self, forKey: .video_link)
		youtube_id = try values.decodeIfPresent(String.self, forKey: .youtube_id)
		flickr_images = try values.decodeIfPresent([String].self, forKey: .flickr_images)
	}

}