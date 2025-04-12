
import unittest

from python_starter_template.fizzbugzz import fizzbuzz


class FizzBuzzTests(unittest.TestCase):
    
    def test_fizz_buzz(self):
        self.assertEqual('fizzbuzz', fizzbuzz(15))
        self.assertEqual('fizz', fizzbuzz(3))
        self.assertEqual('buzz', fizzbuzz(5))
        self.assertEqual(2, fizzbuzz(2))

if __name__ == '__main__':
    unittest.main()
