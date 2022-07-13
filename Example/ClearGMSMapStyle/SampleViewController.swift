//
//  SampleViewController.swift
//  ClearGMSMapStyle
//
//  Created by David Seca on 27.06.22.
//  Copyright (c) 2022 David Seca. All rights reserved.
//

import UIKit
import ClearGMSMapStyle
import GoogleMaps

class SampleViewController: UIViewController {

    /// Google Map View
    let mapView = GMSMapView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // add subviews
        self.view.addSubview(self.mapView)

        // config constraints
        self.mapView.translatesAutoresizingMaskIntoConstraints = false

        let safeArea = self.view.safeAreaLayoutGuide
        self.view.addConstraints([
            self.mapView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            self.mapView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            self.mapView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            self.mapView.topAnchor.constraint(equalTo: safeArea.topAnchor)
        ])
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.updateMapView()
    }

    /// Update MapView Style
    private func updateMapView() {
        self.mapView.mapStyle = ClearGMSMapStyle.mapStyle(for: self.traitCollection.userInterfaceStyle)
    }

}

// MARK: - UITraitEnvironment
extension SampleViewController {

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        self.updateMapView()
    }

}
