// clang-format off
#include <X11/Xft/Xft.h>
#include <hb.h>
#include <hb-ft.h>
// clang-format on

void hbunloadfonts();
void hbtransform(XftGlyphFontSpec *, Glyph const *, size_t, int, int);
