package com.join.mgps.activity;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.github.snowdream.android.app.downloader.b;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.CloudShareViewModle;
import com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment;
import com.join.kotlin.ui.cloudarchive.ModgameModTabFragment;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
import com.join.kotlin.ui.cloudarchive.dialog.DownloadArchiveDialog;
import com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback;
import com.join.kotlin.ui.cloudarchive.dialog.ModPromptDialog;
import com.join.kotlin.ui.cloudarchive.dialog.NoticeArchiveDialog;
import com.join.kotlin.ui.introduction.ModIntroductionFragment;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.k1;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import com.join.mgps.adapter.a3;
import com.join.mgps.adapter.z2;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.MyTouchFrameLayout;
import com.join.mgps.dialog.r0;
import com.join.mgps.dialog.z0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.DetialShowImageSingBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GeneralCfgBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.dto.ModGameRecommendAdBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RequestModGameArgs;
import com.join.mgps.dto.RequestModGameRecommendAdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.mod.bean.ModMeta;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.wrapper.UserPrefs;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Fullscreen;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.WindowFeature;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@WindowFeature({1})
@EActivity(R.layout.activity_mod_game_index)
@Fullscreen
/* loaded from: classes.dex */
public class ModGameIndexActivity extends BaseAppCompatActivity implements View.OnSystemUiVisibilityChangeListener {
    private static com.github.snowdream.android.app.downloader.b V0 = null;
    static b.InterfaceC0098b W0 = null;
    private static Map<String, com.github.snowdream.android.app.downloader.c> X0 = new ConcurrentHashMap(0);
    public static final int Y0 = 7;
    @ViewById
    ImageView A;
    private boolean A0;
    @ViewById
    ImageView B;
    private Activity B0;
    @ViewById
    MyTouchFrameLayout C;
    private int C0;
    @ViewById
    MyTouchFrameLayout D;
    private boolean D0;
    @ViewById
    View E;
    private long E0;
    @ViewById
    LinearLayout F;
    private boolean F0;
    @ViewById
    TextView G;
    private int G0;
    @Extra
    String H;
    @Extra
    String I;
    @Extra
    String J;
    private DownloadTask K;
    private CloudShareViewModle K0;
    Dialog P0;
    ModgameModTabFragment Q0;
    ModgameCloudListFragment R0;
    ModIntroductionFragment S0;
    Dialog U0;
    @ViewById(R.id.iv_back)

    /* renamed from: a  reason: collision with root package name */
    ImageView f33739a;
    @ViewById(R.id.tv_game_name)

    /* renamed from: b  reason: collision with root package name */
    TextView f33740b;
    @ViewById(R.id.sdv_image)

    /* renamed from: c  reason: collision with root package name */
    SimpleDraweeView f33741c;
    @ViewById(R.id.ll_mod_start)

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f33742d;
    @ViewById(R.id.ll_stand_start)

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f33743e;
    @ViewById(R.id.iv_mod_play)

    /* renamed from: f  reason: collision with root package name */
    ImageView f33744f;
    @ViewById(R.id.tv_mod_type)

    /* renamed from: g  reason: collision with root package name */
    TextView f33745g;
    @ViewById(R.id.tv_new_version)

    /* renamed from: h  reason: collision with root package name */
    TextView f33746h;
    @ViewById(R.id.tv_stand_type)

    /* renamed from: i  reason: collision with root package name */
    TextView f33747i;
    @ViewById(R.id.tv_stand_new_version)

    /* renamed from: j  reason: collision with root package name */
    TextView f33748j;
    @ViewById(R.id.tv_open_vip)

    /* renamed from: k  reason: collision with root package name */
    SimpleDraweeView f33749k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    ImageView f33750l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ImageView f33751m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f33752n;

    /* renamed from: n0  reason: collision with root package name */
    private DownloadTask f33753n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    TextView f33754o;

    /* renamed from: o0  reason: collision with root package name */
    ModGameDetailBean f33755o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    ConstraintLayout f33756p;

    /* renamed from: p0  reason: collision with root package name */
    GamedetialModleFourBean f33757p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    TextView f33758q;

    /* renamed from: q0  reason: collision with root package name */
    GamedetialModleFourBean f33759q0;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    SimpleDraweeView f33760r;

    /* renamed from: r0  reason: collision with root package name */
    private String f33761r0;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    ViewPager f33762s;

    /* renamed from: s0  reason: collision with root package name */
    ExtBean f33763s0;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    TabLayout f33764t;

    /* renamed from: t0  reason: collision with root package name */
    com.join.mgps.dialog.z0 f33765t0;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    View f33766u;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    View f33768v;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    View f33770w;
    @Pref

    /* renamed from: w0  reason: collision with root package name */
    PrefDef_ f33771w0;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    View f33772x;

    /* renamed from: x0  reason: collision with root package name */
    private z2 f33773x0;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    RecyclerView f33774y;

    /* renamed from: y0  reason: collision with root package name */
    private a3 f33775y0;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    RecyclerView f33776z;

    /* renamed from: u0  reason: collision with root package name */
    private int f33767u0 = 0;

    /* renamed from: v0  reason: collision with root package name */
    private boolean f33769v0 = false;

