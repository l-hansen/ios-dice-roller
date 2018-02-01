//
//  Utils.swift
//  DiceRoller
//
//  Created by Lasse Hansen on 01.02.18.
//  Copyright © 2018 Lasse Hansen. All rights reserved.
//

import Foundation

func roll(d sides: Int) -> Int {
    return Int(arc4random_uniform(UInt32(sides))) + 1
}

/**
 * Rolls a given number of dice with a gicen number of sides.
 * Returns an array containing the results of every dice roll.
 */
func rollDice(numberOfDice: Int, sides: Int) -> [Int] {
    return (1...numberOfDice).map{ _ in roll(d: sides) }
}

/**
 * Roll a given number of 6-sided dice.
 * Returns an array containing the results of every dice roll.
 */
func rollD6(numberOfDice : Int) -> [Int] {
    return rollDice(numberOfDice: numberOfDice, sides: 6)
}

/**
 * Returns the result of a single 6-sided dice roll.
 */
func roll1D6(modifier: Int = 0) -> Int {
    return max(0, roll(d: 6) + modifier)
}
