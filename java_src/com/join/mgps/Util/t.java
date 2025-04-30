package com.join.mgps.Util;

import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
/* compiled from: ConfigFile.java */
/* loaded from: classes3.dex */
public class t {

    /* renamed from: d  reason: collision with root package name */
    public static final String f27822d = "[<sectionless!>]";

    /* renamed from: a  reason: collision with root package name */
    private final String f27823a;

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, c> f27824b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final LinkedList<c> f27825c = new LinkedList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConfigFile.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: d  reason: collision with root package name */
        public static final int f27826d = 0;

        /* renamed from: e  reason: collision with root package name */
        public static final int f27827e = 1;

        /* renamed from: f  reason: collision with root package name */
        public static final int f27828f = 2;

        /* renamed from: a  reason: collision with root package name */
        public int f27829a;

        /* renamed from: b  reason: collision with root package name */
        public String f27830b;

        /* renamed from: c  reason: collision with root package name */
        public b f27831c;

        public a(int i2, String str, b bVar) {
            this.f27829a = 0;
            this.f27830b = "";
            this.f27831c = null;
            this.f27829a = i2;
            this.f27830b = str;
            this.f27831c = bVar;
        }

        public void a(FileWriter fileWriter) throws IOException {
            int indexOf;
            if (this.f27829a == 2) {
                if (!this.f27830b.contains(SimpleComparison.EQUAL_TO_OPERATION) || this.f27831c == null || (indexOf = this.f27830b.indexOf(61)) < 1 || indexOf >= this.f27830b.length()) {
                    return;
                }
                fileWriter.write(this.f27830b.substring(0, indexOf + 1) + this.f27831c.f27833b + "\n");
                return;
            }
            fileWriter.write(this.f27830b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConfigFile.java */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public String f27832a;

        /* renamed from: b  reason: collision with root package name */
        public String f27833b;

        public b(String str, String str2) {
            this.f27832a = str;
            this.f27833b = str2;
        }
    }

    public t(String str) {
        this.f27823a = str;
        h();
    }

    public void a() {
        this.f27824b.clear();
        this.f27825c.clear();
    }

    public c b(String str) {
        return this.f27824b.get(str);
    }

    public String c(String str, String str2) {
        b bVar;
        c cVar = this.f27824b.get(str);
        if (cVar == null || cVar.f27835b == null || (bVar = (b) cVar.f27835b.get(str2)) == null) {
            return null;
        }
        return bVar.f27833b;
    }

    public Set<String> d() {
        return this.f27824b.keySet();
    }

    public c e(String str) {
        for (String str2 : this.f27824b.keySet()) {
            if (str2.matches(str)) {
                return this.f27824b.get(str2);
            }
        }
        return null;
    }

    public void f(c cVar) {
        if (cVar == null) {
            return;
        }
        this.f27824b.put(cVar.f27834a, cVar);
        if (this.f27825c.contains(cVar)) {
            this.f27825c.remove(cVar);
        }
        this.f27825c.add(cVar);
    }

    public void g(String str, String str2, String str3) {
        c cVar = this.f27824b.get(str);
        if (cVar == null) {
            cVar = new c(str);
            this.f27824b.put(str, cVar);
            this.f27825c.add(cVar);
        }
        cVar.e(str2, str3);
    }

    public boolean h() {
        if (TextUtils.isEmpty(this.f27823a)) {
            return false;
        }
        a();
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(this.f27823a));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));
            c cVar = new c(f27822d, bufferedReader);
            this.f27824b.put(f27822d, cVar);
            this.f27825c.add(cVar);
            while (!TextUtils.isEmpty(cVar.f27837d)) {
                String str = cVar.f27837d;
                cVar = new c(str, bufferedReader);
                this.f27824b.put(str, cVar);
                this.f27825c.add(cVar);
            }
            try {
                dataInputStream.close();
                bufferedReader.close();
                return true;
            } catch (IOException unused) {
                return true;
            }
        } catch (FileNotFoundException unused2) {
            File file = new File(this.f27823a);
            try {
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                if (file.createNewFile()) {
                    return h();
                }
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            return false;
        }
    }

    public void i(String str) {
        this.f27825c.remove(this.f27824b.get(str));
        this.f27824b.remove(str);
    }

    public boolean j() {
        if (TextUtils.isEmpty(this.f27823a)) {
            return false;
        }
        File file = new File(this.f27823a);
        if (!file.exists()) {
            try {
                file.getParentFile().mkdirs();
                file.createNewFile();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        try {
            FileWriter fileWriter = new FileWriter(this.f27823a, false);
            Iterator<c> it2 = this.f27825c.iterator();
            while (it2.hasNext()) {
                c next = it2.next();
                if (next != null) {
                    next.f(fileWriter);
                }
            }
            fileWriter.flush();
            fileWriter.close();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    /* compiled from: ConfigFile.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public String f27834a;

        /* renamed from: b  reason: collision with root package name */
        private HashMap<String, b> f27835b;

        /* renamed from: c  reason: collision with root package name */
        private LinkedList<a> f27836c;

        /* renamed from: d  reason: collision with root package name */
        private String f27837d;

        public c(String str) {
            this.f27837d = null;
            this.f27835b = new HashMap<>();
            this.f27836c = new LinkedList<>();
            if (!TextUtils.isEmpty(str) && !str.equals(t.f27822d)) {
                LinkedList<a> linkedList = this.f27836c;
                linkedList.add(new a(1, "\n[" + str + "]\n", null));
            }
            this.f27834a = str;
        }

        public String c(String str) {
            b bVar;
            if (this.f27835b == null || TextUtils.isEmpty(str) || (bVar = this.f27835b.get(str)) == null) {
                return null;
            }
            return bVar.f27833b;
        }

        public Set<String> d() {
            return this.f27835b.keySet();
        }

        public void e(String str, String str2) {
            b bVar = this.f27835b.get(str);
            if (bVar == null) {
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                b bVar2 = new b(str, str2);
                LinkedList<a> linkedList = this.f27836c;
                linkedList.add(new a(2, str + SimpleComparison.EQUAL_TO_OPERATION + str2 + "\n", bVar2));
                this.f27835b.put(str, bVar2);
                return;
            }
            bVar.f27833b = str2;
        }

        public void f(FileWriter fileWriter) throws IOException {
            Iterator<a> it2 = this.f27836c.iterator();
            while (it2.hasNext()) {
                a next = it2.next();
                if (next != null) {
                    next.a(fileWriter);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x00fa, code lost:
            if (r1.contains("[") == false) goto L78;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0101, code lost:
            if (r1.length() < 3) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0109, code lost:
            if (r1.contains("]") != false) goto L65;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x010c, code lost:
            r11 = r1.indexOf(91);
            r12 = r1.indexOf(93);
            r0 = r11 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x011a, code lost:
            if (r12 <= r0) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x011d, code lost:
            if (r11 == (-1)) goto L75;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x011f, code lost:
            if (r12 != (-1)) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0122, code lost:
            r10.f27837d = r1.substring(r0, r12).trim();
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x012c, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:?, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public c(java.lang.String r11, java.io.BufferedReader r12) {
            /*
                Method dump skipped, instructions count: 329
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.t.c.<init>(java.lang.String, java.io.BufferedReader):void");
        }
    }
}
