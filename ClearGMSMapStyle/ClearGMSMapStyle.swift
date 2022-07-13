//
//  ClearGMSMapStyle.swift
//  ClearGMSMapStyle
//
//  Created by David Seca on 06.07.22.
//

import GoogleMaps

/// Class with prepared styles
public class ClearGMSMapStyle {

    /// Prepared Standard Stlye
    public static let standard = ClearGMSMapTheme.standard.mapStyle

    /// Prepared Dark Stlye
    public static let dark = ClearGMSMapTheme.dark.mapStyle

    /// Prepared Silver Stlye
    public static let silver = ClearGMSMapTheme.silver.mapStyle

    /// Prepared Retro Stlye
    public static let retro = ClearGMSMapTheme.retro.mapStyle

    /// Prepared Night Stlye
    public static let night = ClearGMSMapTheme.night.mapStyle

    /// Prepared Aubergine Stlye
    public static let aubergine = ClearGMSMapTheme.aubergine.mapStyle

    /// Creates Google Map Style for UIUserInterfaceStyle
    /// - parameters:
    ///    - userInterfaceStyle: Interface style for the app
    /// - returns: corresponding ClearGMSMapStyle
    public static func mapStyle(for interfaceStyle: UIUserInterfaceStyle) -> GMSMapStyle? {
        let isLight = interfaceStyle == .light
        return isLight ? Self.standard : Self.dark
    }

}
