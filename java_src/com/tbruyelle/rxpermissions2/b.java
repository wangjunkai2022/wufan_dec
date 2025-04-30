package com.tbruyelle.rxpermissions2;

import io.reactivex.z;
import java.util.List;
import w2.o;
import w2.r;
/* compiled from: Permission.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public final String f59247a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f59248b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f59249c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Permission.java */
    /* loaded from: classes4.dex */
    public class a implements w2.b<StringBuilder, String> {
        a() {
        }

        @Override // w2.b
        /* renamed from: b */
        public void a(StringBuilder sb, String str) throws Exception {
            if (sb.length() == 0) {
                sb.append(str);
                return;
            }
            sb.append(", ");
            sb.append(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Permission.java */
    /* renamed from: com.tbruyelle.rxpermissions2.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0340b implements o<b, String> {
        C0340b() {
        }

        @Override // w2.o
        /* renamed from: a */
        public String apply(b bVar) throws Exception {
            return bVar.f59247a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Permission.java */
    /* loaded from: classes4.dex */
    public class c implements r<b> {
        c() {
        }

        @Override // w2.r
        /* renamed from: a */
        public boolean test(b bVar) throws Exception {
            return bVar.f59248b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Permission.java */
    /* loaded from: classes4.dex */
    public class d implements r<b> {
        d() {
        }

        @Override // w2.r
        /* renamed from: a */
        public boolean test(b bVar) throws Exception {
            return bVar.f59249c;
        }
    }

    public b(String str, boolean z3) {
        this(str, z3, false);
    }

    private Boolean a(List<b> list) {
        return z.M2(list).c(new c()).i();
    }

    private String b(List<b> list) {
        return ((StringBuilder) z.M2(list).x3(new C0340b()).X(new StringBuilder(), new a()).i()).toString();
    }

    private Boolean c(List<b> list) {
        return z.M2(list).g(new d()).i();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f59248b == bVar.f59248b && this.f59249c == bVar.f59249c) {
            return this.f59247a.equals(bVar.f59247a);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f59247a.hashCode() * 31) + (this.f59248b ? 1 : 0)) * 31) + (this.f59249c ? 1 : 0);
    }

    public String toString() {
        return "Permission{name='" + this.f59247a + "', granted=" + this.f59248b + ", shouldShowRequestPermissionRationale=" + this.f59249c + '}';
    }

    public b(String str, boolean z3, boolean z4) {
        this.f59247a = str;
        this.f59248b = z3;
        this.f59249c = z4;
    }

    public b(List<b> list) {
        this.f59247a = b(list);
        this.f59248b = a(list).booleanValue();
        this.f59249c = c(list).booleanValue();
    }
}
