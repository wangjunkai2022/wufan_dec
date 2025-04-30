package org.greenrobot.eventbus.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
/* loaded from: classes5.dex */
public class ErrorDialogManager {

    /* renamed from: a  reason: collision with root package name */
    public static c<?> f73302a = null;

    /* renamed from: b  reason: collision with root package name */
    protected static final String f73303b = "de.greenrobot.eventbus.error_dialog";

    /* renamed from: c  reason: collision with root package name */
    protected static final String f73304c = "de.greenrobot.eventbus.error_dialog_manager";

    /* renamed from: d  reason: collision with root package name */
    public static final String f73305d = "de.greenrobot.eventbus.errordialog.title";

    /* renamed from: e  reason: collision with root package name */
    public static final String f73306e = "de.greenrobot.eventbus.errordialog.message";

    /* renamed from: f  reason: collision with root package name */
    public static final String f73307f = "de.greenrobot.eventbus.errordialog.finish_after_dialog";

    /* renamed from: g  reason: collision with root package name */
    public static final String f73308g = "de.greenrobot.eventbus.errordialog.icon_id";

    /* renamed from: h  reason: collision with root package name */
    public static final String f73309h = "de.greenrobot.eventbus.errordialog.event_type_on_close";

    @TargetApi(11)
    /* loaded from: classes5.dex */
    public static class HoneycombManagerFragment extends Fragment {

        /* renamed from: a  reason: collision with root package name */
        protected boolean f73310a;

        /* renamed from: b  reason: collision with root package name */
        protected Bundle f73311b;

        /* renamed from: c  reason: collision with root package name */
        private org.greenrobot.eventbus.c f73312c;

        /* renamed from: d  reason: collision with root package name */
        private Object f73313d;

        public static void a(Activity activity, Object obj, boolean z3, Bundle bundle) {
            FragmentManager fragmentManager = activity.getFragmentManager();
            HoneycombManagerFragment honeycombManagerFragment = (HoneycombManagerFragment) fragmentManager.findFragmentByTag(ErrorDialogManager.f73304c);
            if (honeycombManagerFragment == null) {
                honeycombManagerFragment = new HoneycombManagerFragment();
                fragmentManager.beginTransaction().add(honeycombManagerFragment, ErrorDialogManager.f73304c).commit();
                fragmentManager.executePendingTransactions();
            }
            honeycombManagerFragment.f73310a = z3;
            honeycombManagerFragment.f73311b = bundle;
            honeycombManagerFragment.f73313d = obj;
        }

        public void b(f fVar) {
            if (ErrorDialogManager.g(this.f73313d, fVar)) {
                ErrorDialogManager.f(fVar);
                FragmentManager fragmentManager = getFragmentManager();
                fragmentManager.executePendingTransactions();
                DialogFragment dialogFragment = (DialogFragment) fragmentManager.findFragmentByTag(ErrorDialogManager.f73303b);
                if (dialogFragment != null) {
                    dialogFragment.dismiss();
                }
                DialogFragment dialogFragment2 = (DialogFragment) ErrorDialogManager.f73302a.d(fVar, this.f73310a, this.f73311b);
                if (dialogFragment2 != null) {
                    dialogFragment2.show(fragmentManager, ErrorDialogManager.f73303b);
                }
            }
        }

        @Override // android.app.Fragment
        public void onPause() {
            this.f73312c.y(this);
            super.onPause();
        }

        @Override // android.app.Fragment
        public void onResume() {
            super.onResume();
            org.greenrobot.eventbus.c c4 = ErrorDialogManager.f73302a.f73337a.c();
            this.f73312c = c4;
            c4.t(this);
        }
    }

    /* loaded from: classes5.dex */
    public static class a extends androidx.fragment.app.Fragment {

        /* renamed from: a  reason: collision with root package name */
        protected boolean f73314a;

        /* renamed from: b  reason: collision with root package name */
        protected Bundle f73315b;

        /* renamed from: c  reason: collision with root package name */
        private org.greenrobot.eventbus.c f73316c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f73317d;

        /* renamed from: e  reason: collision with root package name */
        private Object f73318e;

