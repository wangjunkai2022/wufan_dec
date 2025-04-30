package com.join.mgps.activity;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.PictureHProgress;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.mod.bean.ModMeta;
import com.papa91.arc.ext.ToastManager;
import com.uc.crashsdk.export.LogType;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_mini_game_loading)
/* loaded from: classes.dex */
public class MiniGameLoadingActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    View f33723a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    String f33724b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    SimpleDraweeView f33725c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f33726d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f33727e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f33728f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f33729g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    PictureHProgress f33730h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f33731i;

    /* renamed from: j  reason: collision with root package name */
    DownloadTask f33732j;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit G0(DownloadTask downloadTask) {
        I0(downloadTask);
        return null;
    }

    private void H0() {
        final DownloadTask B;
        if (com.join.mgps.Util.d2.i(this.f33724b) && (B = g1.f.G().B(this.f33724b)) != null) {
            if (com.join.mgps.va.overmind.e.p().M(B.getPackageName()) && (APKUtils.a(this, B) || APKUtils.f(this, new Function0() { // from class: com.join.mgps.activity.k1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit G0;
                    G0 = MiniGameLoadingActivity.this.G0(B);
                    return G0;
                }
            }))) {
                return;
            }
            I0(B);
            return;
        }
        com.join.mgps.Util.i2.a(this).b("请连接网络后重试!");
    }

    private boolean I0(DownloadTask downloadTask) {
        int i2;
        if (com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName())) {
            ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class);
            ModMeta modMeta = new ModMeta();
            modMeta.setPackageName(downloadTask.getPackageName());
            modMeta.setModPath(downloadTask.getResource_path());
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
            com.join.mgps.va.overmind.e.p().T(this, modMeta, 0, downloadTask.getMod_info());
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
            finish();
            return true;
        }
        return false;
    }

    private void receiveDelete(DownloadTask downloadTask) {
        if (downloadTask != null && this.f33724b.equals(downloadTask.getCrc_link_type_val())) {
            ToastManager.show("下载文件已删除");
            finish();
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) || !downloadTask.getCrc_link_type_val().equals(this.f33724b)) {
                return;
            }
            UtilsMy.C3(downloadTask);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        if (downloadTask != null && this.f33724b.equals(downloadTask.getCrc_link_type_val())) {
            this.f33732j = downloadTask;
        }
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        if (downloadTask != null && this.f33724b.equals(downloadTask.getCrc_link_type_val())) {
            this.f33728f.setText("");
            this.f33730h.setProgress(100);
        }
    }

    private void setStatusBar() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            Window window = getWindow();
            window.clearFlags(67108864);
            window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
        } else if (i2 >= 19) {
            getWindow().addFlags(67108864);
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f33723a.getLayoutParams();
        if (i2 >= 21) {
            layoutParams.height = com.join.android.app.common.utils.j.v(this);
        }
        this.f33723a.setLayoutParams(layoutParams);
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask = this.f33732j;
        if (downloadTask != null) {
            if (downloadTask.getStatus() != 2 && this.f33732j.getStatus() != 12) {
                if (this.f33732j.getStatus() == 5 && this.f33724b.equals(this.f33732j.getCrc_link_type_val())) {
                    this.f33730h.setProgress(100);
                    this.f33728f.setText("");
                    return;
                }
                return;
            }
            try {
                if (this.f33724b.equals(this.f33732j.getCrc_link_type_val())) {
                    DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(this.f33732j.getCrc_link_type_val());
                    this.f33730h.setProgress((int) f4.getProgress());
                    TextView textView = this.f33727e;
                    textView.setText("游戏加载中 " + f4.getProgress() + "% \n体验后可对游戏进行评价哦");
                    TextView textView2 = this.f33728f;
                    textView2.setText("当前网速 " + f4.getSpeed() + "/s");
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.tv_cancel})
    public void F0() {
        DownloadTask downloadTask = this.f33732j;
        if (downloadTask != null) {
            com.php25.PDownload.d.h(downloadTask);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        com.join.mgps.Util.c0.a().d(this);
        setStatusBar();
        if (com.join.mgps.Util.d2.h(this.f33724b)) {
            ToastManager.show("游戏信息获取失败，请重试");
            finish();
            return;
        }
        DownloadTask B = g1.f.G().B(this.f33724b);
        this.f33732j = B;
        if (B == null) {
            ToastManager.show("游戏数据获取错误");
            finish();
            return;
        }
        MyImageLoader.n(this.f33725c, B.getPortraitURL());
        this.f33726d.setText(this.f33732j.getShowName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.ll_back})
    public void back() {
        finish();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        org.greenrobot.eventbus.c.f().y(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            updateUI(a4, 1);
        } else if (c4 != 3) {
            if (c4 == 5) {
                H0();
            } else if (c4 == 6) {
                updateUI(a4, 6);
                return;
            } else if (c4 == 7) {
                updateUI(a4, 3);
                return;
            } else if (c4 == 8) {
                updateProgressPartly();
                return;
            } else if (c4 != 48) {
                switch (c4) {
                    case 10:
                        updateUI(a4, 7);
                        return;
                    case 11:
                        break;
                    case 12:
                        updateUI(a4, 8);
                        return;
                    case 13:
                        updateUI(a4, 9);
                        return;
                    default:
                        return;
                }
            } else if (a4 == null || !this.f33724b.equals(a4.getCrc_link_type_val())) {
                return;
            } else {
                this.f33727e.setText("游戏安装中...\n体验后可对游戏进行评价哦");
                this.f33728f.setVisibility(4);
                this.f33730h.setVisibility(4);
                this.f33729g.setVisibility(4);
                return;
            }
            updateUI(a4, 5);
        } else {
            updateUI(a4, 2);
        }
    }

    void updateUI(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    return;
                case 3:
                    receiveDelete(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    receiveSuccess(downloadTask);
                    return;
                case 6:
                    receiveError(downloadTask);
                    return;
            }
        }
    }
}
