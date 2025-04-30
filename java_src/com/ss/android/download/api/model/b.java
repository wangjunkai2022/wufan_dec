package com.ss.android.download.api.model;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.View;
/* compiled from: DownloadAlertDialogInfo.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public Context f56926a;

    /* renamed from: b  reason: collision with root package name */
    public String f56927b;

    /* renamed from: c  reason: collision with root package name */
    public String f56928c;

    /* renamed from: d  reason: collision with root package name */
    public String f56929d;

    /* renamed from: e  reason: collision with root package name */
    public String f56930e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f56931f;

    /* renamed from: g  reason: collision with root package name */
    public Drawable f56932g;

    /* renamed from: h  reason: collision with root package name */
    public InterfaceC0290b f56933h;

    /* renamed from: i  reason: collision with root package name */
    public View f56934i;

    /* renamed from: j  reason: collision with root package name */
    public int f56935j;

    /* compiled from: DownloadAlertDialogInfo.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public View f56936a;

        /* renamed from: b  reason: collision with root package name */
        public int f56937b;

        /* renamed from: c  reason: collision with root package name */
        private Context f56938c;

        /* renamed from: d  reason: collision with root package name */
        private String f56939d;

        /* renamed from: e  reason: collision with root package name */
        private String f56940e;

        /* renamed from: f  reason: collision with root package name */
        private String f56941f;

        /* renamed from: g  reason: collision with root package name */
        private String f56942g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f56943h;

        /* renamed from: i  reason: collision with root package name */
        private Drawable f56944i;

        /* renamed from: j  reason: collision with root package name */
        private InterfaceC0290b f56945j;

        public a(Context context) {
            this.f56938c = context;
        }

        public a a(String str) {
            this.f56939d = str;
            return this;
        }

        public a b(String str) {
            this.f56940e = str;
            return this;
        }

        public a c(String str) {
            this.f56941f = str;
            return this;
        }

        public a d(String str) {
            this.f56942g = str;
            return this;
        }

        public a a(boolean z3) {
            this.f56943h = z3;
            return this;
        }

        public a a(Drawable drawable) {
            this.f56944i = drawable;
            return this;
        }

        public a a(InterfaceC0290b interfaceC0290b) {
            this.f56945j = interfaceC0290b;
            return this;
        }

        public a a(int i2) {
            this.f56937b = i2;
            return this;
        }

        public b a() {
            return new b(this);
        }
    }

    /* compiled from: DownloadAlertDialogInfo.java */
    /* renamed from: com.ss.android.download.api.model.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0290b {
        void a(DialogInterface dialogInterface);

        void b(DialogInterface dialogInterface);

        void c(DialogInterface dialogInterface);
    }

    private b(a aVar) {
        this.f56931f = true;
        this.f56926a = aVar.f56938c;
        this.f56927b = aVar.f56939d;
        this.f56928c = aVar.f56940e;
        this.f56929d = aVar.f56941f;
        this.f56930e = aVar.f56942g;
        this.f56931f = aVar.f56943h;
        this.f56932g = aVar.f56944i;
        this.f56933h = aVar.f56945j;
        this.f56934i = aVar.f56936a;
        this.f56935j = aVar.f56937b;
    }
}
