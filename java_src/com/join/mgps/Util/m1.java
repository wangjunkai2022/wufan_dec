package com.join.mgps.Util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;
/* compiled from: PermissionUtil.java */
/* loaded from: classes3.dex */
public class m1 {

    /* renamed from: a  reason: collision with root package name */
    private static m1 f27693a = null;

    /* renamed from: b  reason: collision with root package name */
    private static List<String> f27694b = null;

    /* renamed from: c  reason: collision with root package name */
    private static final String f27695c = "android.permission.WRITE_EXTERNAL_STORAGE";

    /* renamed from: d  reason: collision with root package name */
    private static final String f27696d = "android.permission.READ_PHONE_STATE";

    /* renamed from: e  reason: collision with root package name */
    private static final String f27697e = "android.permission.CAMERA";

    /* compiled from: PermissionUtil.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void b(String str);

        void c();
    }

    private void a(List<String> list) {
        list.add(f27695c);
        list.add(f27697e);
    }

    public static m1 c() {
        if (f27693a == null) {
            f27693a = new m1();
        }
        return f27693a;
    }

    @TargetApi(23)
    public List<String> b(Activity activity, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (activity.checkSelfPermission(str) != 0) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public boolean d() {
        return Build.VERSION.SDK_INT >= 23;
    }

    @TargetApi(23)
    public void e(Activity activity, int i2, String str, a aVar) {
        ArrayList arrayList = new ArrayList();
        if (d()) {
            arrayList.add(str);
            List<String> b4 = b(activity, arrayList);
            if (b4 != null && b4.size() > 0) {
                activity.requestPermissions((String[]) b4.toArray(new String[b4.size()]), i2);
            } else {
                aVar.a();
            }
        }
    }

    public void f(Activity activity, String[] strArr, int[] iArr, a aVar) {
        f27694b = new ArrayList();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] != 0 && d()) {
                boolean shouldShowRequestPermissionRationale = activity.shouldShowRequestPermissionRationale(strArr[i2]);
                f27694b.add(strArr[i2]);
                if (shouldShowRequestPermissionRationale) {
                    arrayList.add(strArr[i2]);
                } else {
                    arrayList2.add(strArr[i2]);
                }
            }
        }
        if (arrayList.size() > 0) {
            aVar.c();
        } else if (arrayList2.size() > 0) {
            ArrayList arrayList3 = new ArrayList();
            for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                String str = (String) arrayList2.get(i4);
                if (f27695c.equals(str)) {
                    arrayList3.add("存储权限");
                } else if (f27696d.equals(str)) {
                    arrayList3.add("设备信息");
                }
            }
            aVar.b(String.format("权限信息", activity.getString(R.string.app_name), arrayList3.toString().replace("[", "").replace("]", "").replace(",", "、"), m.a.f72569g));
        } else {
            aVar.a();
        }
    }

    @TargetApi(23)
    public void requestPermissions(Activity activity, int i2, a aVar) {
        List<String> list = f27694b;
        if (list == null || list.size() == 0) {
            ArrayList arrayList = new ArrayList();
            f27694b = arrayList;
            a(arrayList);
        }
        if (d()) {
            List<String> b4 = b(activity, f27694b);
            f27694b = b4;
            if (b4 != null && b4.size() > 0) {
                List<String> list2 = f27694b;
                activity.requestPermissions((String[]) list2.toArray(new String[list2.size()]), i2);
                return;
            }
            aVar.a();
        }
    }
}
