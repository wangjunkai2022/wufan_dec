package com.umeng.analytics.pro;

import androidx.core.app.FrameMetricsAggregator;
import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
/* compiled from: TBaseHelper.java */
/* loaded from: classes4.dex */
public final class as {

    /* renamed from: a  reason: collision with root package name */
    private static final Comparator f60506a = new a();

    /* compiled from: TBaseHelper.java */
    /* loaded from: classes4.dex */
    private static class a implements Comparator {
        private a() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == null && obj2 == null) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            if (obj instanceof List) {
                return as.a((List) obj, (List) obj2);
            }
            if (obj instanceof Set) {
                return as.a((Set) obj, (Set) obj2);
            }
            if (obj instanceof Map) {
                return as.a((Map) obj, (Map) obj2);
            }
            if (obj instanceof byte[]) {
                return as.a((byte[]) obj, (byte[]) obj2);
            }
            return as.a((Comparable) obj, (Comparable) obj2);
        }
    }

    private as() {
    }

    public static int a(byte b4, byte b5) {
        if (b4 < b5) {
            return -1;
        }
        return b5 < b4 ? 1 : 0;
    }

    public static int a(double d4, double d5) {
        if (d4 < d5) {
            return -1;
        }
        return d5 < d4 ? 1 : 0;
    }

    public static int a(int i2, int i4) {
        if (i2 < i4) {
            return -1;
        }
        return i4 < i2 ? 1 : 0;
    }

    public static int a(long j4, long j5) {
        if (j4 < j5) {
            return -1;
        }
        return j5 < j4 ? 1 : 0;
    }

    public static int a(Object obj, Object obj2) {
        if (obj instanceof Comparable) {
            return a((Comparable) obj, (Comparable) obj2);
        }
        if (obj instanceof List) {
            return a((List) obj, (List) obj2);
        }
        if (obj instanceof Set) {
            return a((Set) obj, (Set) obj2);
        }
        if (obj instanceof Map) {
            return a((Map) obj, (Map) obj2);
        }
        if (obj instanceof byte[]) {
            return a((byte[]) obj, (byte[]) obj2);
        }
        throw new IllegalArgumentException("Cannot compare objects of type " + obj.getClass());
    }

    public static int a(short s3, short s4) {
        if (s3 < s4) {
            return -1;
        }
        return s4 < s3 ? 1 : 0;
    }

    public static boolean b(ByteBuffer byteBuffer) {
        return byteBuffer.hasArray() && byteBuffer.position() == 0 && byteBuffer.arrayOffset() == 0 && byteBuffer.remaining() == byteBuffer.capacity();
    }

    public static ByteBuffer c(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        return b(byteBuffer) ? byteBuffer : ByteBuffer.wrap(a(byteBuffer));
    }

    public static ByteBuffer d(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        ByteBuffer wrap = ByteBuffer.wrap(new byte[byteBuffer.remaining()]);
        if (byteBuffer.hasArray()) {
            System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), wrap.array(), 0, byteBuffer.remaining());
        } else {
            byteBuffer.slice().get(wrap.array());
        }
        return wrap;
    }

    public static int a(boolean z3, boolean z4) {
        return Boolean.valueOf(z3).compareTo(Boolean.valueOf(z4));
    }

    public static int a(String str, String str2) {
        return str.compareTo(str2);
    }

    public static int a(byte[] bArr, byte[] bArr2) {
        int a4 = a(bArr.length, bArr2.length);
        if (a4 != 0) {
            return a4;
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int a5 = a(bArr[i2], bArr2[i2]);
            if (a5 != 0) {
                return a5;
            }
        }
        return 0;
    }

    public static int a(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    public static int a(List list, List list2) {
        int a4 = a(list.size(), list2.size());
        if (a4 != 0) {
            return a4;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            int compare = f60506a.compare(list.get(i2), list2.get(i2));
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    public static int a(Set set, Set set2) {
        int a4 = a(set.size(), set2.size());
        if (a4 != 0) {
            return a4;
        }
        Comparator comparator = f60506a;
        TreeSet treeSet = new TreeSet(comparator);
        treeSet.addAll(set);
        TreeSet treeSet2 = new TreeSet(comparator);
        treeSet2.addAll(set2);
        Iterator it2 = treeSet.iterator();
        Iterator it3 = treeSet2.iterator();
        while (it2.hasNext() && it3.hasNext()) {
            int compare = f60506a.compare(it2.next(), it3.next());
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    public static int a(Map map, Map map2) {
        int a4 = a(map.size(), map2.size());
        if (a4 != 0) {
            return a4;
        }
        Comparator comparator = f60506a;
        TreeMap treeMap = new TreeMap(comparator);
        treeMap.putAll(map);
        Iterator it2 = treeMap.entrySet().iterator();
        TreeMap treeMap2 = new TreeMap(comparator);
        treeMap2.putAll(map2);
        Iterator it3 = treeMap2.entrySet().iterator();
        while (it2.hasNext() && it3.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            Map.Entry entry2 = (Map.Entry) it3.next();
            Comparator comparator2 = f60506a;
            int compare = comparator2.compare(entry.getKey(), entry2.getKey());
            if (compare != 0) {
                return compare;
            }
            int compare2 = comparator2.compare(entry.getValue(), entry2.getValue());
            if (compare2 != 0) {
                return compare2;
            }
        }
        return 0;
    }

    public static void a(ByteBuffer byteBuffer, StringBuilder sb) {
        byte[] array = byteBuffer.array();
        int arrayOffset = byteBuffer.arrayOffset();
        int position = byteBuffer.position() + arrayOffset;
        int limit = arrayOffset + byteBuffer.limit();
        int i2 = limit - position > 128 ? position + 128 : limit;
        for (int i4 = position; i4 < i2; i4++) {
            if (i4 > position) {
                sb.append(" ");
            }
            sb.append(a(array[i4]));
        }
        if (limit != i2) {
            sb.append("...");
        }
    }

    public static String a(byte b4) {
        return Integer.toHexString((b4 | 256) & FrameMetricsAggregator.EVERY_DURATION).toUpperCase().substring(1);
    }

    public static byte[] a(ByteBuffer byteBuffer) {
        if (b(byteBuffer)) {
            return byteBuffer.array();
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        a(byteBuffer, bArr, 0);
        return bArr;
    }

    public static int a(ByteBuffer byteBuffer, byte[] bArr, int i2) {
        int remaining = byteBuffer.remaining();
        System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), bArr, i2, remaining);
        return remaining;
    }

    public static byte[] a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
