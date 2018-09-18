//
//  RecipeSelectionVC.swift
//  GoodEatins
//
//  Created by Kevin Janvier on 18/09/2018.
//  Copyright © 2018 Kevin Janvier. All rights reserved.
//

import UIKit

class RecipesSelectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var selectedCategory:String!
    var recipes:[Recipe]!
    let data = DataSet()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedCategory)
        collectionView.delegate = self
        collectionView.dataSource = self
        recipes = data.getRecipes(forCategoryTitle: selectedCategory)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView,cellForItemAt indexPath: IndexPath)
    -> UICollectionViewCell{
    
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as? RecipeCell {
            let recipe = recipes[indexPath.item]
            cell.configureCell(recipe: recipe)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let cellDimension = (width / 2) - 15
        return CGSize(width: cellDimension, height: cellDimension)
    }
    
//    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        shouldPerformSegue(withIdentifier: "toRecipeSelected", sender: self)
//    }
    //This Function Tell the UI to go to next items
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath:
        IndexPath) {
        performSegue(withIdentifier: "toRecipeSelected", sender: self)
    }
    


}