        public static void M(Activity activity, Object obj, boolean z3, Bundle bundle) {
            androidx.fragment.app.FragmentManager supportFragmentManager = ((FragmentActivity) activity).getSupportFragmentManager();
            a aVar = (a) supportFragmentManager.findFragmentByTag(ErrorDialogManager.f73304c);
            if (aVar == null) {
                aVar = new a();
                supportFragmentManager.beginTransaction().add(aVar, ErrorDialogManager.f73304c).commit();
                supportFragmentManager.executePendingTransactions();
            }
            aVar.f73314a = z3;
            aVar.f73315b = bundle;
            aVar.f73318e = obj;
        }

        public void N(f fVar) {
            if (ErrorDialogManager.g(this.f73318e, fVar)) {
                ErrorDialogManager.f(fVar);
                androidx.fragment.app.FragmentManager fragmentManager = getFragmentManager();
                fragmentManager.executePendingTransactions();
                androidx.fragment.app.DialogFragment dialogFragment = (androidx.fragment.app.DialogFragment) fragmentManager.findFragmentByTag(ErrorDialogManager.f73303b);
                if (dialogFragment != null) {
                    dialogFragment.dismiss();
                }
                androidx.fragment.app.DialogFragment dialogFragment2 = (androidx.fragment.app.DialogFragment) ErrorDialogManager.f73302a.d(fVar, this.f73314a, this.f73315b);
                if (dialogFragment2 != null) {
                    dialogFragment2.show(fragmentManager, ErrorDialogManager.f73303b);
                }
            }
        }

        @Override // androidx.fragment.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            org.greenrobot.eventbus.c c4 = ErrorDialogManager.f73302a.f73337a.c();
            this.f73316c = c4;
            c4.t(this);
            this.f73317d = true;
        }

        @Override // androidx.fragment.app.Fragment
        public void onPause() {
            this.f73316c.y(this);
            super.onPause();
        }

        @Override // androidx.fragment.app.Fragment
        public void onResume() {
            super.onResume();
            if (this.f73317d) {
                this.f73317d = false;
                return;
            }
            org.greenrobot.eventbus.c c4 = ErrorDialogManager.f73302a.f73337a.c();
            this.f73316c = c4;
            c4.t(this);
        }
    }

    public static void b(Activity activity) {
        e(activity, false, null);
    }

    public static void c(Activity activity, Object obj, boolean z3, Bundle bundle) {
        if (f73302a != null) {
            if (h(activity)) {
                a.M(activity, obj, z3, bundle);
                return;
            } else {
                HoneycombManagerFragment.a(activity, obj, z3, bundle);
                return;
            }
        }
        throw new RuntimeException("You must set the static factory field to configure error dialogs for your app.");
    }

    public static void d(Activity activity, boolean z3) {
        e(activity, z3, null);
    }

    public static void e(Activity activity, boolean z3, Bundle bundle) {
        c(activity, activity.getClass(), z3, bundle);
    }

    protected static void f(f fVar) {
        b bVar = f73302a.f73337a;
        if (bVar.f73333f) {
            if (bVar.f73334g == null) {
                String str = org.greenrobot.eventbus.c.f73209q;
            }
            Throwable th = fVar.f73339a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean g(Object obj, f fVar) {
        Object a4;
        return fVar == null || (a4 = fVar.a()) == null || a4.equals(obj);
    }

    private static boolean h(Activity activity) {
        String name;
        Class<?> cls = activity.getClass();
        do {
            cls = cls.getSuperclass();
            if (cls != null) {
                name = cls.getName();
                if (name.equals("androidx.fragment.app.FragmentActivity")) {
                    return true;
                }
                if (name.startsWith("com.actionbarsherlock.app") && (name.endsWith(".SherlockActivity") || name.endsWith(".SherlockListActivity") || name.endsWith(".SherlockPreferenceActivity"))) {
                    throw new RuntimeException("Please use SherlockFragmentActivity. Illegal activity: " + name);
                }
            } else {
                throw new RuntimeException("Illegal activity type: " + activity.getClass());
            }
        } while (!name.equals("android.app.Activity"));
        if (Build.VERSION.SDK_INT >= 11) {
            return false;
        }
        throw new RuntimeException("Illegal activity without fragment support. Either use Android 3.0+ or android.support.v4.app.FragmentActivity.");
    }
}
