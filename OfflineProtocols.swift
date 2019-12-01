//
//  OfflineProtocols.swift
//  AgencyApp
//
//  Created by Gamil Ali Qaid Shamar on 01/12/2019.
//  Copyright © 2019 Xchanging Malaysia. All rights reserved.
//

import Foundation

typealias Handler<T> = (Result<T, Error>) -> Void

protocol ReadableStorage {
    func fetchValue(for key: String) throws -> Data
    func fetchValue(for key: String, handler: @escaping Handler<Data>)
}

protocol WritableStorage {
    func save(value: Data, for key: String) throws
    func save(value: Data, for key: String, handler: @escaping Handler<Data>)
}

typealias Storage = ReadableStorage & WritableStorage
