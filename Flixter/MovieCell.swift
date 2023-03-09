//
//  MovieCell.swift
//  Flixter
//
//  Created by Mariamawit Tadesse on 3/8/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        trackNameLabel.text = movie.trackName
        artistNameLabel.text = movie.artistName

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.artworkUrl100, into: trackImageView)
    }

}
