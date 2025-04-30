package com.join.mgps.activity;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import com.BaseActivity;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.modleregin.BtReginActivity;
import com.join.kotlin.ui.modleregin.MustPalyReginActivity;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.receiver.NotifcationReceiver;
import com.papa91.arc.ext.ToastManager;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_developer)
/* loaded from: classes3.dex */
public class DeveloperActivity extends BaseActivity {

    /* renamed from: f  reason: collision with root package name */
    public static final String f29480f = "DeveloperActivity";
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    EditText f29481a;

    /* renamed from: b  reason: collision with root package name */
    String f29482b = "/sdcard/testom1.apk";

    /* renamed from: c  reason: collision with root package name */
    boolean f29483c = false;

    /* renamed from: d  reason: collision with root package name */
    com.join.mgps.ad.m f29484d;

    /* renamed from: e  reason: collision with root package name */
    com.join.mgps.ad.l f29485e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.join.mgps.ad.m {

        /* renamed from: s  reason: collision with root package name */
        final /* synthetic */ boolean f29486s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, String str, String str2, boolean z3) {
            super(context, str, str2);
            this.f29486s = z3;
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void a(String str, int i2, int i4) {
            super.a(str, i2, i4);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void b(boolean z3) {
            super.b(z3);
            DeveloperActivity developerActivity = DeveloperActivity.this;
            com.join.mgps.ad.m mVar = developerActivity.f29484d;
            com.join.mgps.ad.c.i(developerActivity, 9);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADShow() {
            super.onADShow();
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(this.f29486s);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onVideoCached() {
            super.onVideoCached();
            DeveloperActivity developerActivity = DeveloperActivity.this;
            com.join.mgps.ad.m mVar = developerActivity.f29484d;
            com.join.mgps.ad.c.i(developerActivity, 9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.join.mgps.ad.l {
        b(Context context, String str, String str2) {
            super(context, str, str2);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void a(String str, int i2, int i4) {
            super.a(str, i2, i4);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void b(boolean z3) {
            super.b(z3);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADClick() {
            super.onADClick();
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADShow() {
            super.onADShow();
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(false);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onVideoCached() {
            super.onVideoCached();
        }
    }

    private String K0(String str) {
        PackageInfo packageArchiveInfo;
        if (str == null || (packageArchiveInfo = getPackageManager().getPackageArchiveInfo(str, 1)) == null) {
            return null;
        }
        String str2 = packageArchiveInfo.applicationInfo.packageName;
        StringBuilder sb = new StringBuilder();
        sb.append("call method getPackageName, packageName = ");
        sb.append(str2);
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btRegin})
    public void E0() {
        startActivity(new Intent(this, BtReginActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btnTTTools})
    public void F0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        Q0((TextView) findViewById(R.id.tv_match), "空降1:05在10:05处有彩蛋,嗯呐01:02，不错1:01:02，非常棒01:01:02，最后一个10:02:03,这些地方90:72:61,90:12:61,09:72:59,1111111没有看点", "(\\d{0,2}:[0-5][0-9]:[0-5][0-9])|([0-5][0-9]:[0-5][0-9])");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btn_delete_file})
    public void H0() {
        UtilsMy.delete(new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/testabc/test2"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btn_notify})
    public void I0() {
        Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.icon);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this);
        builder.setSmallIcon(R.drawable.icon).setContentTitle("正在下载").setLargeIcon(decodeResource).setContentIntent(PendingIntent.getBroadcast(this, (int) SystemClock.uptimeMillis(), new Intent(f1.a.f65497q0, null, this, NotifcationReceiver.class), 134217728)).setAutoCancel(true).setOnlyAlertOnce(true).setChannelId("channel_1").setPriority(4);
        ((NotificationManager) getSystemService("notification")).notify(1, builder.build());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btn_download_finish})
    public void J0() {
        new com.join.mgps.dialog.e(this).show();
    }

    public void L0(Context context, String str, String str2) {
        if (this.f29485e == null && com.join.mgps.Util.d2.i(str)) {
            this.f29485e = new b(context, str, str2);
        } else {
            this.f29485e.h(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.install})
    public void M0() {
        if (com.join.mgps.Util.d2.h(this.f29481a.getText().toString())) {
            ToastManager.show("输入安装包路径");
        } else if (!new File(this.f29481a.getText().toString()).exists()) {
            ToastManager.show("安装包不存在");
        } else {
            this.f29482b = this.f29481a.getText().toString();
            com.join.mgps.va.overmind.e.p().z(this.f29482b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btn_install_a})
    public void N0() {
        com.join.android.app.common.utils.a.g0(this).u(this, new File("/storage/emulated/0/Android/data/com.join.android.app.mgsim.wufun/files/wufan91/46/roms/test_new.apk"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btn_install_b})
    public void O0() {
        com.join.android.app.common.utils.a.g0(this).u(this, new File("/storage/emulated/0/Android/data/com.join.android.app.mgsim.wufun/files/wufan91/46/roms/test_old.apk"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.launch})
    public void P0() {
        String K0 = K0(this.f29482b);
        if (TextUtils.isEmpty(K0)) {
            return;
        }
        com.join.mgps.va.overmind.e.p().V(this, K0);
    }

    public void Q0(TextView textView, String str, String str2) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        Matcher matcher = Pattern.compile(str2, 2).matcher(str);
        while (matcher.find()) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((int) SupportMenu.CATEGORY_MASK), matcher.start(0), matcher.end(0), 33);
        }
        textView.setText(spannableStringBuilder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.mustpaly})
    public void R0() {
        startActivity(new Intent(this, MustPalyReginActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btnFCLoad})
    public void S0() {
        L0(this, "5311400", "949085233");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btnFCShow})
    public void T0() {
        com.join.mgps.ad.l lVar = this.f29485e;
        if (lVar != null) {
            lVar.p(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btnRewardLoad})
    public void U0() {
        initTTAd("5311400", "949129415", false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btnRewardShow})
    public void V0() {
        com.join.mgps.ad.m mVar = this.f29484d;
        if (mVar != null) {
            mVar.p(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.start_app})
    public void W0() {
        com.join.android.app.common.utils.a.g0(this);
        APKUtils.X(this, "com.rockstar.gta3");
        PackageManager packageManager = getPackageManager();
        try {
            getPackageManager().getApplicationInfo("com.rockstargames.gtavc", 8192);
        } catch (PackageManager.NameNotFoundException e4) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo("com.rockstargames.gtavc", 1);
                if (packageInfo != null) {
                    int length = packageInfo.activities.length;
                }
            } catch (PackageManager.NameNotFoundException e5) {
                e5.printStackTrace();
            }
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        ToastManager.init(this);
    }

    public void initTTAd(String str, String str2, boolean z3) {
        if (this.f29484d == null && com.join.mgps.Util.d2.i(str)) {
            a aVar = new a(this, str, str2, z3);
            this.f29484d = aVar;
            aVar.e();
            return;
        }
        com.join.mgps.ad.m mVar = this.f29484d;
        if (mVar != null) {
            mVar.h(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, @Nullable Intent intent) {
        super.onActivityResult(i2, i4, intent);
    }
}
