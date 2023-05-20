import unittest
from src.library import *
from src.swen344_db_utils import connect

TEST_DATA_PATH = 'data/db1_test_data.sql'

class TestDB1Library(unittest.TestCase):

    def setUp(self):
        set_up(TEST_DATA_PATH)

    def tearDown(self):
        pass

    def test_get_author_id(self):
        expected = 1
        actual = get_author_id('Henry', 'David', 'Thoreau')
        self.assertEqual(expected, actual)

    if __name__ == '__main__':
        unittest.main()