//
//  MarvelEntity.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit
import Alamofire

/// Marvel client configuration
struct Marvel {
	static let baseUrl = "https://gateway.marvel.com/v1/public"
	static let charactersEndpoint = "/characters"
    
	static let apiKey = "apikey"
	static let tsKey = "ts"
	static let hashKey = "hash"
	static let limitKey = "limit"
	static let offsetKey = "offset"
	
	static let privateKey = "710da3314a82ef92a15d1dc2940d7d215638735d"
	static let publicKey = "e568a0374652a3165ca36e746f7e3be5"
}

class MarvelEntity: NSObject, MarvelEntityProtocol {

    /// Method invoked to get the authtentication parameters
    /// - Returns: authentication parameters
    private func getAuthParams() -> [String: Any] {
        let ts = "\(Date().timeIntervalSince1970)"
        let hash = (ts + Marvel.privateKey + Marvel.publicKey).md5

		return [Marvel.apiKey: Marvel.publicKey, Marvel.tsKey: ts, Marvel.hashKey: hash]
    }

    /// Method invoked to get characters list
    /// - Parameters:
    ///   - offset: characters offset
    ///   - completion: action if the characters has been got
    ///   - failure: action if the characters hasn't been got
    func getCharacters(offset: Int, completion: @escaping (MarvelCharacters) -> Void, failure: @escaping () -> Void) {
		let url = "\(Marvel.baseUrl)\(Marvel.charactersEndpoint)"
        let limit = 20
		let params: [String: Any] = [Marvel.limitKey: limit, Marvel.offsetKey: offset]

        request(url: url, params: params) { (marvelCharacters) in
            completion(marvelCharacters)
        } failure: {
            failure()
        }
    }

    /// Method invoked to get character detail
    /// - Parameters:
    ///   - id: character id
    ///   - completion: action if the character has been got
    ///   - failure: action if the character hasn't been got
    func getCharacter(id: Int, completion: @escaping (MarvelCharacter) -> Void, failure: @escaping () -> Void) {

		let url = "\(Marvel.baseUrl)\(Marvel.charactersEndpoint)/\(id)"
        request(url: url) { (marvelCharacters) in
            if let character = marvelCharacters.results.first {
                completion(character)
            } else {
                failure()
            }
        } failure: {
            failure()
        }
    }

    /// Method invoked to send a request
    /// - Parameters:
    ///   - url: url of the service
    ///   - params: parameters of the request
    ///   - completion: action if the request is success
    ///   - failure: action if the request is failure
    private func request(url: String, params: [String: Any] = [:], completion: @escaping (MarvelCharacters) -> Void, failure: @escaping () -> Void) {

        let parameters = params.merging(getAuthParams()) { (_, new) in new }

        let request = AF.request(url, parameters: parameters)
        request.responseData { response in
            switch response.result {
            case .success(let data):
                let charactersResponse: MarvelCharactersResponse? = try? JSONDecoder().decode(MarvelCharactersResponse.self, from: data)
                if let localResponse = charactersResponse {
                    if localResponse.code == 200 {
                        completion(localResponse.data)
                    } else {
                        failure()
                    }
                } else {
                    failure()
                }
            case .failure( _):
                failure()
            }
        }
    }
}
