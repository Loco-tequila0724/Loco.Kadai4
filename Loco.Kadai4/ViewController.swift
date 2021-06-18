import UIKit

struct Counter {
    private (set) var currentNumber = 0

    mutating func increaseByOne() {
        currentNumber += 1
    }

    mutating func resetNumber() {
        currentNumber = 0
    }
}

class ViewController: UIViewController {
    @IBOutlet private weak var currentNumberLabel: UILabel!
    private var counter = Counter()

    @IBAction private func increaseButton(_ sender: Any) {
        counter.increaseByOne()
        currentNumberLabel.text = String(counter.currentNumber)
    }

    @IBAction private func clearButton(_ sender: Any) {
        counter.resetNumber()
        currentNumberLabel.text = String(counter.currentNumber)
    }
}
