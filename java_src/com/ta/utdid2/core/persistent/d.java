package com.ta.utdid2.core.persistent;

import com.ta.utdid2.core.persistent.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: d  reason: collision with root package name */
    public static final int f59194d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f59195e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f59196f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static final Object f59197g = new Object();

    /* renamed from: b  reason: collision with root package name */
    private File f59199b;

    /* renamed from: a  reason: collision with root package name */
    private final Object f59198a = new Object();

    /* renamed from: c  reason: collision with root package name */
    private HashMap<File, a> f59200c = new HashMap<>();

    /* loaded from: classes4.dex */
    private static final class a implements b {

        /* renamed from: g  reason: collision with root package name */
        private static final Object f59201g = new Object();

        /* renamed from: a  reason: collision with root package name */
        private final File f59202a;

        /* renamed from: b  reason: collision with root package name */
        private final File f59203b;

        /* renamed from: c  reason: collision with root package name */
        private final int f59204c;

        /* renamed from: d  reason: collision with root package name */
        private Map f59205d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f59206e = false;

        /* renamed from: f  reason: collision with root package name */
        private WeakHashMap<b.InterfaceC0338b, Object> f59207f;

        /* renamed from: com.ta.utdid2.core.persistent.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public final class C0339a implements b.a {

            /* renamed from: a  reason: collision with root package name */
            private final Map<String, Object> f59208a = new HashMap();

            /* renamed from: b  reason: collision with root package name */
            private boolean f59209b = false;

            public C0339a() {
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a clear() {
                synchronized (this) {
                    this.f59209b = true;
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final boolean commit() {
                boolean z3;
                ArrayList arrayList;
                HashSet<b.InterfaceC0338b> hashSet;
                boolean k4;
                synchronized (d.f59197g) {
                    z3 = a.this.f59207f.size() > 0;
                    arrayList = null;
                    if (z3) {
                        arrayList = new ArrayList();
                        hashSet = new HashSet(a.this.f59207f.keySet());
                    } else {
                        hashSet = null;
                    }
                    synchronized (this) {
                        if (this.f59209b) {
                            a.this.f59205d.clear();
                            this.f59209b = false;
                        }
                        for (Map.Entry<String, Object> entry : this.f59208a.entrySet()) {
                            String key = entry.getKey();
                            Object value = entry.getValue();
                            if (value == this) {
                                a.this.f59205d.remove(key);
                            } else {
                                a.this.f59205d.put(key, value);
                            }
                            if (z3) {
                                arrayList.add(key);
                            }
                        }
                        this.f59208a.clear();
                    }
                    k4 = a.this.k();
                    if (k4) {
                        a.this.j(true);
                    }
                }
                if (z3) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        String str = (String) arrayList.get(size);
                        for (b.InterfaceC0338b interfaceC0338b : hashSet) {
                            if (interfaceC0338b != null) {
                                interfaceC0338b.a(a.this, str);
                            }
                        }
                    }
                }
                return k4;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a putBoolean(String str, boolean z3) {
                synchronized (this) {
                    this.f59208a.put(str, Boolean.valueOf(z3));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a putFloat(String str, float f4) {
                synchronized (this) {
                    this.f59208a.put(str, Float.valueOf(f4));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a putInt(String str, int i2) {
                synchronized (this) {
                    this.f59208a.put(str, Integer.valueOf(i2));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a putLong(String str, long j4) {
                synchronized (this) {
                    this.f59208a.put(str, Long.valueOf(j4));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a putString(String str, String str2) {
                synchronized (this) {
                    this.f59208a.put(str, str2);
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public final b.a remove(String str) {
                synchronized (this) {
                    this.f59208a.put(str, this);
                }
                return this;
            }
        }

        a(File file, int i2, Map map) {
            this.f59202a = file;
            this.f59203b = d.f(file);
            this.f59204c = i2;
            this.f59205d = map == null ? new HashMap() : map;
            this.f59207f = new WeakHashMap<>();
        }

        private FileOutputStream g(File file) {
            FileOutputStream fileOutputStream;
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (FileNotFoundException unused) {
                if (!file.getParentFile().mkdir()) {
                    return null;
                }
                try {
                    fileOutputStream = new FileOutputStream(file);
                } catch (FileNotFoundException unused2) {
                    return null;
                }
            }
            return fileOutputStream;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean k() {
            if (this.f59202a.exists()) {
                if (!this.f59203b.exists()) {
                    if (!this.f59202a.renameTo(this.f59203b)) {
                        return false;
                    }
                } else {
                    this.f59202a.delete();
                }
            }
            try {
                FileOutputStream g4 = g(this.f59202a);
                if (g4 == null) {
                    return false;
                }
                e.j(this.f59205d, g4);
                g4.close();
                this.f59203b.delete();
                return true;
            } catch (IOException | XmlPullParserException unused) {
                if (this.f59202a.exists()) {
                    this.f59202a.delete();
                }
                return false;
            }
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final boolean a() {
            return this.f59202a != null && new File(this.f59202a.getAbsolutePath()).exists();
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final void b(b.InterfaceC0338b interfaceC0338b) {
            synchronized (this) {
                this.f59207f.remove(interfaceC0338b);
            }
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final void c(b.InterfaceC0338b interfaceC0338b) {
            synchronized (this) {
                this.f59207f.put(interfaceC0338b, f59201g);
            }
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final boolean contains(String str) {
            boolean containsKey;
            synchronized (this) {
                containsKey = this.f59205d.containsKey(str);
            }
            return containsKey;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final b.a edit() {
            return new C0339a();
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final Map<String, ?> getAll() {
            HashMap hashMap;
            synchronized (this) {
                hashMap = new HashMap(this.f59205d);
            }
            return hashMap;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final boolean getBoolean(String str, boolean z3) {
            synchronized (this) {
                Boolean bool = (Boolean) this.f59205d.get(str);
                if (bool != null) {
                    z3 = bool.booleanValue();
                }
            }
            return z3;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final float getFloat(String str, float f4) {
            synchronized (this) {
                Float f5 = (Float) this.f59205d.get(str);
                if (f5 != null) {
                    f4 = f5.floatValue();
                }
            }
            return f4;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final int getInt(String str, int i2) {
            synchronized (this) {
                Integer num = (Integer) this.f59205d.get(str);
                if (num != null) {
                    i2 = num.intValue();
                }
            }
            return i2;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final long getLong(String str, long j4) {
            synchronized (this) {
                Long l4 = (Long) this.f59205d.get(str);
                if (l4 != null) {
                    j4 = l4.longValue();
                }
            }
            return j4;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public final String getString(String str, String str2) {
            synchronized (this) {
                String str3 = (String) this.f59205d.get(str);
                if (str3 != null) {
                    str2 = str3;
                }
            }
            return str2;
        }

        public final boolean h() {
            boolean z3;
            synchronized (this) {
                z3 = this.f59206e;
            }
            return z3;
        }

        public final void i(Map map) {
            if (map != null) {
                synchronized (this) {
                    this.f59205d = map;
                }
            }
        }

        public final void j(boolean z3) {
            synchronized (this) {
                this.f59206e = z3;
            }
        }
    }

    public d(String str) {
        if (str != null && str.length() > 0) {
            this.f59199b = new File(str);
            return;
        }
        throw new RuntimeException("Directory can not be empty");
    }

    private File d() {
        File file;
        synchronized (this.f59198a) {
            file = this.f59199b;
        }
        return file;
    }

    private File e(String str) {
        File d4 = d();
        return g(d4, str + ".xml");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File f(File file) {
        return new File(file.getPath() + ".bak");
    }

    private File g(File file, String str) {
        if (str.indexOf(File.separatorChar) < 0) {
            return new File(file, str);
        }
        throw new IllegalArgumentException("File " + str + " contains a path separator");
    }

    public b c(String str, int i2) {
        File e4 = e(str);
        synchronized (f59197g) {
            a aVar = this.f59200c.get(e4);
            if (aVar == null || aVar.h()) {
                File f4 = f(e4);
                if (f4.exists()) {
                    e4.delete();
                    f4.renameTo(e4);
                }
                if (e4.exists()) {
                    e4.canRead();
                }
                HashMap hashMap = null;
                if (e4.exists() && e4.canRead()) {
                    try {
                        try {
                            FileInputStream fileInputStream = new FileInputStream(e4);
                            hashMap = e.a(fileInputStream);
                            fileInputStream.close();
                        } catch (FileNotFoundException e5) {
                            e5.printStackTrace();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    } catch (FileNotFoundException e7) {
                        e7.printStackTrace();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    } catch (XmlPullParserException unused) {
                        FileInputStream fileInputStream2 = new FileInputStream(e4);
                        int available = fileInputStream2.available();
                        byte[] bArr = new byte[available];
                        fileInputStream2.read(bArr);
                        new String(bArr, 0, available, "UTF-8");
                    } catch (Exception e9) {
                        e9.printStackTrace();
                    }
                }
                synchronized (f59197g) {
                    if (aVar != null) {
                        aVar.i(hashMap);
                    } else {
                        aVar = this.f59200c.get(e4);
                        if (aVar == null) {
                            aVar = new a(e4, i2, hashMap);
                            this.f59200c.put(e4, aVar);
                        }
                    }
                }
                return aVar;
            }
            return aVar;
        }
    }
}
