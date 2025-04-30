package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f59748a;

    /* renamed from: b  reason: collision with root package name */
    private String f59749b = "GBK";

    /* compiled from: BUGLY */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public byte f59750a;

        /* renamed from: b  reason: collision with root package name */
        public int f59751b;
    }

    public i() {
    }

    private boolean[] d(int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        if (aVar.f59750a == 9) {
            int a4 = a(0, 0, true);
            if (a4 >= 0) {
                boolean[] zArr = new boolean[a4];
                for (int i4 = 0; i4 < a4; i4++) {
                    zArr[i4] = a((byte) 0, 0, true) != 0;
                }
                return zArr;
            }
            throw new g("size invalid: " + a4);
        }
        throw new g("type mismatch.");
    }

    private short[] e(int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        if (aVar.f59750a == 9) {
            int a4 = a(0, 0, true);
            if (a4 >= 0) {
                short[] sArr = new short[a4];
                for (int i4 = 0; i4 < a4; i4++) {
                    sArr[i4] = a(sArr[0], 0, true);
                }
                return sArr;
            }
            throw new g("size invalid: " + a4);
        }
        throw new g("type mismatch.");
    }

    private int[] f(int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        if (aVar.f59750a == 9) {
            int a4 = a(0, 0, true);
            if (a4 >= 0) {
                int[] iArr = new int[a4];
                for (int i4 = 0; i4 < a4; i4++) {
                    iArr[i4] = a(iArr[0], 0, true);
                }
                return iArr;
            }
            throw new g("size invalid: " + a4);
        }
        throw new g("type mismatch.");
    }

    private long[] g(int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        if (aVar.f59750a == 9) {
            int a4 = a(0, 0, true);
            if (a4 >= 0) {
                long[] jArr = new long[a4];
                for (int i4 = 0; i4 < a4; i4++) {
                    jArr[i4] = a(jArr[0], 0, true);
                }
                return jArr;
            }
            throw new g("size invalid: " + a4);
        }
        throw new g("type mismatch.");
    }

    private float[] h(int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        if (aVar.f59750a == 9) {
            int a4 = a(0, 0, true);
            if (a4 >= 0) {
                float[] fArr = new float[a4];
                for (int i4 = 0; i4 < a4; i4++) {
                    fArr[i4] = a(fArr[0], 0, true);
                }
                return fArr;
            }
            throw new g("size invalid: " + a4);
        }
        throw new g("type mismatch.");
    }

    private double[] i(int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        if (aVar.f59750a == 9) {
            int a4 = a(0, 0, true);
            if (a4 >= 0) {
                double[] dArr = new double[a4];
                for (int i4 = 0; i4 < a4; i4++) {
                    dArr[i4] = a(dArr[0], 0, true);
                }
                return dArr;
            }
            throw new g("size invalid: " + a4);
        }
        throw new g("type mismatch.");
    }

    public final void a(byte[] bArr) {
        ByteBuffer byteBuffer = this.f59748a;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        this.f59748a = ByteBuffer.wrap(bArr);
    }

    public final String b(int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        byte b4 = aVar.f59750a;
        if (b4 == 6) {
            int i4 = this.f59748a.get();
            if (i4 < 0) {
                i4 += 256;
            }
            byte[] bArr = new byte[i4];
            this.f59748a.get(bArr);
            try {
                return new String(bArr, this.f59749b);
            } catch (UnsupportedEncodingException unused) {
                return new String(bArr);
            }
        } else if (b4 == 7) {
            int i5 = this.f59748a.getInt();
            if (i5 <= 104857600 && i5 >= 0) {
                byte[] bArr2 = new byte[i5];
                this.f59748a.get(bArr2);
                try {
                    return new String(bArr2, this.f59749b);
                } catch (UnsupportedEncodingException unused2) {
                    return new String(bArr2);
                }
            }
            throw new g("String too long: " + i5);
        } else {
            throw new g("type mismatch.");
        }
    }

    public final byte[] c(int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        byte b4 = aVar.f59750a;
        if (b4 == 9) {
            int a4 = a(0, 0, true);
            if (a4 >= 0) {
                byte[] bArr = new byte[a4];
                for (int i4 = 0; i4 < a4; i4++) {
                    bArr[i4] = a(bArr[0], 0, true);
                }
                return bArr;
            }
            throw new g("size invalid: " + a4);
        } else if (b4 == 13) {
            a aVar2 = new a();
            a(aVar2, this.f59748a);
            if (aVar2.f59750a == 0) {
                int a5 = a(0, 0, true);
                if (a5 >= 0) {
                    byte[] bArr2 = new byte[a5];
                    this.f59748a.get(bArr2);
                    return bArr2;
                }
                throw new g("invalid size, tag: " + i2 + ", type: " + ((int) aVar.f59750a) + ", " + ((int) aVar2.f59750a) + ", size: " + a5);
            }
            throw new g("type mismatch, tag: " + i2 + ", type: " + ((int) aVar.f59750a) + ", " + ((int) aVar2.f59750a));
        } else {
            throw new g("type mismatch.");
        }
    }

    public i(byte[] bArr) {
        this.f59748a = ByteBuffer.wrap(bArr);
    }

    private static int a(a aVar, ByteBuffer byteBuffer) {
        byte b4 = byteBuffer.get();
        aVar.f59750a = (byte) (b4 & 15);
        int i2 = (b4 & 240) >> 4;
        aVar.f59751b = i2;
        if (i2 == 15) {
            aVar.f59751b = byteBuffer.get();
            return 2;
        }
        return 1;
    }

    public i(byte[] bArr, int i2) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        this.f59748a = wrap;
        wrap.position(4);
    }

    private boolean a(int i2) {
        int i4;
        try {
            a aVar = new a();
            while (true) {
                int a4 = a(aVar, this.f59748a.duplicate());
                i4 = aVar.f59751b;
                if (i2 <= i4 || aVar.f59750a == 11) {
                    break;
                }
                ByteBuffer byteBuffer = this.f59748a;
                byteBuffer.position(byteBuffer.position() + a4);
                a(aVar.f59750a);
            }
        } catch (g | BufferUnderflowException unused) {
        }
        return i2 == i4;
    }

    private void a() {
        a aVar = new a();
        do {
            a(aVar, this.f59748a);
            a(aVar.f59750a);
        } while (aVar.f59750a != 11);
    }

    private void a(byte b4) {
        int i2 = 0;
        switch (b4) {
            case 0:
                ByteBuffer byteBuffer = this.f59748a;
                byteBuffer.position(byteBuffer.position() + 1);
                return;
            case 1:
                ByteBuffer byteBuffer2 = this.f59748a;
                byteBuffer2.position(byteBuffer2.position() + 2);
                return;
            case 2:
                ByteBuffer byteBuffer3 = this.f59748a;
                byteBuffer3.position(byteBuffer3.position() + 4);
                return;
            case 3:
                ByteBuffer byteBuffer4 = this.f59748a;
                byteBuffer4.position(byteBuffer4.position() + 8);
                return;
            case 4:
                ByteBuffer byteBuffer5 = this.f59748a;
                byteBuffer5.position(byteBuffer5.position() + 4);
                return;
            case 5:
                ByteBuffer byteBuffer6 = this.f59748a;
                byteBuffer6.position(byteBuffer6.position() + 8);
                return;
            case 6:
                int i4 = this.f59748a.get();
                if (i4 < 0) {
                    i4 += 256;
                }
                ByteBuffer byteBuffer7 = this.f59748a;
                byteBuffer7.position(byteBuffer7.position() + i4);
                return;
            case 7:
                int i5 = this.f59748a.getInt();
                ByteBuffer byteBuffer8 = this.f59748a;
                byteBuffer8.position(byteBuffer8.position() + i5);
                return;
            case 8:
                int a4 = a(0, 0, true);
                while (i2 < (a4 << 1)) {
                    a aVar = new a();
                    a(aVar, this.f59748a);
                    a(aVar.f59750a);
                    i2++;
                }
                return;
            case 9:
                int a5 = a(0, 0, true);
                while (i2 < a5) {
                    a aVar2 = new a();
                    a(aVar2, this.f59748a);
                    a(aVar2.f59750a);
                    i2++;
                }
                return;
            case 10:
                a();
                return;
            case 11:
            case 12:
                return;
            case 13:
                a aVar3 = new a();
                a(aVar3, this.f59748a);
                if (aVar3.f59750a == 0) {
                    int a6 = a(0, 0, true);
                    ByteBuffer byteBuffer9 = this.f59748a;
                    byteBuffer9.position(byteBuffer9.position() + a6);
                    return;
                }
                throw new g("skipField with invalid type, type value: " + ((int) b4) + ", " + ((int) aVar3.f59750a));
            default:
                throw new g("invalid type.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> T[] b(T t3, int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        if (aVar.f59750a == 9) {
            int a4 = a(0, 0, true);
            if (a4 >= 0) {
                T[] tArr = (T[]) ((Object[]) Array.newInstance(t3.getClass(), a4));
                for (int i4 = 0; i4 < a4; i4++) {
                    tArr[i4] = a((i) t3, 0, true);
                }
                return tArr;
            }
            throw new g("size invalid: " + a4);
        }
        throw new g("type mismatch.");
    }

    public final boolean a(int i2, boolean z3) {
        return a((byte) 0, i2, z3) != 0;
    }

    public final byte a(byte b4, int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return b4;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        byte b5 = aVar.f59750a;
        if (b5 != 0) {
            if (b5 == 12) {
                return (byte) 0;
            }
            throw new g("type mismatch.");
        }
        return this.f59748a.get();
    }

    public final short a(short s3, int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return s3;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        byte b4 = aVar.f59750a;
        if (b4 != 0) {
            if (b4 != 1) {
                if (b4 == 12) {
                    return (short) 0;
                }
                throw new g("type mismatch.");
            }
            return this.f59748a.getShort();
        }
        return this.f59748a.get();
    }

    public final int a(int i2, int i4, boolean z3) {
        if (!a(i4)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return i2;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        byte b4 = aVar.f59750a;
        if (b4 != 0) {
            if (b4 != 1) {
                if (b4 != 2) {
                    if (b4 == 12) {
                        return 0;
                    }
                    throw new g("type mismatch.");
                }
                return this.f59748a.getInt();
            }
            return this.f59748a.getShort();
        }
        return this.f59748a.get();
    }

    public final long a(long j4, int i2, boolean z3) {
        int i4;
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return j4;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        byte b4 = aVar.f59750a;
        if (b4 == 0) {
            i4 = this.f59748a.get();
        } else if (b4 == 1) {
            i4 = this.f59748a.getShort();
        } else if (b4 != 2) {
            if (b4 != 3) {
                if (b4 == 12) {
                    return 0L;
                }
                throw new g("type mismatch.");
            }
            return this.f59748a.getLong();
        } else {
            i4 = this.f59748a.getInt();
        }
        return i4;
    }

    private float a(float f4, int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return f4;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        byte b4 = aVar.f59750a;
        if (b4 != 4) {
            if (b4 == 12) {
                return 0.0f;
            }
            throw new g("type mismatch.");
        }
        return this.f59748a.getFloat();
    }

    private double a(double d4, int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return d4;
        }
        a aVar = new a();
        a(aVar, this.f59748a);
        byte b4 = aVar.f59750a;
        if (b4 != 4) {
            if (b4 != 5) {
                if (b4 == 12) {
                    return 0.0d;
                }
                throw new g("type mismatch.");
            }
            return this.f59748a.getDouble();
        }
        return this.f59748a.getFloat();
    }

    public final <K, V> HashMap<K, V> a(Map<K, V> map, int i2, boolean z3) {
        return (HashMap) a(new HashMap(), map, i2, z3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> Map<K, V> a(Map<K, V> map, Map<K, V> map2, int i2, boolean z3) {
        if (map2 != null && !map2.isEmpty()) {
            Map.Entry<K, V> next = map2.entrySet().iterator().next();
            K key = next.getKey();
            V value = next.getValue();
            if (a(i2)) {
                a aVar = new a();
                a(aVar, this.f59748a);
                if (aVar.f59750a == 8) {
                    int a4 = a(0, 0, true);
                    if (a4 < 0) {
                        throw new g("size invalid: " + a4);
                    }
                    for (int i4 = 0; i4 < a4; i4++) {
                        map.put(a((i) key, 0, true), a((i) value, 1, true));
                    }
                } else {
                    throw new g("type mismatch.");
                }
            } else if (z3) {
                throw new g("require field not exist.");
            }
            return map;
        }
        return new HashMap();
    }

    private <T> T[] a(T[] tArr, int i2, boolean z3) {
        if (tArr != null && tArr.length != 0) {
            return (T[]) b(tArr[0], i2, z3);
        }
        throw new g("unable to get type of key and value.");
    }

    public final k a(k kVar, int i2, boolean z3) {
        if (!a(i2)) {
            if (z3) {
                throw new g("require field not exist.");
            }
            return null;
        }
        try {
            k kVar2 = (k) kVar.getClass().newInstance();
            a aVar = new a();
            a(aVar, this.f59748a);
            if (aVar.f59750a == 10) {
                kVar2.a(this);
                a();
                return kVar2;
            }
            throw new g("type mismatch.");
        } catch (Exception e4) {
            throw new g(e4.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> Object a(T t3, int i2, boolean z3) {
        if (t3 instanceof Byte) {
            return Byte.valueOf(a((byte) 0, i2, z3));
        }
        if (t3 instanceof Boolean) {
            return Boolean.valueOf(a((byte) 0, i2, z3) != 0);
        } else if (t3 instanceof Short) {
            return Short.valueOf(a((short) 0, i2, z3));
        } else {
            if (t3 instanceof Integer) {
                return Integer.valueOf(a(0, i2, z3));
            }
            if (t3 instanceof Long) {
                return Long.valueOf(a(0L, i2, z3));
            }
            if (t3 instanceof Float) {
                return Float.valueOf(a(0.0f, i2, z3));
            }
            if (t3 instanceof Double) {
                return Double.valueOf(a(0.0d, i2, z3));
            }
            if (t3 instanceof String) {
                return String.valueOf(b(i2, z3));
            }
            if (t3 instanceof Map) {
                return (HashMap) a(new HashMap(), (Map) t3, i2, z3);
            } else if (t3 instanceof List) {
                List list = (List) t3;
                if (list == null || list.isEmpty()) {
                    return new ArrayList();
                }
                Object[] b4 = b(list.get(0), i2, z3);
                if (b4 == null) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj : b4) {
                    arrayList.add(obj);
                }
                return arrayList;
            } else if (t3 instanceof k) {
                return a((k) t3, i2, z3);
            } else {
                if (t3.getClass().isArray()) {
                    if (!(t3 instanceof byte[]) && !(t3 instanceof Byte[])) {
                        if (t3 instanceof boolean[]) {
                            return d(i2, z3);
                        }
                        if (t3 instanceof short[]) {
                            return e(i2, z3);
                        }
                        if (t3 instanceof int[]) {
                            return f(i2, z3);
                        }
                        if (t3 instanceof long[]) {
                            return g(i2, z3);
                        }
                        if (t3 instanceof float[]) {
                            return h(i2, z3);
                        }
                        if (t3 instanceof double[]) {
                            return i(i2, z3);
                        }
                        return a((Object[]) t3, i2, z3);
                    }
                    return c(i2, z3);
                }
                throw new g("read object error: unsupport type.");
            }
        }
    }

    public final int a(String str) {
        this.f59749b = str;
        return 0;
    }
}
