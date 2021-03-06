// The MIT License (MIT)

// Copyright (c) 2015 JohnLui <wenhanlv@gmail.com> https://github.com/johnlui

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
//  JSONND+DictionaryLiteralConvertible.swift
//  JSONNeverDie
//
//  Created by 吕文翰 on 15/10/7.
//

import Foundation

// stolen from SwiftyJSON
extension JSONND: ExpressibleByDictionaryLiteral {
    public init(dictionaryLiteral elements: (String, AnyObject)...) {
        self.init(JSONdata: elements.reduce([String : AnyObject]() as AnyObject!){(dictionary: AnyObject!, element:(String, AnyObject)) -> AnyObject! in
            var d = dictionary as? Dictionary<String, AnyObject>
            d?[element.0] = element.1
            return d as AnyObject
            })
    }
}
