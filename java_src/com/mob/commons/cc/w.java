package com.mob.commons.cc;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.zip.GZIPInputStream;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes4.dex */
public class w {

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        protected ArrayList<Object> f52941a;

        /* renamed from: b  reason: collision with root package name */
        protected DataInputStream f52942b;

        /* renamed from: c  reason: collision with root package name */
        protected int f52943c;

        public <T> T a() throws Throwable {
            return (T) this.f52941a.get(this.f52942b.readShort());
        }

        public int b() {
            return this.f52943c;
        }

        private a(ArrayList<Object> arrayList, DataInputStream dataInputStream, int i2) {
            this.f52941a = arrayList;
            this.f52942b = dataInputStream;
            this.f52943c = i2;
        }

        public void a(x xVar) throws Throwable {
            xVar.f52951b = (String) this.f52941a.get(this.f52942b.readShort());
            xVar.f52952c = this.f52942b.readShort();
        }
    }

    /* loaded from: classes4.dex */
    public static class b extends a {
        @Override // com.mob.commons.cc.w.a
        public <T> T a() throws Throwable {
            return (T) this.f52941a.get(this.f52942b.readInt());
        }

        private b(ArrayList<Object> arrayList, DataInputStream dataInputStream, int i2) {
            super(arrayList, dataInputStream, i2);
        }

        @Override // com.mob.commons.cc.w.a
        public void a(x xVar) throws Throwable {
            xVar.f52951b = (String) this.f52941a.get(this.f52942b.readInt());
            xVar.f52952c = this.f52942b.readInt();
        }
    }

    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private d f52944a;

        public c a(Object obj) {
            this.f52944a.a(obj);
            return this;
        }

        private c(Object obj) {
            this.f52944a = new d(obj);
        }

        public d a(String str, Object obj) {
            return this.f52944a.a(str, obj);
        }

        public d a(String str, Class<?> cls) {
            return this.f52944a.a(str, cls);
        }

        public void a() throws Throwable {
            this.f52944a.a();
        }
    }

    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private ArrayList<Object> f52945a;

        /* renamed from: b  reason: collision with root package name */
        private ArrayList<Object> f52946b;

        /* renamed from: c  reason: collision with root package name */
        private HashMap<String, Object> f52947c;

        /* renamed from: d  reason: collision with root package name */
        private HashMap<String, Object> f52948d;

        /* renamed from: e  reason: collision with root package name */
        private String f52949e;

        private d(Object obj) {
            ArrayList<Object> arrayList = new ArrayList<>();
            this.f52945a = arrayList;
            arrayList.add(obj);
            this.f52946b = new ArrayList<>();
            this.f52947c = new HashMap<>();
            HashMap<String, Object> hashMap = new HashMap<>();
            this.f52948d = hashMap;
            this.f52947c.put("t_map", hashMap);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Object obj) {
            this.f52945a.add(obj);
        }

        public d a(String str, Object obj) {
            this.f52947c.put(str, obj);
            return this;
        }

        public d a(String str, Class<?> cls) {
            v.f52938a.put(str, cls);
            return this;
        }

        public d a(String str) {
            this.f52949e = str;
            return this;
        }

        public <T> d a(Class<T> cls, Class<? extends t<T>> cls2) {
            s.a(cls, cls2);
            return this;
        }

        public void a() throws Throwable {
            byte[] bArr;
            InputStream byteArrayInputStream;
            ArrayList<x> arrayList = new ArrayList<>();
            String str = this.f52949e;
            if (str != null) {
                bArr = str.getBytes("UTF-8");
                System.arraycopy(bArr, 0, new byte[16], 0, Math.min(bArr.length, 16));
            } else {
                bArr = null;
            }
            try {
                Iterator<Object> it2 = this.f52945a.iterator();
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (next instanceof String) {
                        byteArrayInputStream = new FileInputStream((String) next);
                    } else if (next instanceof byte[]) {
                        byteArrayInputStream = new ByteArrayInputStream((byte[]) next);
                    } else {
                        throw new ClassCastException("program is not string or byte array");
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    a(byteArrayInputStream, arrayList);
                    this.f52948d.put("l_t", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                    byteArrayInputStream.close();
                }
                new v(arrayList, this.f52946b).a(this.f52947c);
            } catch (Throwable th) {
                th = th;
                if (bArr == null) {
                    throw th;
                }
                String cls = th.getMessage() == null ? th.getClass().toString() : th.getMessage();
                if (th instanceof u) {
                    th = th.getCause();
                }
                throw new u(a(bArr, cls + " " + a(th)), th);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0036  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x003e A[Catch: all -> 0x0048, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0048, blocks: (B:18:0x0032, B:24:0x003e), top: B:42:0x0032 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String a(java.lang.Throwable r5) {
            /*
                r4 = this;
                java.lang.String r0 = ""
                if (r5 != 0) goto L5
                return r0
            L5:
                r1 = 0
                r2 = r5
            L7:
                if (r2 == 0) goto L13
                boolean r3 = r2 instanceof java.net.UnknownHostException     // Catch: java.lang.Throwable -> L31
                if (r3 == 0) goto Le
                return r0
            Le:
                java.lang.Throwable r2 = r2.getCause()     // Catch: java.lang.Throwable -> L31
                goto L7
            L13:
                java.io.StringWriter r0 = new java.io.StringWriter     // Catch: java.lang.Throwable -> L31
                r0.<init>()     // Catch: java.lang.Throwable -> L31
                java.io.PrintWriter r1 = new java.io.PrintWriter     // Catch: java.lang.Throwable -> L2e
                r1.<init>(r0)     // Catch: java.lang.Throwable -> L2e
                r5.printStackTrace(r1)     // Catch: java.lang.Throwable -> L2e
                r1.flush()     // Catch: java.lang.Throwable -> L2e
                r1.close()     // Catch: java.lang.Throwable -> L2e
                java.lang.String r5 = r0.toString()     // Catch: java.lang.Throwable -> L2e
                r0.close()     // Catch: java.lang.Throwable -> L2d
            L2d:
                return r5
            L2e:
                r5 = move-exception
                r1 = r0
                goto L32
            L31:
                r5 = move-exception
            L32:
                boolean r0 = r5 instanceof java.lang.OutOfMemoryError     // Catch: java.lang.Throwable -> L48
                if (r0 == 0) goto L3e
                java.lang.String r5 = "getStackTraceString oom"
                if (r1 == 0) goto L3d
                r1.close()     // Catch: java.lang.Throwable -> L3d
            L3d:
                return r5
            L3e:
                java.lang.String r5 = r5.getMessage()     // Catch: java.lang.Throwable -> L48
                if (r1 == 0) goto L47
                r1.close()     // Catch: java.lang.Throwable -> L47
            L47:
                return r5
            L48:
                r5 = move-exception
                if (r1 == 0) goto L4e
                r1.close()     // Catch: java.lang.Throwable -> L4e
            L4e:
                goto L50
            L4f:
                throw r5
            L50:
                goto L4f
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.cc.w.d.a(java.lang.Throwable):java.lang.String");
        }

        private String a(byte[] bArr, String str) {
            Cipher cipher;
            if (bArr != null) {
                try {
                    byte[] bytes = str.getBytes("UTF-8");
                    SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                    StringBuilder sb = new StringBuilder();
                    sb.append("AES");
                    sb.append("/EC");
                    sb.append("B/PKCS7P");
                    sb.append("adding");
                    Provider provider = Security.getProvider("BC");
                    if (provider != null) {
                        cipher = Cipher.getInstance(sb.toString(), provider);
                    } else {
                        cipher = Cipher.getInstance(sb.toString(), "BC");
                    }
                    cipher.init(1, secretKeySpec);
                    byte[] bArr2 = new byte[cipher.getOutputSize(bytes.length)];
                    cipher.doFinal(bArr2, cipher.update(bytes, 0, bytes.length, bArr2, 0));
                    return new BigInteger(1, bArr2).toString(16);
                } catch (Throwable unused) {
                    return "";
                }
            }
            return str;
        }

        private void a(InputStream inputStream, ArrayList<x> arrayList) throws Throwable {
            a aVar;
            if (inputStream.read() != 60) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (inputStream.read() == 1) {
                inputStream = new GZIPInputStream(inputStream);
            }
            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(inputStream, 4096));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(null);
            int readInt = dataInputStream.readInt();
            for (int i2 = 0; i2 < readInt; i2++) {
                arrayList2.add(Integer.valueOf(dataInputStream.readInt()));
            }
            int readInt2 = dataInputStream.readInt();
            for (int i4 = 0; i4 < readInt2; i4++) {
                arrayList2.add(Long.valueOf(dataInputStream.readLong()));
            }
            int readInt3 = dataInputStream.readInt();
            for (int i5 = 0; i5 < readInt3; i5++) {
                arrayList2.add(Float.valueOf(dataInputStream.readFloat()));
            }
            int readInt4 = dataInputStream.readInt();
            for (int i6 = 0; i6 < readInt4; i6++) {
                arrayList2.add(Double.valueOf(dataInputStream.readDouble()));
            }
            int readInt5 = dataInputStream.readInt();
            for (int i7 = 0; i7 < readInt5; i7++) {
                arrayList2.add(Boolean.valueOf(dataInputStream.readBoolean()));
            }
            int readInt6 = dataInputStream.readInt();
            for (int i8 = 0; i8 < readInt6; i8++) {
                arrayList2.add(dataInputStream.readUTF());
            }
            if (dataInputStream.readByte() == 15) {
                long currentTimeMillis2 = System.currentTimeMillis();
                this.f52948d.put("lc_t", Long.valueOf(currentTimeMillis2 - currentTimeMillis));
                if (dataInputStream.readBoolean()) {
                    aVar = new b(arrayList2, dataInputStream, arrayList.size());
                } else {
                    aVar = new a(arrayList2, dataInputStream, arrayList.size());
                }
                int readInt7 = dataInputStream.readInt();
                boolean readBoolean = dataInputStream.readBoolean();
                if (dataInputStream.readByte() == 25) {
                    for (int i9 = 0; i9 < readInt7; i9++) {
                        x xVar = new x();
                        xVar.f52950a = dataInputStream.readByte();
                        if (readBoolean) {
                            aVar.a(xVar);
                        }
                        xVar.a(aVar);
                        arrayList.add(xVar);
                    }
                    if (dataInputStream.readByte() == 39) {
                        this.f52948d.put("lcmd_t", Long.valueOf(System.currentTimeMillis() - currentTimeMillis2));
                        byte[] bArr = new byte[dataInputStream.readInt()];
                        dataInputStream.readFully(bArr);
                        s.a(new String(bArr, "utf-8"));
                        dataInputStream.close();
                        return;
                    }
                    throw new RuntimeException("data has offset in pos 3");
                }
                throw new RuntimeException("data has offset in pos 2");
            }
            throw new RuntimeException("data has offset in pos 1");
        }
    }

    private w() {
    }

    public static int a() {
        return 60;
    }

    public static c a(String... strArr) {
        return a((Object[]) strArr);
    }

    public static c a(byte[]... bArr) {
        return a((Object[]) bArr);
    }

    private static c a(Object[] objArr) {
        if (objArr.length == 0) {
            return null;
        }
        c cVar = new c(objArr[0]);
        for (int i2 = 1; i2 < objArr.length; i2++) {
            cVar.a(objArr[i2]);
        }
        return cVar;
    }
}
