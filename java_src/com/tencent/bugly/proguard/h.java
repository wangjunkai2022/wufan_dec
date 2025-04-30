package com.tencent.bugly.proguard;

import java.util.List;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private StringBuilder f59746a;

    /* renamed from: b  reason: collision with root package name */
    private int f59747b;

    public h(StringBuilder sb, int i2) {
        this.f59747b = 0;
        this.f59746a = sb;
        this.f59747b = i2;
    }

    private void a(String str) {
        for (int i2 = 0; i2 < this.f59747b; i2++) {
            this.f59746a.append('\t');
        }
        if (str != null) {
            StringBuilder sb = this.f59746a;
            sb.append(str);
            sb.append(": ");
        }
    }

    public final h a(boolean z3, String str) {
        a(str);
        StringBuilder sb = this.f59746a;
        sb.append(z3 ? 'T' : 'F');
        sb.append('\n');
        return this;
    }

    public final h a(byte b4, String str) {
        a(str);
        StringBuilder sb = this.f59746a;
        sb.append((int) b4);
        sb.append('\n');
        return this;
    }

    public final h a(short s3, String str) {
        a(str);
        StringBuilder sb = this.f59746a;
        sb.append((int) s3);
        sb.append('\n');
        return this;
    }

    public final h a(int i2, String str) {
        a(str);
        StringBuilder sb = this.f59746a;
        sb.append(i2);
        sb.append('\n');
        return this;
    }

    public final h a(long j4, String str) {
        a(str);
        StringBuilder sb = this.f59746a;
        sb.append(j4);
        sb.append('\n');
        return this;
    }

    public final h a(String str, String str2) {
        a(str2);
        if (str == null) {
            this.f59746a.append("null\n");
        } else {
            StringBuilder sb = this.f59746a;
            sb.append(str);
            sb.append('\n');
        }
        return this;
    }

    public final h a(byte[] bArr, String str) {
        a(str);
        if (bArr == null) {
            this.f59746a.append("null\n");
            return this;
        } else if (bArr.length == 0) {
            StringBuilder sb = this.f59746a;
            sb.append(bArr.length);
            sb.append(", []\n");
            return this;
        } else {
            StringBuilder sb2 = this.f59746a;
            sb2.append(bArr.length);
            sb2.append(", [\n");
            h hVar = new h(this.f59746a, this.f59747b + 1);
            for (byte b4 : bArr) {
                hVar.a(null);
                StringBuilder sb3 = hVar.f59746a;
                sb3.append((int) b4);
                sb3.append('\n');
            }
            a(null);
            StringBuilder sb4 = this.f59746a;
            sb4.append(']');
            sb4.append('\n');
            return this;
        }
    }

    public final <K, V> h a(Map<K, V> map, String str) {
        a(str);
        if (map == null) {
            this.f59746a.append("null\n");
            return this;
        } else if (map.isEmpty()) {
            StringBuilder sb = this.f59746a;
            sb.append(map.size());
            sb.append(", {}\n");
            return this;
        } else {
            StringBuilder sb2 = this.f59746a;
            sb2.append(map.size());
            sb2.append(", {\n");
            h hVar = new h(this.f59746a, this.f59747b + 1);
            h hVar2 = new h(this.f59746a, this.f59747b + 2);
            for (Map.Entry<K, V> entry : map.entrySet()) {
                hVar.a(null);
                StringBuilder sb3 = hVar.f59746a;
                sb3.append('(');
                sb3.append('\n');
                hVar2.a((h) entry.getKey(), (String) null);
                hVar2.a((h) entry.getValue(), (String) null);
                hVar.a(null);
                StringBuilder sb4 = hVar.f59746a;
                sb4.append(')');
                sb4.append('\n');
            }
            a(null);
            StringBuilder sb5 = this.f59746a;
            sb5.append('}');
            sb5.append('\n');
            return this;
        }
    }

    private <T> h a(T[] tArr, String str) {
        a(str);
        if (tArr == null) {
            this.f59746a.append("null\n");
            return this;
        } else if (tArr.length == 0) {
            StringBuilder sb = this.f59746a;
            sb.append(tArr.length);
            sb.append(", []\n");
            return this;
        } else {
            StringBuilder sb2 = this.f59746a;
            sb2.append(tArr.length);
            sb2.append(", [\n");
            h hVar = new h(this.f59746a, this.f59747b + 1);
            for (T t3 : tArr) {
                hVar.a((h) t3, (String) null);
            }
            a(null);
            StringBuilder sb3 = this.f59746a;
            sb3.append(']');
            sb3.append('\n');
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> h a(T t3, String str) {
        if (t3 == null) {
            this.f59746a.append("null\n");
        } else if (t3 instanceof Byte) {
            byte byteValue = ((Byte) t3).byteValue();
            a(str);
            StringBuilder sb = this.f59746a;
            sb.append((int) byteValue);
            sb.append('\n');
        } else if (t3 instanceof Boolean) {
            boolean booleanValue = ((Boolean) t3).booleanValue();
            a(str);
            StringBuilder sb2 = this.f59746a;
            sb2.append(booleanValue ? 'T' : 'F');
            sb2.append('\n');
        } else if (t3 instanceof Short) {
            short shortValue = ((Short) t3).shortValue();
            a(str);
            StringBuilder sb3 = this.f59746a;
            sb3.append((int) shortValue);
            sb3.append('\n');
        } else if (t3 instanceof Integer) {
            int intValue = ((Integer) t3).intValue();
            a(str);
            StringBuilder sb4 = this.f59746a;
            sb4.append(intValue);
            sb4.append('\n');
        } else if (t3 instanceof Long) {
            long longValue = ((Long) t3).longValue();
            a(str);
            StringBuilder sb5 = this.f59746a;
            sb5.append(longValue);
            sb5.append('\n');
        } else if (t3 instanceof Float) {
            float floatValue = ((Float) t3).floatValue();
            a(str);
            StringBuilder sb6 = this.f59746a;
            sb6.append(floatValue);
            sb6.append('\n');
        } else if (t3 instanceof Double) {
            double doubleValue = ((Double) t3).doubleValue();
            a(str);
            StringBuilder sb7 = this.f59746a;
            sb7.append(doubleValue);
            sb7.append('\n');
        } else if (t3 instanceof String) {
            a((String) t3, str);
        } else if (t3 instanceof Map) {
            a((Map) t3, str);
        } else if (t3 instanceof List) {
            a(((List) t3).toArray(), str);
        } else if (t3 instanceof k) {
            a((k) t3, str);
        } else if (t3 instanceof byte[]) {
            a((byte[]) t3, str);
        } else if (t3 instanceof boolean[]) {
            a((h) ((boolean[]) t3), str);
        } else {
            int i2 = 0;
            if (t3 instanceof short[]) {
                short[] sArr = (short[]) t3;
                a(str);
                if (sArr.length == 0) {
                    StringBuilder sb8 = this.f59746a;
                    sb8.append(sArr.length);
                    sb8.append(", []\n");
                } else {
                    StringBuilder sb9 = this.f59746a;
                    sb9.append(sArr.length);
                    sb9.append(", [\n");
                    h hVar = new h(this.f59746a, this.f59747b + 1);
                    int length = sArr.length;
                    while (i2 < length) {
                        short s3 = sArr[i2];
                        hVar.a(null);
                        StringBuilder sb10 = hVar.f59746a;
                        sb10.append((int) s3);
                        sb10.append('\n');
                        i2++;
                    }
                    a(null);
                    StringBuilder sb11 = this.f59746a;
                    sb11.append(']');
                    sb11.append('\n');
                }
            } else if (t3 instanceof int[]) {
                int[] iArr = (int[]) t3;
                a(str);
                if (iArr.length == 0) {
                    StringBuilder sb12 = this.f59746a;
                    sb12.append(iArr.length);
                    sb12.append(", []\n");
                } else {
                    StringBuilder sb13 = this.f59746a;
                    sb13.append(iArr.length);
                    sb13.append(", [\n");
                    h hVar2 = new h(this.f59746a, this.f59747b + 1);
                    int length2 = iArr.length;
                    while (i2 < length2) {
                        int i4 = iArr[i2];
                        hVar2.a(null);
                        StringBuilder sb14 = hVar2.f59746a;
                        sb14.append(i4);
                        sb14.append('\n');
                        i2++;
                    }
                    a(null);
                    StringBuilder sb15 = this.f59746a;
                    sb15.append(']');
                    sb15.append('\n');
                }
            } else if (t3 instanceof long[]) {
                long[] jArr = (long[]) t3;
                a(str);
                if (jArr.length == 0) {
                    StringBuilder sb16 = this.f59746a;
                    sb16.append(jArr.length);
                    sb16.append(", []\n");
                } else {
                    StringBuilder sb17 = this.f59746a;
                    sb17.append(jArr.length);
                    sb17.append(", [\n");
                    h hVar3 = new h(this.f59746a, this.f59747b + 1);
                    int length3 = jArr.length;
                    while (i2 < length3) {
                        long j4 = jArr[i2];
                        hVar3.a(null);
                        StringBuilder sb18 = hVar3.f59746a;
                        sb18.append(j4);
                        sb18.append('\n');
                        i2++;
                    }
                    a(null);
                    StringBuilder sb19 = this.f59746a;
                    sb19.append(']');
                    sb19.append('\n');
                }
            } else if (t3 instanceof float[]) {
                float[] fArr = (float[]) t3;
                a(str);
                if (fArr.length == 0) {
                    StringBuilder sb20 = this.f59746a;
                    sb20.append(fArr.length);
                    sb20.append(", []\n");
                } else {
                    StringBuilder sb21 = this.f59746a;
                    sb21.append(fArr.length);
                    sb21.append(", [\n");
                    h hVar4 = new h(this.f59746a, this.f59747b + 1);
                    int length4 = fArr.length;
                    while (i2 < length4) {
                        float f4 = fArr[i2];
                        hVar4.a(null);
                        StringBuilder sb22 = hVar4.f59746a;
                        sb22.append(f4);
                        sb22.append('\n');
                        i2++;
                    }
                    a(null);
                    StringBuilder sb23 = this.f59746a;
                    sb23.append(']');
                    sb23.append('\n');
                }
            } else if (t3 instanceof double[]) {
                double[] dArr = (double[]) t3;
                a(str);
                if (dArr.length == 0) {
                    StringBuilder sb24 = this.f59746a;
                    sb24.append(dArr.length);
                    sb24.append(", []\n");
                } else {
                    StringBuilder sb25 = this.f59746a;
                    sb25.append(dArr.length);
                    sb25.append(", [\n");
                    h hVar5 = new h(this.f59746a, this.f59747b + 1);
                    int length5 = dArr.length;
                    while (i2 < length5) {
                        double d4 = dArr[i2];
                        hVar5.a(null);
                        StringBuilder sb26 = hVar5.f59746a;
                        sb26.append(d4);
                        sb26.append('\n');
                        i2++;
                    }
                    a(null);
                    StringBuilder sb27 = this.f59746a;
                    sb27.append(']');
                    sb27.append('\n');
                }
            } else if (t3.getClass().isArray()) {
                a((Object[]) t3, str);
            } else {
                throw new b("write object error: unsupport type.");
            }
        }
        return this;
    }

    public final h a(k kVar, String str) {
        a(str);
        StringBuilder sb = this.f59746a;
        sb.append('{');
        sb.append('\n');
        if (kVar == null) {
            StringBuilder sb2 = this.f59746a;
            sb2.append('\t');
            sb2.append("null");
        } else {
            kVar.a(this.f59746a, this.f59747b + 1);
        }
        a(null);
        StringBuilder sb3 = this.f59746a;
        sb3.append('}');
        sb3.append('\n');
        return this;
    }
}
