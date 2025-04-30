package com.mob.commons.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class h extends g {

    /* renamed from: c  reason: collision with root package name */
    private a f52887c;

    /* renamed from: d  reason: collision with root package name */
    private a f52888d;

    /* renamed from: e  reason: collision with root package name */
    private a f52889e;

    /* renamed from: f  reason: collision with root package name */
    private a f52890f;

    /* renamed from: g  reason: collision with root package name */
    private a f52891g;

    /* renamed from: h  reason: collision with root package name */
    private BroadcastReceiver f52892h;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f52894a;

        /* renamed from: b  reason: collision with root package name */
        private long f52895b;

        /* renamed from: c  reason: collision with root package name */
        private String f52896c;

        public a(String str) {
            this.f52894a = str;
        }

        public void a(long j4) {
            this.f52895b = j4;
        }

        public boolean b() {
            return this.f52895b > System.currentTimeMillis();
        }

        public String a() {
            return this.f52896c;
        }

        public void a(String str) {
            this.f52896c = str;
        }
    }

    public h(Context context) {
        super(context);
        this.f52887c = new a(com.mob.commons.o.a("0043dc[h[deTh"));
        this.f52888d = new a(com.mob.commons.o.a("004Cecdfde1h"));
        this.f52889e = new a(com.mob.commons.o.a("004j-dfdeGh"));
        this.f52890f = new a(com.mob.commons.o.a("004VdfdfdeFh"));
        this.f52891g = new a(com.mob.commons.o.a("0091fgdc!ee+ecdhHdih"));
    }

    private void j() {
        try {
            if (this.f52892h == null) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(com.mob.commons.o.a("044!dgec=lZel6liHdegcdcelfheddi;liSelecGeiHdkde7h1elejggeiegflefddflghgdefddegfiddgghdejefhkgd"));
                BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.mob.commons.b.h.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        String stringExtra;
                        ArrayList<String> stringArrayListExtra;
                        if (context == null || intent == null) {
                            return;
                        }
                        try {
                            boolean z3 = false;
                            if (intent.getIntExtra(com.mob.commons.o.a("0168ecPei3dkeg6h]efecZdRdefhdifkeddfff"), 0) == 2 && (stringArrayListExtra = intent.getStringArrayListExtra(com.mob.commons.o.a("017'ec0ei^dkegHh@ghdfdgdjdfffEiBekdefgGd"))) != null) {
                                z3 = stringArrayListExtra.contains(context.getPackageName());
                            }
                            if (!z3 || (stringExtra = intent.getStringExtra(com.mob.commons.o.a("0100ec0ei9dkeg_hHeidi>ei"))) == null) {
                                return;
                            }
                            if (stringExtra.equals(com.mob.commons.o.a("0041dc.hXdeEh"))) {
                                h.this.f52887c.a(0L);
                            } else if (stringExtra.equals(com.mob.commons.o.a("004+ecdfde(h"))) {
                                h.this.f52888d.a(0L);
                            } else if (stringExtra.equals(com.mob.commons.o.a("004jWdfdeQh"))) {
                                h.this.f52889e.a(0L);
                            } else if (stringExtra.equals(com.mob.commons.o.a("004Udfdfde<h"))) {
                                h.this.f52890f.a(0L);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                };
                this.f52892h = broadcastReceiver;
                if (Build.VERSION.SDK_INT < 33) {
                    this.f52869a.registerReceiver(broadcastReceiver, intentFilter, com.mob.commons.o.a("048SdgecElLelLli*degcdcelfheddi-liYelec0ei5dkde]h[elSeiBdh8l]defgfgdeecdkelflghgdefddegfiddgghdejefhkgd"), null);
                } else {
                    this.f52869a.registerReceiver(broadcastReceiver, intentFilter, com.mob.commons.o.a("048?dgec^lZel7li degcdcelfheddiXliQelecPeiQdkdeWhCel<ei,dh5lMdefgfgdeecdkelflghgdefddegfiddgghdejefhkgd"), null, 4);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.mob.commons.b.g
    public synchronized String e() {
        Context context = this.f52869a;
        if (context == null) {
            return null;
        }
        return a(context.getApplicationContext(), this.f52888d, false);
    }

    @Override // com.mob.commons.b.g
    public synchronized String f() {
        Context context = this.f52869a;
        if (context == null) {
            return null;
        }
        return a(context.getApplicationContext(), this.f52887c, false);
    }

    @Override // com.mob.commons.b.g
    public synchronized String g() {
        Context context = this.f52869a;
        if (context == null) {
            return null;
        }
        return a(context.getApplicationContext(), this.f52889e, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0095, code lost:
        if (r1 != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0097, code lost:
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00a4, code lost:
        if (r1 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a7, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(android.content.Context r10, com.mob.commons.b.h.a r11, boolean r12) {
        /*
            r9 = this;
            r0 = 0
            if (r11 != 0) goto L4
            return r0
        L4:
            if (r12 != 0) goto L11
            boolean r1 = r11.b()
            if (r1 == 0) goto L11
            java.lang.String r10 = com.mob.commons.b.h.a.a(r11)
            return r10
        L11:
            java.lang.String r1 = "036$dgecdk.di@dk+dfgg(dgecFl,el$li0degcdcelfheddiLli5elecOeiSdkdeDhDfgShUdjJg"
            java.lang.String r1 = com.mob.commons.o.a(r1)
            android.net.Uri r3 = android.net.Uri.parse(r1)
            android.content.ContentResolver r2 = r10.getContentResolver()     // Catch: java.lang.Throwable -> L9b
            r4 = 0
            r5 = 0
            r10 = 1
            java.lang.String[] r6 = new java.lang.String[r10]     // Catch: java.lang.Throwable -> L9b
            java.lang.String r1 = com.mob.commons.b.h.a.b(r11)     // Catch: java.lang.Throwable -> L9b
            r8 = 0
            r6[r8] = r1     // Catch: java.lang.Throwable -> L9b
            r7 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L9b
            if (r1 == 0) goto L85
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L83
            java.lang.String r2 = "005jUdfeddc=i"
            java.lang.String r2 = com.mob.commons.o.a(r2)     // Catch: java.lang.Throwable -> L83
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L83
            if (r2 < 0) goto L49
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L83
            r11.a(r2)     // Catch: java.lang.Throwable -> L83
            goto L4a
        L49:
            r2 = r0
        L4a:
            if (r12 != 0) goto L7f
            java.lang.String r12 = "007i2dlZe'dedh0ih"
            java.lang.String r12 = com.mob.commons.o.a(r12)     // Catch: java.lang.Throwable -> L83
            int r12 = r1.getColumnIndex(r12)     // Catch: java.lang.Throwable -> L83
            if (r12 < 0) goto L5f
            long r3 = r1.getLong(r12)     // Catch: java.lang.Throwable -> L83
            r11.a(r3)     // Catch: java.lang.Throwable -> L83
        L5f:
            java.lang.String r11 = "004@dgec)hi"
            java.lang.String r11 = com.mob.commons.o.a(r11)     // Catch: java.lang.Throwable -> L83
            int r11 = r1.getColumnIndex(r11)     // Catch: java.lang.Throwable -> L83
            if (r11 < 0) goto L7f
            int r11 = r1.getInt(r11)     // Catch: java.lang.Throwable -> L83
            r12 = 1000(0x3e8, float:1.401E-42)
            if (r11 == r12) goto L7f
            r9.j()     // Catch: java.lang.Throwable -> L83
            boolean r11 = r9.a(r8)     // Catch: java.lang.Throwable -> L83
            if (r11 != 0) goto L7f
            r9.a(r10)     // Catch: java.lang.Throwable -> L83
        L7f:
            r1.close()     // Catch: java.lang.Throwable -> L82
        L82:
            return r2
        L83:
            r10 = move-exception
            goto L9d
        L85:
            if (r12 == 0) goto L8c
            java.lang.String r12 = "1"
            r11.a(r12)     // Catch: java.lang.Throwable -> L83
        L8c:
            boolean r11 = r9.a(r8)     // Catch: java.lang.Throwable -> L83
            if (r11 == 0) goto L95
            r9.a(r10)     // Catch: java.lang.Throwable -> L83
        L95:
            if (r1 == 0) goto La7
        L97:
            r1.close()     // Catch: java.lang.Throwable -> La7
            goto La7
        L9b:
            r10 = move-exception
            r1 = r0
        L9d:
            com.mob.commons.b.c r11 = com.mob.commons.b.c.a()     // Catch: java.lang.Throwable -> La8
            r11.a(r10)     // Catch: java.lang.Throwable -> La8
            if (r1 == 0) goto La7
            goto L97
        La7:
            return r0
        La8:
            r10 = move-exception
            if (r1 == 0) goto Lae
            r1.close()     // Catch: java.lang.Throwable -> Lae
        Lae:
            goto Lb0
        Laf:
            throw r10
        Lb0:
            goto Laf
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.b.h.a(android.content.Context, com.mob.commons.b.h$a, boolean):java.lang.String");
    }

    @Override // com.mob.commons.b.g
    public synchronized String b() {
        Context context = this.f52869a;
        if (context == null) {
            return null;
        }
        return a(context.getApplicationContext(), this.f52890f, false);
    }

    private boolean a(boolean z3) {
        a aVar;
        if (!z3 && (aVar = this.f52891g) != null && aVar.a() != null) {
            return this.f52891g.a().equals("0");
        }
        String a4 = a(this.f52869a, this.f52891g, true);
        return a4 != null && "0".equals(a4);
    }
}
