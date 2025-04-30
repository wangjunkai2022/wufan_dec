package com.join.mgps.activity.gamedetail;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.join.android.app.common.manager.b;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.f;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.activity.g0;
import com.join.mgps.activity.l0;
import com.join.mgps.adapter.x;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.impl.h;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import com.psk.eventmodule.StatFactory;
import java.util.ArrayList;
import me.relex.photodraweeview.d;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import q.a;
@EActivity(R.layout.gamedetail_video_main_activity)
/* loaded from: classes3.dex */
public class GamedetailVideoMainActivity extends BaseAppCompatActivity {
    private static final String BUNDLE_FRAGMENTS_KEY = "android:support:fragments";
    private static final String OPTION_VIEW = "view";
    public static boolean hasInAnim;
    @Extra
    boolean autodown;
    private Context context;
    @Extra
    ExtBean extBean;
    @ViewById
    FrameLayout fragment;
    @Extra
    int from;
    @Extra
    String gameId;
    @ViewById
    View iv_back;
    @ViewById
    View loding_faile;
    @ViewById
    View loding_layout;
    @ViewById
    View mainCover;
    @ViewById
    View main_content;
    private GamedetialModleFourBean modleFourBeanShow;
    @Pref
    PrefDef_ prefDef;
    @ViewById
    View setNetwork;
    @ViewById
    View statuHVIew;
    private int statubarH;
    private b tintManager;
    @ViewById
    ViewPager viewPager;
    GameDetailVideoFragment fragmentVideo = null;
    BaseGameDetailFragment fragmentDetial = null;
    boolean showCover = false;
    int xoffW = 200;
    boolean isFromVideo = false;

    private void backCheck() {
        BaseGameDetailFragment baseGameDetailFragment;
        if (!this.isFromVideo || (baseGameDetailFragment = this.fragmentDetial) == null) {
            return;
        }
        baseGameDetailFragment.backpressedTofinishActivity();
    }

