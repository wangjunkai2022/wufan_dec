package com.mob.mcl.c;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class e implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final int f53205a;

    /* renamed from: b  reason: collision with root package name */
    public final int f53206b;

    /* renamed from: c  reason: collision with root package name */
    public long f53207c;

    /* renamed from: d  reason: collision with root package name */
    public String f53208d;

    public e(int i2) {
        this(i2, null);
    }

    static e b(ByteBuffer byteBuffer) {
        int i2;
        e c4 = c(byteBuffer);
        if (c4 != null && (i2 = c4.f53205a) > 0) {
            if (i2 > byteBuffer.remaining()) {
                return null;
            }
            byte[] bArr = new byte[c4.f53205a];
            byteBuffer.get(bArr);
            c4.f53208d = new String(bArr);
        }
        return c4;
    }

    static e c(ByteBuffer byteBuffer) {
        if (byteBuffer.get() != 1) {
            return null;
        }
        int i2 = byteBuffer.getInt();
        int i4 = byteBuffer.getInt();
        if (i4 > 9999) {
            return null;
        }
        return new e(i2, i4, byteBuffer.getLong(), null);
    }

    public byte[] a() {
        ByteBuffer allocate = ByteBuffer.allocate(b());
        allocate.put((byte) 1);
        allocate.putInt(this.f53205a);
        allocate.putInt(this.f53206b);
        allocate.putLong(this.f53207c);
        String str = this.f53208d;
        if (str != null) {
            allocate.put(str.getBytes(Charset.forName("UTF-8")));
        }
        return allocate.array();
    }

    public e(int i2, String str) {
        this(str != null ? str.length() : 0, i2, 0L, str);
    }

    e(int i2, int i4, long j4, String str) {
        this.f53205a = i2;
        this.f53206b = i4;
        this.f53207c = j4;
        this.f53208d = str;
    }

    public int b() {
        return this.f53205a + 17;
    }

    public static List<e> a(ByteBuffer byteBuffer) {
        e b4;
        ArrayList arrayList = new ArrayList();
        while (byteBuffer.remaining() >= 17 && (b4 = b(byteBuffer)) != null) {
            arrayList.add(b4);
        }
        return arrayList;
    }
}
