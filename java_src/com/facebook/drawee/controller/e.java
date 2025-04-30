package com.facebook.drawee.controller;

import android.graphics.drawable.Animatable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: ForwardingControllerListener.java */
@ThreadSafe
/* loaded from: classes.dex */
public class e<INFO> implements c<INFO> {

    /* renamed from: b  reason: collision with root package name */
    private static final String f11976b = "FdingControllerListener";

    /* renamed from: a  reason: collision with root package name */
    private final List<c<? super INFO>> f11977a = new ArrayList(2);

    public static <INFO> e<INFO> i() {
        return new e<>();
    }

    public static <INFO> e<INFO> j(c<? super INFO> cVar) {
        e<INFO> i2 = i();
        i2.g(cVar);
        return i2;
    }

    public static <INFO> e<INFO> k(c<? super INFO> cVar, c<? super INFO> cVar2) {
        e<INFO> i2 = i();
        i2.g(cVar);
        i2.g(cVar2);
        return i2;
    }

    private synchronized void l(String str, Throwable th) {
    }

    @Override // com.facebook.drawee.controller.c
    public void a(String str, @Nullable INFO info) {
        int size = this.f11977a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                c<? super INFO> cVar = this.f11977a.get(i2);
                if (cVar != null) {
                    cVar.a(str, info);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onIntermediateImageSet", e4);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public synchronized void b(String str, Throwable th) {
        int size = this.f11977a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                c<? super INFO> cVar = this.f11977a.get(i2);
                if (cVar != null) {
                    cVar.b(str, th);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onFailure", e4);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public synchronized void c(String str) {
        int size = this.f11977a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                c<? super INFO> cVar = this.f11977a.get(i2);
                if (cVar != null) {
                    cVar.c(str);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onRelease", e4);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public synchronized void d(String str, @Nullable INFO info, @Nullable Animatable animatable) {
        int size = this.f11977a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                c<? super INFO> cVar = this.f11977a.get(i2);
                if (cVar != null) {
                    cVar.d(str, info, animatable);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onFinalImageSet", e4);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public synchronized void e(String str, Object obj) {
        int size = this.f11977a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                c<? super INFO> cVar = this.f11977a.get(i2);
                if (cVar != null) {
                    cVar.e(str, obj);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onSubmit", e4);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public void f(String str, Throwable th) {
        int size = this.f11977a.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                c<? super INFO> cVar = this.f11977a.get(i2);
                if (cVar != null) {
                    cVar.f(str, th);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onIntermediateImageFailed", e4);
            }
        }
    }

    public synchronized void g(c<? super INFO> cVar) {
        this.f11977a.add(cVar);
    }

    public synchronized void h() {
        this.f11977a.clear();
    }

    public synchronized void m(c<? super INFO> cVar) {
        int indexOf = this.f11977a.indexOf(cVar);
        if (indexOf != -1) {
            this.f11977a.set(indexOf, null);
        }
    }
}