    private int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", a.f73954a);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPoint(String str) {
        String str2;
        String str3;
        ExtBean extBean = this.extBean;
        String str4 = "";
        if (extBean != null) {
            str2 = extBean.getFrom();
            str3 = this.extBean.getLocation();
            try {
                if (!TextUtils.isEmpty(str2)) {
                    this.extBean.set_from_type(Integer.parseInt(str2));
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else {
            str2 = "";
            str3 = str2;
        }
        ExtBean extBean2 = this.extBean;
        if (extBean2 != null && extBean2.get_from_type() != 0) {
            str2 = this.extBean.get_from_type() + "";
            str3 = this.extBean.getRecPosition();
        }
        String str5 = str2;
        String str6 = str3;
        if ("112".equals(str5) || "147".equals(str5)) {
            str4 = this.extBean.getReMarks();
        }
        p.l(this.context).l2(this.gameId, AccountUtil_.getInstance_(this.context).getUid(), str5, str, str6, str, str4);
    }

    public static void startTActivity(Activity activity, View view, String str, boolean z3, ExtBean extBean) {
        Intent intent = new Intent(activity, GamedetailVideoMainActivity_.class);
        intent.putExtra("isFromVideo", true);
        intent.putExtra("gameId", str);
        intent.putExtra(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, z3);
        intent.putExtra("extBean", extBean);
        activity.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterviews() {
        this.context = this;
        this.statubarH = getStatusBarHeight(this);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.statuHVIew.getLayoutParams();
        if (Build.VERSION.SDK_INT >= 21) {
            layoutParams.height = this.statubarH;
            this.statuHVIew.setLayoutParams(layoutParams);
        } else {
            layoutParams.height = 1;
            this.statuHVIew.setLayoutParams(layoutParams);
        }
        this.xoffW = getResources().getDimensionPixelOffset(R.dimen.wdp250);
        getDetialData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 600)
    public void animFinish() {
        hasInAnim = false;
    }

    public void autoPlayVideo(StandardVideoView standardVideoView) {
        if ((this.viewPager.getCurrentItem() == 1 || this.viewPager.getVisibility() == 8) && Build.VERSION.SDK_INT >= 21 && standardVideoView != null && standardVideoView.d()) {
            standardVideoView.startPlayLogic();
        }
    }

    protected boolean clearFragmentsTag() {
        return true;
    }

    public void clickBack() {
        backCheck();
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        GameDetailVideoFragment gameDetailVideoFragment = this.fragmentVideo;
        if (gameDetailVideoFragment != null) {
            gameDetailVideoFragment.clearVideo();
        }
        super.finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDetialData() {
        GamedetialModleFourBean data;
        if (f.j(this.context)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.context).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.context);
                RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs(this.gameId, 1, accountData.getUid());
                requestGameIdArgs.setDownloadedGameIdList(g1.f.G().z());
                requestModel.setArgs(requestGameIdArgs);
                ResponseModel<GamedetialModleFourBean> body = h.L().J().i(requestModel.makeSign()).execute().body();
                if (body != null && body.getCode() == 200 && (data = body.getData()) != null) {
                    updateUi(data);
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

    public GamedetialModleFourBean getModleFourBeanShow() {
        return this.modleFourBeanShow;
    }

    public BaseGameDetailFragment getModleFourFragment() {
        return this.fragmentDetial;
    }

    public int getViewpagerCurrentPage() {
        return this.viewPager.getCurrentItem();
    }

    public boolean gethideOrshowCover() {
        return this.showCover;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = d.f72676b0)
    public void hideLoadingDelay() {
        this.iv_back.setVisibility(8);
        this.main_content.setVisibility(0);
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.mainCover.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void iv_back() {
        backCheck();
        finish();
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        GameDetailVideoFragment gameDetailVideoFragment = this.fragmentVideo;
        if (gameDetailVideoFragment != null) {
            gameDetailVideoFragment.clearVideo();
        }
        GameDetailVideoFragment gameDetailVideoFragment2 = this.fragmentVideo;
        if (gameDetailVideoFragment2 != null) {
            gameDetailVideoFragment2.onDestroy();
        }
        backCheck();
        BaseGameDetailFragment baseGameDetailFragment = this.fragmentDetial;
        if (baseGameDetailFragment == null || !baseGameDetailFragment.onBackPressedMy()) {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        if (bundle != null && clearFragmentsTag()) {
            bundle.remove(BUNDLE_FRAGMENTS_KEY);
        }
        super.onCreate(bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null || !clearFragmentsTag()) {
            return;
        }
        bundle.remove(BUNDLE_FRAGMENTS_KEY);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        getDetialData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1250)
    public void scroolToposition() {
        this.viewPager.scrollTo(this.xoffW, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void shakeAnim() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(600L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Float f4 = (Float) valueAnimator.getAnimatedValue();
                GamedetailVideoMainActivity.this.viewPager.scrollTo((int) (f4.floatValue() * GamedetailVideoMainActivity.this.xoffW), 0);
                if (f4.floatValue() == 1.0f) {
                    new PrefDef_(GamedetailVideoMainActivity.this.context).firstIntentgamedetialVideo().g(Boolean.FALSE);
                }
            }
        });
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.start();
    }

    public void shakeAnimback() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.setDuration(600L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Float f4 = (Float) valueAnimator.getAnimatedValue();
                GamedetailVideoMainActivity.this.viewPager.scrollTo((int) (f4.floatValue() * GamedetailVideoMainActivity.this.xoffW), 0);
                f4.floatValue();
            }
        });
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.start();
        animFinish();
        this.prefDef.firstIntentgamedetialVideo().g(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.loding_layout.setVisibility(8);
        try {
            GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBeanShow;
            if (gamedetialModleFourBean == null || d2.h(gamedetialModleFourBean.getCrc_sign_id())) {
                this.loding_faile.setVisibility(0);
                if (f.j(this.context)) {
                    this.setNetwork.setVisibility(8);
                } else {
                    this.setNetwork.setVisibility(0);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(GamedetialModleFourBean gamedetialModleFourBean) {
        this.modleFourBeanShow = gamedetialModleFourBean;
        ExtBean extBean = this.extBean;
        if (extBean != null) {
            gamedetialModleFourBean.set_from_type(extBean.get_from_type());
            this.modleFourBeanShow.setRecPosition(this.extBean.getRecPosition());
            this.modleFourBeanShow.setPosition_path((StatFactory.VolcanoOther) JsonMapper.getInstance().fromJson(this.extBean.getVolcanoOther(), StatFactory.VolcanoOther.class));
        }
        this.modleFourBeanShow.set_from(101);
        GamedetailViewbean video_and_cover = gamedetialModleFourBean.getVideo_and_cover();
        if (video_and_cover != null && d2.i(video_and_cover.getVideo_url()) && this.from == 2) {
            this.iv_back.setVisibility(8);
            this.main_content.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
            this.viewPager.setVisibility(0);
            ArrayList arrayList = new ArrayList();
            boolean booleanValue = this.prefDef.firstIntentgamedetialVideo().d().booleanValue();
            if (booleanValue) {
                this.showCover = true;
                hasInAnim = true;
            }
            this.fragmentVideo = new GameDetailVideoFragment_();
            boolean booleanExtra = getIntent().getBooleanExtra("isFromVideo", false);
            if (booleanExtra) {
                this.gameId = getIntent().getStringExtra("gameId");
                this.autodown = getIntent().getBooleanExtra(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, false);
                this.extBean = (ExtBean) getIntent().getSerializableExtra("extBean");
            }
            Bundle bundle = new Bundle();
            bundle.putSerializable("videoDatas", video_and_cover);
            bundle.putSerializable("extBean", this.extBean);
            bundle.putString("gameId", this.gameId);
            this.fragmentVideo.setArguments(bundle);
            arrayList.add(new x.a("视频", this.fragmentVideo));
            if (gamedetialModleFourBean.getBt_game_switch() == 1) {
                g0 i02 = g0.i0(this.gameId, this.extBean, this.autodown, booleanExtra);
                this.fragmentDetial = i02;
                arrayList.add(new x.a("详情", i02));
            } else {
                l0 n02 = l0.n0(this.gameId, this.extBean, this.autodown, booleanExtra);
                this.fragmentDetial = n02;
                arrayList.add(new x.a("详情", n02));
            }
            this.viewPager.setAdapter(new x(getSupportFragmentManager(), arrayList));
            this.viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity.1
                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrollStateChanged(int i2) {
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrolled(int i2, float f4, int i4) {
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageSelected(int i2) {
                    if (i2 == 0) {
                        BaseGameDetailFragment baseGameDetailFragment = GamedetailVideoMainActivity.this.fragmentDetial;
                        if (baseGameDetailFragment != null) {
                            baseGameDetailFragment.pauseVideo();
                        }
                        GamedetailVideoMainActivity.this.fragmentVideo.resumVideo();
                        GamedetailVideoMainActivity.this.sendPoint("1");
                    } else if (i2 == 1) {
                        GamedetailVideoMainActivity.this.fragmentVideo.pauseVideo();
                        BaseGameDetailFragment baseGameDetailFragment2 = GamedetailVideoMainActivity.this.fragmentDetial;
                        if (baseGameDetailFragment2 != null) {
                            baseGameDetailFragment2.resumVideo();
                            GamedetailVideoMainActivity.this.fragmentDetial.hideCover();
                        }
                        p.l(GamedetailVideoMainActivity.this.context).K1(Event.video_visitGamePage, new Ext().setGameId(GamedetailVideoMainActivity.this.gameId));
                        GamedetailVideoMainActivity.hasInAnim = false;
                        GamedetailVideoMainActivity.this.sendPoint("0");
                    }
                }
            });
            if (booleanValue) {
                this.showCover = true;
                hasInAnim = true;
                shakeAnim();
            }
            sendPoint("1");
            return;
        }
        this.main_content.setVisibility(0);
        this.mainCover.setVisibility(0);
        this.iv_back.setVisibility(0);
        hideLoadingDelay();
        this.fragment.setVisibility(0);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        boolean booleanExtra2 = getIntent().getBooleanExtra("isFromVideo", false);
        this.isFromVideo = booleanExtra2;
        if (booleanExtra2) {
            this.gameId = getIntent().getStringExtra("gameId");
            this.autodown = getIntent().getBooleanExtra(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, false);
            this.extBean = (ExtBean) getIntent().getSerializableExtra("extBean");
        }
        if (gamedetialModleFourBean.getBt_game_switch() == 1) {
            g0 i03 = g0.i0(this.gameId, this.extBean, this.autodown, this.isFromVideo);
            this.fragmentDetial = i03;
            beginTransaction.add((int) R.id.fragment, i03);
            sendPoint(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
        } else {
            l0 n03 = l0.n0(this.gameId, this.extBean, this.autodown, this.isFromVideo);
            this.fragmentDetial = n03;
            beginTransaction.add(R.id.fragment, n03);
            sendPoint("0");
        }
        beginTransaction.commitAllowingStateLoss();
    }
}
