package com.papa.controller.core.hardware;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
/* compiled from: GamepadHardwareId.java */
/* loaded from: classes4.dex */
public class b extends a {

    /* renamed from: p  reason: collision with root package name */
    private byte[] f54850p;

    public b() {
    }

    @Override // com.papa.controller.core.hardware.a
    public byte[] a() {
        return super.b(new byte[]{BinaryMemcacheOpcodes.REPLACEQ});
    }

    public byte[] k() {
        return this.f54850p;
    }

    public void l(byte[] bArr) {
        this.f54850p = bArr;
    }

    public b(byte[] bArr) {
        super(bArr);
        if (this.f54849d == 20) {
            int i2 = this.f54848c - 5;
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, 5, bArr2, 0, i2);
            this.f54850p = bArr2;
        }
    }
}
