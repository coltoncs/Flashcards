//
//  ViewController.swift
//  Flashcards
//
//  Created by Colton Sweeney on 8/27/17.
//  Copyright © 2017 coltoncsweeney. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet weak var cardContentLabel: UILabel!
    
    var managedObjectContext: NSManagedObjectContext!
    var listOfCards = [Flashcard]()
    var currentCard: Flashcard?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        managedObjectContext = appDelegate.persistentContainer.viewContext
        fetchCards()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chooseDisplayModeAction(_ sender: UISegmentedControl) {
    }

    @IBAction func deleteCardAction(_ sender: UIButton) {
    }
    
    @IBAction func swipeRightAction(_ sender: UISwipeGestureRecognizer) {
    }
    
    @IBAction func swipeUpAction(_ sender: UISwipeGestureRecognizer) {
    }
    
    @IBAction func swipeDownAction(_ sender: UISwipeGestureRecognizer) {
    }
    
    func fetchCards() {
        let fetchRequest: NSFetchRequest<Flashcard> = Flashcard.fetchRequest()
        do {
            listOfCards = try managedObjectContext.fetch(fetchRequest)
            print("Flashcards fetched successfully")
            printCards()
        } catch {
            print("Error fetching flashcards")
        }
    }
    
    func printCards() {
        for card in listOfCards {
            print(card.question!)
            print(card.answer!)
        }
    }
}

