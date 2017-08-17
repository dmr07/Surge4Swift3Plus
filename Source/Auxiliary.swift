// Auxilliary.swift
//
// Copyright (c) 2014–2015 Mattt Thompson (http://mattt.me)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Accelerate

// MARK: Absolute Value

public func abs(x: [Double]) -> [Double] {
    var results = [Double](repeating: 0.0, count: x.count)
    vvfabs(&results, x, [Int32(x.count)])

    return results
}

public func abs(x: [Float]) -> [Float] {
    var results = [Float](repeating: 0.0, count: x.count)
    vvfabsf(&results, x, [Int32(x.count)])

    return results
}

// MARK: Ceiling

public func ceil(x: [Float]) -> [Float] {
    var results = [Float](repeating: 0.0, count: x.count)
    vvceilf(&results, x, [Int32(x.count)])

    return results
}

public func ceil(x: [Double]) -> [Double] {
    var results = [Double](repeating: 0.0, count: x.count)
    vvceil(&results, x, [Int32(x.count)])

    return results
}

// MARK: Clip

public func clip(x: [Float], low: Float, high: Float) -> [Float] {
    var results = [Float](repeating: 0.0, count: x.count), y = low, z = high
    vDSP_vclip(x, 1, &y, &z, &results, 1, vDSP_Length(x.count))

    return results
}

public func clip(x: [Double], low: Double, high: Double) -> [Double] {
    var results = [Double](repeating: 0.0, count: x.count), y = low, z = high
    vDSP_vclipD(x, 1, &y, &z, &results, 1, vDSP_Length(x.count))

    return results
}

// MARK: Copy Sign

public func copysign(sign: [Float], magnitude: [Float]) -> [Float] {
    var results = [Float](repeating: 0.0, count: sign.count)
    vvcopysignf(&results, magnitude, sign, [Int32(sign.count)])

    return results
}

public func copysign(sign: [Double], magnitude: [Double]) -> [Double] {
    var results = [Double](repeating: 0.0, count: sign.count)
    vvcopysign(&results, magnitude, sign, [Int32(sign.count)])

    return results
}

// MARK: Floor

public func floor(x: [Float]) -> [Float] {
    var results = [Float](repeating: 0.0, count: x.count)
    vvfloorf(&results, x, [Int32(x.count)])

    return results
}

public func floor(x: [Double]) -> [Double] {
    var results = [Double](repeating: 0.0, count: x.count)
    vvfloor(&results, x, [Int32(x.count)])

    return results
}

// MARK: Negate

public func neg(x: [Float]) -> [Float] {
    var results = [Float](repeating: 0.0, count: x.count)
    vDSP_vneg(x, 1, &results, 1, vDSP_Length(x.count))

    return results
}

public func neg(x: [Double]) -> [Double] {
    var results = [Double](repeating: 0.0, count: x.count)
    vDSP_vnegD(x, 1, &results, 1, vDSP_Length(x.count))

    return results
}

// MARK: Reciprocal

public func rec(x: [Float]) -> [Float] {
    var results = [Float](repeating: 0.0, count: x.count)
    vvrecf(&results, x, [Int32(x.count)])

    return results
}

public func rec(x: [Double]) -> [Double] {
    var results = [Double](repeating: 0.0, count: x.count)
    vvrec(&results, x, [Int32(x.count)])

    return results
}

// MARK: Round

public func round(x: [Float]) -> [Float] {
    var results = [Float](repeating: 0.0, count: x.count)
    vvnintf(&results, x, [Int32(x.count)])

    return results
}

public func round(x: [Double]) -> [Double] {
    var results = [Double](repeating: 0.0, count: x.count)
    vvnint(&results, x, [Int32(x.count)])

    return results
}

// MARK: Threshold

public func threshold(x: [Float], low: Float) -> [Float] {
    var results = [Float](repeating: 0.0, count: x.count), y = low
    vDSP_vthr(x, 1, &y, &results, 1, vDSP_Length(x.count))

    return results
}

public func threshold(x: [Double], low: Double) -> [Double] {
    var results = [Double](repeating: 0.0, count: x.count), y = low
    vDSP_vthrD(x, 1, &y, &results, 1, vDSP_Length(x.count))

    return results
}

// MARK: Truncate

public func trunc(x: [Float]) -> [Float] {
    var results = [Float](repeating: 0.0, count: x.count)
    vvintf(&results, x, [Int32(x.count)])

    return results
}

public func trunc(x: [Double]) -> [Double] {
    var results = [Double](repeating: 0.0, count: x.count)
    vvint(&results, x, [Int32(x.count)])

    return results
}
