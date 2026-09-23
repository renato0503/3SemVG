import pdfplumber

for fname, label in [
    ("D:\\Dev\\UnifaccApps\\3SemVG\\Grupo1-DinheiroNaMao\\Dinheiro na Mao.pdf", "G1"),
    ("D:\\Dev\\UnifaccApps\\3SemVG\\Grupo3-QuitaAI\\Quit_AI.pdf", "G3"),
]:
    print(f"\n{'='*60}")
    print(f"{label}: {fname}")
    print('='*60)
    try:
        with pdfplumber.open(fname) as pdf:
            print(f"Pages: {len(pdf.pages)}")
            for i, page in enumerate(pdf.pages):
                t = page.extract_text()
                if t:
                    print(f"\n--- Page {i+1} ---")
                    print(t[:1500])
    except Exception as e:
        print(f"Error: {e}")
