//
//  main.swift
//  paiza_word_count
//
//  Created by 管理者 on 2021/01/01.
//

struct WordEncount {
    let word: String
    var count=1
    
    init(word: String){
        self.word = word
    }
}

let input_line = readLine()!
var words = input_line.split(separator: " ")
var wordEncount = [WordEncount]()

wordEncount.append(WordEncount(word: String(words[0])))

for i in 1..<words.count {
    for j in 0..<wordEncount.count {
        if words[i] == wordEncount[j].word {
            wordEncount[j].count+=1
            break
        }
        if j == wordEncount.count-1 {
           wordEncount.append(WordEncount(word: String(words[i])))
        }
    }
}

for j in 0..<wordEncount.count {
    print("\(wordEncount[j].word) \(wordEncount[j].count)")
}
