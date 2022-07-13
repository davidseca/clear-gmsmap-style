//
//  ClearGMSMapStyleBundle.swift
//  ClearGMSMapStyle
//
//  Created by David Seca on 06.07.22.
//


/// Class to manage ClearGMSMapStyle Bundle resources
public final class ClearGMSMapStyleBundle {

    /// base framework bundle
    private static let frameworkBundle = Bundle(for: ClearGMSMapStyleBundle.self)

    /// bundle access path
    private static let path = frameworkBundle.path(forResource: "ClearGMSMapStyle", ofType: "bundle")!

    /// main usable Bundle
    public static let main = Bundle(path: path)!

}
