package ru.alexbykov.nopermission;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.annotation.ColorRes;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
/* compiled from: PermissionHelper.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: j  reason: collision with root package name */
    private static final int f74102j = 98;

    /* renamed from: k  reason: collision with root package name */
    private static final int f74103k = 0;

    /* renamed from: a  reason: collision with root package name */
    private Activity f74104a;

    /* renamed from: b  reason: collision with root package name */
    private Fragment f74105b;

    /* renamed from: c  reason: collision with root package name */
    private String[] f74106c;

    /* renamed from: d  reason: collision with root package name */
    private Runnable f74107d;

    /* renamed from: e  reason: collision with root package name */
    private Runnable f74108e;

    /* renamed from: f  reason: collision with root package name */
    private Runnable f74109f;

    /* renamed from: g  reason: collision with root package name */
    private AlertDialog.Builder f74110g;

    /* renamed from: h  reason: collision with root package name */
    private int f74111h;

    /* renamed from: i  reason: collision with root package name */
    private int f74112i = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PermissionHelper.java */
    /* loaded from: classes5.dex */
    public class a implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String[] f74113a;

        a(String[] strArr) {
            this.f74113a = strArr;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            b.this.b(this.f74113a);
        }
    }

    public b(Activity activity) {
        this.f74104a = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public void b(String[] strArr) {
        Activity activity = this.f74104a;
        if (activity != null) {
            activity.requestPermissions(strArr, 98);
        } else {
            this.f74105b.requestPermissions(strArr, 98);
        }
    }

    @SuppressLint({"NewApi"})
    private void e(String[] strArr) {
        if (this.f74110g != null && l(strArr)) {
            x(strArr);
        } else {
            b(strArr);
        }
    }

    @RequiresApi(api = 23)
    private void f() {
        String[] h4 = h();
        if (h4.length > 0) {
            e(h4);
        } else {
            this.f74107d.run();
        }
    }

    private AlertDialog.Builder g(@StringRes int i2, @StringRes int i4) {
        Context context = getContext();
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(context.getString(i2));
        builder.setMessage(context.getString(i4));
        builder.setCancelable(false);
        return builder;
    }

    private Context getContext() {
        Activity activity = this.f74104a;
        return activity == null ? this.f74105b.getContext() : activity;
    }

    private String[] h() {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        for (String str : this.f74106c) {
            if (m(str)) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private boolean i() {
        return (this.f74107d == null || this.f74108e == null) ? false : true;
    }

    private boolean j() {
        return Build.VERSION.SDK_INT >= 23;
    }

    @SuppressLint({"NewApi"})
    private boolean k(String str) {
        Activity activity = this.f74104a;
        if (activity != null) {
            return !activity.shouldShowRequestPermissionRationale(str);
        }
        return !this.f74105b.shouldShowRequestPermissionRationale(str);
    }

    private boolean l(String[] strArr) {
        for (String str : strArr) {
            if (k(str)) {
                return false;
            }
        }
        return true;
    }

    private boolean m(String str) {
        Activity activity = this.f74104a;
        return activity != null ? ContextCompat.checkSelfPermission(activity, str) != 0 : ContextCompat.checkSelfPermission(this.f74105b.getContext(), str) != 0;
    }

    @SuppressLint({"NewApi"})
    private void t(String str) {
        if (k(str)) {
            u();
        } else {
            this.f74108e.run();
        }
        z();
    }

    private void u() {
        Runnable runnable = this.f74109f;
        if (runnable != null) {
            runnable.run();
        }
    }

    private void v() {
        if (j()) {
            f();
        } else {
            this.f74107d.run();
        }
    }

    private void x(String[] strArr) {
        this.f74110g.setPositiveButton(this.f74111h, new a(strArr));
        AlertDialog create = this.f74110g.create();
        create.show();
        if (this.f74112i != 0) {
            create.getButton(-1).setTextColor(this.f74112i);
        }
    }

    private void z() {
        this.f74108e = null;
        this.f74107d = null;
        if (this.f74110g != null) {
            this.f74110g = null;
            this.f74111h = 0;
        }
        if (this.f74109f != null) {
            this.f74109f = null;
        }
    }

    @Deprecated
    public void A() {
        z();
    }

    public b B(@StringRes int i2, @StringRes int i4, @StringRes int i5) {
        this.f74111h = i5;
        this.f74110g = g(i2, i4);
        return this;
    }

    public b c(String str) {
        this.f74106c = r0;
        String[] strArr = {str};
        return this;
    }

    public b d(String... strArr) {
        this.f74106c = strArr;
        return this;
    }

    public b n(Runnable runnable) {
        this.f74108e = runnable;
        return this;
    }

    @Deprecated
    public b o(Runnable runnable) {
        this.f74108e = runnable;
        return this;
    }

    public b p(Runnable runnable) {
        this.f74109f = runnable;
        return this;
    }

    @SuppressLint({"NewApi"})
    public void q(int i2, String[] strArr, int[] iArr) {
        if (i2 == 98) {
            for (String str : strArr) {
                if (m(str)) {
                    t(str);
                    return;
                }
            }
        }
        this.f74107d.run();
        z();
    }

    public b r(Runnable runnable) {
        this.f74107d = runnable;
        return this;
    }

    public void s() {
        if (i()) {
            v();
            return;
        }
        throw new RuntimeException("permissionSuccessListener or permissionDeniedListener have null reference. You must realize onSuccess and onDenied methods");
    }

    public b w(@ColorRes int i2) {
        this.f74112i = ContextCompat.getColor(getContext(), i2);
        return this;
    }

    public void y() {
        Context context = getContext();
        Intent intent = new Intent();
        Uri fromParts = Uri.fromParts("package", context.getPackageName(), null);
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(fromParts);
        context.startActivity(intent);
    }

    public b(Fragment fragment) {
        this.f74105b = fragment;
    }
}
