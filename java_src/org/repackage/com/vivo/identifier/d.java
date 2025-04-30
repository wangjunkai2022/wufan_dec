package org.repackage.com.vivo.identifier;

import android.database.ContentObserver;
/* compiled from: IdentifierIdObserver.java */
/* loaded from: classes5.dex */
public class d extends ContentObserver {

    /* renamed from: d  reason: collision with root package name */
    private static final String f73941d = "VMS_IDLG_SDK_Observer";

    /* renamed from: a  reason: collision with root package name */
    private String f73942a;

    /* renamed from: b  reason: collision with root package name */
    private int f73943b;

    /* renamed from: c  reason: collision with root package name */
    private c f73944c;

    public d(c cVar, int i2, String str) {
        super(null);
        this.f73944c = cVar;
        this.f73943b = i2;
        this.f73942a = str;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z3) {
        c cVar = this.f73944c;
        if (cVar != null) {
            cVar.d(this.f73943b, this.f73942a);
        }
    }
}
