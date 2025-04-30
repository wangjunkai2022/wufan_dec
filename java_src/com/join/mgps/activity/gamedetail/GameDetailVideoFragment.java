package com.join.mgps.activity.gamedetail;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.MApplication;
import com.danikula.videocache.i;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.customview.DownloadProgressBar;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.d;
import com.join.mgps.rpc.impl.c;
import com.join.mgps.va.overmind.e;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.Where;
import com.papa.sim.statistic.p;
import com.umeng.analytics.MobclickAgent;
import g1.f;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import q.a;
@EFragment(R.layout.gamedetail_video_fragment)
/* loaded from: classes.dex */
public class GameDetailVideoFragment extends BaseGameDetailFragment {
    AccountBean accountBean;
    @ViewById
    ProgressBar butnProgressBar;
    @ViewById
    ImageView butn_showdownload;
    @ViewById
    TextView content;
    GamedetailVideoMainActivity context;
    MediaController controller;
    @ViewById
    SimpleDraweeView cover;
    @ViewById
    SimpleDraweeView coverback;
    private DownloadTask downloadTask;
    ExtBean extBean;
    String gameId;
    @ViewById
    TextView gameName;
    @ViewById
    SimpleDraweeView icon;
    @ViewById
    TextView instalButtomButn;
    @ViewById
    RelativeLayout instalbutnLayout;
    GamedetialModleFourBean modleFourBeanShow;
    MediaPlayer mpx;
    boolean nowIsNoSound = true;
    @ViewById
    TextView percent;
    @ViewById
    View playIcon;
    private String playUrl;
    @Pref
    PrefDef_ prefDef;
    @ViewById
    RelativeLayout progressbarLayout;
    private i proxy;
    private String proxyUrl;
    d rpcClient;
    @ViewById
    ImageView sound;
    @ViewById
    View statuHVIew;
    private int statubarH;
    @ViewById
    FulllScreenVideoView videoView;

