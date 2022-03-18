//
//  HomeView.swift
//  AutoLayoutDemo
//
//  Created by Ацамаз Бицоев on 18.03.2022.
//

import UIKit

class HomeView: UIView {
    let controller: HomeController
    
    let nextButton = UIButton()
    let roundedButton = UIButton()
    let miniButton = UIButton()
    
    
    init(controller: HomeController) {
        self.controller = controller
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView() {
        backgroundColor = .blue
        
        // Добавляем nextButton на экран (на вью)
        addSubview(nextButton)
        // Эта строчка нужна чтобы констрейнты работали
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.layer.cornerRadius = 16 // радиус скругления углов
        nextButton.setTitle("Далее", for: .normal) // Текст кнопки
        nextButton.setTitleColor(.black, for: .normal) // Цвет текста кнопки
        nextButton.backgroundColor = .white // цвет фона кнопки
        
        // Добавляем Constraint'ы
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: self.centerXAnchor), // приравниваем центр кнопки по горизонтали к центру вьюхи по горизонтали
            nextButton.centerYAnchor.constraint(equalTo: self.centerYAnchor), // приравниваем центр кнопки по вертикали к центру вьюхи по вертикали
            nextButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20), // прибиваем левый край кнопки к левому краю вьюхи с отступом 20
            nextButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20), // прибиваем правый край кнопки к правому краю вьюхи с отступом 20
            nextButton.heightAnchor.constraint(equalToConstant: 44) // высота кнопки строго 44 независимо от размера экрана
        ])
        
        
        // Добавляем roundedButton на экран (на вью)
        addSubview(roundedButton)
        // Эта строчка нужна чтобы констрейнты работали
        roundedButton.translatesAutoresizingMaskIntoConstraints = false
        roundedButton.layer.cornerRadius = 60 // радиус половина ширины/высоты кнопки чтобы сделать ее круглой
        roundedButton.setTitle("ОК", for: .normal)
        roundedButton.setTitleColor(.white, for: .normal)
        roundedButton.backgroundColor = .green
        
        // Добавляем Constraint'ы
        NSLayoutConstraint.activate([
            roundedButton.heightAnchor.constraint(equalToConstant: 120), // высота
            roundedButton.widthAnchor.constraint(equalToConstant: 120), // ширина
            roundedButton.centerXAnchor.constraint(equalTo: self.centerXAnchor), // центр по горизонтали
            roundedButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor) // прибиваем снизу (safeAreaLayoutGuide это безопасная зона, к ее низу мы и прибиваем
        ])
        
        
        // Добавляем roundedButton на экран (на вью)
        addSubview(miniButton)
        // Эта строчка нужна чтобы констрейнты работали
        miniButton.translatesAutoresizingMaskIntoConstraints = false
        miniButton.layer.cornerRadius = 12 // Радиус закругления углов
        miniButton.setTitle("Подробнее", for: .normal)
        miniButton.setTitleColor(.blue, for: .normal)
        miniButton.backgroundColor = .white
        
        // Добавляем Constraint'ы
        NSLayoutConstraint.activate([
            miniButton.heightAnchor.constraint(equalToConstant: 24), // Высота кнопки строго 24
            miniButton.widthAnchor.constraint(equalToConstant: 120), // ширина кнопки строго 120
            miniButton.centerXAnchor.constraint(equalTo: self.centerXAnchor), // приравниваем центр кнопки по горизонтали к центру вьюхи по горизонтали
            miniButton.topAnchor.constraint(equalTo: nextButton.bottomAnchor, constant: 8) // Прибиваем верхний край miniButton к нижнему краю nextButton с отступом 8
        ])
    }
}
