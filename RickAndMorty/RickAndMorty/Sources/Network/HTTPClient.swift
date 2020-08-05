//
//  HTTPClient.swift
//  RickAndMorty
//
//  Created by Ana Leticia Camargos on 05/08/20.
//  Copyright © 2020 Ana Leticia Camargos. All rights reserved.
//

import Foundation

typealias HTTPClientResult = Result<(Data, HTTPURLResponse),Error>

protocol HTTPClient {
    func get(
        from url: URL,
        completion: @escaping (HTTPClientResult) -> Void
    )
}
