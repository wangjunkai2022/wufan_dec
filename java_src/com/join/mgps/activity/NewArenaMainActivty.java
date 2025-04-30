package com.join.mgps.activity;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.fragment.o3;
import com.join.mgps.fragment.p3;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activty_new_arena)
/* loaded from: classes.dex */
public class NewArenaMainActivty extends FriendActivity {
    private Animation A0;
    private o3 B0;
    private FragmentManager C0;
    @ViewById

    /* renamed from: p0  reason: collision with root package name */
    RelativeLayout f34369p0;
    @ViewById

    /* renamed from: q0  reason: collision with root package name */
    FrameLayout f34370q0;

    /* renamed from: r0  reason: collision with root package name */
    TextView f34371r0;

    /* renamed from: s0  reason: collision with root package name */
    LinearLayout f34372s0;

    /* renamed from: t0  reason: collision with root package name */
    TextView f34373t0;

    /* renamed from: u0  reason: collision with root package name */
    ScrollTextViewLayout f34374u0;

    /* renamed from: v0  reason: collision with root package name */
    ImageView f34375v0;

    /* renamed from: w0  reason: collision with root package name */
    ImageView f34376w0;

    /* renamed from: x0  reason: collision with root package name */
    ImageView f34377x0;

    /* renamed from: o0  reason: collision with root package name */
    private Context f34368o0 = this;

    /* renamed from: y0  reason: collision with root package name */
    private int f34378y0 = 0;

    /* renamed from: z0  reason: collision with root package name */
    private int f34379z0 = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Animation.AnimationListener {
        a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        setSystemUiHide(true);
        if (!org.greenrobot.eventbus.c.f().m(this)) {
            com.join.mgps.Util.c0.a().d(this);
        }
        getWindow().getDecorView().setSystemUiVisibility(1028);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        this.C0 = supportFragmentManager;
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        View inflate = LayoutInflater.from(this.f34368o0).inflate(R.layout.download_title_layout, (ViewGroup) null);
        this.f34371r0 = (TextView) inflate.findViewById(R.id.biground);
        this.f34372s0 = (LinearLayout) inflate.findViewById(R.id.downloadLayout);
        this.f34374u0 = (ScrollTextViewLayout) inflate.findViewById(R.id.scroll_text_layout);
        this.f34373t0 = (TextView) inflate.findViewById(R.id.scroll_text);
        this.f34375v0 = (ImageView) inflate.findViewById(R.id.hasNewFinishedGameImage);
        this.f34376w0 = (ImageView) inflate.findViewById(R.id.downloadLine);
        this.f34377x0 = (ImageView) inflate.findViewById(R.id.imageLoading);
        this.f34372s0.setVisibility(8);
        this.f34369p0.removeAllViews();
        this.f34369p0.addView(inflate);
        o3 o3Var = this.B0;
        if (o3Var == null) {
            p3 p3Var = new p3();
            this.B0 = p3Var;
            beginTransaction.add(R.id.mg_mian_fragmentlayout, p3Var);
        } else {
            beginTransaction.show(o3Var);
        }
        try {
            beginTransaction.commit();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        checkDownlodingNumber();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkDownlodingNumber() {
        this.f34378y0 = g1.f.G().O();
        this.f34379z0 = g1.f.G().S(this);
        updateLine(g1.f.G().W());
        int i2 = this.f34378y0;
        if (i2 != 0) {
            updateDownloadingPoint(i2);
        } else if (this.f34379z0 != 0) {
            updateNoOpenPoint();
        } else {
            updateHidePoint();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f30860i = "BATTLE_HOME_PAGE";
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        if (lVar.c() != 8) {
            checkDownlodingNumber();
        }
    }

    void startLineAnimation() {
        this.f34376w0.setImageResource(R.drawable.line_blue_bg);
        Animation loadAnimation = AnimationUtils.loadAnimation(this, R.anim.img_translate);
        this.A0 = loadAnimation;
        loadAnimation.setFillAfter(true);
        this.f34377x0.setVisibility(8);
        this.f34377x0.startAnimation(this.A0);
        this.A0.setAnimationListener(new a());
    }

    void stopLineAnimation() {
        this.f34377x0.clearAnimation();
        this.f34377x0.setVisibility(8);
        this.f34376w0.setImageResource(R.drawable.line_white_bg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadingPoint(int i2) {
        this.f34371r0.setVisibility(8);
        if (i2 < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f34371r0.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            this.f34371r0.setLayoutParams(layoutParams);
            this.f34371r0.setCompoundDrawables(null, null, null, null);
            this.f34371r0.setBackgroundResource(R.drawable.mygame_big_round);
            this.f34371r0.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f34371r0.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 4, 0);
            this.f34371r0.setGravity(17);
            this.f34371r0.setLayoutParams(layoutParams2);
            this.f34371r0.setCompoundDrawables(null, null, null, null);
            this.f34371r0.setBackgroundResource(R.drawable.message_round);
            this.f34371r0.setPadding(1, 0, 2, 1);
        }
        TextView textView = this.f34371r0;
        textView.setText(i2 + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateHidePoint() {
        stopLineAnimation();
        this.f34371r0.setVisibility(8);
        this.f34371r0.setText("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateLine(int i2) {
        this.f34374u0.setDrawable(getResources().getDrawable(R.drawable.papa_download_butn));
        if (i2 == 0) {
            stopLineAnimation();
            return;
        }
        this.f34376w0.setImageResource(R.drawable.line_blue_bg);
        startLineAnimation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateNoOpenPoint() {
        stopLineAnimation();
        this.f34371r0.setVisibility(8);
        this.f34371r0.setText("");
        Drawable drawable = getResources().getDrawable(R.drawable.mygame_litle_round);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void y1() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void z1() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }
}
