package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f59752a;

    /* renamed from: b  reason: collision with root package name */
    private String f59753b;

    public j(int i2) {
        this.f59753b = "GBK";
        this.f59752a = ByteBuffer.allocate(i2);
    }

    public final ByteBuffer a() {
        return this.f59752a;
    }

    public final byte[] b() {
        byte[] bArr = new byte[this.f59752a.position()];
        System.arraycopy(this.f59752a.array(), 0, bArr, 0, this.f59752a.position());
        return bArr;
    }

    private void a(int i2) {
        if (this.f59752a.remaining() < i2) {
            ByteBuffer allocate = ByteBuffer.allocate((this.f59752a.capacity() + i2) << 1);
            allocate.put(this.f59752a.array(), 0, this.f59752a.position());
            this.f59752a = allocate;
        }
    }

    private void b(byte b4, int i2) {
        if (i2 < 15) {
            this.f59752a.put((byte) (b4 | (i2 << 4)));
        } else if (i2 < 256) {
            this.f59752a.put((byte) (b4 | 240));
            this.f59752a.put((byte) i2);
        } else {
            throw new b("tag is too large: " + i2);
        }
    }

    public j() {
        this(128);
    }

    public final void a(boolean z3, int i2) {
        a(z3 ? (byte) 1 : (byte) 0, i2);
    }

    public final void a(byte b4, int i2) {
        a(3);
        if (b4 == 0) {
            b((byte) 12, i2);
            return;
        }
        b((byte) 0, i2);
        this.f59752a.put(b4);
    }

    public final void a(short s3, int i2) {
        a(4);
        if (s3 >= -128 && s3 <= 127) {
            a((byte) s3, i2);
            return;
        }
        b((byte) 1, i2);
        this.f59752a.putShort(s3);
    }

    public final void a(int i2, int i4) {
        a(6);
        if (i2 >= -32768 && i2 <= 32767) {
            a((short) i2, i4);
            return;
        }
        b((byte) 2, i4);
        this.f59752a.putInt(i2);
    }

    public final void a(long j4, int i2) {
        a(10);
        if (j4 >= -2147483648L && j4 <= 2147483647L) {
            a((int) j4, i2);
            return;
        }
        b((byte) 3, i2);
        this.f59752a.putLong(j4);
    }

    public final void a(String str, int i2) {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.f59753b);
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        a(bytes.length + 10);
        if (bytes.length > 255) {
            b((byte) 7, i2);
            this.f59752a.putInt(bytes.length);
            this.f59752a.put(bytes);
            return;
        }
        b((byte) 6, i2);
        this.f59752a.put((byte) bytes.length);
        this.f59752a.put(bytes);
    }

    public final <K, V> void a(Map<K, V> map, int i2) {
        a(8);
        b((byte) 8, i2);
        a(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                a(entry.getKey(), 0);
                a(entry.getValue(), 1);
            }
        }
    }

    public final void a(byte[] bArr, int i2) {
        a(bArr.length + 8);
        b((byte) 13, i2);
        b((byte) 0, 0);
        a(bArr.length, 0);
        this.f59752a.put(bArr);
    }

    public final <T> void a(Collection<T> collection, int i2) {
        a(8);
        b((byte) 9, i2);
        a(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            for (T t3 : collection) {
                a(t3, 0);
            }
        }
    }

    public final void a(k kVar, int i2) {
        a(2);
        b((byte) 10, i2);
        kVar.a(this);
        a(2);
        b((byte) 11, 0);
    }

    public final void a(Object obj, int i2) {
        if (obj instanceof Byte) {
            a(((Byte) obj).byteValue(), i2);
        } else if (obj instanceof Boolean) {
            a(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0, i2);
        } else if (obj instanceof Short) {
            a(((Short) obj).shortValue(), i2);
        } else if (obj instanceof Integer) {
            a(((Integer) obj).intValue(), i2);
        } else if (obj instanceof Long) {
            a(((Long) obj).longValue(), i2);
        } else if (obj instanceof Float) {
            float floatValue = ((Float) obj).floatValue();
            a(6);
            b((byte) 4, i2);
            this.f59752a.putFloat(floatValue);
        } else if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            a(10);
            b((byte) 5, i2);
            this.f59752a.putDouble(doubleValue);
        } else if (obj instanceof String) {
            a((String) obj, i2);
        } else if (obj instanceof Map) {
            a((Map) obj, i2);
        } else if (obj instanceof List) {
            a((Collection) ((List) obj), i2);
        } else if (obj instanceof k) {
            a(2);
            b((byte) 10, i2);
            ((k) obj).a(this);
            a(2);
            b((byte) 11, 0);
        } else if (obj instanceof byte[]) {
            a((byte[]) obj, i2);
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            a(8);
            b((byte) 9, i2);
            a(zArr.length, 0);
            for (boolean z3 : zArr) {
                a(z3 ? (byte) 1 : (byte) 0, 0);
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            a(8);
            b((byte) 9, i2);
            a(sArr.length, 0);
            for (short s3 : sArr) {
                a(s3, 0);
            }
        } else if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            a(8);
            b((byte) 9, i2);
            a(iArr.length, 0);
            for (int i4 : iArr) {
                a(i4, 0);
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            a(8);
            b((byte) 9, i2);
            a(jArr.length, 0);
            for (long j4 : jArr) {
                a(j4, 0);
            }
        } else if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            a(8);
            b((byte) 9, i2);
            a(fArr.length, 0);
            for (float f4 : fArr) {
                a(6);
                b((byte) 4, 0);
                this.f59752a.putFloat(f4);
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            a(8);
            b((byte) 9, i2);
            a(dArr.length, 0);
            for (double d4 : dArr) {
                a(10);
                b((byte) 5, 0);
                this.f59752a.putDouble(d4);
            }
        } else if (obj.getClass().isArray()) {
            Object[] objArr = (Object[]) obj;
            a(8);
            b((byte) 9, i2);
            a(objArr.length, 0);
            for (Object obj2 : objArr) {
                a(obj2, 0);
            }
        } else if (obj instanceof Collection) {
            a((Collection) obj, i2);
        } else {
            throw new b("write object error: unsupport type. " + obj.getClass());
        }
    }

    public final int a(String str) {
        this.f59753b = str;
        return 0;
    }
}