    private int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", a.f73954a);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private void uptateUi() {
        List<DownloadTask> D;
        boolean z3;
        GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBeanShow;
        if (gamedetialModleFourBean != null) {
            if (gamedetialModleFourBean.getMod_info() != null) {
                D = f.G().C(this.modleFourBeanShow.getMod_info().getMain_game_id(), this.modleFourBeanShow.getMod_info().getMod_game_id());
            } else {
                D = f.G().D(this.modleFourBeanShow.getPackageName());
            }
            if (D != null && D.size() > 0) {
                boolean z4 = false;
                loop0: while (true) {
                    z3 = false;
                    for (DownloadTask downloadTask : D) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z4 = e.p().D(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z3 = true;
                        }
                    }
                    break loop0;
                }
                if (z4 && z3) {
                    this.downloadTask = f.G().B(this.gameId);
                } else if (z4) {
                    if (this.modleFourBeanShow.getMod_info() != null) {
                        this.downloadTask = f.G().B(this.modleFourBeanShow.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    this.downloadTask = f.G().B(this.gameId);
                } else {
                    if (this.modleFourBeanShow.getMod_info() != null) {
                        this.downloadTask = f.G().B(this.modleFourBeanShow.getMod_info().getMod_game_id());
                    }
                    if (this.downloadTask == null) {
                        this.downloadTask = f.G().B(this.gameId);
                    }
                }
            }
        }
        DownloadTask downloadTask2 = this.downloadTask;
        if (downloadTask2 == null) {
            DownloadTask downloadtaskDown = this.modleFourBeanShow.getDownloadtaskDown();
            this.downloadTask = downloadtaskDown;
            downloadtaskDown.set_from(10101);
            if (UtilsMy.e0(this.modleFourBeanShow.getTag_info())) {
                if (this.downloadTask.getMod_info() == null) {
                    this.downloadTask.setFileType(Dtype.android.name());
                    if (com.join.android.app.common.utils.a.g0(this.context).c(this.context, this.modleFourBeanShow.getPackageName())) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.context).k(this.context, this.modleFourBeanShow.getPackageName());
                        if (d2.i(this.modleFourBeanShow.getVer()) && k4.d() < Integer.parseInt(this.modleFourBeanShow.getVer())) {
                            this.downloadTask.setStatus(9);
                        } else {
                            this.downloadTask.setStatus(5);
                        }
                    } else {
                        this.downloadTask.setStatus(0);
                    }
                }
            } else {
                this.downloadTask.setStatus(0);
            }
        } else {
            downloadTask2.setDownloadType(0);
            this.downloadTask.setTask_down_type(0);
            this.downloadTask.setScreenshot_pic(this.modleFourBeanShow.getScreenshot_pic());
        }
        updateButn();
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.extBean;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null || !"112".equals(this.extBean.getFrom())) {
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom("101");
        extBean2.setPosition("112");
        extBean2.setLocation(this.extBean.getLocation());
        extBean2.setNodeId("1");
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        GamedetailViewbean gamedetailViewbean;
        Bundle arguments = getArguments();
        this.context = (GamedetailVideoMainActivity) getActivity();
        this.rpcClient = c.P1();
        c0.a().d(this);
        if (arguments != null && (gamedetailViewbean = (GamedetailViewbean) arguments.getSerializable("videoDatas")) != null) {
            if (!com.join.android.app.common.utils.f.k(this.context)) {
                i2.a(this.context).b("当前为非Wi-Fi环境，请注意流量消耗");
            }
            boolean booleanValue = this.prefDef.soundnowIsNoSound().d().booleanValue();
            this.nowIsNoSound = booleanValue;
            if (booleanValue) {
                this.sound.setImageResource(R.drawable.gamedetail_video_nosound);
            } else {
                this.sound.setImageResource(R.drawable.gamedetail_video_opensound);
            }
            Uri.parse(gamedetailViewbean.getVideo_url());
            this.playUrl = gamedetailViewbean.getVideo_url();
            this.modleFourBeanShow = ((GamedetailVideoMainActivity) getActivity()).getModleFourBeanShow();
            this.gameId = arguments.getString("gameId");
            ExtBean extBean = (ExtBean) arguments.getSerializable("extBean");
            this.extBean = extBean;
            if (extBean == null) {
                this.extBean = new ExtBean();
            }
            GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBeanShow;
            if (gamedetialModleFourBean == null) {
                return;
            }
            this.gameId = gamedetialModleFourBean.getCrc_sign_id();
            MyImageLoader.j(this.icon, this.modleFourBeanShow.getIco_remote(), MyImageLoader.D(this.context, getResources().getDimensionPixelOffset(R.dimen.wdp25)));
            this.content.setText(gamedetailViewbean.getSub_title());
            this.gameName.setText(this.modleFourBeanShow.getGame_name());
            MediaController mediaController = new MediaController(getActivity());
            this.controller = mediaController;
            mediaController.setVisibility(4);
            i p3 = MApplication.p(getActivity().getApplicationContext());
            this.proxy = p3;
            String j4 = p3.j(gamedetailViewbean.getVideo_url());
            this.proxyUrl = j4;
            this.videoView.setUp(j4, true, "");
            MyImageLoader.i(this.videoView.thumbImageView, gamedetailViewbean.getVideoCover(), r.c.f12144g);
            this.videoView.setMute(this.nowIsNoSound);
            int currentState = this.videoView.getCurrentState();
            if (currentState == 0 || currentState == 7) {
                this.videoView.startPlayLogic();
                t0.d("xxxxxxxx", "detailVIdeo PlayVideo");
            }
            showVideo();
        }
        this.statubarH = getStatusBarHeight(getActivity());
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.statuHVIew.getLayoutParams();
        if (Build.VERSION.SDK_INT >= 21) {
            layoutParams.height = this.statubarH;
            this.statuHVIew.setLayoutParams(layoutParams);
        } else {
            layoutParams.height = 1;
            this.statuHVIew.setLayoutParams(layoutParams);
        }
        uptateUi();
        updateButn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeGameFollow(int i2) {
        String str;
        if (this.modleFourBeanShow != null && com.join.android.app.common.utils.f.j(this.context)) {
            AccountBean accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            this.accountBean = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.modleFourBeanShow.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.accountBean.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.context).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            ResultMainBean resultMainBean = null;
            if (i2 == 1) {
                resultMainBean = this.rpcClient.O0(detialFollowAnd);
            } else if (i2 == 2) {
                resultMainBean = this.rpcClient.D(detialFollowAnd);
            } else if (i2 == 3) {
                resultMainBean = this.rpcClient.o(detialFollowAnd);
            } else if (i2 == 4) {
                resultMainBean = this.rpcClient.d0(detialFollowAnd);
            }
            if (resultMainBean != null) {
                updateTitleButn(resultMainBean, i2);
            }
        }
    }

    public void clearVideo() {
        t0.d("sssssssscc", "clearVideo");
        FulllScreenVideoView fulllScreenVideoView = this.videoView;
        if (fulllScreenVideoView != null) {
            fulllScreenVideoView.release();
        }
        MediaController mediaController = this.controller;
        if (mediaController != null) {
            mediaController.removeAllViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void coverText() {
        this.videoView.clickPlay();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void delayCheckplay() {
        int currentState = this.videoView.getCurrentState();
        if (currentState == 0 || currentState == 7) {
            this.videoView.startPlayLogic();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void gameInfoLayout() {
        try {
            GamedetailVideoMainActivity gamedetailVideoMainActivity = this.context;
            if (GamedetailVideoMainActivity.hasInAnim) {
                return;
            }
            gamedetailVideoMainActivity.viewPager.setCurrentItem(1);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void instalButtomButn() {
        List<DownloadTask> D;
        boolean z3;
        int game_book = this.modleFourBeanShow.getGame_book();
        if (this.modleFourBeanShow.getBespeak_switch() == 1 && game_book != 1 && this.modleFourBeanShow.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginNetGame(this.context) || this.modleFourBeanShow.getGame_book() == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        if (("" + this.modleFourBeanShow.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            IntentUtil.getInstance().goShareWebActivity(this.context, this.modleFourBeanShow.getDown_url_remote());
            UtilsMy.h2(this.downloadTask, this.context);
        }
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.downloadTask != null && UtilsMy.m0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
            status = 43;
        }
        GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBeanShow;
        if (gamedetialModleFourBean != null && gamedetialModleFourBean.getMod_info() != null) {
            if (this.modleFourBeanShow.getMod_info() != null) {
                D = f.G().C(this.modleFourBeanShow.getMod_info().getMain_game_id(), this.modleFourBeanShow.getMod_info().getMod_game_id());
            } else {
                D = f.G().D(this.modleFourBeanShow.getPackageName());
            }
            if (D != null && D.size() > 0) {
                boolean z4 = false;
                loop0: while (true) {
                    z3 = false;
                    for (DownloadTask downloadTask2 : D) {
                        if (Dtype.MOD.name().equals(downloadTask2.getFileType())) {
                            z4 = e.p().D(downloadTask2.getPackageName()) && downloadTask2.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.a.g0(getContext()).c(getContext(), downloadTask2.getPackageName()) && downloadTask2.getStatus() == 5) {
                            z3 = true;
                        }
                    }
                    break loop0;
                }
                if (z4 && z3) {
                    this.downloadTask = f.G().B(this.gameId);
                } else if (z4) {
                    if (this.modleFourBeanShow.getMod_info() != null) {
                        this.downloadTask = f.G().B(this.modleFourBeanShow.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    this.downloadTask = f.G().B(this.gameId);
                } else {
                    if (this.modleFourBeanShow.getMod_info() != null) {
                        this.downloadTask = f.G().B(this.modleFourBeanShow.getMod_info().getMod_game_id());
                    }
                    if (this.downloadTask == null) {
                        this.downloadTask = f.G().B(this.gameId);
                    }
                }
            } else {
                this.downloadTask = null;
            }
        }
        DownloadTask downloadTask3 = this.downloadTask;
        if (downloadTask3 == null) {
            UtilsMy.M0(this.context, this.modleFourBeanShow);
            return;
        }
        if (downloadTask3 != null && (status == 2 || status == 10)) {
            com.php25.PDownload.d.h(downloadTask3);
        } else if (status == 12 || status == 27) {
            return;
        } else {
            if (status == 13) {
                com.php25.PDownload.d.k(this.context, downloadTask3);
                return;
            } else if (status == 5) {
                UtilsMy.f3(this.context, downloadTask3, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            } else if (status == 42) {
                downloadTask3.setVer(this.modleFourBeanShow.getVer());
                this.downloadTask.setVer_name(this.modleFourBeanShow.getVer_name());
                this.downloadTask.setUrl(this.modleFourBeanShow.getDown_url_remote());
                this.downloadTask.setCfg_ver(this.modleFourBeanShow.getCfg_ver());
                this.downloadTask.setCfg_ver_name(this.modleFourBeanShow.getCfg_ver_name());
                this.downloadTask.setCfg_down_url(this.modleFourBeanShow.getCfg_down_url());
                this.downloadTask.setPay_game_amount(this.modleFourBeanShow.getPay_tag_info() != null ? this.modleFourBeanShow.getPay_tag_info().getPay_game_amount() : 0);
                DownloadTask downloadTask4 = this.downloadTask;
                Where where = Where.detail;
                downloadTask4.setKeyword(where.name());
                this.downloadTask.setKeyword(where.name());
                UtilsMy.w3(this.context, this.downloadTask);
            } else if (status == 9) {
                if (this.modleFourBeanShow.getMod_info() == null) {
                    if (!com.join.android.app.common.utils.f.j(this.context)) {
                        i2.a(this.context).b("无网络连接");
                        return;
                    }
                    if (this.modleFourBeanShow.getGame_detailed() != null && d2.i(this.modleFourBeanShow.getGame_detailed().getTpl_two_qq())) {
                        a0.c0(this.context).Y(this.context, this.modleFourBeanShow.getGame_detailed().getTpl_two_qq_key(), this.modleFourBeanShow.getGame_detailed().getAd_pic_qq(), this.modleFourBeanShow.getGame_detailed().getTpl_two_qq());
                    }
                    int downloadType = this.downloadTask.getDownloadType();
                    if (downloadType == 0 || downloadType == 1) {
                        if (this.downloadTask.getCrc_link_type_val() == null || this.downloadTask.getCrc_link_type_val().equals("")) {
                            return;
                        }
                        addFrom(this.downloadTask);
                        if (UtilsMy.T0(this.context, this.downloadTask)) {
                            return;
                        }
                        if (this.modleFourBeanShow.getDown_status() == 5) {
                            UtilsMy.R0(this.context, this.downloadTask);
                            return;
                        }
                        com.php25.PDownload.d.b(this.downloadTask);
                        this.downloadTask.setVer(this.modleFourBeanShow.getVer());
                        this.downloadTask.setVer_name(this.modleFourBeanShow.getVer_name());
                        this.downloadTask.setUrl(this.modleFourBeanShow.getDown_url_remote());
                        this.downloadTask.setCfg_ver(this.modleFourBeanShow.getCfg_ver());
                        this.downloadTask.setCfg_ver_name(this.modleFourBeanShow.getCfg_ver_name());
                        this.downloadTask.setCfg_down_url(this.modleFourBeanShow.getCfg_down_url());
                        this.downloadTask.setPay_game_amount(this.modleFourBeanShow.getPay_tag_info() != null ? this.modleFourBeanShow.getPay_tag_info().getPay_game_amount() : 0);
                        this.downloadTask.setKeyword(Where.detail.name());
                        if (UtilsMy.o0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
                            ExtBean extBean = this.extBean;
                            if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                                UtilsMy.n3(this.context, this.gameId, this.extBean.getFrom_id());
                            } else {
                                if (!UtilsMy.T0(this.context, this.downloadTask)) {
                                    if (this.modleFourBeanShow.getDown_status() == 5) {
                                        UtilsMy.R0(this.context, this.downloadTask);
                                    } else {
                                        UtilsMy.m3(this.context, this.gameId);
                                    }
                                }
                                onDetailDownload();
                            }
                        } else {
                            UtilsMy.g1(this.downloadTask, this.modleFourBeanShow);
                            if (!UtilsMy.T0(this.context, this.downloadTask)) {
                                if (this.modleFourBeanShow.getDown_status() == 5) {
                                    UtilsMy.R0(this.context, this.downloadTask);
                                } else {
                                    UtilsMy.F0(this.context, this.downloadTask, this.modleFourBeanShow.getTp_down_url(), this.modleFourBeanShow.getOther_down_switch(), this.modleFourBeanShow.getCdn_down_switch());
                                }
                            }
                            onDetailDownload();
                        }
                    } else if (downloadType == 2) {
                        UtilsMy.z3(this.downloadTask);
                    }
                }
            } else if (11 == status) {
                UtilsMy.j3(downloadTask3, this.context);
            } else if (43 == status) {
                downloadTask3.setKeyword(Where.detail.name());
                if (this.modleFourBeanShow != null) {
                    addFrom(this.downloadTask);
                    if (this.modleFourBeanShow.getGame_detailed() != null && d2.i(this.modleFourBeanShow.getGame_detailed().getTpl_two_qq())) {
                        a0.c0(this.context).Y(this.context, this.modleFourBeanShow.getGame_detailed().getTpl_two_qq_key(), this.modleFourBeanShow.getGame_detailed().getAd_pic_qq(), this.modleFourBeanShow.getGame_detailed().getTpl_two_qq());
                    }
                    if (UtilsMy.o0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
                        ExtBean extBean2 = this.extBean;
                        if (extBean2 != null && "checkgame".equals(extBean2.getFrom())) {
                            UtilsMy.n3(this.context, this.gameId, this.extBean.getFrom_id());
                        } else {
                            if (!UtilsMy.T0(this.context, this.downloadTask)) {
                                if (this.modleFourBeanShow.getDown_status() == 5) {
                                    UtilsMy.R0(this.context, this.downloadTask);
                                } else {
                                    UtilsMy.m3(this.context, this.gameId);
                                }
                            }
                            onDetailDownload();
                        }
                    } else {
                        UtilsMy.g1(this.downloadTask, this.modleFourBeanShow);
                        if (!UtilsMy.T0(this.context, this.downloadTask)) {
                            if (this.modleFourBeanShow.getDown_status() == 5) {
                                UtilsMy.R0(this.context, this.downloadTask);
                            } else {
                                UtilsMy.F0(this.context, this.downloadTask, this.modleFourBeanShow.getTp_down_url(), this.modleFourBeanShow.getOther_down_switch(), this.modleFourBeanShow.getCdn_down_switch());
                            }
                        }
                    }
                }
            } else if (48 != status) {
                p.l(this.context).K1(Event.gamePageDownload_type, new Ext().setGameId(this.gameId).setPosition("1"));
                this.downloadTask.setKeyword(Where.detail.name());
                if (this.modleFourBeanShow != null) {
                    addFrom(this.downloadTask);
                    if (this.modleFourBeanShow.getGame_detailed() != null && d2.i(this.modleFourBeanShow.getGame_detailed().getTpl_two_qq())) {
                        a0.c0(this.context).Y(this.context, this.modleFourBeanShow.getGame_detailed().getTpl_two_qq_key(), this.modleFourBeanShow.getGame_detailed().getAd_pic_qq(), this.modleFourBeanShow.getGame_detailed().getTpl_two_qq());
                    }
                    if (UtilsMy.o0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
                        ExtBean extBean3 = this.extBean;
                        if (extBean3 != null && "checkgame".equals(extBean3.getFrom())) {
                            UtilsMy.n3(this.context, this.gameId, this.extBean.getFrom_id());
                        } else {
                            if (!UtilsMy.T0(this.context, this.downloadTask)) {
                                if (this.modleFourBeanShow.getDown_status() == 5) {
                                    UtilsMy.R0(this.context, this.downloadTask);
                                } else {
                                    UtilsMy.m3(this.context, this.gameId);
                                }
                            }
                            onDetailDownload();
                        }
                    } else {
                        UtilsMy.g1(this.downloadTask, this.modleFourBeanShow);
                        if (!UtilsMy.T0(this.context, this.downloadTask)) {
                            if (this.modleFourBeanShow.getDown_status() == 5) {
                                UtilsMy.R0(this.context, this.downloadTask);
                            } else {
                                UtilsMy.F0(this.context, this.downloadTask, this.modleFourBeanShow.getTp_down_url(), this.modleFourBeanShow.getOther_down_switch(), this.modleFourBeanShow.getCdn_down_switch());
                            }
                        }
                    }
                }
            }
        }
        updateButn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void iv_back() {
        getActivity().finish();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        FulllScreenVideoView fulllScreenVideoView = this.videoView;
        if (fulllScreenVideoView != null) {
            fulllScreenVideoView.release();
        }
        t0.d("ssssssssx", "onDestroy");
        c0.a().e(this);
        MediaController mediaController = this.controller;
        if (mediaController != null) {
            mediaController.removeAllViews();
        }
        com.papa.gsyvideoplayer.d.j0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        t0.d("ssssssss", "onDestroyView");
        FulllScreenVideoView fulllScreenVideoView = this.videoView;
        if (fulllScreenVideoView != null) {
            fulllScreenVideoView.release();
        }
        super.onDestroyView();
    }

    void onDetailDownload() {
        ExtBean extBean = this.extBean;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.extBean.getFrom().equals("downloadCenter")) {
            return;
        }
        MobclickAgent.onEvent(this.context, "detailDownload4.2.0.6");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
        if (r6 != 48) goto L42;
     */
    @org.greenrobot.eventbus.Subscribe(threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onEventMainThread(com.join.mgps.event.l r6) {
        /*
            r5 = this;
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r6.a()
            if (r0 == 0) goto L18
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r5.downloadTask
            if (r1 != 0) goto L18
            g1.f r1 = g1.f.G()
            java.lang.String r2 = r0.getCrc_link_type_val()
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r1.B(r2)
            r5.downloadTask = r1
        L18:
            int r1 = r6.c()
            java.lang.String r2 = "%"
            r3 = 8
            if (r1 != r3) goto L58
            com.github.snowdream.android.app.downloader.DownloadTask r6 = r5.downloadTask
            if (r6 == 0) goto L57
            java.lang.String r6 = r6.getPath()
            if (r6 == 0) goto L57
            com.github.snowdream.android.app.downloader.DownloadTask r6 = r5.downloadTask
            com.join.mgps.Util.UtilsMy.C3(r6)
            android.widget.ProgressBar r6 = r5.butnProgressBar
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.downloadTask
            long r0 = r0.getProgress()
            int r1 = (int) r0
            r6.setProgress(r1)
            android.widget.TextView r6 = r5.percent
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r5.downloadTask
            long r3 = r1.getProgress()
            r0.append(r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r6.setText(r0)
        L57:
            return
        L58:
            if (r0 == 0) goto Ld3
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r5.downloadTask
            if (r1 == 0) goto Ld3
            java.lang.String r1 = r0.getCrc_link_type_val()
            com.github.snowdream.android.app.downloader.DownloadTask r4 = r5.downloadTask
            java.lang.String r4 = r4.getCrc_link_type_val()
            boolean r1 = r1.equals(r4)
            if (r1 == 0) goto Ld3
            r5.downloadTask = r0
            int r6 = r6.c()
            r1 = 5
            if (r6 == r1) goto Lbd
            if (r6 == r3) goto L82
            r1 = 11
            if (r6 == r1) goto Lbd
            r1 = 48
            if (r6 == r1) goto Lbd
            goto Ld3
        L82:
            com.github.snowdream.android.app.downloader.DownloadTask r6 = r5.downloadTask
            if (r6 == 0) goto Lbc
            java.lang.String r6 = r6.getPath()
            if (r6 == 0) goto Lbc
            com.github.snowdream.android.app.downloader.DownloadTask r6 = r5.downloadTask
            com.join.mgps.Util.UtilsMy.C3(r6)
            android.widget.ProgressBar r6 = r5.butnProgressBar
            com.github.snowdream.android.app.downloader.DownloadTask r0 = r5.downloadTask
            long r0 = r0.getProgress()
            int r1 = (int) r0
            r6.setProgress(r1)
            android.widget.TextView r6 = r5.percent
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r5.downloadTask
            long r3 = r1.getProgress()
            r0.append(r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r6.setText(r0)
            com.github.snowdream.android.app.downloader.DownloadTask r6 = r5.downloadTask
            r5.updateProgress(r6)
        Lbc:
            return
        Lbd:
            com.github.snowdream.android.app.downloader.DownloadTask r6 = r5.downloadTask
            if (r6 == 0) goto Ld3
            java.lang.String r6 = r0.getCrc_link_type_val()
            com.github.snowdream.android.app.downloader.DownloadTask r1 = r5.downloadTask
            java.lang.String r1 = r1.getCrc_link_type_val()
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto Ld3
            r5.downloadTask = r0
        Ld3:
            r5.updateButn()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.gamedetail.GameDetailVideoFragment.onEventMainThread(com.join.mgps.event.l):void");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        pauseVideo();
        t0.d("xxxxxxxxxxxx", "onPause");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        playVideo();
        t0.d("xxxxxxxxxxxx", "onResume");
        updatePlayImg();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void pauseVideo() {
        try {
            int currentState = this.videoView.getCurrentState();
            if (currentState == 2) {
                StringBuilder sb = new StringBuilder();
                sb.append("currentState=");
                sb.append(currentState);
                sb.append(" -->performClick");
                this.videoView.onVideoPause();
            }
            updatePlayImg();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void playVideo() {
        int currentState;
        try {
            if (this.context.getViewpagerCurrentPage() == 0 && ((currentState = this.videoView.getCurrentState()) == 0 || currentState == 7 || currentState == 5)) {
                StringBuilder sb = new StringBuilder();
                sb.append("currentState=");
                sb.append(currentState);
                sb.append(" -->performClick");
                this.videoView.startPlayLogic();
            }
            updatePlayImg();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void progress_layout() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.h(this.downloadTask);
        } else if (this.downloadTask.getStatus() == 3 || this.downloadTask.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.downloadTask, this.context);
            onDetailDownload();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void resumVideo() {
        int currentState;
        if (this.context.getViewpagerCurrentPage() == 0 && ((currentState = this.videoView.getCurrentState()) == 0 || currentState == 7 || currentState == 5)) {
            StringBuilder sb = new StringBuilder();
            sb.append("currentState=");
            sb.append(currentState);
            sb.append(" -->performClick");
            this.videoView.startPlayLogic();
        }
        updatePlayImg();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBeanShow;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getCrc_sign_id())) {
            return;
        }
        this.progressbarLayout.setVisibility(8);
        this.instalbutnLayout.setVisibility(0);
        this.instalButtomButn.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showProgress() {
        this.instalbutnLayout.setVisibility(8);
        this.instalButtomButn.setVisibility(8);
        this.progressbarLayout.setVisibility(0);
    }

    void showVideo() {
        FulllScreenVideoView fulllScreenVideoView = this.videoView;
        if (fulllScreenVideoView == null) {
            return;
        }
        fulllScreenVideoView.setVisibility(0);
        playVideo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void sound() {
        if (!this.nowIsNoSound) {
            this.sound.setImageResource(R.drawable.gamedetail_video_nosound);
            this.nowIsNoSound = true;
        } else {
            this.sound.setImageResource(R.drawable.gamedetail_video_opensound);
            this.nowIsNoSound = false;
        }
        this.videoView.setMute(this.nowIsNoSound);
        this.prefDef.soundnowIsNoSound().g(Boolean.valueOf(this.nowIsNoSound));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBeanShow;
        if (gamedetialModleFourBean == null || this.downloadTask == null) {
            return;
        }
        if (gamedetialModleFourBean.getDel_tag() == 1 && !this.modleFourBeanShow.getCompany_name().equals("SNK")) {
            this.instalButtomButn.setEnabled(false);
            this.instalButtomButn.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
            this.instalButtomButn.setText("已下架");
            return;
        }
        UtilsMy.v2(this.modleFourBeanShow.getSp_tag_info(), this.instalbutnLayout, this.downloadTask);
        if (this.modleFourBeanShow.getPlugin_num() != null) {
            String plugin_num = this.modleFourBeanShow.getPlugin_num();
            if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                this.instalButtomButn.setBackgroundResource(R.drawable.detial_video_install_selecter);
                this.instalButtomButn.setText("开始");
                showInstallButn();
                return;
            }
        }
        this.instalButtomButn.setBackgroundResource(R.drawable.detial_video_install_selecter);
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.m0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9) {
            showInstallButn();
            this.instalButtomButn.setText("更新");
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            this.butn_showdownload.setImageResource(R.drawable.detial_video_install_selecter);
        } else if (status == 12) {
            showInstallButn();
            this.instalButtomButn.setText("解压中..");
        } else if (status == 13) {
            showInstallButn();
            this.instalButtomButn.setText("解压");
            this.butn_showdownload.setImageResource(R.drawable.detial_video_install_selecter);
        } else if (status == 11) {
            showInstallButn();
            this.instalButtomButn.setText("立即安装");
            this.instalButtomButn.setBackgroundResource(R.drawable.detial_simple_install_selecter);
        } else if (status == 5 || status == 42) {
            showInstallButn();
            this.instalButtomButn.setBackgroundResource(R.drawable.detial_video_install_selecter);
            this.instalButtomButn.setText(this.context.getResources().getString(R.string.download_status_finished));
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 2) {
            showProgress();
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_pause);
            UtilsMy.C3(this.downloadTask);
            this.butnProgressBar.setProgress((int) this.downloadTask.getProgress());
            TextView textView = this.percent;
            textView.setText(this.downloadTask.getProgress() + "%");
        } else if (status == 3 || status == 6 || status == 27) {
            showProgress();
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.C3(this.downloadTask);
            this.butnProgressBar.setProgress((int) this.downloadTask.getProgress());
            TextView textView2 = this.percent;
            textView2.setText(this.downloadTask.getProgress() + "%");
        } else if (status == 10) {
            showInstallButn();
            TextView textView3 = this.instalButtomButn;
            textView3.setText("等待\u3000" + this.modleFourBeanShow.getSize() + "M");
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
        } else if (status == 1) {
        } else {
            if (status == 43) {
                showInstallButn();
                if (UtilsMy.m0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
                    this.instalButtomButn.setText(this.context.getResources().getString(R.string.pay_game_amount, this.modleFourBeanShow.getPay_tag_info().getPayGameAmount()));
                } else {
                    this.instalButtomButn.setText("立即获取");
                }
                this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
                GamedetialModleFourBean gamedetialModleFourBean2 = this.modleFourBeanShow;
                if (gamedetialModleFourBean2 != null) {
                    if (gamedetialModleFourBean2.getBespeak_switch() == 1 && (this.modleFourBeanShow.getDown_status() == 2 || this.modleFourBeanShow.getDown_status() == 6)) {
                        if (this.modleFourBeanShow.getGame_book() == 1) {
                            this.instalButtomButn.setText("已预约");
                            UtilsMy.m0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id());
                            UtilsMy.A2(this.instalButtomButn, this.modleFourBeanShow);
                            return;
                        }
                        this.instalButtomButn.setText("预约");
                        return;
                    }
                    UtilsMy.m0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id());
                    UtilsMy.A2(this.instalButtomButn, this.modleFourBeanShow);
                }
            } else if (status == 48) {
                showInstallButn();
                this.instalButtomButn.setText(this.context.getResources().getString(R.string.download_status_installing));
            } else {
                showInstallButn();
                if (UtilsMy.m0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
                    this.instalButtomButn.setText(this.context.getResources().getString(R.string.pay_game_amount, this.modleFourBeanShow.getPay_tag_info().getPayGameAmount()));
                } else {
                    this.instalButtomButn.setText("立即获取");
                }
                this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
                GamedetialModleFourBean gamedetialModleFourBean3 = this.modleFourBeanShow;
                if (gamedetialModleFourBean3 != null) {
                    if (gamedetialModleFourBean3.getBespeak_switch() == 1 && this.modleFourBeanShow.getDown_status() == 2) {
                        if (this.modleFourBeanShow.getGame_book() == 1) {
                            this.instalButtomButn.setText("已预约");
                            UtilsMy.m0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id());
                            UtilsMy.A2(this.instalButtomButn, this.modleFourBeanShow);
                            return;
                        }
                        this.instalButtomButn.setText("预约");
                        return;
                    }
                    UtilsMy.m0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id());
                    UtilsMy.A2(this.instalButtomButn, this.modleFourBeanShow);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 300)
    public void updatePlayImg() {
    }

    void updateProgress(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        ProgressBar progressBar = this.butnProgressBar;
        if (progressBar instanceof DownloadProgressBar) {
            ((DownloadProgressBar) progressBar).update(downloadTask.getCrc_link_type_val(), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTitleButn(ResultMainBean resultMainBean, int i2) {
        if (this.modleFourBeanShow != null && resultMainBean.getFlag() == 1) {
            if (i2 == 1) {
                this.modleFourBeanShow.setGame_follow(0);
            } else if (i2 == 2) {
                this.modleFourBeanShow.setGame_follow(1);
                i2.a(this.context).b("收藏成功");
            } else if (i2 == 3) {
                this.modleFourBeanShow.setGame_book(0);
            } else if (i2 == 4) {
                this.modleFourBeanShow.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.modleFourBeanShow.getCrc_sign_id());
                this.context.sendBroadcast(intent);
                a0.c0(this.context).O(this.context, 1, new l1.a() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment.1
                    @Override // l1.a
                    public void onClickCancle() {
                    }

                    @Override // l1.a
                    public void onClickOk() {
                    }
                }).show();
            }
            updateButn();
        }
    }
}
