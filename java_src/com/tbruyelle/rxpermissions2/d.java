package com.tbruyelle.rxpermissions2;

import android.annotation.TargetApi;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import io.reactivex.subjects.PublishSubject;
import java.util.HashMap;
import java.util.Map;
/* compiled from: RxPermissionsFragment.java */
/* loaded from: classes4.dex */
public class d extends Fragment {

    /* renamed from: c  reason: collision with root package name */
    private static final int f59270c = 42;

    /* renamed from: a  reason: collision with root package name */
    private Map<String, PublishSubject<b>> f59271a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private boolean f59272b;

    public boolean M(@NonNull String str) {
        return this.f59271a.containsKey(str);
    }

    public PublishSubject<b> N(@NonNull String str) {
        return this.f59271a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(23)
    public boolean O(String str) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity.checkSelfPermission(str) == 0;
        }
        throw new IllegalStateException("This fragment must be attached to an activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(23)
    public boolean P(String str) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity.getPackageManager().isPermissionRevokedByPolicy(str, getActivity().getPackageName());
        }
        throw new IllegalStateException("This fragment must be attached to an activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q(String str) {
        if (this.f59272b) {
            String str2 = c.f59254b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R(String[] strArr, int[] iArr, boolean[] zArr) {
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            Q("onRequestPermissionsResult  " + strArr[i2]);
            PublishSubject<b> publishSubject = this.f59271a.get(strArr[i2]);
            if (publishSubject == null) {
                String str = c.f59254b;
                return;
            }
            this.f59271a.remove(strArr[i2]);
            publishSubject.onNext(new b(strArr[i2], iArr[i2] == 0, zArr[i2]));
            publishSubject.onComplete();
        }
    }

    public void S(boolean z3) {
        this.f59272b = z3;
    }

    public void T(@NonNull String str, @NonNull PublishSubject<b> publishSubject) {
        this.f59271a.put(str, publishSubject);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    @Override // androidx.fragment.app.Fragment
    @TargetApi(23)
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 != 42) {
            return;
        }
        boolean[] zArr = new boolean[strArr.length];
        for (int i4 = 0; i4 < strArr.length; i4++) {
            zArr[i4] = shouldShowRequestPermissionRationale(strArr[i4]);
        }
        R(strArr, iArr, zArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(23)
    public void requestPermissions(@NonNull String[] strArr) {
        requestPermissions(strArr, 42);
    }
}
