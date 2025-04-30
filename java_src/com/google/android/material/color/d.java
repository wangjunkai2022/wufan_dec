package com.google.android.material.color;

import android.content.Context;
import android.util.Pair;
import androidx.annotation.ColorInt;
import io.netty.handler.codec.http2.Http2CodecUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ColorResourcesTableCreator.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final short f14504a = 2;

    /* renamed from: b  reason: collision with root package name */
    private static final short f14505b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final short f14506c = 512;

    /* renamed from: d  reason: collision with root package name */
    private static final short f14507d = 513;

    /* renamed from: e  reason: collision with root package name */
    private static final short f14508e = 514;

    /* renamed from: f  reason: collision with root package name */
    private static final byte f14509f = 1;

    /* renamed from: g  reason: collision with root package name */
    private static final byte f14510g = Byte.MAX_VALUE;

    /* renamed from: h  reason: collision with root package name */
    private static final String f14511h = "color";

    /* renamed from: i  reason: collision with root package name */
    private static byte f14512i;

    /* renamed from: j  reason: collision with root package name */
    private static final C0106d f14513j = new C0106d(1, q.a.f73954a);

    /* renamed from: k  reason: collision with root package name */
    private static final Comparator<b> f14514k = new a();

    /* compiled from: ColorResourcesTableCreator.java */
    /* loaded from: classes2.dex */
    class a implements Comparator<b> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(b bVar, b bVar2) {
            return bVar.f14517c - bVar2.f14517c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ColorResourcesTableCreator.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final byte f14515a;

        /* renamed from: b  reason: collision with root package name */
        private final byte f14516b;

        /* renamed from: c  reason: collision with root package name */
        private final short f14517c;

        /* renamed from: d  reason: collision with root package name */
        private final String f14518d;
        @ColorInt

        /* renamed from: e  reason: collision with root package name */
        private final int f14519e;

        b(int i2, String str, int i4) {
            this.f14518d = str;
            this.f14519e = i4;
            this.f14517c = (short) (65535 & i2);
            this.f14516b = (byte) ((i2 >> 16) & 255);
            this.f14515a = (byte) ((i2 >> 24) & 255);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ColorResourcesTableCreator.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: f  reason: collision with root package name */
        private static final short f14520f = 288;

        /* renamed from: g  reason: collision with root package name */
        private static final int f14521g = 128;

        /* renamed from: a  reason: collision with root package name */
        private final e f14522a;

        /* renamed from: b  reason: collision with root package name */
        private final C0106d f14523b;

        /* renamed from: c  reason: collision with root package name */
        private final h f14524c = new h(false, "?1", "?2", "?3", "?4", "?5", "color");

        /* renamed from: d  reason: collision with root package name */
        private final h f14525d;

        /* renamed from: e  reason: collision with root package name */
        private final k f14526e;

        c(C0106d c0106d, List<b> list) {
            this.f14523b = c0106d;
            String[] strArr = new String[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                strArr[i2] = list.get(i2).f14518d;
            }
            this.f14525d = new h(true, strArr);
            this.f14526e = new k(list);
            this.f14522a = new e(d.f14506c, f14520f, a());
        }

        int a() {
            return this.f14524c.a() + 288 + this.f14525d.a() + this.f14526e.b();
        }

        void b(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f14522a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(d.j(this.f14523b.f14527a));
            char[] charArray = this.f14523b.f14528b.toCharArray();
            for (int i2 = 0; i2 < 128; i2++) {
                if (i2 < charArray.length) {
                    byteArrayOutputStream.write(d.h(charArray[i2]));
                } else {
                    byteArrayOutputStream.write(d.h((char) 0));
                }
            }
            byteArrayOutputStream.write(d.j(288));
            byteArrayOutputStream.write(d.j(0));
            byteArrayOutputStream.write(d.j(this.f14524c.a() + 288));
            byteArrayOutputStream.write(d.j(0));
            byteArrayOutputStream.write(d.j(0));
            this.f14524c.c(byteArrayOutputStream);
            this.f14525d.c(byteArrayOutputStream);
            this.f14526e.c(byteArrayOutputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ColorResourcesTableCreator.java */
    /* renamed from: com.google.android.material.color.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0106d {

        /* renamed from: a  reason: collision with root package name */
        private final int f14527a;

        /* renamed from: b  reason: collision with root package name */
        private final String f14528b;

        C0106d(int i2, String str) {
            this.f14527a = i2;
            this.f14528b = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ColorResourcesTableCreator.java */
    /* loaded from: classes2.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private final short f14529a;

        /* renamed from: b  reason: collision with root package name */
        private final short f14530b;

        /* renamed from: c  reason: collision with root package name */
        private final int f14531c;

        e(short s3, short s4, int i2) {
            this.f14529a = s3;
            this.f14530b = s4;
            this.f14531c = i2;
        }

        void a(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(d.k(this.f14529a));
            byteArrayOutputStream.write(d.k(this.f14530b));
            byteArrayOutputStream.write(d.j(this.f14531c));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ColorResourcesTableCreator.java */
    /* loaded from: classes2.dex */
    public static class f {

        /* renamed from: c  reason: collision with root package name */
        private static final short f14532c = 8;

        /* renamed from: d  reason: collision with root package name */
        private static final short f14533d = 2;

        /* renamed from: e  reason: collision with root package name */
        private static final short f14534e = 8;

        /* renamed from: f  reason: collision with root package name */
        private static final byte f14535f = 28;

        /* renamed from: g  reason: collision with root package name */
        private static final int f14536g = 16;

        /* renamed from: a  reason: collision with root package name */
        private final int f14537a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14538b;

        f(int i2, @ColorInt int i4) {
            this.f14537a = i2;
            this.f14538b = i4;
        }

        void a(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(d.k((short) 8));
            byteArrayOutputStream.write(d.k((short) 2));
            byteArrayOutputStream.write(d.j(this.f14537a));
            byteArrayOutputStream.write(d.k((short) 8));
            byteArrayOutputStream.write(new byte[]{0, 28});
            byteArrayOutputStream.write(d.j(this.f14538b));
        }
    }

    /* compiled from: ColorResourcesTableCreator.java */
    /* loaded from: classes2.dex */
    private static class g {

        /* renamed from: e  reason: collision with root package name */
        private static final short f14539e = 12;

        /* renamed from: a  reason: collision with root package name */
        private final e f14540a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14541b;

        /* renamed from: d  reason: collision with root package name */
        private final List<c> f14543d = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final h f14542c = new h(new String[0]);

        g(Map<C0106d, List<b>> map) {
            this.f14541b = map.size();
            for (Map.Entry<C0106d, List<b>> entry : map.entrySet()) {
                List<b> value = entry.getValue();
                Collections.sort(value, d.f14514k);
                this.f14543d.add(new c(entry.getKey(), value));
            }
            this.f14540a = new e((short) 2, f14539e, a());
        }

        private int a() {
            int i2 = 0;
            for (c cVar : this.f14543d) {
                i2 += cVar.a();
            }
            return this.f14542c.a() + 12 + i2;
        }

        void b(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f14540a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(d.j(this.f14541b));
            this.f14542c.c(byteArrayOutputStream);
            for (c cVar : this.f14543d) {
                cVar.b(byteArrayOutputStream);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ColorResourcesTableCreator.java */
    /* loaded from: classes2.dex */
    public static class h {

        /* renamed from: m  reason: collision with root package name */
        private static final short f14544m = 28;

        /* renamed from: n  reason: collision with root package name */
        private static final int f14545n = 256;

        /* renamed from: o  reason: collision with root package name */
        private static final int f14546o = -1;

        /* renamed from: a  reason: collision with root package name */
        private final e f14547a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14548b;

        /* renamed from: c  reason: collision with root package name */
        private final int f14549c;

        /* renamed from: d  reason: collision with root package name */
        private final int f14550d;

        /* renamed from: e  reason: collision with root package name */
        private final int f14551e;

        /* renamed from: f  reason: collision with root package name */
        private final List<Integer> f14552f;

        /* renamed from: g  reason: collision with root package name */
        private final List<Integer> f14553g;

        /* renamed from: h  reason: collision with root package name */
        private final List<byte[]> f14554h;

        /* renamed from: i  reason: collision with root package name */
        private final List<List<i>> f14555i;

        /* renamed from: j  reason: collision with root package name */
        private final boolean f14556j;

        /* renamed from: k  reason: collision with root package name */
        private final int f14557k;

        /* renamed from: l  reason: collision with root package name */
        private final int f14558l;

        h(String... strArr) {
            this(false, strArr);
        }

        private Pair<byte[], List<i>> b(String str) {
            return new Pair<>(this.f14556j ? d.m(str) : d.l(str), Collections.emptyList());
        }

        int a() {
            return this.f14558l;
        }

        void c(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f14547a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(d.j(this.f14548b));
            byteArrayOutputStream.write(d.j(this.f14549c));
            byteArrayOutputStream.write(d.j(this.f14556j ? 256 : 0));
            byteArrayOutputStream.write(d.j(this.f14550d));
            byteArrayOutputStream.write(d.j(this.f14551e));
            for (Integer num : this.f14552f) {
                byteArrayOutputStream.write(d.j(num.intValue()));
            }
            for (Integer num2 : this.f14553g) {
                byteArrayOutputStream.write(d.j(num2.intValue()));
            }
            for (byte[] bArr : this.f14554h) {
                byteArrayOutputStream.write(bArr);
            }
            int i2 = this.f14557k;
            if (i2 > 0) {
                byteArrayOutputStream.write(new byte[i2]);
            }
            for (List<i> list : this.f14555i) {
                for (i iVar : list) {
                    iVar.b(byteArrayOutputStream);
                }
                byteArrayOutputStream.write(d.j(-1));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        h(boolean z3, String... strArr) {
            this.f14552f = new ArrayList();
            this.f14553g = new ArrayList();
            this.f14554h = new ArrayList();
            this.f14555i = new ArrayList();
            this.f14556j = z3;
            int i2 = 0;
            for (String str : strArr) {
                Pair<byte[], List<i>> b4 = b(str);
                this.f14552f.add(Integer.valueOf(i2));
                Object obj = b4.first;
                i2 += ((byte[]) obj).length;
                this.f14554h.add(obj);
                this.f14555i.add(b4.second);
            }
            int i4 = 0;
            for (List<i> list : this.f14555i) {
                for (i iVar : list) {
                    this.f14552f.add(Integer.valueOf(i2));
                    i2 += iVar.f14559a.length;
                    this.f14554h.add(iVar.f14559a);
                }
                this.f14553g.add(Integer.valueOf(i4));
                i4 += (list.size() * 12) + 4;
            }
            int i5 = i2 % 4;
            int i6 = i5 == 0 ? 0 : 4 - i5;
            this.f14557k = i6;
            int size = this.f14554h.size();
            this.f14548b = size;
            this.f14549c = this.f14554h.size() - strArr.length;
            boolean z4 = this.f14554h.size() - strArr.length > 0;
            if (!z4) {
                this.f14553g.clear();
                this.f14555i.clear();
            }
            int size2 = (size * 4) + 28 + (this.f14553g.size() * 4);
            this.f14550d = size2;
            int i7 = i2 + i6;
            this.f14551e = z4 ? size2 + i7 : 0;
            int i8 = size2 + i7 + (z4 ? i4 : 0);
            this.f14558l = i8;
            this.f14547a = new e((short) 1, f14544m, i8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ColorResourcesTableCreator.java */
    /* loaded from: classes2.dex */
    public static class i {

        /* renamed from: a  reason: collision with root package name */
        private byte[] f14559a;

        /* renamed from: b  reason: collision with root package name */
        private int f14560b;

        /* renamed from: c  reason: collision with root package name */
        private int f14561c;

        /* renamed from: d  reason: collision with root package name */
        private int f14562d;

        private i() {
        }

        void b(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(d.j(this.f14560b));
            byteArrayOutputStream.write(d.j(this.f14561c));
            byteArrayOutputStream.write(d.j(this.f14562d));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ColorResourcesTableCreator.java */
    /* loaded from: classes2.dex */
    public static class j {

        /* renamed from: f  reason: collision with root package name */
        private static final int f14563f = -1;

        /* renamed from: g  reason: collision with root package name */
        private static final short f14564g = 84;

        /* renamed from: h  reason: collision with root package name */
        private static final byte f14565h = 64;

        /* renamed from: a  reason: collision with root package name */
        private final e f14566a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14567b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f14568c;

        /* renamed from: d  reason: collision with root package name */
        private final int[] f14569d;

        /* renamed from: e  reason: collision with root package name */
        private final f[] f14570e;

        j(List<b> list, Set<Short> set, int i2) {
            byte[] bArr = new byte[64];
            this.f14568c = bArr;
            this.f14567b = i2;
            bArr[0] = f14565h;
            this.f14570e = new f[list.size()];
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14570e[i4] = new f(i4, list.get(i4).f14519e);
            }
            this.f14569d = new int[i2];
            int i5 = 0;
            for (short s3 = 0; s3 < i2; s3 = (short) (s3 + 1)) {
                if (set.contains(Short.valueOf(s3))) {
                    this.f14569d[s3] = i5;
                    i5 += 16;
                } else {
                    this.f14569d[s3] = -1;
                }
            }
            this.f14566a = new e(d.f14507d, f14564g, a());
        }

        private int b() {
            return c() + 84;
        }

        private int c() {
            return this.f14569d.length * 4;
        }

        int a() {
            return b() + (this.f14570e.length * 16);
        }

        void d(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f14566a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{d.f14512i, 0, 0, 0});
            byteArrayOutputStream.write(d.j(this.f14567b));
            byteArrayOutputStream.write(d.j(b()));
            byteArrayOutputStream.write(this.f14568c);
            for (int i2 : this.f14569d) {
                byteArrayOutputStream.write(d.j(i2));
            }
            for (f fVar : this.f14570e) {
                fVar.a(byteArrayOutputStream);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ColorResourcesTableCreator.java */
    /* loaded from: classes2.dex */
    public static class k {

        /* renamed from: e  reason: collision with root package name */
        private static final short f14571e = 16;

        /* renamed from: f  reason: collision with root package name */
        private static final int f14572f = 1073741824;

        /* renamed from: a  reason: collision with root package name */
        private final e f14573a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14574b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f14575c;

        /* renamed from: d  reason: collision with root package name */
        private final j f14576d;

        k(List<b> list) {
            this.f14574b = list.get(list.size() - 1).f14517c + 1;
            HashSet hashSet = new HashSet();
            for (b bVar : list) {
                hashSet.add(Short.valueOf(bVar.f14517c));
            }
            this.f14575c = new int[this.f14574b];
            for (short s3 = 0; s3 < this.f14574b; s3 = (short) (s3 + 1)) {
                if (hashSet.contains(Short.valueOf(s3))) {
                    this.f14575c[s3] = 1073741824;
                }
            }
            this.f14573a = new e(d.f14508e, (short) 16, a());
            this.f14576d = new j(list, hashSet, this.f14574b);
        }

        private int a() {
            return (this.f14574b * 4) + 16;
        }

        int b() {
            return a() + this.f14576d.a();
        }

        void c(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f14573a.a(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{d.f14512i, 0, 0, 0});
            byteArrayOutputStream.write(d.j(this.f14574b));
            for (int i2 : this.f14575c) {
                byteArrayOutputStream.write(d.j(i2));
            }
            this.f14576d.d(byteArrayOutputStream);
        }
    }

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] h(char c4) {
        return new byte[]{(byte) (c4 & 255), (byte) ((c4 >> '\b') & 255)};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] i(Context context, Map<Integer, Integer> map) throws IOException {
        C0106d c0106d;
        if (!map.entrySet().isEmpty()) {
            C0106d c0106d2 = new C0106d(127, context.getPackageName());
            HashMap hashMap = new HashMap();
            b bVar = null;
            for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
                b bVar2 = new b(entry.getKey().intValue(), context.getResources().getResourceName(entry.getKey().intValue()), entry.getValue().intValue());
                if (context.getResources().getResourceTypeName(entry.getKey().intValue()).equals("color")) {
                    if (bVar2.f14515a != 1) {
                        if (bVar2.f14515a != Byte.MAX_VALUE) {
                            throw new IllegalArgumentException("Not supported with unknown package id: " + ((int) bVar2.f14515a));
                        }
                        c0106d = c0106d2;
                    } else {
                        c0106d = f14513j;
                    }
                    if (!hashMap.containsKey(c0106d)) {
                        hashMap.put(c0106d, new ArrayList());
                    }
                    ((List) hashMap.get(c0106d)).add(bVar2);
                    bVar = bVar2;
                } else {
                    throw new IllegalArgumentException("Non color resource found: name=" + bVar2.f14518d + ", typeId=" + Integer.toHexString(bVar2.f14516b & 255));
                }
            }
            byte b4 = bVar.f14516b;
            f14512i = b4;
            if (b4 != 0) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                new g(hashMap).b(byteArrayOutputStream);
                return byteArrayOutputStream.toByteArray();
            }
            throw new IllegalArgumentException("No color resources found for harmonization.");
        }
        throw new IllegalArgumentException("No color resources provided for harmonization.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] j(int i2) {
        return new byte[]{(byte) (i2 & 255), (byte) ((i2 >> 8) & 255), (byte) ((i2 >> 16) & 255), (byte) ((i2 >> 24) & 255)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] k(short s3) {
        return new byte[]{(byte) (s3 & Http2CodecUtil.MAX_UNSIGNED_BYTE), (byte) ((s3 >> 8) & 255)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] l(String str) {
        char[] charArray = str.toCharArray();
        int length = (charArray.length * 2) + 4;
        byte[] bArr = new byte[length];
        byte[] k4 = k((short) charArray.length);
        bArr[0] = k4[0];
        bArr[1] = k4[1];
        for (int i2 = 0; i2 < charArray.length; i2++) {
            byte[] h4 = h(charArray[i2]);
            int i4 = i2 * 2;
            bArr[i4 + 2] = h4[0];
            bArr[i4 + 3] = h4[1];
        }
        bArr[length - 2] = 0;
        bArr[length - 1] = 0;
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] m(String str) {
        byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
        byte length = (byte) bytes.length;
        int length2 = bytes.length + 3;
        byte[] bArr = new byte[length2];
        System.arraycopy(bytes, 0, bArr, 2, length);
        bArr[1] = length;
        bArr[0] = length;
        bArr[length2 - 1] = 0;
        return bArr;
    }
}
