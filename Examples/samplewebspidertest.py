"""REST Api Sample Test file."""

from imgqa.spider import Webspider

# Variable Stack
baseUrl = "https://learn.letskodeit.com/"
urldomain = "letskodeit.com/"
CSV_file_loc = "Examples\\urlListgen_file_retry.csv"


class TestClass(Webspider):
    """Sample Test Suite."""

    def test_get_users(self):
        """Get users from application."""
        self.start_webspider(
            base_url=baseUrl, domain=urldomain, csv_file_path=CSV_file_loc)
