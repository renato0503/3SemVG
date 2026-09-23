import pymupdf

fname = r"D:\Dev\UnifaccApps\3SemVG\Grupo3-QuitaAI\Quit_AI.pdf"
doc = pymupdf.open(fname)
print(f"Pages: {len(doc)}")
for i, page in enumerate(doc):
    t = page.get_text()
    print(f"\n--- Page {i+1} (len={len(t)}) ---")
    if t.strip():
        print(t[:800])
    else:
        # Try getting text blocks
        blocks = page.get_text("blocks")
        print(f"  Blocks: {len(blocks)}")
