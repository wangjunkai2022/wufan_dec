package y1;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.IBinder;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
/* compiled from: KeyBoardUtils.java */
/* loaded from: classes4.dex */
public class a {

    /* compiled from: KeyBoardUtils.java */
    /* renamed from: y1.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class ViewTreeObserver$OnGlobalLayoutListenerC0500a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: e  reason: collision with root package name */
        private static final String f74268e = "ListenerHandler";

        /* renamed from: a  reason: collision with root package name */
        private View f74269a;

        /* renamed from: b  reason: collision with root package name */
        private int f74270b;

        /* renamed from: c  reason: collision with root package name */
        private int f74271c;

        /* renamed from: d  reason: collision with root package name */
        private InterfaceC0501a f74272d;

        /* compiled from: KeyBoardUtils.java */
        /* renamed from: y1.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public interface InterfaceC0501a {
            void a(boolean z3, int i2);
        }

        public ViewTreeObserver$OnGlobalLayoutListenerC0500a(Activity activity) {
            if (activity == null) {
                return;
            }
            View c4 = c(activity);
            this.f74269a = c4;
            if (c4 != null) {
                a();
            }
        }

        private void a() {
            this.f74269a.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        private View c(Activity activity) {
            return activity.findViewById(16908290);
        }

        public void b() {
            View view = this.f74269a;
            if (view == null || Build.VERSION.SDK_INT < 16) {
                return;
            }
            view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }

        public void d(InterfaceC0501a interfaceC0501a) {
            this.f74272d = interfaceC0501a;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x001c  */
        /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onGlobalLayout() {
            /*
                r4 = this;
                android.view.View r0 = r4.f74269a
                int r0 = r0.getHeight()
                if (r0 != 0) goto L9
                return
            L9:
                int r1 = r4.f74271c
                r2 = 1
                r3 = 0
                if (r1 != 0) goto L15
                r4.f74271c = r0
                r4.f74270b = r0
            L13:
                r1 = 0
                goto L1a
            L15:
                if (r1 == r0) goto L13
                r4.f74271c = r0
                r1 = 1
            L1a:
                if (r1 == 0) goto L2b
                int r1 = r4.f74270b
                if (r1 != r0) goto L22
                r2 = 0
                goto L24
            L22:
                int r3 = r1 - r0
            L24:
                y1.a$a$a r0 = r4.f74272d
                if (r0 == 0) goto L2b
                r0.a(r2, r3)
            L2b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: y1.a.ViewTreeObserver$OnGlobalLayoutListenerC0500a.onGlobalLayout():void");
        }
    }

    public static void a(Context context, IBinder iBinder) {
        if (context == null || iBinder == null) {
            return;
        }
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(iBinder, 0);
    }

    public static void b(View view) {
        if (view == null) {
            return;
        }
        a(view.getContext(), view.getWindowToken());
    }

    public static void c(View view) {
        if (view == null) {
            return;
        }
        view.requestFocus();
        ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 2);
    }
}
