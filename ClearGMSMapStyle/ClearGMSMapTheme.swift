//
//  ClearGMSMapTheme.swift
//  ClearGMSMapSytle
//
//  Created by David Seca on 06.07.22.
//

import GoogleMaps

/// Google map themes enum
public enum ClearGMSMapTheme {
    case standard
    case dark
    case silver
    case retro
    case night
    case aubergine

    /// List of available themes
    public static let themes: [ClearGMSMapTheme] = [.standard, .dark, .silver, .retro, .night, .aubergine]

    /// Prefix of Theme json resource
    public var resource: String? {
        switch self {
        case .dark:      return "map-dark-theme"
        case .silver:    return "map-silver-theme"
        case .retro:     return "map-retro-theme"
        case .night:     return "map-night-theme"
        case .aubergine: return "map-aubergine-theme"
        default:         return nil
        }
    }

    /// Url of Google Map Theme. It might be nil
    public var url: URL? {
        guard let resource = self.resource else {
            return nil
        }

        return ClearGMSMapStyleBundle.main.url(forResource: resource, withExtension: "json")
    }

    /// Customized Google Map Style. It might be nil
    public var mapStyle: GMSMapStyle? {
        guard let url = self.url else {
            return nil
        }

        return try? GMSMapStyle(contentsOfFileURL: url)
    }

}
