# from pypdf import PdfReader

# reader = PdfReader("./src/yh_resume.pdf")
# number_of_pages = len(reader.pages)
# page = reader.pages[0]
# text = page.extract_text()
# print(text)

import pdfkit

pdfkit.from_file('./src/yh_resume.pdf', 'example.html')