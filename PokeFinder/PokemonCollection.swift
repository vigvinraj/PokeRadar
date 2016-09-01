//
//  PokemonCollection.swift
//  PokeFinder
//
//  Created by Vignesh Kumar on 9/1/16.
//  Copyright © 2016 Vignesh Kumar. All rights reserved.
//

import UIKit
/*
class PokemonCollection: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
        
        @IBOutlet weak var collection: UICollectionView!
        
        @IBOutlet weak var searchBar: UISearchBar!
        
        var pokemon = [Pokemon]()
        var filteredPokemon = [Pokemon]()
        var inSearchMode = false
    
    
       func viewDidLoad() {
            
            collection.delegate = self
            collection.dataSource = self
            searchBar.delegate = self
            searchBar.returnKeyType = UIReturnKeyType.done
            parsePokemonCSV()
 
        }
        
        func parsePokemonCSV() {
            
            let path = Bundle.main.path(forResource: "pokemon", ofType: "csv")
            
            do {
                let csv = try CSV(contentsOfURL: path!)
                let rows = csv.rows
                
                for row in rows {
                    let pokeId = Int(row["id"]!)!
                    let name = row["identifier"]!
                    let poke = Pokemon(name: name, pokedexId: pokeId)
                    pokemon.append(poke)
                }
                
            } catch let err as NSError {
                print(err.debugDescription)
            }
            
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokeCell", for: indexPath) as? PokeCell {
                
                let poke: Pokemon!
                
                if inSearchMode {
                    poke = filteredPokemon[indexPath.row]
                } else {
                    poke = pokemon[indexPath.row]
                }
                
                cell.configureCell(pokemon: poke)
                
                return cell
                
            } else {
                
                return UICollectionViewCell()
            }
            
        }
        
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let poke: Pokemon!
            if inSearchMode {
                poke = filteredPokemon[indexPath.row]
            } else {
                poke = pokemon[indexPath.row]
            }
            
        }
        
        
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
            if inSearchMode {
                return filteredPokemon.count
            }
            
            return pokemon.count
        }
        
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 105, height: 105)
        }
        
        
        
        
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            
            endEditing(true)
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            if searchBar.text == nil || searchBar.text == "" {
                inSearchMode = false
                endEditing(true)
                collection.reloadData()
            } else {
                inSearchMode = true
                let lower = searchBar.text!.lowercased()
                
                filteredPokemon = pokemon.filter({$0.name.range(of: lower) != nil})
                
                collection.reloadData()
            }
        }
}*/
