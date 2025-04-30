package com.mob.commons.b;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.text.TextUtils;
import com.mob.commons.b.g;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
/* loaded from: classes4.dex */
public class m extends g {

    /* renamed from: c  reason: collision with root package name */
    private a f52898c;

    /* renamed from: d  reason: collision with root package name */
    private a f52899d;

    /* renamed from: e  reason: collision with root package name */
    private a f52900e;

    /* renamed from: f  reason: collision with root package name */
    private String f52901f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a extends ContentObserver {

        /* renamed from: a  reason: collision with root package name */
        private int f52902a;

        /* renamed from: b  reason: collision with root package name */
        private m f52903b;

        public a(m mVar, int i2) {
            super(null);
            this.f52902a = i2;
            this.f52903b = mVar;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            m mVar = this.f52903b;
            if (mVar != null) {
                mVar.a(z3, this.f52902a);
            }
        }
    }

    public m(Context context) {
        super(context);
        this.f52898c = null;
        this.f52899d = null;
        this.f52900e = null;
        this.f52901f = "100215079";
        if (!TextUtils.isEmpty(com.mob.commons.n.f53090i)) {
            this.f52901f = com.mob.commons.n.f53090i;
        }
        NLog mobLog = MobLog.getInstance();
        mobLog.d("oamt vivo appid: " + this.f52901f, new Object[0]);
    }

    private String b(int i2) {
        if (i2 != 0) {
            if (i2 == 1) {
                return com.mob.commons.a.o.a("052>ehfdel+ej@el6eghhUehfd?mAfm'k8ef9k fdfm,km.ghfmfh1iVhieifd?kWef,ijVei?hVfhZijBelTePefgief6j7eifh.ihBhgfkfhgjee") + this.f52901f;
            } else if (i2 != 2) {
                return null;
            } else {
                return com.mob.commons.a.o.a("052Yehfdel;ejVel+eghhWehfd;mDfmXk+efGk:fdfm-km,ghfmfh_iGhieifd*k@ef)ij2eiDh fhKijYel:eNefgiefEjVeifh-ihXfkfkfhgjee") + this.f52901f;
            }
        }
        return com.mob.commons.a.o.a("051Fehfdel+ej!el,eghhHehfd[m9fmJk8efOkWfdfm]kmSghfmfh_iMhieifdMk[ef9ij ei>hTfhRij(elSeUefgief+j%eifh?ih!gmfkfhgj");
    }

    @Override // com.mob.commons.b.g
    protected g.c c() {
        g.c cVar = new g.c();
        cVar.f52883b = a(0);
        cVar.f52886e = a(1);
        String a4 = a(2);
        cVar.f52884c = a4;
        if (TextUtils.isEmpty(a4)) {
            cVar.f52884c = i();
        }
        return cVar;
    }

    @Override // com.mob.commons.b.g
    public synchronized boolean h() {
        return "1".equals(a(com.mob.commons.a.o.a("034fjSeighefgh+eVfmghejghfmefSijZelKe*efgief;j-eiefYi'fmghed1ff<fdei(eji"), "0"));
    }

    private String a(String str, String str2) {
        try {
            Class<?> cls = Class.forName(com.mob.commons.a.o.a("027Aegel]i>eifdef+i=fmfdghfmfiejgh.ejmMhieifd2fjXeiQeXef4j+gh"));
            return (String) cls.getMethod(com.mob.commons.a.o.a("003Vgg?je"), String.class, String.class).invoke(cls, str, com.mob.commons.a.o.a("007Uedelekelfdgeel"));
        } catch (Throwable th) {
            c.a().a(th);
            return str2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
        if (r0 != null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003b, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
        if (r0 == null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(int r9) {
        /*
            r8 = this;
            java.lang.String r0 = r8.b(r9)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            android.net.Uri r3 = android.net.Uri.parse(r0)     // Catch: java.lang.Throwable -> L42
            android.content.Context r0 = r8.f52869a     // Catch: java.lang.Throwable -> L42
            android.content.ContentResolver r2 = r0.getContentResolver()     // Catch: java.lang.Throwable -> L42
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L42
            if (r0 == 0) goto L39
            boolean r2 = r0.moveToNext()     // Catch: java.lang.Throwable -> L37
            if (r2 == 0) goto L39
            java.lang.String r2 = "005kWegfeed_j"
            java.lang.String r2 = com.mob.commons.a.o.a(r2)     // Catch: java.lang.Throwable -> L37
            int r2 = r0.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L37
            java.lang.String r1 = r0.getString(r2)     // Catch: java.lang.Throwable -> L37
            r0.close()     // Catch: java.lang.Throwable -> L33
        L33:
            r8.c(r9)     // Catch: java.lang.Throwable -> L36
        L36:
            return r1
        L37:
            r2 = move-exception
            goto L44
        L39:
            if (r0 == 0) goto L3e
        L3b:
            r0.close()     // Catch: java.lang.Throwable -> L3e
        L3e:
            r8.c(r9)     // Catch: java.lang.Throwable -> L4e
            goto L4e
        L42:
            r2 = move-exception
            r0 = r1
        L44:
            com.mob.commons.b.c r3 = com.mob.commons.b.c.a()     // Catch: java.lang.Throwable -> L4f
            r3.a(r2)     // Catch: java.lang.Throwable -> L4f
            if (r0 == 0) goto L3e
            goto L3b
        L4e:
            return r1
        L4f:
            r1 = move-exception
            if (r0 == 0) goto L55
            r0.close()     // Catch: java.lang.Throwable -> L55
        L55:
            r8.c(r9)     // Catch: java.lang.Throwable -> L58
        L58:
            goto L5a
        L59:
            throw r1
        L5a:
            goto L59
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.b.m.a(int):java.lang.String");
    }

    private void c(int i2) {
        if (i2 == 0) {
            if (this.f52898c == null) {
                this.f52898c = new a(this, 0);
                this.f52869a.getContentResolver().registerContentObserver(Uri.parse(b(0)), true, this.f52898c);
            }
        } else if (i2 != 1) {
            if (i2 == 2 && this.f52900e == null) {
                this.f52900e = new a(this, 2);
                this.f52869a.getContentResolver().registerContentObserver(Uri.parse(b(2)), false, this.f52900e);
            }
        } else if (this.f52899d == null) {
            this.f52899d = new a(this, 1);
            this.f52869a.getContentResolver().registerContentObserver(Uri.parse(b(1)), false, this.f52899d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z3, int i2) {
        try {
            String a4 = a(i2);
            if (i2 == 0) {
                a(a4);
            } else if (i2 == 2) {
                b(a4);
            } else if (i2 == 1) {
                c(a4);
            }
        } catch (Throwable unused) {
        }
    }
}
