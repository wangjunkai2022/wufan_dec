package com.fasterxml.jackson.core.sym;
/* loaded from: classes2.dex */
public final class Name3 extends Name {

    /* renamed from: q1  reason: collision with root package name */
    private final int f13683q1;

    /* renamed from: q2  reason: collision with root package name */
    private final int f13684q2;
    private final int q3;

    Name3(String str, int i2, int i4, int i5, int i6) {
        super(str, i2);
        this.f13683q1 = i4;
        this.f13684q2 = i5;
        this.q3 = i6;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2, int i4) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2, int i4, int i5) {
        return this.f13683q1 == i2 && this.f13684q2 == i4 && this.q3 == i5;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i2) {
        return i2 == 3 && iArr[0] == this.f13683q1 && iArr[1] == this.f13684q2 && iArr[2] == this.q3;
    }
}
