package com.join.mgps.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ImageSpan;
import android.view.Display;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.i2;
import com.join.mgps.service.CommonService;
import com.join.mgps.service.CommonService_;
import java.lang.ref.WeakReference;
import java.text.DecimalFormat;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
@EActivity(R.layout.dialog_download_high_speeding)
/* loaded from: classes.dex */
public class DownloadHighSpeedingDialog extends BaseFragmentActivity {
    @ViewById(R.id.speed)

    /* renamed from: a  reason: collision with root package name */
    TextView f47348a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ProgressBar f47349b;
    @Extra

    /* renamed from: c  reason: collision with root package name */
    DownloadTask f47350c;
    @Extra

    /* renamed from: d  reason: collision with root package name */
    String f47351d;

    /* renamed from: e  reason: collision with root package name */
    boolean f47352e;

    /* renamed from: f  reason: collision with root package name */
    boolean f47353f;

    /* renamed from: g  reason: collision with root package name */
    boolean f47354g;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    View f47358k;

    /* renamed from: l  reason: collision with root package name */
    b f47359l;

    /* renamed from: h  reason: collision with root package name */
    boolean f47355h = false;

    /* renamed from: i  reason: collision with root package name */
    boolean f47356i = true;

    /* renamed from: j  reason: collision with root package name */
    int f47357j = 0;

    /* renamed from: m  reason: collision with root package name */
    private ContentObserver f47360m = new a(new Handler());

