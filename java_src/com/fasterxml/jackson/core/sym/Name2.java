package com.fasterxml.jackson.core.sym;
/* loaded from: classes2.dex */
public final class Name2 extends Name {

    /* renamed from: q1  reason: collision with root package name */
    private final int f13681q1;

    /* renamed from: q2  reason: collision with root package name */
    private final int f13682q2;

    Name2(String str, int i2, int i4, int i5) {
        super(str, i2);
        this.f13681q1 = i4;
        this.f13682q2 = i5;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2, int i4) {
        return i2 == this.f13681q1 && i4 == this.f13682q2;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i2, int i4, int i5) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i2) {
        return i2 == 2 && iArr[0] == this.f13681q1 && iArr[1] == this.f13682q2;
    }
}
