package com.facebook.drawee.gestures;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.facebook.common.internal.VisibleForTesting;
import javax.annotation.Nullable;
/* compiled from: GestureDetector.java */
/* loaded from: classes.dex */
public class a {
    @VisibleForTesting
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    InterfaceC0069a f12203a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final float f12204b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    boolean f12205c;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    boolean f12206d;
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    long f12207e;
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    float f12208f;
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    float f12209g;

    /* compiled from: GestureDetector.java */
    /* renamed from: com.facebook.drawee.gestures.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0069a {
        boolean onClick();
    }

    public a(Context context) {
        this.f12204b = ViewConfiguration.get(context).getScaledTouchSlop();
        a();
    }

    public static a c(Context context) {
        return new a(context);
    }

    public void a() {
        this.f12203a = null;
        e();
    }

    public boolean b() {
        return this.f12205c;
    }

    public boolean d(MotionEvent motionEvent) {
        InterfaceC0069a interfaceC0069a;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f12205c = true;
            this.f12206d = true;
            this.f12207e = motionEvent.getEventTime();
            this.f12208f = motionEvent.getX();
            this.f12209g = motionEvent.getY();
        } else if (action == 1) {
            this.f12205c = false;
            if (Math.abs(motionEvent.getX() - this.f12208f) > this.f12204b || Math.abs(motionEvent.getY() - this.f12209g) > this.f12204b) {
                this.f12206d = false;
            }
            if (this.f12206d && motionEvent.getEventTime() - this.f12207e <= ViewConfiguration.getLongPressTimeout() && (interfaceC0069a = this.f12203a) != null) {
                interfaceC0069a.onClick();
            }
            this.f12206d = false;
        } else if (action != 2) {
            if (action == 3) {
                this.f12205c = false;
                this.f12206d = false;
            }
        } else if (Math.abs(motionEvent.getX() - this.f12208f) > this.f12204b || Math.abs(motionEvent.getY() - this.f12209g) > this.f12204b) {
            this.f12206d = false;
        }
        return true;
    }

    public void e() {
        this.f12205c = false;
        this.f12206d = false;
    }

    public void f(InterfaceC0069a interfaceC0069a) {
        this.f12203a = interfaceC0069a;
    }
}
