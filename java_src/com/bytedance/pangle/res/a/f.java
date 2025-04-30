package com.bytedance.pangle.res.a;

import java.io.DataInput;
/* loaded from: classes2.dex */
public abstract class f implements DataInput {

    /* renamed from: a  reason: collision with root package name */
    public final i f10341a;

    public f(i iVar) {
        this.f10341a = iVar;
    }

    @Override // java.io.DataInput
    public boolean readBoolean() {
        return this.f10341a.readBoolean();
    }

    @Override // java.io.DataInput
    public byte readByte() {
        return this.f10341a.readByte();
    }

    @Override // java.io.DataInput
    public char readChar() {
        return this.f10341a.readChar();
    }

    @Override // java.io.DataInput
    public double readDouble() {
        return this.f10341a.readDouble();
    }

    @Override // java.io.DataInput
    public float readFloat() {
        return this.f10341a.readFloat();
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i2, int i4) {
        this.f10341a.readFully(bArr, i2, i4);
    }

    @Override // java.io.DataInput
    public int readInt() {
        return this.f10341a.readInt();
    }

    @Override // java.io.DataInput
    public String readLine() {
        return this.f10341a.readLine();
    }

    @Override // java.io.DataInput
    public long readLong() {
        return this.f10341a.readLong();
    }

    @Override // java.io.DataInput
    public short readShort() {
        return this.f10341a.readShort();
    }

    @Override // java.io.DataInput
    public String readUTF() {
        return this.f10341a.readUTF();
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() {
        return this.f10341a.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() {
        return this.f10341a.readUnsignedShort();
    }

    @Override // java.io.DataInput
    public int skipBytes(int i2) {
        return this.f10341a.skipBytes(i2);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) {
        this.f10341a.readFully(bArr);
    }
}
