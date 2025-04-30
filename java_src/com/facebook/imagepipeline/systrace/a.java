package com.facebook.imagepipeline.systrace;

import android.os.Build;
import android.os.Trace;
import com.facebook.imagepipeline.systrace.b;
/* compiled from: DefaultFrescoSystrace.java */
/* loaded from: classes2.dex */
public class a implements b.d {

    /* compiled from: DefaultFrescoSystrace.java */
    /* renamed from: com.facebook.imagepipeline.systrace.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static final class C0086a implements b.InterfaceC0087b {

        /* renamed from: a  reason: collision with root package name */
        private final StringBuilder f13338a;

        public C0086a(String str) {
            this.f13338a = new StringBuilder(str);
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0087b
        public b.InterfaceC0087b a(String str, Object obj) {
            StringBuilder sb = this.f13338a;
            sb.append(';');
            sb.append(str);
            sb.append('=');
            sb.append(obj == null ? "null" : obj.toString());
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0087b
        public b.InterfaceC0087b b(String str, long j4) {
            StringBuilder sb = this.f13338a;
            sb.append(';');
            sb.append(str);
            sb.append('=');
            sb.append(Long.toString(j4));
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0087b
        public b.InterfaceC0087b c(String str, int i2) {
            StringBuilder sb = this.f13338a;
            sb.append(';');
            sb.append(str);
            sb.append('=');
            sb.append(Integer.toString(i2));
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0087b
        public b.InterfaceC0087b d(String str, double d4) {
            StringBuilder sb = this.f13338a;
            sb.append(';');
            sb.append(str);
            sb.append('=');
            sb.append(Double.toString(d4));
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0087b
        public void flush() {
            if (this.f13338a.length() > 127) {
                this.f13338a.setLength(127);
            }
            if (Build.VERSION.SDK_INT >= 18) {
                Trace.beginSection(this.f13338a.toString());
            }
        }
    }

    @Override // com.facebook.imagepipeline.systrace.b.d
    public void a(String str) {
    }

    @Override // com.facebook.imagepipeline.systrace.b.d
    public b.InterfaceC0087b b(String str) {
        return b.f13339a;
    }

    @Override // com.facebook.imagepipeline.systrace.b.d
    public void c() {
    }

    @Override // com.facebook.imagepipeline.systrace.b.d
    public boolean d() {
        return false;
    }
}