    /* loaded from: classes3.dex */
    class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            int i2;
            if (Build.VERSION.SDK_INT < 21) {
                i2 = Settings.System.getInt(DownloadHighSpeedingDialog.this.getContentResolver(), "navigationbar_is_min", 0);
            } else {
                i2 = Settings.Global.getInt(DownloadHighSpeedingDialog.this.getContentResolver(), "navigationbar_is_min", 0);
            }
            if (i2 == 1) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadHighSpeedingDialog.this.f47358k.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
                DownloadHighSpeedingDialog.this.f47358k.setLayoutParams(layoutParams);
                return;
            }
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadHighSpeedingDialog.this.f47358k.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = DownloadHighSpeedingDialog.this.getNavigationBarHeight();
            DownloadHighSpeedingDialog.this.f47358k.setLayoutParams(layoutParams2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b extends ContentObserver {
        b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            super.onChange(z3);
            int i2 = 0;
            if (DownloadHighSpeedingDialog.this.isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) DownloadHighSpeedingDialog.this.f47358k.getLayoutParams();
                int navigationBarHeight = DownloadHighSpeedingDialog.this.getNavigationBarHeight();
                if (!com.join.mgps.Util.i1.e() || Build.VERSION.SDK_INT > 19) {
                    i2 = navigationBarHeight;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i2;
                DownloadHighSpeedingDialog.this.f47358k.setLayoutParams(layoutParams);
                return;
            }
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) DownloadHighSpeedingDialog.this.f47358k.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = 0;
            DownloadHighSpeedingDialog.this.f47358k.setLayoutParams(layoutParams2);
        }
    }

    public static int F0(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static View G0(Activity activity) {
        return new View(activity);
    }

    public static void K0(Activity activity, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 > 21) {
            activity.getWindow().setNavigationBarColor(i2);
        } else if (i4 >= 19) {
            activity.getWindow().addFlags(134217728);
            View G0 = G0(activity);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, F0(activity));
            layoutParams.gravity = 80;
            G0.setLayoutParams(layoutParams);
            G0.setBackgroundColor(i2);
            ((ViewGroup) activity.getWindow().getDecorView()).addView(G0);
        }
    }

    public static boolean checkDeviceHasNavigationBar(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", q.a.f73954a);
        boolean z3 = false;
        boolean z4 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            if (!"1".equals(str)) {
                z3 = "0".equals(str) ? true : z4;
            }
            return z3;
        } catch (Exception unused) {
            return z4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNavigationBarHeight() {
        Resources resources = getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", q.a.f73954a));
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    private void registerNavigationBarObserver() {
        if (Build.VERSION.SDK_INT < 21) {
            getContentResolver().registerContentObserver(Settings.System.getUriFor("navigationbar_is_min"), true, this.f47360m);
        } else {
            getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_is_min"), true, this.f47360m);
        }
    }

    private void updateProgressPartly() {
        long parseLong;
        long j4;
        long parseLong2;
        try {
            DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(this.f47351d);
            if (f4 == null) {
                return;
            }
            String speed = f4.getSpeed();
            if (speed.endsWith("M")) {
                j4 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                parseLong2 = Long.parseLong(speed.replace("M", ""));
                Long.signum(parseLong2);
            } else if (speed.endsWith("KB")) {
                j4 = 1024;
                parseLong2 = Long.parseLong(speed.replace("KB", ""));
            } else {
                parseLong = Long.parseLong(speed.replace("B", ""));
                L0(parseLong + 0);
                this.f47349b.setProgress((int) f4.getProgress());
                if (f4.getStatus() != 5 || 11 == f4.getStatus()) {
                    finish();
                }
                return;
            }
            parseLong = parseLong2 * j4;
            L0(parseLong + 0);
            this.f47349b.setProgress((int) f4.getProgress());
            if (f4.getStatus() != 5) {
            }
            finish();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void E0() {
        try {
            if (this.f47354g) {
                return;
            }
            DownloadTask B = g1.f.G().B(this.f47351d);
            if (B != null) {
                if (B.getStatus() == 5) {
                    finish();
                } else if (B.getStatus() == 11) {
                    finish();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void H0() {
        try {
            registerContentResolver();
            if (checkDeviceHasNavigationBar(this) && isNavigationBarShow()) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f47358k.getLayoutParams();
                int navigationBarHeight = getNavigationBarHeight();
                if (com.join.mgps.Util.i1.e() && Build.VERSION.SDK_INT <= 19) {
                    navigationBarHeight = 0;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = navigationBarHeight;
                this.f47358k.setLayoutParams(layoutParams);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.ad.result"})
    public void I0(@Receiver.Extra int i2, @Receiver.Extra String str) {
        if (!TextUtils.isEmpty(str) && str.equals(this.f47351d) && i2 == 21) {
            this.f47352e = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
    }

    void L0(long j4) {
        String format;
        String str;
        DecimalFormat decimalFormat = new DecimalFormat("#");
        String str2 = "B";
        if (j4 < 1024) {
            format = decimalFormat.format(j4);
            str = "B";
        } else if (j4 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            double d4 = j4;
            Double.isNaN(d4);
            format = decimalFormat.format(d4 / 1024.0d);
            str = "KB";
        } else if (j4 < IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            double d5 = j4;
            Double.isNaN(d5);
            format = decimalFormat.format(d5 / 1048576.0d);
            str = "M";
        } else {
            double d6 = j4;
            Double.isNaN(d6);
            format = decimalFormat.format(d6 / 1.073741824E9d);
            str = "G";
        }
        if (format.equals(".0") || format.equals(".00")) {
            format = "0";
        } else {
            str2 = str;
        }
        this.f47357j = getResources().getDimensionPixelSize(R.dimen.wdp24);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) format);
        SpannableString spannableString = new SpannableString(str2 + "/S ");
        spannableString.setSpan(new AbsoluteSizeSpan(getResources().getDimensionPixelSize(R.dimen.wdp36)), 0, spannableString.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString);
        SpannableString spannableString2 = new SpannableString("图");
        spannableString2.setSpan(new AbsoluteSizeSpan(getResources().getDimensionPixelSize(R.dimen.wdp36)), 0, spannableString2.length(), 33);
        spannableString2.setSpan(new c(this, (int) R.drawable.ic_lightning, 0), 0, spannableString2.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString2);
        this.f47348a.setText(spannableStringBuilder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        setFinishOnTouchOutside(false);
        com.join.mgps.Util.c0.a().d(this);
        H0();
        updateProgressPartly();
        this.f47355h = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void close() {
        i2.a(this).b("后台下载中");
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.bottom_out);
    }

    public boolean isNavigationBarShow() {
        if (Build.VERSION.SDK_INT < 17) {
            return (ViewConfiguration.get(this).hasPermanentMenuKey() || KeyCharacterMap.deviceHasKey(4)) ? false : true;
        }
        try {
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (com.join.mgps.Util.i1.e()) {
            return com.join.mgps.Util.i1.a(this) && !com.join.mgps.Util.i1.f(this);
        }
        if (com.join.mgps.Util.i1.g() && Settings.Global.getInt(getContentResolver(), "force_fsg_nav_bar", 0) != 0) {
            return false;
        }
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        return point2.y != point.y;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            CommonService.H = true;
            getContentResolver().unregisterContentObserver(this.f47359l);
            getContentResolver().unregisterContentObserver(this.f47360m);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        if (a4 == null || !(TextUtils.isEmpty(a4.getCrc_link_type_val()) || TextUtils.isEmpty(this.f47351d) || !this.f47351d.equals(a4.getCrc_link_type_val()))) {
            int c4 = lVar.c();
            if (c4 == 5) {
                finish();
            } else if (c4 == 8) {
                updateUI(a4, 4);
            } else if (c4 != 11) {
            } else {
                if (this.f47352e) {
                    finish();
                }
                if (this.f47353f) {
                    this.f47354g = true;
                    finish();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f47353f = false;
        CommonService.H = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        E0();
        this.f47353f = true;
        if (this.f47355h && this.f47356i) {
            this.f47355h = false;
            if (this.f47350c == null) {
                this.f47350c = g1.f.G().B(this.f47351d);
            }
            this.f47356i = false;
            if (this.f47350c != null) {
                CommonService.H = true;
                ((CommonService_.u1) ((CommonService_.u1) CommonService_.d2(this).extra("getDownloadRecomedData", this.f47350c.getCrc_link_type_val())).extra("downloadTask", this.f47350c)).a();
                return;
            }
            return;
        }
        this.f47355h = true;
    }

    void registerContentResolver() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f47359l = new b(new Handler());
            getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_hide_bar_enabled"), true, this.f47359l);
            registerNavigationBarObserver();
        }
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        com.join.mgps.Util.z1.o(this, 16777215, true);
    }

    void updateUI(DownloadTask downloadTask, int i2) {
        if (i2 == 4) {
            updateProgressPartly();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends ImageSpan {

        /* renamed from: c  reason: collision with root package name */
        public static final int f47363c = 2;

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<Drawable> f47364a;

        public c(Context context, int i2, int i4) {
            super(context, i2, i4);
        }

        private Drawable a() {
            WeakReference<Drawable> weakReference = this.f47364a;
            Drawable drawable = weakReference != null ? weakReference.get() : null;
            if (drawable == null) {
                Drawable drawable2 = getDrawable();
                this.f47364a = new WeakReference<>(drawable2);
                return drawable2;
            }
            return drawable;
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i2, int i4, float f4, int i5, int i6, int i7, @NonNull Paint paint) {
            int i8;
            Drawable a4 = a();
            canvas.save();
            int i9 = DownloadHighSpeedingDialog.this.f47357j;
            a4.setBounds(0, 0, i9, i9);
            int i10 = ((ImageSpan) this).mVerticalAlignment;
            if (i10 == 1) {
                i8 = 0 - paint.getFontMetricsInt().descent;
            } else if (i10 == 0) {
                i8 = i6 - a4.getBounds().bottom;
            } else {
                Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
                i8 = ((((fontMetricsInt.descent + i6) + i6) + fontMetricsInt.ascent) / 2) - (a4.getBounds().bottom / 2);
            }
            canvas.translate(f4, i8);
            a4.draw(canvas);
            canvas.restore();
        }

        public c(Drawable drawable, int i2) {
            super(drawable, i2);
        }

        public c(Context context, Bitmap bitmap, int i2) {
            super(context, bitmap, i2);
        }
    }
}
