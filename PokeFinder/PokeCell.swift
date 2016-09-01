//
//  PokeCell.swift
//  PokeFinder
//
//  Created by Vignesh Kumar on 9/1/16.
//  Copyright © 2016 Vignesh Kumar. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 7.0
    }
    
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        
        nameLbl.text = self.pokemon.name.capitalized
        
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }

}
