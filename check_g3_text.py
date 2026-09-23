import pdfplumber

fname = r"D:\Dev\UnifaccApps\3SemVG\Grupo3-QuitaAI\Quit_AI.pdf"
with pdfplumber.open(fname) as pdf:
    print(f"Pages: {len(pdf.pages)}")
    for i, page in enumerate(pdf.pages):
        t = page.extract_text()
        print(f"Page {i+1} text length: {len(t) if t else 0}")
        if t:
            print(t[:500])