    /* renamed from: z0  reason: collision with root package name */
    private ArrayList<CollectionBeanSubBusiness> f33777z0 = new ArrayList<>();
    private int H0 = 0;
    private boolean I0 = false;
    private boolean J0 = false;
    private Runnable L0 = new p();
    private Runnable M0 = new q();
    private int N0 = 0;
    private long O0 = 0;
    List<x> T0 = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Animator.AnimatorListener {
        a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ModGameIndexActivity.this.D.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Animator.AnimatorListener {
        b() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends LinearSmoothScroller {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33780a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context context, int i2) {
            super(context);
            this.f33780a = i2;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateDyToMakeVisible(View view, int i2) {
            float dimension;
            if (this.f33780a == 1) {
                dimension = ModGameIndexActivity.this.getResources().getDimension(R.dimen.wdp140);
            } else {
                dimension = ModGameIndexActivity.this.getResources().getDimension(R.dimen.wdp85);
            }
            return (int) (super.calculateDyToMakeVisible(view, i2) + dimension);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return super.calculateSpeedPerPixel(displayMetrics) / 10.0f;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected int getVerticalSnapPreference() {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements ModPromptCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ModPromptDialog f33782a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f33783b;

        d(ModPromptDialog modPromptDialog, DownloadTask downloadTask) {
            this.f33782a = modPromptDialog;
            this.f33783b = downloadTask;
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback
        public void callback1() {
            ModGameIndexActivity.this.k2(this.f33783b);
            this.f33782a.dismiss();
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback
        public void callback2() {
            ModGameIndexActivity.this.h2();
            this.f33782a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements ClickDelDialogListener {
        e() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
        public void onClickCancleButn() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
        public void onClickOkButn() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements ClickDelDialogListener {
        f() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
        public void onClickCancleButn() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
        public void onClickOkButn() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements ClickDelDialogListener {
        g() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
        public void onClickCancleButn() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
        public void onClickOkButn() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements GameRoomActivity.x {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f33788a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DownloadTask f33789b;

        h(Context context, DownloadTask downloadTask) {
            this.f33788a = context;
            this.f33789b = downloadTask;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
            com.join.android.app.common.utils.a.g0(this.f33788a);
            APKUtils.X(this.f33788a, this.f33789b.getPackageName());
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
            com.join.android.app.common.utils.a.g0(this.f33788a);
            APKUtils.X(this.f33788a, this.f33789b.getPackageName());
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements TabLayout.d {
        i() {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void a(TabLayout.g gVar) {
            if (gVar == null || gVar.g() == null) {
                return;
            }
            gVar.g().findViewById(R.id.main).setBackgroundResource(ModGameIndexActivity.this.T0.get(gVar.k()).f33813b);
            ((ImageView) gVar.g().findViewById(R.id.icon)).setImageResource(ModGameIndexActivity.this.T0.get(gVar.k()).f33815d);
            ((TextView) gVar.g().findViewById(R.id.name)).setTextColor(Color.parseColor(ModGameIndexActivity.this.T0.get(gVar.k()).f33816e));
            if (ModGameIndexActivity.this.T0.get(gVar.k()).f33817f.equals("MOD")) {
                com.papa.sim.statistic.p.l(ModGameIndexActivity.this).K1(Event.changeCloudItTab, new Ext().setFrom("1").setGameId(ModGameIndexActivity.this.H));
            } else if (ModGameIndexActivity.this.T0.get(gVar.k()).f33817f.equals("我的存档")) {
                com.papa.sim.statistic.p.l(ModGameIndexActivity.this).K1(Event.changeCloudItTab, new Ext().setFrom(PayCenterOrderRequest.PAY_TYPE_RECHARGE));
            } else if (ModGameIndexActivity.this.T0.get(gVar.k()).f33817f.equals("攻略")) {
                gVar.g().findViewById(R.id.tvRedPoint).setVisibility(8);
                gVar.g().findViewById(R.id.icon_gif).setVisibility(8);
                gVar.g().findViewById(R.id.icon).setVisibility(0);
                com.papa.sim.statistic.p.l(ModGameIndexActivity.this).m1(Event.singleStartGamePageList, Event.ClickIntroTab, "", new Ext().setFrom("1"), new Data().setGameId(Long.parseLong(ModGameIndexActivity.this.H)));
                com.papa.sim.statistic.p.l(ModGameIndexActivity.this).K1(Event.changeCloudItTab, new Ext().setFrom(PayCenterOrderRequest.PAY_TYPE_RECHARGE).setGameId(ModGameIndexActivity.this.H));
            } else {
                com.papa.sim.statistic.p.l(ModGameIndexActivity.this).K1(Event.changeCloudItTab, new Ext().setFrom("0").setGameId(ModGameIndexActivity.this.H));
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g gVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g gVar) {
            if (gVar == null || gVar.g() == null) {
                return;
            }
            gVar.g().findViewById(R.id.main).setBackgroundResource(R.drawable.alph);
            ((ImageView) gVar.g().findViewById(R.id.icon)).setImageResource(ModGameIndexActivity.this.T0.get(gVar.k()).f33812a);
            ((TextView) gVar.g().findViewById(R.id.name)).setTextColor(Color.parseColor(ModGameIndexActivity.this.T0.get(gVar.k()).f33814c));
            if (ModGameIndexActivity.this.T0.get(gVar.k()).f33817f.equals("攻略")) {
                gVar.g().findViewById(R.id.icon).setVisibility(8);
                gVar.g().findViewById(R.id.icon_gif).setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends com.join.mgps.dialog.z0 {
        j(Context context) {
            super(context);
        }

        @Override // com.join.mgps.dialog.z0, android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            if (ModGameIndexActivity.this.f33769v0) {
                if (ModGameIndexActivity.this.f33767u0 == 2 && ModGameIndexActivity.this.f33753n0 != null && ModGameIndexActivity.this.f33753n0.getStatus() != 2 && ModGameIndexActivity.this.f33753n0.getStatus() != 9 && ModGameIndexActivity.this.f33753n0.getStatus() != 42) {
                    ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
                    if (modGameIndexActivity.f33757p0 != null) {
                        modGameIndexActivity.e2(modGameIndexActivity.f33753n0, ModGameIndexActivity.this.f33757p0);
                    }
                }
                ModGameIndexActivity modGameIndexActivity2 = ModGameIndexActivity.this;
                modGameIndexActivity2.a2(modGameIndexActivity2.f33753n0);
                return;
            }
            if (ModGameIndexActivity.this.f33767u0 == 2 && ModGameIndexActivity.this.K != null && ModGameIndexActivity.this.K.getStatus() != 2 && ModGameIndexActivity.this.K.getStatus() != 9 && ModGameIndexActivity.this.K.getStatus() != 42) {
                ModGameIndexActivity modGameIndexActivity3 = ModGameIndexActivity.this;
                modGameIndexActivity3.e2(modGameIndexActivity3.K, ModGameIndexActivity.this.f33759q0);
            }
            ModGameIndexActivity modGameIndexActivity4 = ModGameIndexActivity.this;
            modGameIndexActivity4.a2(modGameIndexActivity4.K);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Observer<CloudShareViewModle.CloudShareEvent> {
        k() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(@Nullable CloudShareViewModle.CloudShareEvent cloudShareEvent) {
            if (cloudShareEvent.getShowdownloadModDialog() == 0 || ModGameIndexActivity.this.K == null) {
                return;
            }
            ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
            modGameIndexActivity.U1(modGameIndexActivity.K);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements DialogInterface.OnDismissListener {
        l() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (ModGameIndexActivity.this.f33769v0) {
                if (ModGameIndexActivity.this.f33753n0 != null && ModGameIndexActivity.this.f33753n0.getStatus() == 2) {
                    ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
                    modGameIndexActivity.b2(modGameIndexActivity.f33753n0);
                    return;
                }
                ModGameIndexActivity modGameIndexActivity2 = ModGameIndexActivity.this;
                modGameIndexActivity2.a2(modGameIndexActivity2.f33753n0);
            } else if (ModGameIndexActivity.this.K != null && ModGameIndexActivity.this.K.getStatus() == 2) {
                ModGameIndexActivity modGameIndexActivity3 = ModGameIndexActivity.this;
                modGameIndexActivity3.b2(modGameIndexActivity3.K);
            } else {
                ModGameIndexActivity modGameIndexActivity4 = ModGameIndexActivity.this;
                modGameIndexActivity4.a2(modGameIndexActivity4.K);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements z0.a {

        /* loaded from: classes3.dex */
        class a implements GameRoomActivity.x {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ com.join.mgps.dialog.z0 f33795a;

            a(com.join.mgps.dialog.z0 z0Var) {
                this.f33795a = z0Var;
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onFail(int i2) {
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onSuccess(int i2, int i4) {
                ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
                modGameIndexActivity.e2(modGameIndexActivity.K, ModGameIndexActivity.this.f33759q0);
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
                com.join.mgps.dialog.z0 z0Var = this.f33795a;
                if (z0Var == null || !z0Var.isShowing()) {
                    return;
                }
                this.f33795a.dismiss();
            }
        }

        m() {
        }

        @Override // com.join.mgps.dialog.z0.a
        public void a(com.join.mgps.dialog.z0 z0Var) {
            ModGameIndexActivity.this.f33767u0 = 2;
            ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
            modGameIndexActivity.f33765t0.C(modGameIndexActivity.f33767u0, ModGameIndexActivity.this.f33769v0);
            if (ModGameIndexActivity.this.f33769v0) {
                if (ModGameIndexActivity.this.f33753n0.getStatus() != 9 && ModGameIndexActivity.this.f33753n0.getStatus() != 42) {
                    ModGameIndexActivity modGameIndexActivity2 = ModGameIndexActivity.this;
                    modGameIndexActivity2.e2(modGameIndexActivity2.f33753n0, ModGameIndexActivity.this.f33757p0);
                    return;
                }
                ModGameIndexActivity modGameIndexActivity3 = ModGameIndexActivity.this;
                modGameIndexActivity3.j2(modGameIndexActivity3.f33753n0, ModGameIndexActivity.this.f33757p0);
                return;
            }
            if (ModGameIndexActivity.this.K.getStatus() != 9 && ModGameIndexActivity.this.K.getStatus() != 42) {
                try {
                    String d4 = new PrefDef_(ModGameIndexActivity.this).androidIdNullsKey().d();
                    if (com.join.mgps.Util.d2.i(d4)) {
                        List list = (List) JsonMapper.getInstance().fromJson(d4, List.class);
                        if (com.join.mgps.Util.d2.i(MApplication.f9241z) && list.contains(MApplication.f9241z)) {
                            if (IntentUtil.getInstance().goLogin(ModGameIndexActivity.this)) {
                                return;
                            }
                        }
                    }
                } catch (Exception unused) {
                }
                if (new PrefDef_(ModGameIndexActivity.this).download_game_switch().d().booleanValue()) {
                    ModGameIndexActivity modGameIndexActivity4 = ModGameIndexActivity.this;
                    UtilsMy.p0(modGameIndexActivity4, 2, modGameIndexActivity4.K.getCrc_link_type_val(), "VIRTUAL_SINGLE", new a(z0Var));
                } else {
                    ModGameIndexActivity modGameIndexActivity5 = ModGameIndexActivity.this;
                    modGameIndexActivity5.e2(modGameIndexActivity5.K, ModGameIndexActivity.this.f33759q0);
                }
            } else {
                ModGameIndexActivity modGameIndexActivity6 = ModGameIndexActivity.this;
                modGameIndexActivity6.j2(modGameIndexActivity6.K, ModGameIndexActivity.this.f33759q0);
            }
            if (ModGameIndexActivity.this.K == null || ModGameIndexActivity.this.K.getStatus() != 0) {
                return;
            }
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(ModGameIndexActivity.this);
            Event event = Event.modDownloadTip_install;
            Ext gameId = new Ext().setGameId(ModGameIndexActivity.this.H);
            l4.K1(event, gameId.setPosition(z0Var.o() + ""));
        }

        @Override // com.join.mgps.dialog.z0.a
        public void b(com.join.mgps.dialog.z0 z0Var) {
            if (z0Var != null && z0Var.isShowing()) {
                z0Var.dismiss();
            }
            if (ModGameIndexActivity.this.f33769v0) {
                if (ModGameIndexActivity.this.f33753n0 == null || ModGameIndexActivity.this.f33753n0.getStatus() != 42) {
                    return;
                }
                ModGameIndexActivity.this.f33753n0.setStatus(5);
                ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
                if (modGameIndexActivity.f33757p0 != null) {
                    modGameIndexActivity.e2(modGameIndexActivity.f33753n0, ModGameIndexActivity.this.f33757p0);
                    return;
                }
                return;
            }
            if (ModGameIndexActivity.this.K != null && ModGameIndexActivity.this.K.getStatus() == 42) {
                ModGameIndexActivity.this.K.setStatus(5);
                ModGameIndexActivity modGameIndexActivity2 = ModGameIndexActivity.this;
                modGameIndexActivity2.e2(modGameIndexActivity2.K, ModGameIndexActivity.this.f33759q0);
            }
            if (ModGameIndexActivity.this.K == null || ModGameIndexActivity.this.K.getStatus() != 0) {
                return;
            }
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(ModGameIndexActivity.this);
            Event event = Event.modDownloadTip_exit;
            Ext gameId = new Ext().setGameId(ModGameIndexActivity.this.H);
            l4.K1(event, gameId.setPosition(z0Var.o() + ""));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements k1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f33797a;

        n(boolean z3) {
            this.f33797a = z3;
        }

        @Override // com.join.mgps.Util.k1.b
        public void a(k1.c cVar) {
            if (cVar.a() == 1) {
                ModGameIndexActivity.this.finish();
                com.join.mgps.Util.k1 c4 = com.join.mgps.Util.k1.c();
                ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
                c4.e(modGameIndexActivity, modGameIndexActivity.f33763s0.getFrom_id(), cVar.b());
                com.join.mgps.Util.i2.a(ModGameIndexActivity.this).b("授权成功");
            } else if (this.f33797a) {
                ModGameIndexActivity.this.o2(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o implements r0.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f33799a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ UserPrefs f33800b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f33801c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f33802d;

        o(int i2, UserPrefs userPrefs, int i4, int i5) {
            this.f33799a = i2;
            this.f33800b = userPrefs;
            this.f33801c = i4;
            this.f33802d = i5;
        }

        @Override // com.join.mgps.dialog.r0.d
        public void onAdClose() {
            if (this.f33799a == 1) {
                ModGameIndexActivity.this.K1();
            } else {
                ModGameIndexActivity.this.L1();
            }
        }

        @Override // com.join.mgps.dialog.r0.d
        public void onAdShow() {
            UserPrefs userPrefs = this.f33800b;
            userPrefs.setAdGamesConfig(this.f33801c + "", this.f33802d);
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity.this.N1();
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i4;
            int i5;
            int i6;
            View findViewByPosition;
            Rect rect;
            View findViewByPosition2;
            Rect rect2;
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) ModGameIndexActivity.this.f33776z.getLayoutManager();
            LinearLayoutManager linearLayoutManager2 = (LinearLayoutManager) ModGameIndexActivity.this.f33774y.getLayoutManager();
            if (linearLayoutManager != null) {
                i2 = linearLayoutManager.findLastCompletelyVisibleItemPosition();
                i4 = linearLayoutManager.findLastVisibleItemPosition();
            } else {
                i2 = 0;
                i4 = 0;
            }
            if (linearLayoutManager2 != null) {
                i5 = linearLayoutManager2.findLastCompletelyVisibleItemPosition();
                i6 = linearLayoutManager2.findLastVisibleItemPosition();
            } else {
                i5 = 0;
                i6 = 0;
            }
            if (!ModGameIndexActivity.this.D0) {
                i2 = i5;
            }
            int min = Math.min(i2, ModGameIndexActivity.this.f33777z0.size() - 1);
            if (!ModGameIndexActivity.this.D0) {
                i4 = i6;
            }
            if (Math.min(i4, ModGameIndexActivity.this.f33777z0.size() - 1) == ModGameIndexActivity.this.f33777z0.size() - 1) {
                if (ModGameIndexActivity.this.D0) {
                    if (linearLayoutManager != null && (findViewByPosition2 = linearLayoutManager.findViewByPosition(ModGameIndexActivity.this.f33777z0.size() - 1)) != null) {
                        findViewByPosition2.getLocalVisibleRect(new Rect());
                        if ((rect2.height() * 100.0f) / findViewByPosition2.getMeasuredHeight() > 60.0f) {
                            min = ModGameIndexActivity.this.f33777z0.size() - 1;
                        }
                    }
                } else if (linearLayoutManager2 != null && (findViewByPosition = linearLayoutManager2.findViewByPosition(ModGameIndexActivity.this.f33777z0.size() - 1)) != null) {
                    findViewByPosition.getLocalVisibleRect(new Rect());
                    if ((rect.height() * 100.0f) / findViewByPosition.getMeasuredHeight() > 60.0f) {
                        min = ModGameIndexActivity.this.f33777z0.size() - 1;
                    }
                }
            }
            for (int i7 = 0; i7 <= min; i7++) {
                CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) ModGameIndexActivity.this.f33777z0.get(i7);
                if (!collectionBeanSubBusiness.isHasExposure()) {
                    ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
                    modGameIndexActivity.Q1(collectionBeanSubBusiness, i7, modGameIndexActivity.D0);
                    collectionBeanSubBusiness.setHasExposure(true);
                    ModGameIndexActivity.this.f33777z0.set(i7, collectionBeanSubBusiness);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r extends RecyclerView.OnScrollListener {
        r() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            ModGameIndexActivity.this.v1();
            if (i2 == 1) {
                ModGameIndexActivity.this.O1(-1);
                ModGameIndexActivity.this.F0 = true;
            }
            if (i2 == 0 && ModGameIndexActivity.this.G0 != 0 && ModGameIndexActivity.this.F0) {
                com.papa.sim.statistic.p.l(ModGameIndexActivity.this.B0).L1(Event.listClickBigPicSlideUPDown, ModGameIndexActivity.this.C0, ModGameIndexActivity.this.w1(), -1, ModGameIndexActivity.this.H0);
                ModGameIndexActivity.this.G0 = 0;
                ModGameIndexActivity.this.F0 = false;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i4) {
            if (System.currentTimeMillis() - ModGameIndexActivity.this.E0 < 200) {
                return;
            }
            ModGameIndexActivity.this.v1();
            ModGameIndexActivity.this.E0 = System.currentTimeMillis();
            ModGameIndexActivity.m1(ModGameIndexActivity.this, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s extends RecyclerView.OnScrollListener {
        s() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            ModGameIndexActivity.this.v1();
            if (i2 == 1) {
                ModGameIndexActivity.this.F0 = true;
            } else if (i2 == 0 && ModGameIndexActivity.this.G0 != 0 && ModGameIndexActivity.this.F0) {
                com.papa.sim.statistic.p.l(ModGameIndexActivity.this.B0).L1(Event.listClickIconSlideUPDown, ModGameIndexActivity.this.C0, ModGameIndexActivity.this.w1(), -1, ModGameIndexActivity.this.H0);
                ModGameIndexActivity.this.G0 = 0;
                ModGameIndexActivity.this.F0 = false;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i4) {
            if (System.currentTimeMillis() - ModGameIndexActivity.this.E0 < 200) {
                return;
            }
            ModGameIndexActivity.this.v1();
            ModGameIndexActivity.this.E0 = System.currentTimeMillis();
            ModGameIndexActivity.m1(ModGameIndexActivity.this, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t implements GestureDetector.OnGestureListener {
        t() {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            return ModGameIndexActivity.this.y1(motionEvent, motionEvent2);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class u implements b.InterfaceC0098b {
        u() {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onError(String str) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onFinish(String str) {
            StringBuilder sb = new StringBuilder();
            sb.append("onFinish onStart - ");
            sb.append(str);
            com.github.snowdream.android.app.downloader.c cVar = (com.github.snowdream.android.app.downloader.c) ModGameIndexActivity.X0.get(str);
            if (cVar != null && com.join.mgps.Util.d2.i(cVar.h())) {
                com.join.android.app.common.utils.a.g0(ModGameIndexActivity.this).u(ModGameIndexActivity.this, cVar.j());
            }
            ModGameIndexActivity.X0.remove(str);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onProgress(String str, int i2, String str2) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onStart(String str) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onStop(String str) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void onWait(String str) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0098b
        public void updateSize(String str, long j4) {
        }
    }

    /* loaded from: classes3.dex */
    class v implements GameRoomActivity.x {
        v() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
            ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
            modGameIndexActivity.U1(modGameIndexActivity.K);
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class w implements GameRoomActivity.x {
        w() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
            ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
            modGameIndexActivity.U1(modGameIndexActivity.f33753n0);
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class x {

        /* renamed from: a  reason: collision with root package name */
        public int f33812a;

        /* renamed from: b  reason: collision with root package name */
        public int f33813b;

        /* renamed from: d  reason: collision with root package name */
        public int f33815d;

        /* renamed from: f  reason: collision with root package name */
        public String f33817f;

        /* renamed from: c  reason: collision with root package name */
        public String f33814c = "#C1D0DD";

        /* renamed from: e  reason: collision with root package name */
        public String f33816e = "#FFFFFF";

        x() {
        }
    }

    private void C1() {
        this.f33774y.setLayoutManager(new LinearLayoutManager(this));
        z2 z2Var = new z2(this.f33777z0);
        this.f33773x0 = z2Var;
        this.f33774y.setAdapter(z2Var);
        this.f33773x0.setOnItemClickListener(new BaseQuickAdapter.i() { // from class: com.join.mgps.activity.o1
            @Override // com.join.mgps.base.BaseQuickAdapter.i
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                ModGameIndexActivity.this.D1(baseQuickAdapter, view, i2);
            }
        });
        this.f33776z.setLayoutManager(new LinearLayoutManager(this));
        a3 a3Var = new a3(this.f33777z0);
        this.f33775y0 = a3Var;
        this.f33776z.setAdapter(a3Var);
        this.f33776z.setItemAnimator(null);
        this.f33775y0.setOnItemClickListener(new BaseQuickAdapter.i() { // from class: com.join.mgps.activity.n1
            @Override // com.join.mgps.base.BaseQuickAdapter.i
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                ModGameIndexActivity.this.E1(baseQuickAdapter, view, i2);
            }
        });
        this.f33775y0.setOnItemChildClickListener(new BaseQuickAdapter.g() { // from class: com.join.mgps.activity.m1
            @Override // com.join.mgps.base.BaseQuickAdapter.g
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                ModGameIndexActivity.this.F1(baseQuickAdapter, view, i2);
            }
        });
        this.f33776z.addOnScrollListener(new r());
        this.f33774y.addOnScrollListener(new s());
        GestureDetector gestureDetector = new GestureDetector(this, new t());
        this.D.setDetector(gestureDetector);
        this.C.setDetector(gestureDetector);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D1(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        S1(1, i2);
        N1();
        com.papa.sim.statistic.p.l(this).L1(Event.listClickIconStatus, this.C0, w1(), 2, this.H0);
        com.papa.sim.statistic.p.l(this.B0).v1(Event.gameClickIconModelClick, this.C0, this.f33777z0.get(i2).getGame_id(), w1(), i2 + 1, this.H0);
        O1(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E1(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        CollectionBeanSubBusiness collectionBeanSubBusiness = this.f33777z0.get(i2);
        if (collectionBeanSubBusiness != null) {
            com.papa.sim.statistic.p.l(this.B0).v1(Event.gameClickBigPicGoDetail, this.C0, collectionBeanSubBusiness.getGame_id(), w1(), i2 + 1, this.H0);
            IntentDateBean intentDataBean = collectionBeanSubBusiness.getIntentDataBean();
            ExtBean extBean = intentDataBean.getExtBean();
            extBean.setFrom("148");
            intentDataBean.setExtBean(extBean);
            collectionBeanSubBusiness.getIntentDataBean().setExtBean(this.f33763s0);
            IntentUtil.getInstance().intentActivity(this, intentDataBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F1(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        DownloadTask B;
        CollectionBeanSubBusiness collectionBeanSubBusiness = this.f33777z0.get(i2);
        if (collectionBeanSubBusiness.getMod_info() != null) {
            B = g1.f.G().B(collectionBeanSubBusiness.getDownloadtaskDown().getRef_crc_sign_id());
        } else {
            B = g1.f.G().B(collectionBeanSubBusiness.getDownloadtaskDown().getCrc_link_type_val());
        }
        if (B != null) {
            B.set_from(101);
            B.set_from_type(148);
            int status = B.getStatus();
            if (status != 0) {
                if (status == 11) {
                    UtilsMy.j3(B, this.B0);
                    return;
                } else if (status == 13) {
                    com.php25.PDownload.d.k(this.B0, B);
                    return;
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                        UtilsMy.c3(this.B0, B);
                        return;
                    }
                    com.php25.PDownload.d.c(B, this.B0);
                    return;
                } else {
                    com.php25.PDownload.d.h(B);
                    com.join.android.app.common.servcie.b.b(this.B0, B, Event.downloadStop);
                    return;
                }
            }
            UtilsMy.J0(this.B0, collectionBeanSubBusiness);
            com.papa.sim.statistic.p.l(this.B0).v1(Event.gameClickBigModelGet, this.C0, collectionBeanSubBusiness.getGame_id(), w1(), i2 + 1, this.H0);
            return;
        }
        UtilsMy.J0(this.B0, collectionBeanSubBusiness);
        com.papa.sim.statistic.p.l(this.B0).v1(Event.gameClickBigModelGet, this.C0, collectionBeanSubBusiness.getGame_id(), w1(), i2 + 1, this.H0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit G1(DownloadTask downloadTask) {
        if ((downloadTask.getModInfoBean() != null && downloadTask.getModInfoBean().isIncompatible()) || (downloadTask.getSingleGameModInfoBean() != null && downloadTask.getSingleGameModInfoBean().isIncompatible())) {
            Z1(downloadTask);
            return null;
        }
        k2(downloadTask);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H1(Integer num) {
        this.f33769v0 = false;
        DownloadTask downloadTask = this.K;
        if (downloadTask == null || downloadTask.getStatus() != 48) {
            V1(this.K, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit I1(DownloadTask downloadTask, PrefDef_ prefDef_) {
        if (com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName())) {
            f2(this, 1, prefDef_.mod_enhance_ad_cfg().d());
            return null;
        }
        UtilsMy.j3(downloadTask, this);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K1() {
        final DownloadTask B;
        if (com.join.mgps.Util.d2.i(this.H) && (B = g1.f.G().B(this.H)) != null) {
            if (com.join.mgps.va.overmind.e.p().M(B.getPackageName())) {
                APKUtils.Companion companion = APKUtils.f17182b;
                if (companion.c(this, B) || companion.e(this, new Function0() { // from class: com.join.mgps.activity.p1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit G1;
                        G1 = ModGameIndexActivity.this.G1(B);
                        return G1;
                    }
                })) {
                    return;
                }
            }
            if ((B.getModInfoBean() != null && B.getModInfoBean().isIncompatible()) || (B.getSingleGameModInfoBean() != null && B.getSingleGameModInfoBean().isIncompatible())) {
                Z1(B);
                return;
            } else {
                k2(B);
                return;
            }
        }
        com.join.mgps.Util.i2.a(this).b("请连接网络后重试!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L1() {
        DownloadTask B;
        int i2;
        if (com.join.mgps.Util.d2.i(this.I) && (B = g1.f.G().B(this.I)) != null) {
            if (com.join.android.app.common.utils.a.g0(this).c(this, B.getPackageName())) {
                boolean z3 = false;
                for (TipBean tipBean : B.getTipBeans()) {
                    if ("23".equals(tipBean.getId())) {
                        z3 = true;
                    }
                }
                boolean booleanValue = new PrefDef_(this).launch_game_switch().d().booleanValue();
                if (z3 && booleanValue) {
                    UtilsMy.p0(this, 1, B.getCrc_link_type_val(), "ANDROID_SINGLE", new h(this, B));
                } else {
                    com.join.android.app.common.utils.a.g0(this);
                    APKUtils.X(this, B.getPackageName());
                }
                if (APKUtils.E(B)) {
                    i2 = 1;
                } else {
                    i2 = APKUtils.I(B) ? 2 : 0;
                }
                com.papa.sim.statistic.p.l(this).d1(B.getCrc_link_type_val(), AccountUtil_.getInstance_(this).getUid(), i2, B.get_from(), B.get_from_type(), B.getExt());
                UtilsMy.y3(this, B.getCrc_link_type_val());
                return;
            } else if (B.getStatus() == 11) {
                UtilsMy.j3(B, this);
                return;
            }
        }
        com.join.mgps.Util.i2.a(this).b("请连接网络后重试!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N1() {
        this.F0 = false;
        this.G0 = 0;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.O0 < 500) {
            return;
        }
        this.O0 = currentTimeMillis;
        O1(-1);
        if (this.D.getVisibility() == 0) {
            this.E.setVisibility(8);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.D, "translationX", 0.0f, getResources().getDimension(R.dimen.wdp318));
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.D, "alpha", 1.0f, 0.5f);
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.C, "alpha", 0.0f, 1.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(ofFloat);
            animatorSet.play(ofFloat2);
            animatorSet.play(ofFloat3);
            animatorSet.setDuration(200L);
            animatorSet.addListener(new a());
            animatorSet.start();
            this.D0 = false;
            S1(2, -1);
        } else {
            this.D.setVisibility(0);
            this.E.setVisibility(0);
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.D, "translationX", getResources().getDimension(R.dimen.wdp318), 0.0f);
            ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.D, "alpha", 0.8f, 1.0f);
            ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.C, "alpha", 0.5f, 1.0f);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.play(ofFloat4);
            animatorSet2.play(ofFloat5);
            animatorSet2.play(ofFloat6);
            animatorSet2.setDuration(200L);
            animatorSet2.addListener(new b());
            animatorSet2.start();
            this.D0 = true;
        }
        v1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O1(int i2) {
        if (this.N0 >= 0 || i2 >= 0) {
            this.N0 = i2;
            ArrayList<CollectionBeanSubBusiness> arrayList = this.f33777z0;
            if (arrayList == null || arrayList.size() <= i2) {
                return;
            }
            int i4 = 0;
            while (i4 < this.f33777z0.size()) {
                this.f33777z0.get(i4).b(i4 == i2);
                i4++;
            }
            a3 a3Var = this.f33775y0;
            if (a3Var != null) {
                a3Var.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q1(CollectionBeanSubBusiness collectionBeanSubBusiness, int i2, boolean z3) {
        com.papa.sim.statistic.p.l(this).v1(z3 ? Event.gameClickBigPicGoWYDetail : Event.gameClickIconModelWYClick, this.C0, collectionBeanSubBusiness.getGame_id(), w1(), i2 + 1, this.H0);
    }

    private void S1(int i2, int i4) {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.f33776z.getLayoutManager();
        LinearLayoutManager linearLayoutManager2 = (LinearLayoutManager) this.f33774y.getLayoutManager();
        if (linearLayoutManager == null || linearLayoutManager2 == null) {
            return;
        }
        int findFirstVisibleItemPosition = i2 == 1 ? linearLayoutManager2.findFirstVisibleItemPosition() : linearLayoutManager.findFirstVisibleItemPosition();
        c cVar = new c(this, i2);
        if (i4 < 0) {
            i4 = findFirstVisibleItemPosition;
        }
        cVar.setTargetPosition(i4);
        if (i2 == 1) {
            linearLayoutManager.startSmoothScroll(cVar);
        } else {
            linearLayoutManager2.startSmoothScroll(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U1(DownloadTask downloadTask) {
        V1(downloadTask, 1);
    }

    private void V1(DownloadTask downloadTask, int i2) {
        com.join.mgps.dialog.z0 z0Var;
        if (downloadTask != null) {
            int status = downloadTask.getStatus();
            if (status != 0 && status != 27) {
                if (status == 42) {
                    this.f33767u0 = 1;
                } else if (status != 5 && status != 6) {
                    if (status == 10) {
                        this.f33767u0 = 3;
                    } else if (status != 11) {
                        this.f33767u0 = 2;
                    }
                }
                z0Var = this.f33765t0;
                if (z0Var != null && z0Var.isShowing()) {
                    this.f33765t0.dismiss();
                }
                j jVar = new j(this);
                this.f33765t0 = jVar;
                jVar.p(this.f33755o0.getCloud_archive_local_path());
                this.f33765t0.r(downloadTask.getCrc_link_type_val());
                this.f33765t0.setOnDismissListener(new l());
                this.f33765t0.u(new m());
                this.f33765t0.v(i2);
                if (!this.f33765t0.isShowing() || isFinishing()) {
                }
                this.f33765t0.show();
                this.f33765t0.C(this.f33767u0, this.f33769v0);
                return;
            }
            this.f33767u0 = 0;
            z0Var = this.f33765t0;
            if (z0Var != null) {
                this.f33765t0.dismiss();
            }
            j jVar2 = new j(this);
            this.f33765t0 = jVar2;
            jVar2.p(this.f33755o0.getCloud_archive_local_path());
            this.f33765t0.r(downloadTask.getCrc_link_type_val());
            this.f33765t0.setOnDismissListener(new l());
            this.f33765t0.u(new m());
            this.f33765t0.v(i2);
            if (this.f33765t0.isShowing()) {
            }
        }
    }

    private void W1(DownloadTask downloadTask) {
        NoticeArchiveDialog noticeArchiveDialog = new NoticeArchiveDialog();
        noticeArchiveDialog.setClickDelDialogListener(new g());
        noticeArchiveDialog.setDialogData(new DialogData("", "由于安卓系统目录限制,无法同步存档至增强模式", "我知道了", "", false));
        noticeArchiveDialog.show(getSupportFragmentManager(), "");
    }

    private void X1(DownloadTask downloadTask, String str) {
        NoticeArchiveDialog noticeArchiveDialog = new NoticeArchiveDialog();
        noticeArchiveDialog.setClickDelDialogListener(new f());
        noticeArchiveDialog.setDialogData(new DialogData("", str, "我知道了", "", false));
        noticeArchiveDialog.show(getSupportFragmentManager(), "");
    }

    private void Y1() {
        NoticeArchiveDialog noticeArchiveDialog = new NoticeArchiveDialog();
        noticeArchiveDialog.setClickDelDialogListener(new e());
        noticeArchiveDialog.setDialogData(new DialogData("", "已成功同步存档至增强模式", "我知道了", "", false));
        noticeArchiveDialog.show(getSupportFragmentManager(), "");
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:112:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d2(com.join.mgps.dto.ModGameDetailBean r17) {
        /*
            Method dump skipped, instructions count: 1207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ModGameIndexActivity.d2(com.join.mgps.dto.ModGameDetailBean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void f2(android.content.Context r13, int r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ModGameIndexActivity.f2(android.content.Context, int, java.lang.String):void");
    }

    private boolean isModMainGame(DownloadTask downloadTask) {
        ModInfoBean modInfoBean = com.join.mgps.Util.d2.i(downloadTask.getMod_info()) ? (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class) : null;
        return modInfoBean == null || downloadTask.getCrc_link_type_val().equals(modInfoBean.getMain_game_id());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k2(DownloadTask downloadTask) {
        int i2;
        ArchiveData archiveData = this.K0.getArchiveData();
        if (archiveData.getUid() != AccountUtil_.getInstance_(this).getAccountData().getUid() && archiveData.getUid() != 0) {
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(this);
            a4.b("当前正在使用 " + archiveData.getNickname() + " 的存档");
        }
        if (com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName())) {
            ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class);
            ModMeta modMeta = new ModMeta();
            modMeta.setPackageName(downloadTask.getPackageName());
            modMeta.setModPath(downloadTask.getResource_path());
            ModGameDetailBean modGameDetailBean = this.f33755o0;
            if (modGameDetailBean != null) {
                modMeta.setGoldFingerSwitch(modGameDetailBean.getGold_finger() == null ? "0" : "1");
                modMeta.setArchiveCloudSwitch(this.f33755o0.getCloud_archive_local_path() == null ? "0" : "1");
                modMeta.setIntroductionSwitch(this.f33755o0.getMod_game_info() != null ? String.valueOf(this.f33755o0.getMod_game_info().getBbs_strategy_switch()) : "0");
            } else {
                modMeta.setGoldFingerSwitch("0");
                modMeta.setArchiveCloudSwitch("0");
                modMeta.setIntroductionSwitch("0");
            }
            String str = "";
            if (modInfoBean != null) {
                modMeta.setModVersion(modInfoBean.getVer() + "");
                modMeta.setModCode(modInfoBean.getVer());
            }
            modMeta.setGameId(downloadTask.getCrc_link_type_val());
            modMeta.setModType(0);
            try {
                com.join.mgps.va.overmind.e.Z(downloadTask.getPackageName(), downloadTask.getResource_path());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            ModGameDetailBean modGameDetailBean2 = this.f33755o0;
            if (modGameDetailBean2 != null && modGameDetailBean2.getMod_game_info() != null) {
                str = JsonMapper.toJsonString(this.f33755o0.getMod_game_info().getMod_info());
            }
            com.join.mgps.va.overmind.e.p().T(this, modMeta, 0, str);
            if (APKUtils.E(downloadTask)) {
                i2 = 1;
            } else {
                i2 = APKUtils.I(downloadTask) ? 2 : 0;
            }
            com.papa.sim.statistic.p.l(this).d1(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(this).getUid(), i2, downloadTask.get_from(), downloadTask.get_from_type(), downloadTask.getExt());
            UtilsMy.y3(this, downloadTask.getCrc_link_type_val());
            if (downloadTask.getModInfoBean() != null) {
                UtilsMy.y3(this, downloadTask.getModInfoBean().getMain_game_id());
            }
            return true;
        }
        return false;
    }

    static /* synthetic */ int m1(ModGameIndexActivity modGameIndexActivity, int i2) {
        int i4 = modGameIndexActivity.G0 + i2;
        modGameIndexActivity.G0 = i4;
        return i4;
    }

    private void m2() {
        boolean z3;
        DownloadTask downloadTask = this.K;
        if (downloadTask == null) {
            DownloadTask B = g1.f.G().B(this.H);
            if (B != null) {
                z3 = com.join.mgps.va.overmind.e.p().D(B.getPackageName());
            }
            z3 = false;
        } else {
            if (downloadTask.getStatus() == 5) {
                z3 = true;
            }
            z3 = false;
        }
        if (z3) {
            TextView textView = this.f33754o;
            if (textView != null) {
                textView.setVisibility(8);
            }
            TextView textView2 = this.f33758q;
            if (textView2 != null) {
                textView2.setText("已安装");
                this.f33758q.setTextColor(Color.parseColor("#FFDDEBFF"));
                this.f33758q.setVisibility(8);
            }
            SimpleDraweeView simpleDraweeView = this.f33760r;
            if (simpleDraweeView != null) {
                simpleDraweeView.setVisibility(8);
                return;
            }
            return;
        }
        TextView textView3 = this.f33758q;
        if (textView3 != null) {
            textView3.setText("未安装");
            this.f33758q.setTextColor(Color.parseColor("#FF9DC7FF"));
        }
        SimpleDraweeView simpleDraweeView2 = this.f33760r;
        if (simpleDraweeView2 != null) {
            simpleDraweeView2.setVisibility(0);
        }
    }

    private void o1() {
        if (this.f33759q0 != null) {
            DownloadTask B = com.join.mgps.Util.d2.i(this.H) ? g1.f.G().B(this.H) : null;
            if (B == null || this.K == null) {
                return;
            }
            try {
                this.K = B;
                if (B.getFileType().equals(Dtype.MOD.name()) && this.K.getStatus() == 5) {
                    if (Boolean.valueOf(com.join.mgps.va.overmind.e.p().D(this.K.getPackageName())).booleanValue()) {
                        DownloadTask B2 = g1.f.G().B(this.K.getCrc_link_type_val());
                        if (B2 != null && ((ModInfoBean) JsonMapper.getInstance().fromJson(B2.getMod_info(), ModInfoBean.class)).getVer() < this.f33759q0.getMod_info().getVer() && this.K.getStatus() == 5) {
                            this.K.setStatus(9);
                        }
                        r1.a q3 = com.join.mgps.va.overmind.e.p().q(this.K.getPackageName());
                        if (q3 != null && com.join.mgps.Util.d2.i(this.f33759q0.getVer()) && q3.f74030k < Integer.parseInt(this.f33759q0.getVer()) && this.K.getStatus() == 5) {
                            if (this.f33759q0.getGame_upgrade_state() == 1) {
                                this.K.setStatus(9);
                            } else {
                                this.K.setStatus(42);
                            }
                        }
                    } else {
                        this.K.setStatus(11);
                    }
                    if (this.K.getStatus() != 9 && this.K.getStatus() != 42) {
                        this.f33746h.setVisibility(8);
                        return;
                    }
                    this.f33746h.setVisibility(0);
                    return;
                }
                this.K.setStatus(B.getStatus());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    private void p1(DownloadTask downloadTask) {
        if (downloadTask.getStatus() != 5 || downloadTask.isOpen() || this.f33753n0 == null || !com.join.android.app.common.utils.a.g0(this).c(this, this.f33753n0.getPackageName()) || this.f33755o0.getCloud_archive_local_path() == null) {
            return;
        }
        UtilsMy.y3(this, downloadTask.getCrc_link_type_val());
        if (this.f33755o0.getCloud_archive_local_path().getMainArchiveLocalPath().startsWith("/Android/data")) {
            if (Build.VERSION.SDK_INT > 29) {
                W1(downloadTask);
                return;
            }
            if (this.P0 == null) {
                this.P0 = com.join.mgps.Util.a0.c0(this).y(this, "存档拷贝中");
            }
            this.P0.show();
            r1(downloadTask);
        } else if (this.f33755o0.getCloud_archive_local_path().getMainArchiveLocalPath().startsWith("/data/data")) {
            W1(downloadTask);
        }
    }

    private void p2(com.join.mgps.event.l lVar) {
        DownloadTask B;
        for (int i2 = 0; i2 < this.f33777z0.size(); i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = this.f33777z0.get(i2);
            if (collectionBeanSubBusiness.getMod_info() != null) {
                B = g1.f.G().B(collectionBeanSubBusiness.getDownloadtaskDown().getRef_crc_sign_id());
            } else {
                B = g1.f.G().B(collectionBeanSubBusiness.getDownloadtaskDown().getCrc_link_type_val());
            }
            if (B != null) {
                this.f33775y0.notifyItemChanged(i2);
            }
        }
    }

    private void q1() {
        GamedetialModleFourBean gamedetialModleFourBean;
        if (this.f33757p0 != null) {
            DownloadTask B = this.I != null ? g1.f.G().B(this.I) : null;
            if (B == null && (gamedetialModleFourBean = this.f33757p0) != null) {
                DownloadTask downloadtaskDown = gamedetialModleFourBean.getDownloadtaskDown();
                this.f33753n0 = downloadtaskDown;
                Dtype dtype = Dtype.android;
                downloadtaskDown.setRomType(dtype.name());
                this.f33753n0.setFileType(dtype.name());
            }
            if (B == null || this.f33753n0 == null) {
                return;
            }
            try {
                this.f33753n0 = B;
                if (B.getFileType().equals(Dtype.android.name()) && this.f33753n0.getStatus() == 5) {
                    if (Boolean.valueOf(com.join.android.app.common.utils.a.g0(this).c(this, this.f33753n0.getPackageName())).booleanValue()) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this).k(this, this.f33753n0.getPackageName());
                        if (com.join.mgps.Util.d2.i(this.f33757p0.getVer()) && k4.d() < Integer.parseInt(this.f33757p0.getVer()) && this.f33753n0.getStatus() == 5) {
                            if (this.f33757p0.getGame_upgrade_state() == 1) {
                                this.f33753n0.setStatus(9);
                            } else {
                                this.f33753n0.setStatus(42);
                            }
                        }
                    } else {
                        this.f33753n0.setStatus(11);
                    }
                } else {
                    this.f33753n0.setStatus(B.getStatus());
                }
                if (this.f33753n0.getStatus() != 9 && this.f33753n0.getStatus() != 42) {
                    this.f33748j.setVisibility(8);
                    return;
                }
                this.f33748j.setVisibility(0);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v1() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(this.M0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void A1() {
        this.D.setVisibility(8);
        this.C.setVisibility(8);
        this.F.setPadding(0, 0, 0, 0);
    }

    public void B1() {
        V0 = com.github.snowdream.android.app.downloader.b.e();
        u uVar = new u();
        W0 = uVar;
        V0.m(uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.bgExpand})
    public void J0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.iv_back})
    public void J1() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.expandMask})
    public void K0() {
        N1();
        com.papa.sim.statistic.p.l(this).L1(Event.listClickBigPicStaus, this.C0, w1(), 2, this.H0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btnRecommendToggleExpand})
    public void L0() {
        S1(1, -1);
        N1();
        com.papa.sim.statistic.p.l(this).L1(Event.listClickIconStatus, this.C0, w1(), 1, this.H0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.btnRecommendToggleShrink})
    public void M0() {
        N1();
        com.papa.sim.statistic.p.l(this).L1(Event.listClickBigPicStaus, this.C0, w1(), 1, this.H0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.tv_open_vip})
    public void M1() {
        com.papa.sim.statistic.p.l(this).K1(Event.clickLeftCloudAd, new Ext().setGameId(this.H));
        ModGameDetailBean modGameDetailBean = this.f33755o0;
        if (modGameDetailBean != null && modGameDetailBean.getAd_info() != null) {
            if (this.f33755o0.getAd_info().getSub() == null || this.f33755o0.getAd_info().getSub().size() <= 0) {
                return;
            }
            IntentDateBean intentDataBean = this.f33755o0.getAd_info().getSub().get(0).getIntentDataBean();
            if (intentDataBean.getLink_type() == 4) {
                if (intentDataBean.getLink_type_val().contains("?")) {
                    intentDataBean.setLink_type_val(intentDataBean.getLink_type_val() + "&gameid=" + this.H);
                } else {
                    intentDataBean.setLink_type_val(intentDataBean.getLink_type_val() + "?gameid=" + this.H);
                }
            }
            IntentUtil.getInstance().intentActivity(this, intentDataBean);
        } else if (com.join.mgps.Util.d2.i(this.f33761r0)) {
            com.papa.sim.statistic.p.l(this).K1(Event.onclickVipMod, new Ext().setGameId(this.H));
            if (this.f33761r0.contains("?")) {
                IntentUtil intentUtil = IntentUtil.getInstance();
                intentUtil.goShareWebActivity(this, this.f33761r0 + "&gameid=" + this.H);
                return;
            }
            IntentUtil intentUtil2 = IntentUtil.getInstance();
            intentUtil2.goShareWebActivity(this, this.f33761r0 + "?gameid=" + this.H);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P1() {
        ArrayList<CollectionBeanSubBusiness> arrayList = this.f33777z0;
        if (arrayList != null) {
            this.G.setText(String.valueOf(arrayList.size()));
            this.f33773x0.setNewData(this.f33777z0);
            this.f33775y0.setNewData(this.f33777z0);
        }
    }

    public void R1(TextView textView, int i2, String str, int i4, String str2, boolean z3) {
        try {
            textView.setEnabled(true);
            boolean z4 = UtilsMy.l0(i4, str2) > 0;
            if (i2 == 3 && !z4) {
                if (z3) {
                    textView.setText(textView.getResources().getString(R.string.mod_download_stand));
                } else {
                    textView.setText(textView.getResources().getString(R.string.mod_download_mod));
                }
            } else if (i2 == 2 && !z4) {
                textView.setText("即将开放");
                textView.setEnabled(false);
            } else if (i2 == 6 && !z4) {
                textView.setText("预约");
            } else {
                if (z3) {
                    textView.setText(textView.getResources().getString(R.string.mod_download_stand));
                } else {
                    textView.setText(textView.getResources().getString(R.string.mod_download_mod));
                }
                if (i4 > 0) {
                    textView.setText(textView.getResources().getString(R.string.pay_game_amount, com.join.mgps.Util.d2.l(i4)));
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void T1() {
        getWindow().getDecorView().setSystemUiVisibility(Build.VERSION.SDK_INT >= 19 ? 5894 : 1799);
    }

    void Z1(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        ModPromptDialog modPromptDialog = new ModPromptDialog();
        Bundle bundle = new Bundle();
        bundle.putString("gameName", downloadTask.getShowName());
        modPromptDialog.setArguments(bundle);
        modPromptDialog.setListener(new d(modPromptDialog, downloadTask));
        modPromptDialog.show(getSupportFragmentManager());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a2(DownloadTask downloadTask) {
        int status;
        if (downloadTask != null) {
            try {
                status = downloadTask.getStatus();
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        } else {
            status = 0;
        }
        if (isModMainGame(downloadTask)) {
            if (downloadTask.getStatus() == 13) {
                this.f33752n.setText(getResources().getText(R.string.mod_unzio_mod));
            }
            if (status != 9 && status != 42) {
                if (status == 11) {
                    this.f33748j.setVisibility(8);
                    this.f33750l.setVisibility(8);
                    this.f33752n.setVisibility(0);
                    this.f33752n.setText("待安装");
                    return;
                } else if (status == 48) {
                    this.f33748j.setVisibility(8);
                    this.f33750l.setVisibility(8);
                    this.f33752n.setVisibility(0);
                    this.f33752n.setText("安装中");
                    return;
                } else if (status == 12) {
                    this.f33748j.setVisibility(8);
                    this.f33750l.setVisibility(8);
                    this.f33752n.setVisibility(0);
                    this.f33752n.setText("解压中");
                    return;
                } else if (status == 13) {
                    this.f33748j.setVisibility(8);
                    this.f33750l.setVisibility(8);
                    this.f33752n.setVisibility(0);
                    this.f33752n.setText("重新解压");
                    return;
                } else {
                    this.f33748j.setVisibility(8);
                    this.f33750l.setVisibility(0);
                    this.f33752n.setVisibility(8);
                    return;
                }
            }
            this.f33748j.setVisibility(0);
            this.f33750l.setVisibility(8);
            this.f33752n.setVisibility(8);
            return;
        }
        this.f33745g.setText(getResources().getText(R.string.mod_download_mod));
        this.f33758q.setVisibility(8);
        this.f33760r.setVisibility(8);
        if (status != 9 && status != 42) {
            if (status == 11) {
                this.f33746h.setVisibility(8);
                this.f33751m.setVisibility(8);
                this.f33754o.setVisibility(0);
                this.f33754o.setText("待安装");
                this.f33756p.setBackgroundResource(R.drawable.bg_mod_start);
                return;
            } else if (status == 48) {
                this.f33746h.setVisibility(8);
                this.f33751m.setVisibility(8);
                this.f33754o.setVisibility(0);
                this.f33754o.setText("安装中");
                this.f33756p.setBackgroundResource(R.drawable.bg_mod_start_n);
                return;
            } else if (status == 12) {
                this.f33746h.setVisibility(8);
                this.f33751m.setVisibility(8);
                this.f33754o.setVisibility(0);
                this.f33754o.setText("解压中");
                this.f33756p.setBackgroundResource(R.drawable.bg_mod_start);
                return;
            } else if (status == 13) {
                this.f33746h.setVisibility(8);
                this.f33751m.setVisibility(8);
                this.f33754o.setVisibility(0);
                this.f33754o.setText("重新解压");
                this.f33756p.setBackgroundResource(R.drawable.bg_mod_start);
                return;
            } else {
                this.f33746h.setVisibility(8);
                this.f33751m.setVisibility(0);
                this.f33754o.setVisibility(8);
                if (downloadTask != null && downloadTask.getStatus() == 5) {
                    this.f33760r.setVisibility(8);
                    this.f33758q.setVisibility(8);
                } else {
                    this.f33760r.setVisibility(0);
                    this.f33758q.setVisibility(0);
                }
                this.f33756p.setBackgroundResource(R.drawable.bg_mod_start);
                return;
            }
        }
        this.f33746h.setVisibility(0);
        this.f33751m.setVisibility(8);
        this.f33754o.setVisibility(8);
        this.f33756p.setBackgroundResource(R.drawable.bg_mod_start);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.B0 = this;
        CloudShareViewModle cloudShareViewModle = (CloudShareViewModle) new ViewModelProvider(this, new ViewModelProvider.NewInstanceFactory()).get(CloudShareViewModle.class);
        this.K0 = cloudShareViewModle;
        cloudShareViewModle.getEvent().observe(this, new k());
        C1();
        getDetialData();
        x1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b2(DownloadTask downloadTask) {
        try {
            if (isModMainGame(downloadTask)) {
                this.f33748j.setVisibility(8);
                this.f33750l.setVisibility(8);
                this.f33752n.setVisibility(0);
                TextView textView = this.f33752n;
                textView.setText(downloadTask.getProgress() + "%");
            } else {
                this.f33746h.setVisibility(8);
                this.f33751m.setVisibility(8);
                this.f33754o.setVisibility(0);
                this.f33758q.setVisibility(8);
                this.f33760r.setVisibility(8);
                TextView textView2 = this.f33754o;
                textView2.setText(downloadTask.getProgress() + "%");
                this.f33745g.setText(getResources().getText(R.string.mod_downloading));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c2() {
        this.D.setVisibility(this.A0 ? 0 : 8);
        this.E.setVisibility(this.A0 ? 0 : 8);
        this.C.setVisibility(0);
        this.F.setPadding(0, 0, (int) getResources().getDimension(R.dimen.wdp202), 0);
        if (this.A0) {
            this.D0 = true;
            com.papa.sim.statistic.p.l(this).L1(Event.listShowBigPicUPPage, this.C0, w1(), -1, this.H0);
        } else {
            this.D0 = false;
            com.papa.sim.statistic.p.l(this).L1(Event.listShowIconHotList, this.C0, w1(), -1, this.H0);
        }
        v1();
    }

    void e2(final DownloadTask downloadTask, GamedetialModleFourBean gamedetialModleFourBean) {
        if (!com.join.android.app.common.utils.f.j(this)) {
            com.join.mgps.Util.i2.a(this).b("请检查网络！");
            return;
        }
        int i2 = 0;
        if (downloadTask != null) {
            i2 = downloadTask.getStatus();
            downloadTask.set_from(131);
        }
        if (downloadTask != null && UtilsMy.m0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id()) > 0) {
            i2 = 43;
        }
        if (downloadTask != null && (i2 == 2 || i2 == 10)) {
            com.php25.PDownload.d.h(downloadTask);
        } else if (i2 == 13) {
            com.php25.PDownload.d.k(this, downloadTask);
        } else if (i2 == 27 || i2 == 3) {
            com.php25.PDownload.d.c(downloadTask, this);
        } else if (i2 == 13) {
            com.php25.PDownload.d.k(this, downloadTask);
            return;
        } else if (i2 == 5) {
            com.join.mgps.dialog.z0 z0Var = this.f33765t0;
            if (z0Var != null && z0Var.isShowing()) {
                this.f33765t0.dismiss();
            }
            final PrefDef_ prefDef_ = new PrefDef_(this);
            if (isModMainGame(downloadTask)) {
                if (com.join.android.app.common.utils.a.g0(this).c(this, downloadTask.getPackageName())) {
                    f2(this, 2, prefDef_.mod_normal_ad_cfg().d());
                } else {
                    UtilsMy.j3(downloadTask, this);
                }
            } else {
                if (com.join.mgps.va.overmind.e.p().M(downloadTask.getPackageName())) {
                    APKUtils.Companion companion = APKUtils.f17182b;
                    if (companion.c(this, downloadTask) || companion.e(this, new Function0() { // from class: com.join.mgps.activity.q1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit I1;
                            I1 = ModGameIndexActivity.this.I1(downloadTask, prefDef_);
                            return I1;
                        }
                    })) {
                        return;
                    }
                }
                if (com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName())) {
                    f2(this, 1, prefDef_.mod_enhance_ad_cfg().d());
                } else {
                    UtilsMy.j3(downloadTask, this);
                }
            }
        } else if (11 == i2) {
            com.join.mgps.dialog.z0 z0Var2 = this.f33765t0;
            if (z0Var2 != null && z0Var2.isShowing()) {
                this.f33765t0.dismiss();
            }
            UtilsMy.j3(downloadTask, this);
        } else if (43 == i2 || 7 == i2 || i2 == 0) {
            if (gamedetialModleFourBean != null) {
                n1(downloadTask);
                if (gamedetialModleFourBean.getGame_detailed() != null && com.join.mgps.Util.d2.i(gamedetialModleFourBean.getGame_detailed().getTpl_two_qq())) {
                    com.join.mgps.Util.a0.c0(this).Y(this, gamedetialModleFourBean.getGame_detailed().getTpl_two_qq_key(), gamedetialModleFourBean.getGame_detailed().getAd_pic_qq(), gamedetialModleFourBean.getGame_detailed().getTpl_two_qq());
                }
                if (UtilsMy.o0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id()) > 0) {
                    ExtBean extBean = this.f33763s0;
                    if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                        UtilsMy.n3(this, gamedetialModleFourBean.getCrc_sign_id(), this.f33763s0.getFrom_id());
                    } else if (!UtilsMy.T0(this, downloadTask)) {
                        if (gamedetialModleFourBean.getDown_status() == 5) {
                            UtilsMy.R0(this, downloadTask);
                        } else {
                            UtilsMy.m3(this, gamedetialModleFourBean.getCrc_sign_id());
                        }
                    }
                } else {
                    UtilsMy.g1(downloadTask, gamedetialModleFourBean);
                    if (!UtilsMy.T0(this, downloadTask)) {
                        if (gamedetialModleFourBean.getDown_status() == 5) {
                            if (APKUtils.E(downloadTask) && downloadTask.getTask_down_type() == 3) {
                                com.php25.PDownload.d.c(downloadTask, this);
                            } else {
                                UtilsMy.R0(this, downloadTask);
                            }
                        } else {
                            com.php25.PDownload.d.c(downloadTask, this);
                        }
                    }
                }
            }
        } else if (48 == i2) {
            com.join.mgps.Util.i2.a(this).b("安装中，请稍后...");
        } else if (gamedetialModleFourBean != null) {
            n1(downloadTask);
            if (gamedetialModleFourBean.getGame_detailed() != null && com.join.mgps.Util.d2.i(gamedetialModleFourBean.getGame_detailed().getTpl_two_qq())) {
                com.join.mgps.Util.a0.c0(this).Y(this, gamedetialModleFourBean.getGame_detailed().getTpl_two_qq_key(), gamedetialModleFourBean.getGame_detailed().getAd_pic_qq(), gamedetialModleFourBean.getGame_detailed().getTpl_two_qq());
            }
            if (UtilsMy.o0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id()) > 0) {
                ExtBean extBean2 = this.f33763s0;
                if (extBean2 != null && "checkgame".equals(extBean2.getFrom())) {
                    UtilsMy.n3(this, gamedetialModleFourBean.getCrc_sign_id(), this.f33763s0.getFrom_id());
                } else if (!UtilsMy.T0(this, downloadTask)) {
                    if (gamedetialModleFourBean.getDown_status() == 5) {
                        UtilsMy.R0(this, downloadTask);
                    } else {
                        UtilsMy.m3(this, gamedetialModleFourBean.getCrc_sign_id());
                    }
                }
            } else {
                UtilsMy.g1(downloadTask, gamedetialModleFourBean);
                if (!UtilsMy.T0(this, downloadTask)) {
                    if (gamedetialModleFourBean.getDown_status() == 5) {
                        if (APKUtils.E(downloadTask) && downloadTask.getTask_down_type() == 3) {
                            com.php25.PDownload.d.c(downloadTask, this);
                        } else {
                            UtilsMy.R0(this, downloadTask);
                        }
                    } else {
                        com.php25.PDownload.d.c(downloadTask, this);
                    }
                }
            }
        }
        l2(downloadTask, gamedetialModleFourBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.ll_mod_start})
    public void g2() {
        if (com.join.android.app.common.utils.f.j(this)) {
            GamedetialModleFourBean gamedetialModleFourBean = this.f33759q0;
            if (gamedetialModleFourBean != null && gamedetialModleFourBean.getMod_info() != null) {
                this.f33769v0 = false;
                DownloadTask downloadTask = this.K;
                if (downloadTask != null && downloadTask.getStatus() == 48) {
                    com.join.mgps.Util.i2.a(this).b("安装中，请稍后...");
                    return;
                } else if (this.K != null && com.join.mgps.va.overmind.e.p().D(this.K.getPackageName()) && this.K.getStatus() != 0 && this.K.getStatus() != 9 && this.K.getStatus() != 42 && this.K.getStatus() != 2 && this.K.getStatus() != 3) {
                    e2(this.K, this.f33759q0);
                    return;
                } else {
                    DownloadTask downloadTask2 = this.K;
                    if (downloadTask2 != null && downloadTask2.getStatus() == 9 && this.K.getStatus() != 2 && this.K.getStatus() != 3) {
                        j2(this.K, this.f33759q0);
                        U1(this.K);
                        return;
                    } else if (this.K.getStatus() == 12) {
                        com.join.mgps.Util.i2.a(this).b("解压中，请稍后...");
                        return;
                    } else {
                        try {
                            String d4 = new PrefDef_(this).androidIdNullsKey().d();
                            if (com.join.mgps.Util.d2.i(d4)) {
                                List list = (List) JsonMapper.getInstance().fromJson(d4, List.class);
                                if (com.join.mgps.Util.d2.i(MApplication.f9241z) && list.contains(MApplication.f9241z)) {
                                    if (IntentUtil.getInstance().goLogin(this)) {
                                        return;
                                    }
                                }
                            }
                        } catch (Exception unused) {
                        }
                        UtilsMy.p0(this, 2, this.K.getCrc_link_type_val(), "VIRTUAL_SINGLE", new v());
                        return;
                    }
                }
            }
            K1();
            return;
        }
        K1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDetialData() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel<RequestModGameArgs> requestModel = new RequestModel<>();
                RequestModGameArgs requestModGameArgs = new RequestModGameArgs();
                requestModGameArgs.setUid(accountData.getUid());
                requestModGameArgs.setUserToken(accountData.getToken());
                requestModGameArgs.setGameId(this.H);
                requestModel.setArgs(requestModGameArgs);
                requestModel.setDefault(this);
                ResponseModel<ModGameDetailBean> p3 = com.join.mgps.rpc.impl.h.L().p(requestModel);
                if (p3 != null && p3.getCode() == 200) {
                    q2(p3.getData());
                    return;
                } else {
                    showLodingFailed();
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingFailed();
                return;
            }
        }
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.ll_stand_start})
    public void h2() {
        if (com.join.android.app.common.utils.f.j(this)) {
            DownloadTask downloadTask = this.f33753n0;
            if (downloadTask != null && this.f33757p0 != null) {
                this.f33769v0 = true;
                if (downloadTask != null && com.join.android.app.common.utils.a.g0(this).c(this, this.f33753n0.getPackageName()) && this.f33753n0.getStatus() != 0 && this.f33753n0.getStatus() != 9 && this.f33753n0.getStatus() != 42 && this.f33753n0.getStatus() != 2 && this.f33753n0.getStatus() != 3) {
                    e2(this.f33753n0, this.f33757p0);
                    return;
                } else if (this.f33753n0.getStatus() == 9 && this.K.getStatus() != 2 && this.K.getStatus() != 3) {
                    j2(this.f33753n0, this.f33757p0);
                    U1(this.f33753n0);
                    return;
                } else if (this.f33753n0.getStatus() == 12) {
                    com.join.mgps.Util.i2.a(this).b("解压中,请稍后!");
                    return;
                } else {
                    try {
                        String d4 = new PrefDef_(this).androidIdNullsKey().d();
                        if (com.join.mgps.Util.d2.i(d4)) {
                            List list = (List) JsonMapper.getInstance().fromJson(d4, List.class);
                            if (com.join.mgps.Util.d2.i(MApplication.f9241z) && list.contains(MApplication.f9241z)) {
                                if (IntentUtil.getInstance().goLogin(this)) {
                                    return;
                                }
                            }
                        }
                    } catch (Exception unused) {
                    }
                    if (new PrefDef_(this).download_game_switch().d().booleanValue()) {
                        UtilsMy.p0(this, 2, this.f33753n0.getCrc_link_type_val(), "VIRTUAL_SINGLE", new w());
                        return;
                    } else {
                        U1(this.f33753n0);
                        return;
                    }
                }
            }
            L1();
            return;
        }
        L1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65499r0})
    public void i2(@Receiver.Extra String str) {
        if (TextUtils.isEmpty(str) || !str.equals("modStdDialog")) {
            return;
        }
        h2();
    }

    void j2(DownloadTask downloadTask, GamedetialModleFourBean gamedetialModleFourBean) {
        boolean z3;
        boolean z4;
        ModInfoBean modInfoBean;
        try {
            if (!com.join.android.app.common.utils.f.j(this)) {
                com.join.mgps.Util.i2.a(this).b("无网络连接");
                return;
            }
            if (gamedetialModleFourBean.getGame_detailed() != null && com.join.mgps.Util.d2.i(gamedetialModleFourBean.getGame_detailed().getTpl_two_qq())) {
                com.join.mgps.Util.a0.c0(this).Y(this, gamedetialModleFourBean.getGame_detailed().getTpl_two_qq_key(), gamedetialModleFourBean.getGame_detailed().getAd_pic_qq(), gamedetialModleFourBean.getGame_detailed().getTpl_two_qq());
            }
            int downloadType = downloadTask.getDownloadType();
            if (downloadType != 0 && downloadType != 1) {
                if (downloadType != 2) {
                    return;
                }
                UtilsMy.z3(downloadTask);
                return;
            }
            if (downloadTask.getCrc_link_type_val() != null && !downloadTask.getCrc_link_type_val().equals("")) {
                n1(downloadTask);
                if (isModMainGame(downloadTask)) {
                    z3 = false;
                    z4 = false;
                } else {
                    if (com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName())) {
                        DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                        z3 = B != null && ((modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(B.getMod_info(), ModInfoBean.class)) == null || (this.f33759q0.getMod_info() != null && modInfoBean.getVer() < this.f33759q0.getMod_info().getVer()));
                        r1.a q3 = com.join.mgps.va.overmind.e.p().q(downloadTask.getPackageName());
                        if (q3 != null && com.join.mgps.Util.d2.i(gamedetialModleFourBean.getVer()) && q3.f74030k < Integer.parseInt(gamedetialModleFourBean.getVer()) && (!z3 || gamedetialModleFourBean.getGame_upgrade_state() == 1)) {
                            z4 = true;
                            this.f33746h.setVisibility(8);
                        }
                    } else {
                        z3 = false;
                    }
                    z4 = false;
                    this.f33746h.setVisibility(8);
                }
                com.php25.PDownload.d.b(downloadTask);
                downloadTask.setVer(gamedetialModleFourBean.getVer());
                downloadTask.setVer_name(gamedetialModleFourBean.getVer_name());
                downloadTask.setUrl(gamedetialModleFourBean.getDown_url_remote());
                downloadTask.setCfg_ver(gamedetialModleFourBean.getCfg_ver());
                downloadTask.setCfg_ver_name(gamedetialModleFourBean.getCfg_ver_name());
                downloadTask.setCfg_down_url(gamedetialModleFourBean.getCfg_down_url());
                downloadTask.setPay_game_amount(gamedetialModleFourBean.getPay_tag_info() != null ? gamedetialModleFourBean.getPay_tag_info().getPay_game_amount() : 0);
                downloadTask.setMod_info(JsonMapper.toJsonString(gamedetialModleFourBean.getMod_info()));
                downloadTask.setPath("");
                downloadTask.setGameZipPath("");
                if (z4 && z3) {
                    downloadTask.setTask_down_type(0);
                } else if (z3) {
                    downloadTask.setTask_down_type(1);
                } else if (z4) {
                    downloadTask.setTask_down_type(2);
                } else {
                    downloadTask.setTask_down_type(0);
                }
                g1.f.G().m(downloadTask);
                UtilsMy.A0(downloadTask);
                if (isModMainGame(downloadTask)) {
                    this.f33748j.setVisibility(8);
                }
                if (UtilsMy.o0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id()) > 0) {
                    ExtBean extBean = this.f33763s0;
                    if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                        UtilsMy.n3(this, gamedetialModleFourBean.getCrc_sign_id(), this.f33763s0.getFrom_id());
                        return;
                    } else if (UtilsMy.T0(this, downloadTask)) {
                        return;
                    } else {
                        if (gamedetialModleFourBean.getDown_status() == 5) {
                            UtilsMy.R0(this, downloadTask);
                            return;
                        } else {
                            UtilsMy.m3(this, gamedetialModleFourBean.getCrc_sign_id());
                            return;
                        }
                    }
                }
                UtilsMy.g1(downloadTask, gamedetialModleFourBean);
                if (UtilsMy.T0(this, downloadTask)) {
                    return;
                }
                if (gamedetialModleFourBean.getDown_status() == 5 && (downloadTask.getTask_down_type() == 0 || downloadTask.getTask_down_type() == 2)) {
                    UtilsMy.R0(this, downloadTask);
                } else {
                    com.php25.PDownload.d.c(downloadTask, this);
                }
            }
        } catch (NumberFormatException e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l2(DownloadTask downloadTask, GamedetialModleFourBean gamedetialModleFourBean) {
        if (gamedetialModleFourBean == null || downloadTask == null) {
            return;
        }
        boolean isModMainGame = isModMainGame(downloadTask);
        if (gamedetialModleFourBean.getPlugin_num() != null) {
            String plugin_num = gamedetialModleFourBean.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                a2(downloadTask);
                return;
            }
        }
        int status = downloadTask.getStatus();
        if (UtilsMy.m0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9 || status == 42) {
            a2(downloadTask);
        } else if (status == 12) {
            a2(downloadTask);
        } else if (status == 13) {
            a2(downloadTask);
        } else if (status == 11) {
            a2(downloadTask);
        } else if (status == 5) {
            a2(downloadTask);
            o2(true);
        } else if (status == 2) {
            UtilsMy.C3(downloadTask);
            com.join.mgps.dialog.z0 z0Var = this.f33765t0;
            if (z0Var != null && z0Var.isShowing()) {
                this.f33765t0.C(2, this.f33769v0);
                this.f33765t0.D(downloadTask);
                return;
            }
            b2(downloadTask);
        } else if (status == 3 || status == 6 || status == 27) {
            a2(downloadTask);
            UtilsMy.C3(downloadTask);
            com.join.mgps.dialog.z0 z0Var2 = this.f33765t0;
            if (z0Var2 != null) {
                z0Var2.C(2, this.f33769v0);
                this.f33765t0.D(downloadTask);
            }
        } else if (status == 10) {
            a2(downloadTask);
            com.join.mgps.dialog.z0 z0Var3 = this.f33765t0;
            if (z0Var3 != null) {
                z0Var3.C(2, this.f33769v0);
                this.f33765t0.D(downloadTask);
            }
        } else if (status == 1) {
        } else {
            if (status == 43) {
                a2(downloadTask);
                if (UtilsMy.m0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id()) > 0) {
                    if (isModMainGame) {
                        this.f33747i.setText(getResources().getString(R.string.pay_game_amount, gamedetialModleFourBean.getPay_tag_info().getPayGameAmount()));
                    } else {
                        this.f33745g.setText(getResources().getString(R.string.pay_game_amount, gamedetialModleFourBean.getPay_tag_info().getPayGameAmount()));
                    }
                }
                if (gamedetialModleFourBean.getBespeak_switch() == 1 && gamedetialModleFourBean.getDown_status() == 2) {
                    if (gamedetialModleFourBean.getGame_book() == 1) {
                        if (isModMainGame) {
                            this.f33747i.setText("已预约");
                        } else {
                            this.f33745g.setText("已预约");
                        }
                        R1(this.f33747i, gamedetialModleFourBean.getDown_status(), gamedetialModleFourBean.getSize(), UtilsMy.m0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id()), gamedetialModleFourBean.getCrc_sign_id(), isModMainGame);
                        return;
                    } else if (isModMainGame) {
                        this.f33747i.setText("预约");
                        return;
                    } else {
                        this.f33745g.setText("预约");
                        return;
                    }
                }
                int m02 = UtilsMy.m0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id());
                if (isModMainGame) {
                    R1(this.f33747i, gamedetialModleFourBean.getDown_status(), gamedetialModleFourBean.getSize(), m02, gamedetialModleFourBean.getCrc_sign_id(), isModMainGame);
                } else {
                    R1(this.f33745g, gamedetialModleFourBean.getDown_status(), gamedetialModleFourBean.getSize(), m02, gamedetialModleFourBean.getCrc_sign_id(), isModMainGame);
                }
            } else if (status == 48) {
                a2(downloadTask);
                this.f33746h.setVisibility(8);
            } else if (status == 9) {
            } else {
                a2(downloadTask);
                if (UtilsMy.m0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id()) > 0) {
                    if (isModMainGame) {
                        this.f33747i.setText(getResources().getString(R.string.pay_game_amount, gamedetialModleFourBean.getPay_tag_info().getPayGameAmount()));
                    } else {
                        this.f33745g.setText(getResources().getString(R.string.pay_game_amount, gamedetialModleFourBean.getPay_tag_info().getPayGameAmount()));
                    }
                } else if (isModMainGame) {
                    this.f33747i.setText(getResources().getString(R.string.download_status_download));
                } else {
                    this.f33745g.setText(getResources().getString(R.string.download_status_download));
                }
                if (gamedetialModleFourBean.getBespeak_switch() == 1 && (gamedetialModleFourBean.getDown_status() == 2 || gamedetialModleFourBean.getDown_status() == 6)) {
                    if (gamedetialModleFourBean.getGame_book() != 1) {
                        if (isModMainGame) {
                            this.f33747i.setText("预约");
                            return;
                        } else {
                            this.f33745g.setText("预约");
                            return;
                        }
                    }
                    if (isModMainGame) {
                        this.f33747i.setText("已预约");
                    } else {
                        this.f33745g.setText("已预约");
                    }
                    int m03 = UtilsMy.m0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id());
                    if (isModMainGame) {
                        R1(this.f33747i, 2, gamedetialModleFourBean.getSize(), m03, gamedetialModleFourBean.getCrc_sign_id(), isModMainGame);
                        return;
                    } else {
                        R1(this.f33745g, 2, gamedetialModleFourBean.getSize(), m03, gamedetialModleFourBean.getCrc_sign_id(), isModMainGame);
                        return;
                    }
                }
                int m04 = UtilsMy.m0(gamedetialModleFourBean.getPay_tag_info(), gamedetialModleFourBean.getCrc_sign_id());
                if (isModMainGame) {
                    R1(this.f33747i, gamedetialModleFourBean.getDown_status(), gamedetialModleFourBean.getSize(), m04, gamedetialModleFourBean.getCrc_sign_id(), isModMainGame);
                } else {
                    R1(this.f33745g, gamedetialModleFourBean.getDown_status(), gamedetialModleFourBean.getSize(), m04, gamedetialModleFourBean.getCrc_sign_id(), isModMainGame);
                }
            }
        }
    }

    void n1(DownloadTask downloadTask) {
        ExtBean extBean = this.f33763s0;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null || !"112".equals(this.f33763s0.getFrom())) {
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom("101");
        extBean2.setPosition("112");
        extBean2.setLocation(this.f33763s0.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    void n2() {
        this.K0.loadLocalArchiveDatas(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void o2(boolean z3) {
        ExtBean extBean = this.f33763s0;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.k1.c().b(this, this.f33763s0.getFrom_id(), new n(z3));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(this);
        com.join.mgps.Util.c0.a().d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask downloadTask;
        DownloadTask a4 = lVar.a();
        p2(lVar);
        if (lVar.c() == 8) {
            DownloadTask downloadTask2 = this.K;
            if (downloadTask2 != null && downloadTask2.getStatus() == 2) {
                UtilsMy.C3(this.K);
                com.join.mgps.dialog.z0 z0Var = this.f33765t0;
                if (z0Var != null) {
                    z0Var.C(2, this.f33769v0);
                    this.f33765t0.D(this.K);
                }
                TextView textView = this.f33754o;
                textView.setText(this.K.getProgress() + "%");
            }
            DownloadTask downloadTask3 = this.f33753n0;
            if (downloadTask3 == null || downloadTask3.getStatus() != 2) {
                return;
            }
            UtilsMy.C3(this.f33753n0);
            com.join.mgps.dialog.z0 z0Var2 = this.f33765t0;
            if (z0Var2 != null) {
                z0Var2.C(2, this.f33769v0);
                this.f33765t0.D(this.f33753n0);
            }
            TextView textView2 = this.f33752n;
            textView2.setText(this.f33753n0.getProgress() + "%");
            return;
        }
        if (a4 != null && this.K != null && a4.getCrc_link_type_val().equals(this.K.getCrc_link_type_val())) {
            this.K = a4;
            UtilsMy.C3(a4);
            int c4 = lVar.c();
            if (c4 == 0) {
                m2();
            } else if (c4 != 8) {
                if (c4 != 48 && c4 != 5) {
                    if (c4 != 6) {
                        switch (c4) {
                            case 10:
                                com.join.mgps.dialog.z0 z0Var3 = this.f33765t0;
                                if (z0Var3 != null) {
                                    z0Var3.C(3, this.f33769v0);
                                    this.f33765t0.D(this.K);
                                    break;
                                }
                                break;
                            case 12:
                                com.join.mgps.dialog.z0 z0Var4 = this.f33765t0;
                                if (z0Var4 != null && z0Var4.isShowing()) {
                                    this.f33765t0.dismiss();
                                }
                                a2(this.K);
                                break;
                            case 13:
                                com.join.mgps.dialog.z0 z0Var5 = this.f33765t0;
                                if (z0Var5 != null && z0Var5.isShowing()) {
                                    this.f33765t0.dismiss();
                                }
                                com.join.mgps.Util.i2.a(this).b("解压失败");
                                a2(this.K);
                                break;
                        }
                    } else {
                        com.join.mgps.dialog.z0 z0Var6 = this.f33765t0;
                        if (z0Var6 != null && z0Var6.isShowing()) {
                            this.f33765t0.dismiss();
                        }
                    }
                }
                com.join.mgps.dialog.z0 z0Var7 = this.f33765t0;
                if (z0Var7 != null && z0Var7.isShowing()) {
                    this.f33765t0.dismiss();
                }
                o1();
                if (lVar.c() == 5) {
                    p1(this.K);
                }
                a2(this.K);
                if (APKUtils.E(a4) && (downloadTask = this.f33753n0) != null && downloadTask.getStatus() == 5) {
                    Dialog dialog = this.U0;
                    if (dialog == null) {
                        this.U0 = com.join.mgps.Util.a0.c0(this).x(this).a("拷贝中。。。");
                    } else if (dialog.isShowing()) {
                        this.U0.dismiss();
                    }
                    this.U0.show();
                    s1(a4);
                }
                m2();
            } else {
                DownloadTask downloadTask4 = this.K;
                if (downloadTask4 == null || downloadTask4.getPath() == null || this.K == null || !a4.getCrc_link_type_val().equals(this.K.getCrc_link_type_val())) {
                    return;
                }
                UtilsMy.C3(this.K);
                com.join.mgps.dialog.z0 z0Var8 = this.f33765t0;
                if (z0Var8 != null) {
                    z0Var8.C(2, this.f33769v0);
                    this.f33765t0.D(this.K);
                }
                TextView textView3 = this.f33754o;
                textView3.setText(this.K.getProgress() + "%");
                return;
            }
        }
        if (a4 == null || this.f33753n0 == null || !a4.getCrc_link_type_val().equals(this.f33753n0.getCrc_link_type_val())) {
            return;
        }
        this.f33753n0 = a4;
        UtilsMy.C3(a4);
        int c5 = lVar.c();
        if (c5 != 5) {
            if (c5 != 8) {
                switch (c5) {
                    case 10:
                        com.join.mgps.dialog.z0 z0Var9 = this.f33765t0;
                        if (z0Var9 != null) {
                            z0Var9.C(3, this.f33769v0);
                            this.f33765t0.D(this.f33753n0);
                            return;
                        }
                        return;
                    case 11:
                        break;
                    case 12:
                        com.join.mgps.dialog.z0 z0Var10 = this.f33765t0;
                        if (z0Var10 != null && z0Var10.isShowing()) {
                            this.f33765t0.dismiss();
                        }
                        a2(this.f33753n0);
                        return;
                    case 13:
                        com.join.mgps.dialog.z0 z0Var11 = this.f33765t0;
                        if (z0Var11 != null && z0Var11.isShowing()) {
                            this.f33765t0.dismiss();
                        }
                        com.join.mgps.Util.i2.a(this).b("解压失败");
                        a2(this.f33753n0);
                        return;
                    default:
                        return;
                }
            } else {
                DownloadTask downloadTask5 = this.f33753n0;
                if (downloadTask5 == null || downloadTask5.getPath() == null || this.f33753n0 == null || !a4.getCrc_link_type_val().equals(this.f33753n0.getCrc_link_type_val())) {
                    return;
                }
                UtilsMy.C3(this.f33753n0);
                com.join.mgps.dialog.z0 z0Var12 = this.f33765t0;
                if (z0Var12 != null) {
                    z0Var12.C(2, this.f33769v0);
                    this.f33765t0.D(this.f33753n0);
                }
                TextView textView4 = this.f33752n;
                textView4.setText(this.K.getProgress() + "%");
                return;
            }
        }
        com.join.mgps.dialog.z0 z0Var13 = this.f33765t0;
        if (z0Var13 != null && z0Var13.isShowing()) {
            this.f33765t0.dismiss();
        }
        q1();
        a2(this.f33753n0);
        m2();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onLocalArchiveUpdate(DownloadArchiveDialog.UpdateLocalArchiveEvent updateLocalArchiveEvent) {
        this.K0.loadLocalArchiveDatas(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.H = intent.getStringExtra("gameId");
        this.I = intent.getStringExtra(ModGameIndexActivity_.f33820e1);
        this.J = intent.getStringExtra("from");
        getDetialData();
        x1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.I0 = true;
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 != 7) {
            return;
        }
        for (int i4 : iArr) {
            if (i4 != 0) {
                X1(this.K, "由于安卓系统目录限制,无法同步存档至增强模式");
                return;
            }
        }
        DownloadTask downloadTask = this.K;
        if (downloadTask != null) {
            r1(downloadTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.I0 = false;
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            this.C0 = accountData.getUid();
        }
        try {
            o1();
            q1();
            m2();
            z1();
            ModGameDetailBean modGameDetailBean = this.f33755o0;
            if (modGameDetailBean != null && modGameDetailBean.getCloud_archive_local_path() != null) {
                n2();
            }
            com.join.mgps.dialog.z0 z0Var = this.f33765t0;
            if (z0Var != null && z0Var.isShowing()) {
                if (this.f33769v0 && this.f33753n0 != null && g1.f.G().B(this.f33753n0.getCrc_link_type_val()) == null) {
                    this.f33765t0.dismiss();
                }
                if (!this.f33769v0 && this.K != null && g1.f.G().B(this.K.getCrc_link_type_val()) == null) {
                    this.f33765t0.dismiss();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (this.J0) {
            this.J0 = false;
            Y1();
        }
    }

    @Subscribe
    public void onStartGame(com.join.mgps.event.o oVar) {
        h2();
    }

    @Override // android.view.View.OnSystemUiVisibilityChangeListener
    public void onSystemUiVisibilityChange(int i2) {
        if (i2 == 0) {
            z1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q2(ModGameDetailBean modGameDetailBean) {
        DownloadTask downloadTask;
        ModInfoBean modInfoBean;
        boolean z3;
        String[] split;
        GamedetialModleFourBean gamedetialModleFourBean;
        DetialShowImageBean detialShowImageBean;
        DetialShowImageSingBean remote;
        DetialShowImageBean detialShowImageBean2;
        DetialShowImageSingBean remote2;
        this.f33755o0 = modGameDetailBean;
        if (modGameDetailBean != null) {
            try {
                this.f33768v.setVisibility(8);
                this.f33770w.setVisibility(8);
                this.f33766u.setVisibility(0);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (this.f33755o0.getGold_finger() != null) {
                this.K0.setGoldFingerBean(this.f33755o0.getGold_finger());
            }
            d2(modGameDetailBean);
            String str = modGameDetailBean.getCloud_archive_local_path() != null ? "1" : "";
            this.f33757p0 = modGameDetailBean.getMain_game_info();
            this.f33759q0 = modGameDetailBean.getMod_game_info();
            com.papa.sim.statistic.p.l(this).X0(Event.indexGameStart, AccountUtil_.getInstance_(this).getUid(), this.f33759q0.getGame_id(), this.J, 1, str);
            if (modGameDetailBean.getAd_info() != null && modGameDetailBean.getAd_info().getMain() != null) {
                MyImageLoader.h(this.f33749k, modGameDetailBean.getAd_info().getMain().getPic_remote());
            }
            GamedetialModleFourBean gamedetialModleFourBean2 = this.f33757p0;
            if (gamedetialModleFourBean2 != null) {
                if (gamedetialModleFourBean2.getGame_screen_shot() != null && this.f33757p0.getGame_screen_shot().size() > 0) {
                    ScreenshotGamedetialBean screenshotGamedetialBean = this.f33757p0.getGame_screen_shot().get(0);
                    if (screenshotGamedetialBean != null) {
                        String pic = screenshotGamedetialBean.getPic();
                        if (!com.join.mgps.Util.d2.h(pic)) {
                            MyImageLoader.h(this.f33741c, pic);
                        }
                    }
                } else if (this.f33757p0.getPic_info() != null && this.f33757p0.getPic_info().size() > 0 && (detialShowImageBean2 = this.f33757p0.getPic_info().get(0)) != null && (remote2 = detialShowImageBean2.getRemote()) != null) {
                    String path = remote2.getPath();
                    if (!com.join.mgps.Util.d2.h(path)) {
                        MyImageLoader.h(this.f33741c, path);
                    }
                }
            }
            if (this.f33757p0 == null && (gamedetialModleFourBean = this.f33759q0) != null) {
                if (gamedetialModleFourBean.getGame_screen_shot() != null && this.f33759q0.getGame_screen_shot().size() > 0) {
                    ScreenshotGamedetialBean screenshotGamedetialBean2 = this.f33759q0.getGame_screen_shot().get(0);
                    if (screenshotGamedetialBean2 != null) {
                        String pic2 = screenshotGamedetialBean2.getPic();
                        if (!com.join.mgps.Util.d2.h(pic2)) {
                            MyImageLoader.h(this.f33741c, pic2);
                        }
                    }
                } else if (this.f33759q0.getPic_info() != null && this.f33759q0.getPic_info().size() > 0 && (detialShowImageBean = this.f33759q0.getPic_info().get(0)) != null && (remote = detialShowImageBean.getRemote()) != null) {
                    String path2 = remote.getPath();
                    if (!com.join.mgps.Util.d2.h(path2)) {
                        MyImageLoader.h(this.f33741c, path2);
                    }
                }
            }
            GamedetialModleFourBean gamedetialModleFourBean3 = this.f33757p0;
            if (gamedetialModleFourBean3 != null) {
                this.f33740b.setText(gamedetialModleFourBean3.getGame_name());
            } else {
                GamedetialModleFourBean gamedetialModleFourBean4 = this.f33759q0;
                if (gamedetialModleFourBean4 != null) {
                    this.f33740b.setText(gamedetialModleFourBean4.getGame_name());
                }
            }
            GeneralCfgBean general_cfg = this.f33755o0.getGeneral_cfg();
            if (general_cfg != null) {
                this.f33761r0 = general_cfg.getMemberUrl();
                if (general_cfg.getStrongMode() != null) {
                    this.f33745g.setText(general_cfg.getStrongMode().getTitle());
                }
                if (general_cfg.getNormalMode() != null) {
                    this.f33747i.setText(general_cfg.getNormalMode().getTitle());
                }
            }
            if (com.join.mgps.Util.d2.i(this.H)) {
                DownloadTask B = g1.f.G().B(this.H);
                this.K = B;
                if (B != null && !com.join.android.app.common.utils.a.g0(this).d(this, this.K.getPackageName(), APKUtils.DEVICE_TYPE.VM)) {
                    g1.f.G().delete((g1.f) this.K);
                }
            }
            if (this.K == null) {
                DownloadTask downloadtaskDown = this.f33759q0.getDownloadtaskDown();
                this.K = downloadtaskDown;
                U1(downloadtaskDown);
                boolean z4 = true;
                if (com.join.mgps.Util.d2.i(this.K.getMod_info()) && (modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(this.K.getMod_info(), ModInfoBean.class)) != null && this.K.getCrc_link_type_val().equals(modInfoBean.getMod_game_id())) {
                    this.K.setResource_url_remote(modInfoBean.getDown_url());
                    DownloadTask downloadTask2 = this.K;
                    Dtype dtype = Dtype.MOD;
                    downloadTask2.setFileType(dtype.name());
                    this.K.setRomType(dtype.name());
                    Iterator<TipBean> it2 = this.K.getTipBeans().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        TipBean next = it2.next();
                        if (next.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                            this.K.setRomType(Dtype.androiddata.name());
                        } else {
                            if (next.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                                this.K.setRomType(Dtype.androidobb.name());
                            }
                        }
                        if (next.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                            this.K.setRomType(Dtype.androidobbdata.name());
                            break;
                        }
                    }
                    if (com.join.android.app.common.utils.a.g0(this).c(this, this.K.getPackageName()) && this.K.getTask_down_type() == 0 && !com.join.mgps.va.overmind.e.p().D(this.K.getPackageName())) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this).k(this, this.K.getPackageName());
                        if (com.join.mgps.Util.d2.i(modInfoBean.getCompatible_version()) && com.join.mgps.Util.d2.i(modInfoBean.getCompatible_version())) {
                            for (String str2 : modInfoBean.getCompatible_version().split(",")) {
                                if (str2.equals(k4.e() + "_" + k4.d())) {
                                    z3 = true;
                                    break;
                                }
                            }
                        }
                        z3 = false;
                        Iterator<TipBean> it3 = this.K.getTipBeans().iterator();
                        boolean z5 = false;
                        while (it3.hasNext()) {
                            TipBean next2 = it3.next();
                            if (!next2.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                                if (!next2.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                                    if (next2.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                                    }
                                }
                            }
                            z5 = true;
                        }
                        if ((z3 && Build.VERSION.SDK_INT < 30) || (z3 && !z5)) {
                            this.K.setTask_down_type(3);
                        }
                    }
                }
                this.K.setDownloadType(0);
                this.K.setScreenshot_pic(this.f33759q0.getScreenshot_pic());
                String d4 = this.f33771w0.hasShowModInstallGames().d();
                if (!com.join.mgps.Util.d2.h(d4) && d4.contains(this.K.getCrc_link_type_val())) {
                    z4 = false;
                }
                if (z4) {
                    V1(this.K, 0);
                    this.f33771w0.hasShowModInstallGames().g(d4 + "," + this.K.getCrc_link_type_val());
                }
            } else if ("46".equals(this.f33759q0.getPlugin_num())) {
                DownloadTask downloadTask3 = this.K;
                Dtype dtype2 = Dtype.MOD;
                downloadTask3.setFileType(dtype2.name());
                this.K.setRomType(dtype2.name());
                Iterator<TipBean> it4 = this.K.getTipBeans().iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        break;
                    }
                    TipBean next3 = it4.next();
                    if (next3.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                        this.K.setRomType(Dtype.androiddata.name());
                    } else {
                        if (next3.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                            this.K.setRomType(Dtype.androidobb.name());
                        }
                    }
                    if (next3.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                        this.K.setRomType(Dtype.androidobbdata.name());
                        break;
                    }
                }
            }
            o1();
            if (this.K.getStatus() != 9 && this.K.getStatus() != 42) {
                this.f33746h.setVisibility(8);
            } else {
                this.f33746h.setVisibility(0);
            }
            l2(this.K, this.f33759q0);
            GamedetialModleFourBean gamedetialModleFourBean5 = this.f33757p0;
            if (gamedetialModleFourBean5 != null) {
                this.I = gamedetialModleFourBean5.getGame_id();
            }
            if (com.join.mgps.Util.d2.i(this.I)) {
                this.f33753n0 = g1.f.G().B(this.I);
            }
            DownloadTask downloadTask4 = this.f33753n0;
            if (downloadTask4 == null) {
                GamedetialModleFourBean gamedetialModleFourBean6 = this.f33757p0;
                if (gamedetialModleFourBean6 != null) {
                    DownloadTask downloadtaskDown2 = gamedetialModleFourBean6.getDownloadtaskDown();
                    this.f33753n0 = downloadtaskDown2;
                    Dtype dtype3 = Dtype.android;
                    downloadtaskDown2.setFileType(dtype3.name());
                    this.f33753n0.setRomType(dtype3.name());
                }
            } else {
                downloadTask4.setDownloadType(0);
                this.f33753n0.setScreenshot_pic(this.f33757p0.getScreenshot_pic());
            }
            q1();
            GamedetialModleFourBean gamedetialModleFourBean7 = this.f33757p0;
            if (gamedetialModleFourBean7 != null && (downloadTask = this.f33753n0) != null) {
                l2(downloadTask, gamedetialModleFourBean7);
            }
            i2(this.J);
            p1(this.K);
        }
        m2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void r1(DownloadTask downloadTask) {
        String mainArchiveLocalPath;
        GamedetialModleFourBean gamedetialModleFourBean = this.f33757p0;
        if (gamedetialModleFourBean != null && this.f33759q0 != null && TextUtils.equals(gamedetialModleFourBean.getVer(), this.f33759q0.getVer())) {
            if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(this, "android.permission.READ_EXTERNAL_STORAGE") == 0) {
                String str = com.join.mgps.va.overmind.f.f52369d.b0() + this.f33755o0.getCloud_archive_local_path().getMainArchiveLocalPath();
                String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + mainArchiveLocalPath.replace(this.f33755o0.getMod_game_info().getPackageName(), this.f33755o0.getMain_game_info().getPackageName());
                File file = new File(str2);
                if (file.exists() && file.listFiles() != null && file.listFiles().length > 0) {
                    try {
                        com.join.mgps.Util.f0.a(str2, str);
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    t1(true, downloadTask);
                    return;
                }
                t1(false, downloadTask);
                return;
            }
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, 7);
            return;
        }
        Dialog dialog = this.P0;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.P0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        getDetialData();
        x1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void s1(DownloadTask downloadTask) {
        try {
            try {
                if (downloadTask.getFileType().equals(Dtype.MOD.name())) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(com.join.mgps.Util.u.f27857p);
                    String str = File.separator;
                    sb.append(str);
                    sb.append(downloadTask.getPackageName());
                    File file = new File(sb.toString());
                    if (file.exists()) {
                        File file2 = new File(com.join.mgps.va.overmind.f.f52369d.a0() + str + "data" + str + downloadTask.getPackageName());
                        if (!file2.exists()) {
                            file2.mkdirs();
                        }
                        com.join.mgps.Util.g0.d(file.getPath(), file2.getPath());
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } finally {
            u1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.f33768v.setVisibility(0);
            this.f33770w.setVisibility(8);
            this.f33766u.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            this.f33768v.setVisibility(8);
            this.f33770w.setVisibility(0);
            this.f33766u.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t1(boolean z3, DownloadTask downloadTask) {
        Dialog dialog = this.P0;
        if (dialog != null && dialog.isShowing()) {
            this.P0.dismiss();
        }
        if (z3) {
            if (!this.I0) {
                this.J0 = false;
                Y1();
                return;
            }
            this.J0 = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u1() {
        Dialog dialog = this.U0;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.U0.dismiss();
    }

    public String w1() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f33759q0;
        if (gamedetialModleFourBean != null) {
            return gamedetialModleFourBean.getGame_id();
        }
        GamedetialModleFourBean gamedetialModleFourBean2 = this.f33757p0;
        return gamedetialModleFourBean2 != null ? gamedetialModleFourBean2.getGame_id() : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void x1() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel requestModel = new RequestModel();
                RequestModGameRecommendAdArgs requestModGameRecommendAdArgs = new RequestModGameRecommendAdArgs();
                requestModGameRecommendAdArgs.setUid(accountData.getUid());
                requestModGameRecommendAdArgs.setGameId(Long.parseLong(this.H));
                requestModGameRecommendAdArgs.setDownloadedGameIdList(g1.f.G().z());
                requestModel.setArgs(requestModGameRecommendAdArgs);
                requestModel.setDefault(this);
                ResponseModel<ModGameRecommendAdBean> body = com.join.mgps.rpc.impl.h.L().J().x0(requestModel.makeSign()).execute().body();
                if (body != null && body.getCode() == 200 && body.getData() != null) {
                    List<CollectionBeanSubBusiness> rec_game_list = body.getData().getRec_game_list();
                    for (CollectionBeanSubBusiness collectionBeanSubBusiness : rec_game_list) {
                        collectionBeanSubBusiness.setFromRecomDown(true);
                        collectionBeanSubBusiness.set_from(101);
                        collectionBeanSubBusiness.set_from_type(148);
                    }
                    this.f33777z0 = (ArrayList) rec_game_list;
                    this.A0 = body.getData().isPopup();
                    if ("A".equalsIgnoreCase(body.getData().getPanel())) {
                        this.H0 = 1;
                    } else if ("B".equalsIgnoreCase(body.getData().getPanel())) {
                        this.H0 = 2;
                    }
                    this.H0++;
                    c2();
                    P1();
                    return;
                }
                A1();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                A1();
                return;
            }
        }
        A1();
    }

    public boolean y1(MotionEvent motionEvent, MotionEvent motionEvent2) {
        float x3 = motionEvent == null ? 0.0f : motionEvent.getX();
        float x4 = motionEvent2 == null ? 0.0f : motionEvent2.getX();
        float y3 = motionEvent == null ? 0.0f : motionEvent.getY();
        float y4 = motionEvent2 == null ? 0.0f : motionEvent2.getY();
        float f4 = x3 - x4;
        float abs = Math.abs(f4);
        float abs2 = Math.abs(y3 - y4);
        StringBuilder sb = new StringBuilder();
        sb.append("onFling: ");
        sb.append(x3);
        sb.append("  ");
        sb.append(x4);
        if (Math.abs(abs2 == 0.0f ? 100.0f : abs / abs2) > 1.0f) {
            if (x4 - x3 > 150.0f) {
                if (this.D0) {
                    N1();
                    com.papa.sim.statistic.p.l(this.B0).L1(Event.listClickBigPicStaus, this.C0, w1(), 1, this.H0);
                    return true;
                }
                return true;
            } else if (f4 <= 150.0f || this.D0) {
                return true;
            } else {
                N1();
                com.papa.sim.statistic.p.l(this.B0).L1(Event.listClickIconStatus, this.C0, w1(), 1, this.H0);
                return true;
            }
        }
        return false;
    }

    void z1() {
        if (Build.VERSION.SDK_INT >= 19) {
            T1();
        }
    }
}
