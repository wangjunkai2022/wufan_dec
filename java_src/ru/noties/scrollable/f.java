package ru.noties.scrollable;
/* compiled from: DefaultCloseUpAlgorithm.java */
/* loaded from: classes5.dex */
public class f implements c {
    @Override // ru.noties.scrollable.c
    public int a(ScrollableLayout scrollableLayout, boolean z3, int i2, int i4, int i5) {
        if (z3) {
            return 0;
        }
        return i5;
    }

    @Override // ru.noties.scrollable.c
    public int b(ScrollableLayout scrollableLayout, int i2, int i4) {
        if (i2 < i4 / 2) {
            return 0;
        }
        return i4;
    }
}
