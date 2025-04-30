package com.join.mgps.va.activity;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import com.join.android.app.mgsim.wufun.R;
@TargetApi(23)
/* loaded from: classes.dex */
public class PermissionRequestActivity extends Activity {

    /* renamed from: f  reason: collision with root package name */
    public static final int f52320f = 995;

    /* renamed from: g  reason: collision with root package name */
    public static final String f52321g = "extra.permission";

    /* renamed from: h  reason: collision with root package name */
    public static final String f52322h = "extra.app_name";

    /* renamed from: i  reason: collision with root package name */
    public static final String f52323i = "extra.user_id";

    /* renamed from: j  reason: collision with root package name */
    public static final String f52324j = "extra.package_name";

    /* renamed from: a  reason: collision with root package name */
    private int f52325a;

    /* renamed from: b  reason: collision with root package name */
    private String f52326b;

    /* renamed from: c  reason: collision with root package name */
    private String f52327c;

    /* renamed from: d  reason: collision with root package name */
    Dialog f52328d;

    /* renamed from: e  reason: collision with root package name */
    AlertDialog.Builder f52329e = null;

    /* loaded from: classes4.dex */
    class a implements DialogInterface.OnClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", PermissionRequestActivity.this.getPackageName(), null));
            PermissionRequestActivity.this.startActivity(intent);
            PermissionRequestActivity.this.finish();
        }
    }

    public static boolean a(int[] iArr) {
        for (int i2 : iArr) {
            if (i2 == -1) {
                return false;
            }
        }
        return true;
    }

    public static void b(@NonNull Activity activity, @NonNull String[] strArr, @NonNull String str, int i2, @NonNull String str2, int i4) {
        Intent intent = new Intent(activity, PermissionRequestActivity.class);
        intent.putExtra(f52321g, strArr);
        intent.putExtra(f52322h, str);
        intent.putExtra(f52324j, str2);
        intent.putExtra(f52323i, i2);
        activity.startActivityForResult(intent, i4);
        activity.overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String[] stringArrayExtra = intent.getStringArrayExtra(f52321g);
        this.f52326b = intent.getStringExtra(f52322h);
        this.f52327c = intent.getStringExtra(f52324j);
        this.f52325a = intent.getIntExtra(f52323i, -1);
        requestPermissions(stringArrayExtra, f52320f);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (a(iArr)) {
            Intent intent = new Intent();
            intent.putExtra("pkg", this.f52327c);
            intent.putExtra("user_id", this.f52325a);
            setResult(-1, intent);
            finish();
            return;
        }
        Dialog dialog = this.f52328d;
        if (dialog == null) {
            this.f52329e = new AlertDialog.Builder(this, R.style.AlertDialogCustom);
        } else if (dialog.isShowing()) {
            return;
        }
        this.f52329e.setTitle("提示");
        boolean z3 = false;
        for (String str : strArr) {
            if (str.equals("android.permission.READ_EXTERNAL_STORAGE") || str.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                z3 = true;
            }
        }
        if (z3) {
            this.f52329e.setMessage("需要打开读写存储权限，请去设置中开启权限");
        } else {
            this.f52329e.setMessage("请去设置中开启权限");
        }
        this.f52329e.setPositiveButton("去打开", new a());
        this.f52328d = this.f52329e.show();
    }
}
