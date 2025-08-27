from urllib.parse import urlparse
import time

BOOKMARK_FILE = "./bookmarks"
OUTPUT_HTML = "./bookmark.html"
NEW_LINE = "\n"


def main():
    bookmarks = gen_bookmarks_dict()
    bookmark_html = gen_bookmark_html(bookmarks)

    with open(OUTPUT_HTML, "w") as f:
        f.write(bookmark_html)

    return bookmarks


def gen_bookmarks_dict():
    cur_heading = ""
    bookmarks = {}

    with open(BOOKMARK_FILE, "r") as f:

        for line in f:
            heading = parse_heading(line)

            if heading:
                cur_heading = heading
                continue

            url = parse_url(line)
            if url:
                if cur_heading in bookmarks.keys():
                    bookmarks[cur_heading].append(url)
                else:
                    bookmarks[cur_heading] = []
                    bookmarks[cur_heading].append(url)
    return bookmarks


def parse_heading(line):
    heading = line.split("---")

    if len(heading) == 3:
        return heading[1]

    return None


def parse_url(line):
    split_line = line.split(" ")

    if len(split_line) < 3:
        return None

    parsed_url = urlparse(split_line[2])

    if parsed_url.scheme and parsed_url.netloc:
        return split_line[2].strip()


def gen_bookmark_html(bookmarks):
    bookmark_html = ""
    bookmark_html += add_header()
    bookmark_html += add_body(bookmarks)

    return bookmark_html


def add_header():
    bookmark_html = """<!DOCTYPE NETSCAPE-Bookmark-file-1>
    <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
    <TITLE>Bookmarks</TITLE>
    <H1>Bookmarks</H1>
    """

    return bookmark_html + NEW_LINE


def add_body(bookmarks):
    body_html = ""
    date = int(time.time())

    for folder, urls in bookmarks.items():
        body_html += add_folder_st(date, folder)
        body_html += add_items(date, urls)
        body_html += add_folder_end()

    return body_html


def add_folder_st(date, folder):
    return f'<DT><H3 FOLDED ADD_DATE="{date}">{folder}</H3> <DL><p>'


def add_folder_end():
    return "</DL><p>"


def add_items(date, urls):
    items = ""
    for url in urls:
        items += add_item(date, url)

    return items + NEW_LINE


def add_item(date, url):
    parsed_url = urlparse(url)
    domain = parsed_url.hostname

    item = f'<DT><A HREF="{url}" ADD_DATE="{date}" LAST_VISIT="{date}" LAST_MODIFIED="{date}">{domain}</A>'
    return item + NEW_LINE


if __name__ == "__main__":
    main()
