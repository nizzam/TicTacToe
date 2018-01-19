//
//  ViewController.swift
//  TicTacToe
//
//  Created by Mont Leo on 19/01/2018.
//  Copyright © 2018 nizzam. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    let tictacButton1: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(" ", for: .normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.white.cgColor
        button.clipsToBounds = true
        button.tag = 1
        button.addTarget(self, action: #selector(handleTapped), for: .touchUpInside)
        return button
    }()
    
    let tictacButton2: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(" ", for: .normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 2
        button.addTarget(self, action: #selector(handleTapped), for: .touchUpInside)
        return button
    }()
    
    let tictacButton3: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(" ", for: .normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 3
        button.addTarget(self, action: #selector(handleTapped), for: .touchUpInside)
        return button
    }()
    
    let tictacButton4: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(" ", for: .normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 4
        button.addTarget(self, action: #selector(handleTapped), for: .touchUpInside)
        return button
    }()
    
    let tictacButton5: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(" ", for: .normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 5
        button.addTarget(self, action: #selector(handleTapped), for: .touchUpInside)
        return button
    }()
    
    let tictacButton6: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(" ", for: .normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 6
        button.addTarget(self, action: #selector(handleTapped), for: .touchUpInside)
        return button
    }()
    
    let tictacButton7: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(" ", for: .normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 7
        button.addTarget(self, action: #selector(handleTapped), for: .touchUpInside)
        return button
    }()
    
    let tictacButton8: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(" ", for: .normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 8
        button.addTarget(self, action: #selector(handleTapped), for: .touchUpInside)
        return button
    }()
    
    let tictacButton9: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(" ", for: .normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 9
        button.addTarget(self, action: #selector(handleTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    private func initView() {
        view.backgroundColor = .white
        setupTicTacButton()
    }
    
    var activePlayer = 1
    var movePlayer1 = [Int]()
    var movePlayer2 = [Int]()
    
    @objc func handleTapped(button: UIButton) {
        print("Test TAG: \(button.tag)")
        
        if activePlayer == 1 {
            button.setTitle("X", for: .normal)
            button.setTitleColor(UIColor.white, for: UIControlState.normal)
            activePlayer = 2
            movePlayer1.append(button.tag)
            
        } else {
            button.setTitle("O", for: .normal)
            button.setTitleColor(UIColor.yellow, for: UIControlState.normal)
            activePlayer = 1
            movePlayer2.append(button.tag)
        }
        button.isEnabled = false
        
        findWinner()
    }
    
    func findWinner() {
        print(movePlayer1.count, movePlayer2.count)
        
        if movePlayer1.count >= 3 {
            processResult(player: "Player 1", movePlayer: movePlayer1)
            
            if movePlayer2.count >= 3 {
                processResult(player: "Player 2", movePlayer: movePlayer2)
                
            }
            if totalMoves == (movePlayer1.count + movePlayer2.count) {
                let alert = UIAlertController(title: "No Winner", message: "Restart ?", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (_) in
                    self.present(MainController(), animated: true, completion: nil)
                }))
                present(alert, animated: true, completion: nil)
            }
        }
    }
    
    var totalMoves = 9
    
    let winArray = [
        [1, 2, 3],
        [1, 5, 9],
        [1, 4, 7],
        [2, 5, 8],
        [3, 5, 7],
        [3, 6, 9],
        [4, 5, 6],
        [7, 8, 9]
    ]
    
    func processResult(player: String, movePlayer: [Int]) {
        for x in 0..<winArray.count {
            
            //  For append an array from winArray
            var checkingArray = [Int]()
            for y in 0..<winArray[x].count {
                checkingArray.append(winArray[x][y])
            }
            let result = movePlayer.contains(array: checkingArray)
            if result {
                let alert = UIAlertController(title: "Winner", message: "\(player)", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (_) in
                    self.present(MainController(), animated: true, completion: nil)
                }))
                present(alert, animated: true, completion: nil)
            }
        }
    }

    private func setupTicTacButton() {
        let topStackView = UIStackView(arrangedSubviews: [tictacButton1, tictacButton2, tictacButton3])
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        topStackView.distribution = .fillEqually
        
        view.addSubview(topStackView)
        
        if #available(iOS 11.0, *) {
            NSLayoutConstraint.activate([
                topStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
                topStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                topStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                topStackView.heightAnchor.constraint(equalToConstant: 80)
            ])
        } else {
            NSLayoutConstraint.activate([
                topStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
                topStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                topStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                topStackView.heightAnchor.constraint(equalToConstant: 80)
            ])
        }
        
        let middleStackView = UIStackView(arrangedSubviews: [tictacButton4, tictacButton5, tictacButton6])
        middleStackView.translatesAutoresizingMaskIntoConstraints = false
        middleStackView.distribution = .fillEqually
        
        view.addSubview(middleStackView)
        
        if #available(iOS 11.0, *) {
            NSLayoutConstraint.activate([
                middleStackView.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant: 10),
                middleStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                middleStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                middleStackView.heightAnchor.constraint(equalToConstant: 80)
            ])
        } else {
            NSLayoutConstraint.activate([
                middleStackView.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant: 10),
                middleStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                middleStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                middleStackView.heightAnchor.constraint(equalToConstant: 80)
            ])
        }
        
        let bottomStackView = UIStackView(arrangedSubviews: [tictacButton7, tictacButton8, tictacButton9])
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.distribution = .fillEqually
        
        view.addSubview(bottomStackView)
        
        if #available(iOS 11.0, *) {
            NSLayoutConstraint.activate([
                bottomStackView.topAnchor.constraint(equalTo: middleStackView.bottomAnchor, constant: 10),
                bottomStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                bottomStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                bottomStackView.heightAnchor.constraint(equalToConstant: 80)
            ])
        } else {
            NSLayoutConstraint.activate([
                bottomStackView.topAnchor.constraint(equalTo: middleStackView.bottomAnchor, constant: 10),
                bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                bottomStackView.heightAnchor.constraint(equalToConstant: 80)
            ])
        }
    }
}






























