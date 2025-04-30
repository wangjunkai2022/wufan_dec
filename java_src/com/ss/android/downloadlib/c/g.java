package com.ss.android.downloadlib.c;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import com.ss.android.download.api.model.b;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.socialbase.appdownloader.c.k;
import com.ss.android.socialbase.appdownloader.c.l;
/* compiled from: NewDownloadDepend.java */
/* loaded from: classes4.dex */
public class g extends com.ss.android.socialbase.appdownloader.c.a {

    /* renamed from: a  reason: collision with root package name */
    private static String f57397a = "g";

    /* compiled from: NewDownloadDepend.java */
    /* loaded from: classes4.dex */
    private static class a implements k {

        /* renamed from: a  reason: collision with root package name */
        private Dialog f57405a;

        public a(Dialog dialog) {
            if (dialog != null) {
                this.f57405a = dialog;
                a();
            }
        }

        @Override // com.ss.android.socialbase.appdownloader.c.k
        public void a() {
            Dialog dialog = this.f57405a;
            if (dialog != null) {
                dialog.show();
            }
        }

        @Override // com.ss.android.socialbase.appdownloader.c.k
        public boolean b() {
            Dialog dialog = this.f57405a;
            if (dialog != null) {
                return dialog.isShowing();
            }
            return false;
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.c.a, com.ss.android.socialbase.appdownloader.c.c
    public l a(Context context) {
        return new l(context) { // from class: com.ss.android.downloadlib.c.g.1

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Context f57398a;

            /* renamed from: c  reason: collision with root package name */
            private b.a f57400c;

            /* renamed from: d  reason: collision with root package name */
            private DialogInterface.OnClickListener f57401d;

            /* renamed from: e  reason: collision with root package name */
            private DialogInterface.OnClickListener f57402e;

            /* renamed from: f  reason: collision with root package name */
            private DialogInterface.OnCancelListener f57403f;

            {
                this.f57398a = context;
                this.f57400c = new b.a(context);
            }

            @Override // com.ss.android.socialbase.appdownloader.c.l
            public l a(int i2) {
                this.f57400c.a(this.f57398a.getResources().getString(i2));
                return this;
            }

            @Override // com.ss.android.socialbase.appdownloader.c.l
            public l b(int i2, DialogInterface.OnClickListener onClickListener) {
                this.f57400c.d(this.f57398a.getResources().getString(i2));
                this.f57402e = onClickListener;
                return this;
            }

            @Override // com.ss.android.socialbase.appdownloader.c.l
            public l a(String str) {
                this.f57400c.b(str);
                return this;
            }

            @Override // com.ss.android.socialbase.appdownloader.c.l
            public l a(int i2, DialogInterface.OnClickListener onClickListener) {
                this.f57400c.c(this.f57398a.getResources().getString(i2));
                this.f57401d = onClickListener;
                return this;
            }

            @Override // com.ss.android.socialbase.appdownloader.c.l
            public l a(DialogInterface.OnCancelListener onCancelListener) {
                this.f57403f = onCancelListener;
                return this;
            }

            @Override // com.ss.android.socialbase.appdownloader.c.l
            public l a(boolean z3) {
                this.f57400c.a(z3);
                return this;
            }

            @Override // com.ss.android.socialbase.appdownloader.c.l
            public k a() {
                this.f57400c.a(new b.InterfaceC0290b() { // from class: com.ss.android.downloadlib.c.g.1.1
                    @Override // com.ss.android.download.api.model.b.InterfaceC0290b
                    public void a(DialogInterface dialogInterface) {
                        if (AnonymousClass1.this.f57401d != null) {
                            AnonymousClass1.this.f57401d.onClick(dialogInterface, -1);
                        }
                    }

                    @Override // com.ss.android.download.api.model.b.InterfaceC0290b
                    public void b(DialogInterface dialogInterface) {
                        if (AnonymousClass1.this.f57402e != null) {
                            AnonymousClass1.this.f57402e.onClick(dialogInterface, -2);
                        }
                    }

                    @Override // com.ss.android.download.api.model.b.InterfaceC0290b
                    public void c(DialogInterface dialogInterface) {
                        if (AnonymousClass1.this.f57403f == null || dialogInterface == null) {
                            return;
                        }
                        AnonymousClass1.this.f57403f.onCancel(dialogInterface);
                    }
                });
                com.ss.android.downloadlib.g.k.a(g.f57397a, "getThemedAlertDlgBuilder", null);
                this.f57400c.a(3);
                return new a(j.c().b(this.f57400c.a()));
            }
        };
    }

    @Override // com.ss.android.socialbase.appdownloader.c.a, com.ss.android.socialbase.appdownloader.c.c
    public boolean a() {
        return true;
    }
}
