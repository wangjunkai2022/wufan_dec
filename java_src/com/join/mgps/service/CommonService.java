package com.join.mgps.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i0;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.j0;
import com.join.mgps.Util.k1;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.u;
import com.join.mgps.Util.u0;
import com.join.mgps.Util.u1;
import com.join.mgps.Util.x;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.PayNowActivity_;
import com.join.mgps.activity.mygame.data.DataGameListBean;
import com.join.mgps.activity.recomend.DownloadCenterTuijianMain;
import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.activity.recomend.GamedownloadRecomdActivity2_;
import com.join.mgps.activity.recomend.GamedownloadRecomdActivity_;
import com.join.mgps.db.tables.EMUApkArenaTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.db.tables.JoystickTable;
import com.join.mgps.db.tables.PlayGameTimeTable;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.db.tables.ShowViewDataBeanTable;
import com.join.mgps.dialog.DownloadMethodPromptDialog_;
import com.join.mgps.dto.APKVersionMainBean;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.ApkVersionbean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.BaseBean;
import com.join.mgps.dto.BattaleSwitchBean;
import com.join.mgps.dto.BluetoothHandleBlackListData;
import com.join.mgps.dto.BluetoothHandleBlackListRequestBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.DownDeductCoinResponse;
import com.join.mgps.dto.DownloadGameArgsBean;
import com.join.mgps.dto.EmuErrorDto;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.FirstScreenAdDtoData;
import com.join.mgps.dto.ForumBannerBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.FriendInviteBean;
import com.join.mgps.dto.HomeViewSwich;
import com.join.mgps.dto.MiniGameSdkDtoAdCfgValue;
import com.join.mgps.dto.MiniGameSdkDtoRequestArgs;
import com.join.mgps.dto.MiniGameSdkDtoResponseResponseData;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PapayOrder;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.PayGameDetialBean;
import com.join.mgps.dto.PayOrderInfo;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RequestAppDetialArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SharePostRequest;
import com.join.mgps.dto.ShowViewDataBean;
import com.join.mgps.dto.SingleGameRunAdTextCfgBean;
import com.join.mgps.dto.SpValue;
import com.join.mgps.dto.SplashIntentBean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.dto.VideoAdCfgBean;
import com.join.mgps.dto.VideoAdCfgRequestArgs;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.wrapper.a;
import com.papa.controller.core.ControllerManager;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.arc.common.constants.BAction;
import com.psk.eventmodule.StatFactory;
import com.wufan.friend.chat.protocol.w1;
import com.wufun.union.ad.AdChannel;
import com.wufun.union.ad.AdService;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import n1.a0;
import n1.d0;
import n1.e0;
import n1.t;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.EService;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
@EService
/* loaded from: classes.dex */
public class CommonService extends Service {
    private static final String F = "CommonService";
    public static boolean G = true;
    public static boolean H = true;
    public static boolean I;
    static boolean J;
    static boolean K;
    l E;
    @Pref

    /* renamed from: b  reason: collision with root package name */
    PrefDef_ f51617b;
    @Bean

    /* renamed from: c  reason: collision with root package name */
    com.join.mgps.Util.b f51618c;

    /* renamed from: e  reason: collision with root package name */
    private RecomDatabean f51620e;

    /* renamed from: f  reason: collision with root package name */
    IntentFilter f51621f;

    /* renamed from: g  reason: collision with root package name */
    IntentFilter f51622g;

    /* renamed from: h  reason: collision with root package name */
    IntentFilter f51623h;

    /* renamed from: i  reason: collision with root package name */
    IntentFilter f51624i;

    /* renamed from: j  reason: collision with root package name */
    IntentFilter f51625j;

    /* renamed from: k  reason: collision with root package name */
    o f51626k;

    /* renamed from: l  reason: collision with root package name */
    p f51627l;

    /* renamed from: m  reason: collision with root package name */
    private Context f51628m;

    /* renamed from: n  reason: collision with root package name */
    Thread f51629n;

    /* renamed from: o  reason: collision with root package name */
    private String f51630o;

    /* renamed from: r  reason: collision with root package name */
    CountDownTimer f51633r;

    /* renamed from: t  reason: collision with root package name */
    com.join.mgps.rpc.j f51635t;

    /* renamed from: u  reason: collision with root package name */
    com.papa.controller.core.d f51636u;

    /* renamed from: a  reason: collision with root package name */
    private ScheduledExecutorService f51616a = Executors.newScheduledThreadPool(3);

    /* renamed from: d  reason: collision with root package name */
    Intent f51619d = new Intent("com.join.mgps.activity.sendUI");

    /* renamed from: p  reason: collision with root package name */
    private boolean f51631p = false;

    /* renamed from: q  reason: collision with root package name */
    Handler f51632q = new Handler();

    /* renamed from: s  reason: collision with root package name */
    private DownloadTask f51634s = null;

    /* renamed from: v  reason: collision with root package name */
    boolean f51637v = false;

    /* renamed from: w  reason: collision with root package name */
    private int f51638w = 5;

    /* renamed from: x  reason: collision with root package name */
    ScheduledExecutorService f51639x = null;

    /* renamed from: y  reason: collision with root package name */
    int f51640y = 0;

    /* renamed from: z  reason: collision with root package name */
    int f51641z = 0;
    int A = 20;
    int B = 0;
    int C = 0;
    String D = "11111";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Callback<ResultMainBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f51642a;

        a(String str) {
            this.f51642a = str;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean> call, Throwable th) {
            i2.a(CommonService.this.f51628m).b("请求失败！");
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean> call, Response<ResultMainBean> response) {
            if (response.body().getFlag() == 1) {
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.f51642a);
                CommonService.this.f51628m.sendBroadcast(intent);
                i2.a(CommonService.this.f51628m).b("收到，游戏上架后会通知您");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements l1.h<ResponseModel<DataGameListBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f51644a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f51645b;

        b(DownloadGameArgsBean downloadGameArgsBean, int i2) {
            this.f51644a = downloadGameArgsBean;
            this.f51645b = i2;
        }

        @Override // l1.h
        public void a(Throwable th) {
            CommonService.this.W0(this.f51644a.getGameId(), 49);
            i2.a(CommonService.this.f51628m).b("获取游戏信息失败");
        }

        @Override // l1.h
        /* renamed from: b */
        public void onSuccess(ResponseModel<DataGameListBean> responseModel) {
            int i2;
            int i4;
            if (responseModel != null) {
                try {
                    if (responseModel.getCode() == 600) {
                        CommonService.this.W0(this.f51644a.getGameId(), 50);
                        DataGameListBean data = responseModel.getData();
                        if (data != null) {
                            List<GamedownRecomendItemBean> gameList = data.getGameList();
                            if (gameList.size() > 0) {
                                GamedownRecomendItemBean gamedownRecomendItemBean = gameList.get(0);
                                int i5 = this.f51645b;
                                if (i5 == 1) {
                                    DownloadTask downloadtaskDown = gamedownRecomendItemBean.getDownloadtaskDown();
                                    if (this.f51644a != null) {
                                        DownloadTask B = g1.f.G().B(this.f51644a.getGameId());
                                        com.php25.PDownload.d.b(B);
                                        downloadtaskDown.setId(B.getId());
                                        downloadtaskDown.setKeyword(this.f51644a.getKeyWord());
                                        downloadtaskDown.setExt(this.f51644a.getExt());
                                        com.php25.PDownload.d.c(downloadtaskDown, CommonService.this.f51628m);
                                        return;
                                    }
                                    return;
                                } else if (i5 == 2) {
                                    DownloadTask B2 = g1.f.G().B(this.f51644a.getGameId());
                                    DownloadGameArgsBean downloadGameArgsBean = this.f51644a;
                                    if (downloadGameArgsBean != null) {
                                        B2.setKeyword(downloadGameArgsBean.getKeyWord());
                                        B2.setExt(this.f51644a.getExt());
                                        B2.setVer(gamedownRecomendItemBean.getVer());
                                        B2.setVer_name(gamedownRecomendItemBean.getVer_name());
                                        B2.setUrl(gamedownRecomendItemBean.getDown_url_remote());
                                    }
                                    if (B2.getDown_status() == 5) {
                                        UtilsMy.R0(CommonService.this.f51628m, B2);
                                        return;
                                    }
                                    EMUUpdateTable eMUUpdateTable = null;
                                    HashMap hashMap = new HashMap(1);
                                    hashMap.put("crc_sign_id", B2.getCrc_link_type_val());
                                    List<EMUUpdateTable> h4 = n1.q.o().h(hashMap);
                                    if (h4 != null && h4.size() > 0) {
                                        eMUUpdateTable = h4.get(0);
                                    }
                                    if (eMUUpdateTable != null) {
                                        B2.setVer(eMUUpdateTable.getVer());
                                        B2.setVer_name(eMUUpdateTable.getVer_name());
                                        B2.setUrl(eMUUpdateTable.getDown_url_remote());
                                        g1.f.G().m(B2);
                                        UtilsMy.A0(B2);
                                        if (UtilsMy.n0(B2.getPay_game_amount(), B2.getCrc_link_type_val()) > 0) {
                                            UtilsMy.m3(CommonService.this.f51628m, B2.getCrc_link_type_val());
                                            return;
                                        } else {
                                            UtilsMy.F0(CommonService.this.f51628m, B2, B2.getTp_down_url(), B2.getOther_down_switch(), B2.getCdn_down_switch());
                                            return;
                                        }
                                    }
                                    return;
                                } else {
                                    DownloadTask downloadtaskDown2 = gamedownRecomendItemBean.getDownloadtaskDown();
                                    DownloadGameArgsBean downloadGameArgsBean2 = this.f51644a;
                                    if (downloadGameArgsBean2 != null) {
                                        gamedownRecomendItemBean.setRecPosition(downloadGameArgsBean2.getRecPosition());
                                        gamedownRecomendItemBean.setReMarks(this.f51644a.getRemarks());
                                        gamedownRecomendItemBean.setNodeId(this.f51644a.getNodeId());
                                        gamedownRecomendItemBean.set_from(this.f51644a.getFrom());
                                        gamedownRecomendItemBean.set_from_type(this.f51644a.getFromType());
                                        if (d2.i(this.f51644a.getVolcanoOther())) {
                                            gamedownRecomendItemBean.setPosition_path((StatFactory.VolcanoOther) JsonMapper.getInstance().fromJson(this.f51644a.getVolcanoOther(), StatFactory.VolcanoOther.class));
                                        }
                                        downloadtaskDown2.set_from(this.f51644a.getFrom());
                                        downloadtaskDown2.set_from_type(this.f51644a.getFromType());
                                        downloadtaskDown2.setFromRecomDown(this.f51644a.isFromRecommend());
                                        downloadtaskDown2.setKeyword(this.f51644a.getKeyWord());
                                        downloadtaskDown2.setExt(this.f51644a.getExt());
                                    }
                                    String plugin_num = downloadtaskDown2.getPlugin_num();
                                    if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                                        IntentDateBean intentDateBean = new IntentDateBean();
                                        intentDateBean.setLink_type(4);
                                        intentDateBean.setLink_type_val(gamedownRecomendItemBean.getDown_url_remote());
                                        UtilsMy.h2(downloadtaskDown2, CommonService.this.f51628m);
                                        g1.f.G().m(downloadtaskDown2);
                                        IntentUtil.getInstance().intentActivity(CommonService.this.f51628m, intentDateBean);
                                        return;
                                    } else if (UtilsMy.o0(gamedownRecomendItemBean.getPay_tag_info(), gamedownRecomendItemBean.getCrc_sign_id()) > 0) {
                                        UtilsMy.m3(CommonService.this.f51628m, downloadtaskDown2.getCrc_link_type_val());
                                        return;
                                    } else {
                                        UtilsMy.c1(downloadtaskDown2, gamedownRecomendItemBean);
                                        if (gamedownRecomendItemBean.getDown_status() == 5) {
                                            if (downloadtaskDown2.getMax_an_compatible_ver() <= 0 || (((i4 = Build.VERSION.SDK_INT) >= downloadtaskDown2.getMin_an_compatible_ver() && i4 <= downloadtaskDown2.getMax_an_compatible_ver()) || !d2.h(downloadtaskDown2.getMod_info()))) {
                                                UtilsMy.R0(CommonService.this.f51628m, downloadtaskDown2);
                                                return;
                                            }
                                            CommonService.this.f51634s = downloadtaskDown2;
                                            Intent intent = new Intent(f1.a.f65491n0);
                                            intent.putExtra("gameid", CommonService.this.f51634s.getCrc_link_type_val());
                                            CommonService.this.sendBroadcast(intent);
                                            return;
                                        } else if (downloadtaskDown2.getMax_an_compatible_ver() <= 0 || (((i2 = Build.VERSION.SDK_INT) >= downloadtaskDown2.getMin_an_compatible_ver() && i2 <= downloadtaskDown2.getMax_an_compatible_ver()) || !d2.h(downloadtaskDown2.getMod_info()))) {
                                            UtilsMy.F0(CommonService.this.f51628m, downloadtaskDown2, gamedownRecomendItemBean.getTp_down_url(), gamedownRecomendItemBean.getOther_down_switch(), gamedownRecomendItemBean.getCdn_down_switch());
                                            return;
                                        } else {
                                            CommonService.this.f51634s = downloadtaskDown2;
                                            Intent intent2 = new Intent(f1.a.f65491n0);
                                            intent2.putExtra("gameid", CommonService.this.f51634s.getCrc_link_type_val());
                                            CommonService.this.sendBroadcast(intent2);
                                            return;
                                        }
                                    }
                                }
                            }
                            return;
                        }
                        return;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    CommonService.this.W0(this.f51644a.getGameId(), 49);
                    i2.a(CommonService.this.f51628m).b("获取游戏信息失败");
                    return;
                }
            }
            CommonService.this.W0(this.f51644a.getGameId(), 49);
            i2.a(CommonService.this.f51628m).b("获取游戏信息失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements Callback<ResponseModel<DataGameListBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f51647a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f51648b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f51649c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f51650d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f51651e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ n f51652f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ boolean f51653g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ String f51654h;

        c(String str, String str2, String str3, int i2, int i4, n nVar, boolean z3, String str4) {
            this.f51647a = str;
            this.f51648b = str2;
            this.f51649c = str3;
            this.f51650d = i2;
            this.f51651e = i4;
            this.f51652f = nVar;
            this.f51653g = z3;
            this.f51654h = str4;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<DataGameListBean>> call, Throwable th) {
            i2.a(CommonService.this.f51628m).b("获取游戏信息失败");
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<DataGameListBean>> call, Response<ResponseModel<DataGameListBean>> response) {
            ResponseModel<DataGameListBean> body;
            DataGameListBean data;
            int i2;
            int i4;
            if (response != null) {
                try {
                    if (response.body() == null || (body = response.body()) == null || body.getCode() != 600 || (data = body.getData()) == null) {
                        return;
                    }
                    List<GamedownRecomendItemBean> gameList = data.getGameList();
                    if (gameList.size() > 0) {
                        GamedownRecomendItemBean gamedownRecomendItemBean = gameList.get(0);
                        gamedownRecomendItemBean.setRecPosition(this.f51647a);
                        gamedownRecomendItemBean.setReMarks(this.f51648b);
                        gamedownRecomendItemBean.setNodeId(this.f51649c);
                        gamedownRecomendItemBean.set_from(this.f51650d);
                        gamedownRecomendItemBean.set_from_type(this.f51651e);
                        if (d2.i(this.f51652f.f51697i)) {
                            gamedownRecomendItemBean.setPosition_path((StatFactory.VolcanoOther) JsonMapper.getInstance().fromJson(this.f51652f.f51697i, StatFactory.VolcanoOther.class));
                        }
                        DownloadTask downloadtaskDown = gamedownRecomendItemBean.getDownloadtaskDown();
                        downloadtaskDown.set_from(this.f51650d);
                        downloadtaskDown.set_from_type(this.f51651e);
                        downloadtaskDown.setFromRecomDown(this.f51653g);
                        downloadtaskDown.setKeyword(this.f51654h);
                        String plugin_num = downloadtaskDown.getPlugin_num();
                        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                            IntentDateBean intentDateBean = new IntentDateBean();
                            intentDateBean.setLink_type(4);
                            intentDateBean.setLink_type_val(downloadtaskDown.getUrl());
                            UtilsMy.h2(downloadtaskDown, CommonService.this.f51628m);
                            IntentUtil.getInstance().intentActivity(CommonService.this.f51628m, intentDateBean);
                        } else if (UtilsMy.o0(gamedownRecomendItemBean.getPay_tag_info(), gamedownRecomendItemBean.getCrc_sign_id()) > 0) {
                            UtilsMy.m3(CommonService.this.f51628m, downloadtaskDown.getCrc_link_type_val());
                        } else {
                            UtilsMy.c1(downloadtaskDown, gamedownRecomendItemBean);
                            if (UtilsMy.T0(CommonService.this.f51628m, downloadtaskDown)) {
                                return;
                            }
                            if (gamedownRecomendItemBean.getDown_status() == 5) {
                                if (downloadtaskDown.getMax_an_compatible_ver() <= 0 || (((i4 = Build.VERSION.SDK_INT) >= downloadtaskDown.getMin_an_compatible_ver() && i4 <= downloadtaskDown.getMax_an_compatible_ver()) || !d2.h(downloadtaskDown.getMod_info()))) {
                                    UtilsMy.R0(CommonService.this.f51628m, downloadtaskDown);
                                    return;
                                }
                                CommonService.this.f51634s = downloadtaskDown;
                                Intent intent = new Intent(f1.a.f65491n0);
                                intent.putExtra("gameid", CommonService.this.f51634s.getCrc_link_type_val());
                                CommonService.this.sendBroadcast(intent);
                            } else if (downloadtaskDown.getMax_an_compatible_ver() <= 0 || (((i2 = Build.VERSION.SDK_INT) >= downloadtaskDown.getMin_an_compatible_ver() && i2 <= downloadtaskDown.getMax_an_compatible_ver()) || !d2.h(downloadtaskDown.getMod_info()))) {
                                UtilsMy.F0(CommonService.this.f51628m, downloadtaskDown, gamedownRecomendItemBean.getTp_down_url(), gamedownRecomendItemBean.getOther_down_switch(), gamedownRecomendItemBean.getCdn_down_switch());
                            } else {
                                CommonService.this.f51634s = downloadtaskDown;
                                Intent intent2 = new Intent(f1.a.f65491n0);
                                intent2.putExtra("gameid", CommonService.this.f51634s.getCrc_link_type_val());
                                CommonService.this.sendBroadcast(intent2);
                            }
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    i2.a(CommonService.this.f51628m).b("获取游戏信息失败");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements com.join.android.app.common.http.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f51656a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f51657b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f51658c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ AccountBean f51659d;

        d(boolean z3, String str, String str2, AccountBean accountBean) {
            this.f51656a = z3;
            this.f51657b = str;
            this.f51658c = str2;
            this.f51659d = accountBean;
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object obj) {
            CommonService.this.f1("获取游戏信息失败");
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object obj) {
            ResultMainBean resultMainBean = (ResultMainBean) obj;
            if (resultMainBean != null && resultMainBean.getFlag() != 0) {
                PayGameDetialBean payGameDetialBean = (PayGameDetialBean) resultMainBean.getMessages().getData();
                if (payGameDetialBean != null) {
                    if (payGameDetialBean.getGame_info() != null) {
                        Intent intent = new Intent(f1.a.F);
                        intent.putExtra("gameData", payGameDetialBean.getGame_info());
                        CommonService.this.sendBroadcast(intent);
                        if (this.f51656a) {
                            CommonService.this.sendBroadcast(new Intent("com.join,mgps.sim.sdkgamePayfinish"));
                            k1.c().e(CommonService.this.f51628m, this.f51657b, this.f51658c);
                        }
                        CommonService.this.g1(payGameDetialBean.getGame_info(), false);
                        return;
                    }
                    CommonService.this.k1(this.f51658c, payGameDetialBean.getOrder_info(), this.f51659d, this.f51656a, this.f51657b);
                }
            } else if (resultMainBean != null && resultMainBean.getFlag() != 0) {
                CommonService.this.f1("获取游戏信息失败");
            } else {
                CommonService.this.f1("获取游戏信息失败");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements Callback<ResponseModel<DataGameListBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f51661a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f51662b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ QueryDownloadInfoResponseData f51663c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f51664d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f51665e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ boolean f51666f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ boolean f51667g;

        e(int i2, int i4, QueryDownloadInfoResponseData queryDownloadInfoResponseData, boolean z3, String str, boolean z4, boolean z5) {
            this.f51661a = i2;
            this.f51662b = i4;
            this.f51663c = queryDownloadInfoResponseData;
            this.f51664d = z3;
            this.f51665e = str;
            this.f51666f = z4;
            this.f51667g = z5;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<DataGameListBean>> call, Throwable th) {
            i2.a(CommonService.this.f51628m).b("获取游戏信息失败");
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<DataGameListBean>> call, Response<ResponseModel<DataGameListBean>> response) {
            ResponseModel<DataGameListBean> body;
            DataGameListBean data;
            GamedownRecomendItemBean gamedownRecomendItemBean;
            if (response != null) {
                try {
                    if (response.body() == null || (body = response.body()) == null || body.getCode() != 600 || (data = body.getData()) == null) {
                        return;
                    }
                    List<GamedownRecomendItemBean> gameList = data.getGameList();
                    if (gameList.size() <= 0 || (gamedownRecomendItemBean = gameList.get(0)) == null) {
                        return;
                    }
                    gamedownRecomendItemBean.set_from(this.f51661a);
                    gamedownRecomendItemBean.set_from_type(this.f51662b);
                    QueryDownloadInfoResponseData queryDownloadInfoResponseData = this.f51663c;
                    if (queryDownloadInfoResponseData != null) {
                        gamedownRecomendItemBean.setResourceSize(queryDownloadInfoResponseData.getResourceSize());
                        gamedownRecomendItemBean.setActual_size(this.f51663c.getActualSize());
                        gamedownRecomendItemBean.setDown_url_remote(this.f51663c.getDownloadURL());
                        gamedownRecomendItemBean.setResourceUrl(this.f51663c.getResourceURL());
                    }
                    CommonService.this.h1(gamedownRecomendItemBean, true, this.f51664d, this.f51665e, this.f51666f, this.f51667g);
                } catch (Exception e4) {
                    e4.printStackTrace();
                    i2.a(CommonService.this.f51628m).b("获取游戏信息失败");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f extends Handler {
        f() {
        }

        private void a(String str, String str2) {
            JoystickTable joystickTable = new JoystickTable();
            joystickTable.setName(str);
            joystickTable.setMac(str2);
            joystickTable.setTime(Long.valueOf(System.currentTimeMillis()));
            a0.o().k(joystickTable);
        }

        private void b(String str, String str2, int i2) {
            com.papa.sim.statistic.p.l(CommonService.this.f51628m).Z(AccountUtil_.getInstance_(CommonService.this.f51628m).getUid(), AccountUtil_.getInstance_(CommonService.this.f51628m).isTourist(), str, str2, i2);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj;
            if (message.what == 10000 && (obj = message.obj) != null && (obj instanceof com.papa.controller.core.b)) {
                com.papa.controller.core.b bVar = (com.papa.controller.core.b) obj;
                String d4 = bVar.d();
                String c4 = bVar.c();
                int i2 = (d2.i(bVar.f()) && d2.i(bVar.e())) ? 1 : 0;
                if (!CommonService.this.X(c4)) {
                    a(d4, c4);
                    b(d4, c4, i2);
                }
            }
            super.handleMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements ControllerManager.d {
        g() {
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void a(ControllerManager.c cVar) {
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void b(ControllerManager.c cVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f51671a;

        h(List list) {
            this.f51671a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService commonService = CommonService.this;
            int i2 = commonService.C;
            if (i2 <= commonService.B) {
                int i4 = commonService.A;
                int i5 = i2 * i4;
                commonService.f51640y = i5;
                commonService.f51641z = Math.min(i5 + i4, this.f51671a.size());
                List list = this.f51671a;
                CommonService commonService2 = CommonService.this;
                List<String> subList = list.subList(commonService2.f51640y, commonService2.f51641z);
                CommonService.this.C++;
                if (subList == null || subList.size() <= 0) {
                    return;
                }
                CommonService.this.p(subList);
                return;
            }
            ScheduledExecutorService scheduledExecutorService = commonService.f51639x;
            if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
                return;
            }
            CommonService.this.f51639x.shutdown();
            CommonService.this.f51639x = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class i implements Callback<ResponseModel<DataGameListBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f51673a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f51674b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f51675c;

        i(String str, boolean z3, String str2) {
            this.f51673a = str;
            this.f51674b = z3;
            this.f51675c = str2;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<DataGameListBean>> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<DataGameListBean>> call, Response<ResponseModel<DataGameListBean>> response) {
            ResponseModel<DataGameListBean> body;
            DownloadTask B;
            if (response == null || (body = response.body()) == null || body.getData() == null) {
                return;
            }
            List<GamedownRecomendItemBean> gameList = body.getData().getGameList();
            if (gameList != null && gameList.size() > 0) {
                DownloadCenterTuijianMain downloadCenterTuijianMain = new DownloadCenterTuijianMain();
                downloadCenterTuijianMain.setGameid(this.f51673a);
                downloadCenterTuijianMain.setCollectionList(gameList);
                CommonService.this.f51617b.recomDataJson().g(JsonMapper.getInstance().toJson(downloadCenterTuijianMain));
                CommonService.this.f51628m.sendBroadcast(new Intent("com.hasget.new.recomdwon,data"));
                if (this.f51674b || g1.f.G().B(this.f51673a) == null || !CommonService.H) {
                    return;
                }
                DownloadTask B2 = g1.f.G().B(this.f51673a);
                if (com.join.mgps.pref.h.n(CommonService.this.f51628m).x()) {
                    ((GamedownloadRecomdActivity_.IntentBuilder_) GamedownloadRecomdActivity_.intent(CommonService.this.f51628m).flags(268435456)).gameName(this.f51675c).start();
                } else if (B2 == null || new PrefDef_(CommonService.this.f51628m).downloadSpeedUpGameSize().d().intValue() > B2.getActual_size()) {
                } else {
                    if ((TextUtils.isEmpty(B2.getFileType()) || !B2.getFileType().equals(Dtype.chajian.name())) && !B2.isDisableShowSpeedUpPrompt() && UtilsMy.U(CommonService.this.f51628m, B2.getCrc_link_type_val())) {
                        ((GamedownloadRecomdActivity2_.IntentBuilder_) GamedownloadRecomdActivity2_.intent(CommonService.this.f51628m).flags(268435456)).gameName(this.f51675c).start();
                    }
                }
            } else if (this.f51674b || (B = g1.f.G().B(this.f51673a)) == null || new PrefDef_(CommonService.this.f51628m).downloadSpeedUpGameSize().d().intValue() > B.getActual_size()) {
            } else {
                if ((TextUtils.isEmpty(B.getFileType()) || !B.getFileType().equals(Dtype.chajian.name())) && !B.isDisableShowSpeedUpPrompt() && UtilsMy.U(CommonService.this.f51628m, B.getCrc_link_type_val())) {
                    ((GamedownloadRecomdActivity2_.IntentBuilder_) GamedownloadRecomdActivity2_.intent(CommonService.this.f51628m).flags(268435456)).gameName(this.f51675c).start();
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    private class j implements Runnable {
        private j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService.this.u();
        }

        /* synthetic */ j(CommonService commonService, a aVar) {
            this();
        }
    }

    /* loaded from: classes4.dex */
    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.join.android.app.common.utils.f.j(CommonService.this.getApplicationContext())) {
                CommonService.this.T();
                CommonService.this.U();
                CommonService.this.V(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class l extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        final String f51679a = EmuBaseActivity.prefix;

        /* renamed from: b  reason: collision with root package name */
        public String f51680b = "com.join.android.app.mgsim.wufun.broadcast.acceptInvitePlay";

        /* renamed from: c  reason: collision with root package name */
        public String f51681c = "com.join.android.app.mgsim.wufun.broadcast.setOnlineState";

        /* renamed from: d  reason: collision with root package name */
        public String f51682d = "com.join.android.app.mgsim.wufun.broadcast.getOnlineState";

        /* renamed from: e  reason: collision with root package name */
        public String f51683e = "com.join.android.app.mgsim.wufun.broadcast.gamePlay";

        /* renamed from: f  reason: collision with root package name */
        public String f51684f = "com.join.android.app.mgsim.wufun.broadcast.addFriends";

        /* renamed from: g  reason: collision with root package name */
        public String f51685g = "com.join.android.app.mgsim.wufun.broadcast.friendsApplication";

        /* renamed from: h  reason: collision with root package name */
        public String f51686h = "com.join.android.app.mgsim.wufun.broadcast.receiveInvitation";

        l() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra;
            try {
                stringExtra = intent.getStringExtra("packageName");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (TextUtils.isEmpty(stringExtra) || !stringExtra.equals(CommonService.this.getPackageName())) {
                return;
            }
            String action = intent.getAction();
            if (action.equals(this.f51682d)) {
                int A = com.wufan.friend.chat.c.u().A();
                Intent intent2 = new Intent("com.join.android.app.mgsim.wufun.broadcast.onOnlineState");
                intent2.putExtra(NoticeTopAnimActivityDialog_.f34402n, A);
                CommonService.this.sendBroadcast(intent2);
            } else if (action.equals(this.f51681c)) {
                com.wufan.friend.chat.c.u().U(intent.getIntExtra(NoticeTopAnimActivityDialog_.f34402n, 0));
            } else {
                String str = "0";
                String str2 = "";
                if (action.equals(this.f51680b)) {
                    int intExtra = intent.getIntExtra("accept", 0);
                    FriendInviteBean s3 = com.wufan.friend.chat.c.u().s();
                    if (s3 != null) {
                        try {
                            str2 = com.wufan.friend.chat.c.u().s().getGameId() + "";
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                    if (intExtra == 1) {
                        com.join.mgps.event.m mVar = new com.join.mgps.event.m(7);
                        mVar.n(str2);
                        org.greenrobot.eventbus.c.f().o(mVar);
                        Ext ext = new Ext();
                        ext.setFrom("1");
                        ext.setGameId(str2);
                        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
                        if (accountData != null) {
                            ext.setUid(accountData.getUid());
                        }
                        if (s3 != null) {
                            if (s3.getSource() != 1) {
                                str = "1";
                            }
                            ext.setPosition(str);
                        }
                        com.papa.sim.statistic.p.l(context).K1(Event.SuccessInvitation, ext);
                        return;
                    } else if (intExtra == 2) {
                        Ext ext2 = new Ext();
                        ext2.setFrom("1");
                        ext2.setGameId(str2);
                        AccountBean accountData2 = AccountUtil_.getInstance_(context).getAccountData();
                        if (accountData2 != null) {
                            ext2.setUid(accountData2.getUid());
                        }
                        if (s3 != null) {
                            if (s3.getSource() != 1) {
                                str = "1";
                            }
                            ext2.setPosition(str);
                        }
                        com.papa.sim.statistic.p.l(context).K1(Event.OverdueInvitation, ext2);
                        com.wufan.friend.chat.c.u().P();
                        return;
                    } else {
                        Ext ext3 = new Ext();
                        ext3.setFrom("1");
                        ext3.setGameId(str2);
                        AccountBean accountData3 = AccountUtil_.getInstance_(context).getAccountData();
                        if (accountData3 != null) {
                            ext3.setUid(accountData3.getUid());
                        }
                        if (s3 != null) {
                            if (s3.getSource() != 1) {
                                str = "1";
                            }
                            ext3.setPosition(str);
                        }
                        com.papa.sim.statistic.p.l(context).K1(Event.RefuseInvitation, ext3);
                        com.wufan.friend.chat.c.u().P();
                        return;
                    }
                } else if (action.equals(this.f51683e)) {
                    int intExtra2 = intent.getIntExtra("action", 2);
                    int intExtra3 = intent.getIntExtra("startMode", 0);
                    long parseLong = TextUtils.isEmpty(intent.getStringExtra("gameId")) ? 0L : Long.parseLong(intent.getStringExtra("gameId"));
                    int parseInt = !TextUtils.isEmpty(intent.getStringExtra("roomId")) ? Integer.parseInt(intent.getStringExtra("roomId")) : 0;
                    int parseInt2 = !TextUtils.isEmpty(intent.getStringExtra("uid")) ? Integer.parseInt(intent.getStringExtra("uid")) : 0;
                    u0.e("channel", "actionGamePlay startMode=" + intExtra3);
                    com.wufan.friend.chat.c.u().q(intExtra2, intExtra3, parseLong, parseInt, parseInt2);
                    return;
                } else if (action.equals(this.f51684f)) {
                    int intExtra4 = intent.getIntExtra("from", 0);
                    Ext ext4 = new Ext();
                    ext4.setFrom(intExtra4 + "");
                    com.papa.sim.statistic.p.l(context).K1(Event.addFriends, ext4);
                    return;
                } else if (action.equals(this.f51685g)) {
                    int intExtra5 = intent.getIntExtra("action", -1);
                    Ext ext5 = new Ext();
                    ext5.setPosition(intExtra5 + "");
                    com.papa.sim.statistic.p.l(context).K1(Event.Friendsapplication, ext5);
                    return;
                } else if (action.equals(this.f51686h)) {
                    FriendInviteBean s4 = com.wufan.friend.chat.c.u().s();
                    if (s4 != null) {
                        try {
                            str2 = com.wufan.friend.chat.c.u().s().getGameId() + "";
                        } catch (Exception e6) {
                            e6.printStackTrace();
                        }
                    }
                    Ext ext6 = new Ext();
                    ext6.setFrom("1");
                    ext6.setGameId(str2);
                    AccountBean accountData4 = AccountUtil_.getInstance_(context).getAccountData();
                    if (accountData4 != null) {
                        ext6.setUid(accountData4.getUid());
                    }
                    if (s4 != null) {
                        if (s4.getSource() != 1) {
                            str = "1";
                        }
                        ext6.setPosition(str);
                    }
                    com.papa.sim.statistic.p.l(context).K1(Event.ReceiveInvitation, ext6);
                    return;
                } else {
                    return;
                }
                e4.printStackTrace();
            }
        }
    }

    /* loaded from: classes4.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService.this.R();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class n {

        /* renamed from: a  reason: collision with root package name */
        String f51689a;

        /* renamed from: b  reason: collision with root package name */
        boolean f51690b;

        /* renamed from: c  reason: collision with root package name */
        int f51691c;

        /* renamed from: d  reason: collision with root package name */
        int f51692d;

        /* renamed from: e  reason: collision with root package name */
        String f51693e;

        /* renamed from: f  reason: collision with root package name */
        String f51694f;

        /* renamed from: g  reason: collision with root package name */
        String f51695g;

        /* renamed from: h  reason: collision with root package name */
        String f51696h;

        /* renamed from: i  reason: collision with root package name */
        String f51697i;

        public n(String str, boolean z3, int i2, int i4, String str2, String str3, String str4, String str5, String str6) {
            this.f51689a = str;
            this.f51690b = z3;
            this.f51691c = i2;
            this.f51692d = i4;
            this.f51693e = str2;
            this.f51694f = str3;
            this.f51695g = str4;
            this.f51696h = str5;
            this.f51697i = str6;
        }

        public String a() {
            return this.f51689a;
        }

        public String b() {
            return this.f51693e;
        }

        public String c() {
            return this.f51696h;
        }

        public String d() {
            return this.f51694f;
        }

        public String e() {
            return this.f51695g;
        }

        public String f() {
            return this.f51697i;
        }

        public int g() {
            return this.f51691c;
        }

        public int h() {
            return this.f51692d;
        }

        public boolean i() {
            return this.f51690b;
        }

        public void j(boolean z3) {
            this.f51690b = z3;
        }

        public void k(String str) {
            this.f51689a = str;
        }

        public void l(String str) {
            this.f51693e = str;
        }

        public void m(String str) {
            this.f51696h = str;
        }

        public void n(String str) {
            this.f51694f = str;
        }

        public void o(String str) {
            this.f51695g = str;
        }

        public void p(String str) {
            this.f51697i = str;
        }

        public void q(int i2) {
            this.f51691c = i2;
        }

        public void r(int i2) {
            this.f51692d = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class o extends BroadcastReceiver {
        o() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                CommonService.this.d();
            } catch (Exception unused) {
                CommonService.this.f51619d.putExtra("type", "11");
                CommonService.this.f51619d.putExtra("msg", "登录失败");
                CommonService commonService = CommonService.this;
                commonService.sendBroadcast(commonService.f51619d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class p extends BroadcastReceiver {
        p() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (com.wufan.friend.chat.c.u().F()) {
                com.wufan.friend.chat.c.u().h(intent.getStringExtra("text"));
                return;
            }
            com.wufan.friend.chat.c.u().K();
        }
    }

    /* loaded from: classes4.dex */
    static class q extends Handler {
        q() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
        }
    }

    /* loaded from: classes4.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService.this.s1();
        }
    }

    private void F0() {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData != null && accountData.getUid() != 0) {
                    ForumResponse<ForumData.ForumProfilePostsData> k4 = com.join.mgps.rpc.impl.f.A0().k(accountData.getUid(), accountData.getToken(), 1, 0, "");
                    ForumData.ForumProfilePostsData data = k4 != null ? k4.getData() : null;
                    if (data != null) {
                        ForumBean.ForumProfilePostUserInfoBean user_info = data.getUser_info();
                        i0.n1(data);
                        j0.I1(this).c1(user_info);
                        return;
                    }
                    return;
                }
                return;
            }
            new ForumBean.ForumProfilePostUserInfoBean();
            ForumTable o3 = t.p().o(ForumBean.ForumEvent.ProfilePosts);
            if (o3 == null || d2.h(o3.getArgs1()) || o3.getArgs1().equals("\"\"")) {
                return;
            }
            j0.I1(this).c1(i0.H(o3.getArgs1()).getUser_info());
        } catch (Exception unused) {
        }
    }

    private void G0() {
        AccountBean accountData;
        int i2 = 0;
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                try {
                    accountData = AccountUtil_.getInstance_(this).getAccountData();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                if (accountData != null && accountData.getUid() != 0) {
                    ForumResponse<ForumData.ForumProfileUnreadMessageCountData> K2 = com.join.mgps.rpc.impl.f.A0().K(accountData.getUid(), accountData.getToken(), "");
                    r0 = K2 != null ? K2.getData() : null;
                    if (r0 != null) {
                        i2 = r0.getUnread();
                    }
                    return;
                }
                return;
            } finally {
                i0.o1(null);
                j0.I1(this).b1(0);
            }
        }
        ForumTable o3 = t.p().o(ForumBean.ForumEvent.ProfileGetUnreadMessageCount);
        if (o3 != null && !d2.h(o3.getArgs1())) {
            i2 = i0.I(o3.getArgs1()).getUnread();
        }
        j0.I1(this).b1(i2);
    }

    private void J() {
        ResultMainBean<List<ApkVersionbean>> C1;
        EMUApkArenaTable eMUApkArenaTable;
        if (!com.join.android.app.common.utils.f.j(this)) {
            return;
        }
        ResultMainBean<List<ApkVersionbean>> resultMainBean = null;
        try {
            C1 = com.join.mgps.rpc.impl.c.P1().C1(RequestBeanUtil.getInstance(this).getApkVersion(2, 2, 0));
            if (C1 != null) {
                try {
                    try {
                        if (C1.getFlag() == 1) {
                            for (ApkVersionbean apkVersionbean : C1.getMessages().getData()) {
                                DownloadTask B = g1.f.G().B(apkVersionbean.getTag_id());
                                HashMap hashMap = new HashMap();
                                hashMap.put("tag_id", apkVersionbean.getTag_id());
                                List<EMUApkArenaTable> h4 = n1.o.o().h(hashMap);
                                if (h4 != null && h4.size() > 0) {
                                    if (h4.size() > 1) {
                                        for (int i2 = 0; i2 < h4.size(); i2++) {
                                            n1.o.o().delete((n1.o) h4.get(i2));
                                        }
                                    }
                                    try {
                                        eMUApkArenaTable = h4.get(0);
                                    } catch (Exception e4) {
                                        e = e4;
                                        eMUApkArenaTable = null;
                                    }
                                    try {
                                        eMUApkArenaTable.setApk_name(apkVersionbean.getApk_name());
                                        eMUApkArenaTable.setDown_url(apkVersionbean.getDown_url());
                                        eMUApkArenaTable.setLaunch_name(apkVersionbean.getLaunch_name());
                                        eMUApkArenaTable.setLogo(apkVersionbean.getLogo());
                                        eMUApkArenaTable.setPackage_name(apkVersionbean.getPackage_name());
                                        eMUApkArenaTable.setRelease_date(apkVersionbean.getRelease_date());
                                        eMUApkArenaTable.setSize(apkVersionbean.getSize());
                                        eMUApkArenaTable.setTag_id(apkVersionbean.getTag_id());
                                        eMUApkArenaTable.setTeam_info(apkVersionbean.getTeam_info());
                                        eMUApkArenaTable.setVer(apkVersionbean.getVer());
                                        eMUApkArenaTable.setVer_compatible(apkVersionbean.getVer_compatible());
                                        eMUApkArenaTable.setVer_info(apkVersionbean.getVer_info());
                                        eMUApkArenaTable.setDown_type(apkVersionbean.getDown_type());
                                        eMUApkArenaTable.setRemark(JsonMapper.toJsonString(apkVersionbean.getPlugin_md5()));
                                        com.join.android.app.common.utils.h.H(B, eMUApkArenaTable);
                                    } catch (Exception e5) {
                                        e = e5;
                                        e.printStackTrace();
                                        n1.o.o().update(eMUApkArenaTable);
                                        com.join.android.app.common.utils.h.E(eMUApkArenaTable);
                                    }
                                    n1.o.o().update(eMUApkArenaTable);
                                    com.join.android.app.common.utils.h.E(eMUApkArenaTable);
                                } else {
                                    EMUApkArenaTable eMUApkArenaTable2 = new EMUApkArenaTable();
                                    eMUApkArenaTable2.setApk_name(apkVersionbean.getApk_name());
                                    eMUApkArenaTable2.setDown_url(apkVersionbean.getDown_url());
                                    eMUApkArenaTable2.setLaunch_name(apkVersionbean.getLaunch_name());
                                    eMUApkArenaTable2.setLogo(apkVersionbean.getLogo());
                                    eMUApkArenaTable2.setPackage_name(apkVersionbean.getPackage_name());
                                    eMUApkArenaTable2.setRelease_date(apkVersionbean.getRelease_date());
                                    eMUApkArenaTable2.setSize(apkVersionbean.getSize());
                                    eMUApkArenaTable2.setTag_id(apkVersionbean.getTag_id());
                                    eMUApkArenaTable2.setTeam_info(apkVersionbean.getTeam_info());
                                    eMUApkArenaTable2.setVer(apkVersionbean.getVer());
                                    eMUApkArenaTable2.setVer_compatible(apkVersionbean.getVer_compatible());
                                    eMUApkArenaTable2.setVer_info(apkVersionbean.getVer_info());
                                    eMUApkArenaTable2.setDown_type(apkVersionbean.getDown_type());
                                    eMUApkArenaTable2.setRemark(JsonMapper.toJsonString(apkVersionbean.getPlugin_md5()));
                                    n1.o.o().k(eMUApkArenaTable2);
                                    com.join.android.app.common.utils.h.H(B, eMUApkArenaTable2);
                                    com.join.android.app.common.utils.h.E(eMUApkArenaTable2);
                                }
                            }
                        }
                    } catch (Exception unused) {
                        resultMainBean = C1;
                        if (resultMainBean != null || this.f51638w <= 0) {
                            return;
                        }
                        t0.d("getEMUVersionForArena", "failed  " + this.f51620e);
                        this.f51638w = this.f51638w - 1;
                        try {
                            Thread.sleep(5000L);
                            J();
                        } catch (InterruptedException unused2) {
                            return;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    resultMainBean = C1;
                    if (resultMainBean == null && this.f51638w > 0) {
                        t0.d("getEMUVersionForArena", "failed  " + this.f51620e);
                        this.f51638w = this.f51638w - 1;
                        try {
                            Thread.sleep(5000L);
                            J();
                        } catch (InterruptedException unused3) {
                        }
                    }
                    throw th;
                }
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
        if (C1 != null || this.f51638w <= 0) {
            return;
        }
        t0.d("getEMUVersionForArena", "failed  " + this.f51620e);
        this.f51638w = this.f51638w - 1;
        Thread.sleep(5000L);
        J();
    }

    private void N(n nVar) {
        try {
            String str = nVar.f51689a;
            boolean z3 = nVar.f51690b;
            int i2 = nVar.f51691c;
            int i4 = nVar.f51692d;
            String str2 = nVar.f51693e;
            String str3 = nVar.f51694f;
            String str4 = nVar.f51695g;
            String str5 = nVar.f51696h;
            RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
            requestModel.setDefault(this.f51628m);
            QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            queryDownloadInfoRequestArgs.setGameIdList(arrayList);
            requestModel.setArgs(queryDownloadInfoRequestArgs);
            com.join.mgps.rpc.impl.h.L().J().l0(requestModel).enqueue(new c(str3, str4, str5, i2, i4, nVar, z3, str2));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void N0(DownloadGameArgsBean downloadGameArgsBean, int i2) {
        try {
            if (this.f51635t == null) {
                this.f51635t = com.join.mgps.rpc.impl.h.L();
            }
            if (!com.join.android.app.common.utils.f.j(this.f51628m)) {
                W0(downloadGameArgsBean.getGameId(), 49);
            }
            RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
            requestModel.setDefault(this.f51628m);
            QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
            ArrayList arrayList = new ArrayList();
            arrayList.add(downloadGameArgsBean.getGameId());
            queryDownloadInfoRequestArgs.setGameIdList(arrayList);
            requestModel.setArgs(queryDownloadInfoRequestArgs);
            this.f51635t.I(requestModel, new b(downloadGameArgsBean, i2));
        } catch (Exception e4) {
            e4.printStackTrace();
            W0(downloadGameArgsBean.getGameId(), 49);
            i2.a(this.f51628m).b("获取游戏信息失败");
        }
    }

    private void P0(ControllerManager.c cVar) {
        if (cVar == null) {
            return;
        }
        JoystickTable joystickTable = new JoystickTable();
        joystickTable.setName(cVar.d());
        joystickTable.setMac(cVar.a());
        joystickTable.setTime(Long.valueOf(System.currentTimeMillis()));
        a0.o().k(joystickTable);
    }

    private void R0(ForumBannerBean.ForumBannerMessagesData forumBannerMessagesData) {
        String n4 = i0.n(forumBannerMessagesData);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.ForumWelcomeBanner.name());
        forumTable.setArgs1(n4);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        t.p().u(forumTable);
    }

    private void S0(ForumData.ForumForumWelcomeData forumForumWelcomeData) {
        String p3 = i0.p(forumForumWelcomeData);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.ForumWelcome.name());
        forumTable.setArgs1(p3);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        t.p().u(forumTable);
    }

    private void T0(ForumData.ForumForumWelcomePostsData forumForumWelcomePostsData) {
        if (forumForumWelcomePostsData == null || forumForumWelcomePostsData.getPosts_list() == null || forumForumWelcomePostsData.getPosts_list().size() == 0) {
            return;
        }
        String q3 = i0.q(forumForumWelcomePostsData);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.ForumWelcomePosts.name());
        forumTable.setArgs1(q3);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        t.p().u(forumTable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W0(String str, int i2) {
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.l(null, str, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean X(String str) {
        JoystickTable n4 = a0.o().n(str);
        if (n4 == null) {
            return false;
        }
        return com.join.android.app.common.utils.c.g(n4.getTime().longValue());
    }

    private void X0(ControllerManager.c cVar) {
        com.papa.sim.statistic.p.l(this.f51628m).Z(AccountUtil_.getInstance_(this.f51628m).getUid(), AccountUtil_.getInstance_(this.f51628m).isTourist(), cVar.d(), cVar.a(), 0);
    }

    private boolean Y() {
        AccountBean accountData = AccountUtil_.getInstance_(this.f51628m).getAccountData();
        return accountData != null && d2.i(accountData.getToken());
    }

    private boolean Z() {
        ShowViewDataBean showViewDataBean;
        ShowViewDataBean showViewDataBean2;
        try {
            List<ShowViewDataBeanTable> d4 = n1.i0.n().d();
            ArrayList arrayList = new ArrayList();
            for (ShowViewDataBeanTable showViewDataBeanTable : d4) {
                arrayList.add(showViewDataBeanTable.getShowVieDatabean());
            }
            long currentTimeMillis = System.currentTimeMillis();
            showViewDataBean = null;
            showViewDataBean2 = null;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ShowViewDataBean showViewDataBean3 = (ShowViewDataBean) arrayList.get(i2);
                String is_force = showViewDataBean3.getIs_force();
                if (is_force.equals("1") && showViewDataBean3.getTag_show() != 2) {
                    long parseLong = Long.parseLong(showViewDataBean3.getEnd_times()) * 1000;
                    if (currentTimeMillis > Long.parseLong(showViewDataBean3.getBegin_times()) * 1000 && currentTimeMillis < parseLong) {
                        showViewDataBean = showViewDataBean3;
                    }
                } else if (!is_force.equals("1") && showViewDataBean3.getTag_show() != 2) {
                    long parseLong2 = Long.parseLong(showViewDataBean3.getEnd_times()) * 1000;
                    if (currentTimeMillis > Long.parseLong(showViewDataBean3.getBegin_times()) * 1000 && currentTimeMillis < parseLong2 && showViewDataBean3.getJump_info().size() > 0 && showViewDataBean3.getTag_show() != 2) {
                        showViewDataBean2 = showViewDataBean3;
                    }
                }
            }
        } catch (Exception unused) {
        }
        if (showViewDataBean != null) {
            return b1(showViewDataBean);
        }
        if (showViewDataBean2 != null) {
            return b1(showViewDataBean2);
        }
        return false;
    }

    private void a0() {
        try {
            if (this.f51631p) {
                return;
            }
            j1();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b0() {
        com.wufan.friend.chat.c.u().C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c0(String str) {
        i2.a(this.f51628m).b(str);
    }

    private void f0() {
        try {
            if (this.f51636u == null) {
                a0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void g0(String str) {
        String str2;
        try {
            if (com.join.android.app.common.utils.f.j(this.f51628m)) {
                AccountBean accountData = AccountUtil_.getInstance_(this.f51628m).getAccountData();
                int uid = accountData != null ? accountData.getUid() : 0;
                if (IntentUtil.getInstance().goLogin(this.f51628m)) {
                    i2.a(this.f51628m).b("请先登录！");
                    return;
                }
                try {
                    PackageInfo packageInfo = this.f51628m.getPackageManager().getPackageInfo(this.f51628m.getPackageName(), 0);
                    str2 = packageInfo.versionCode + "_" + packageInfo.versionName;
                } catch (PackageManager.NameNotFoundException e4) {
                    e4.printStackTrace();
                }
                RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
                requestdetialFolowAndBeSpeak.setApp_ver(str2);
                requestdetialFolowAndBeSpeak.setGame_id(str);
                requestdetialFolowAndBeSpeak.setUid(uid);
                requestdetialFolowAndBeSpeak.setMobile(accountData.getMobile());
                com.join.mgps.rpc.impl.c.P1().O1().d0(RequestBeanUtil.getInstance(this.f51628m).getDetialFollowAnd(requestdetialFolowAndBeSpeak)).enqueue(new a(str));
                return;
            }
            i2.a(this.f51628m).b("请检查网络！");
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    private void n() {
        List<ForumTable> r3 = t.p().r(ForumBean.ForumEvent.PostsPraise);
        if (r3 == null || r3.size() == 0) {
            return;
        }
        for (ForumTable forumTable : r3) {
            String args2 = forumTable.getArgs2();
            if (args2 != null && !d2.h(args2)) {
                ForumRequestBean.ForumPostsPraiseRequestBean G2 = i0.G(forumTable.getArgs1());
                if (!i0.F(args2).isResult()) {
                    p0(G2.getPid());
                }
            }
        }
    }

    private void r() {
        g1.f.G().v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        if (G) {
            f0();
            n();
            r();
        }
    }

    private String v(String str) {
        File file;
        String str2;
        HttpURLConnection httpURLConnection;
        try {
            File file2 = new File(this.f51630o);
            String str3 = System.currentTimeMillis() + ".png";
            if (!file2.exists()) {
                file2.mkdirs();
            }
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(u.f27845d);
                String str4 = File.separator;
                sb.append(str4);
                sb.append("MG");
                sb.append(str4);
                sb.append(".nomedia");
                File file3 = new File(sb.toString());
                if (!file3.exists()) {
                    if (!file3.getParentFile().exists()) {
                        file3.getParentFile().mkdirs();
                    }
                    file3.createNewFile();
                }
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            str2 = this.f51630o + File.separator + str3;
            file = new File(str2);
        } catch (Exception e5) {
            e = e5;
            file = null;
        }
        try {
            if (file.exists()) {
                UtilsMy.delete(file);
            }
            file.createNewFile();
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setDoInput(true);
        } catch (Exception e6) {
            e = e6;
            e.printStackTrace();
            if (file != null && file.exists()) {
                UtilsMy.delete(file);
            }
            return null;
        }
        if (httpURLConnection.getResponseCode() == 200) {
            InputStream inputStream = httpURLConnection.getInputStream();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    inputStream.close();
                    fileOutputStream.close();
                    return str2;
                }
            }
        } else {
            if (file.exists()) {
                UtilsMy.delete(file);
            }
            return null;
        }
    }

    private String w(String str) {
        File file;
        String str2;
        HttpURLConnection httpURLConnection;
        try {
            File file2 = new File(this.f51630o);
            String str3 = System.currentTimeMillis() + ".mp4";
            if (!file2.exists()) {
                file2.mkdirs();
            }
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(u.f27845d);
                String str4 = File.separator;
                sb.append(str4);
                sb.append("MG");
                sb.append(str4);
                sb.append(".nomedia");
                File file3 = new File(sb.toString());
                if (!file3.exists()) {
                    if (!file3.getParentFile().exists()) {
                        file3.getParentFile().mkdirs();
                    }
                    file3.createNewFile();
                }
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            str2 = this.f51630o + File.separator + str3;
            file = new File(str2);
        } catch (Exception e5) {
            e = e5;
            file = null;
        }
        try {
            if (file.exists()) {
                UtilsMy.delete(file);
            }
            file.createNewFile();
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setDoInput(true);
        } catch (Exception e6) {
            e = e6;
            e.printStackTrace();
            if (file != null && file.exists()) {
                UtilsMy.delete(file);
            }
            return null;
        }
        if (httpURLConnection.getResponseCode() == 200) {
            InputStream inputStream = httpURLConnection.getInputStream();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    inputStream.close();
                    fileOutputStream.close();
                    return str2;
                }
            }
        } else {
            if (file.exists()) {
                UtilsMy.delete(file);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.R})
    public void A(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra String str3, @Receiver.Extra String str4, @Receiver.Extra long j4) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).h(str2, str3, str4, j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.openKeyskill"})
    public void A0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        Ext ext = new Ext();
        ext.setGameId(str2);
        ext.setUid(Integer.valueOf(str3).intValue());
        ext.setPosition(i2 + "");
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.openKeyskill, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.U})
    public void B(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).T0(str2, i2, str3, g1.f.G().H(str2, getApplicationContext()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.selectLevel"})
    public void B0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        Ext ext = new Ext();
        ext.setGameId(str2);
        ext.setUid(Integer.valueOf(str3).intValue());
        ext.setPosition(i2 + "");
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.selectLevel, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.G0})
    public void C(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra long j4, @Receiver.Extra String str3) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).T0(str2, j4, str3, g1.f.G().H(str2, getApplicationContext()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.shareScreenshot"})
    public void C0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        Ext ext = new Ext();
        ext.setGameId(str2);
        ext.setUid(Integer.valueOf(str3).intValue());
        ext.setPosition(i2 + "");
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.shareScreenshot, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.O})
    public void D(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra String str3) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName()) || d2.h(str2)) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).j(str2, str3, g1.f.G().H(str2, getApplicationContext()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.showvippopup"})
    public void D0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        Ext ext = new Ext();
        ext.setGameId(str2);
        ext.setUid(Integer.valueOf(str3).intValue());
        ext.setPosition(i2 + "");
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.showVippopup, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.S})
    public void E(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra String str3, @Receiver.Extra int i2) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).i(str2, str3, i2, g1.f.G().H(str2, getApplicationContext()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.uesVippopup"})
    public void E0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        Ext ext = new Ext();
        ext.setGameId(str2);
        ext.setUid(Integer.valueOf(str3).intValue());
        ext.setPosition(i2 + "");
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.uesVippopup, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.P})
    public void F(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra String str3) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).V1(str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.Q})
    public void G(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra String str3, @Receiver.Extra String str4, @Receiver.Extra long j4) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).B2(str2, str3, str4, j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H() {
        com.join.mgps.va.overmind.e.p().b0();
        I();
    }

    void H0(Bundle bundle) {
        Intent intent = new Intent("com.wufun.union.ad.action.AdService");
        intent.setPackage(getPackageName());
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        startService(intent);
    }

    void I() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                List<DownloadTask> M = g1.f.G().M(null);
                ArrayList arrayList = new ArrayList();
                for (DownloadTask downloadTask : M) {
                    if (downloadTask.getCrc_link_type_val() != null) {
                        arrayList.add(downloadTask.getCrc_link_type_val());
                    }
                }
                if (arrayList.size() == 0) {
                    return;
                }
                this.B = arrayList.size() % this.A == 0 ? arrayList.size() / this.A : (arrayList.size() / this.A) + 1;
                if (this.f51639x == null) {
                    this.f51639x = Executors.newSingleThreadScheduledExecutor();
                }
                this.C = 0;
                this.f51639x.scheduleAtFixedRate(new h(arrayList), 1L, 3L, TimeUnit.SECONDS);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65514z})
    public void I0() {
        stopSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65500s})
    public void J0() {
        AccountUtil_.getInstance_(this.f51628m).accountLoginOut(this.f51628m);
        m1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K(String str, String str2, boolean z3, long j4, QueryDownloadInfoResponseData queryDownloadInfoResponseData, boolean z4, int i2, int i4, boolean z5) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
                requestModel.setDefault(this.f51628m);
                QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
                ArrayList arrayList = new ArrayList();
                arrayList.add(str);
                queryDownloadInfoRequestArgs.setGameIdList(arrayList);
                requestModel.setArgs(queryDownloadInfoRequestArgs);
                com.join.mgps.rpc.impl.h.L().J().l0(requestModel).enqueue(new e(i2, i4, queryDownloadInfoResponseData, z3, str2, z4, z5));
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                f1("获取游戏信息失败");
                return;
            }
        }
        f1("请检查网络连接");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65487l0})
    public void K0(@Receiver.Extra String str, @Receiver.Extra Integer num) {
        i1(str, num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = me.relex.photodraweeview.d.f72676b0)
    public void L(String str, String str2, boolean z3) {
        String uid = AccountUtil_.getInstance_(this.f51628m).getUid();
        String token = AccountUtil_.getInstance_(this.f51628m).getToken();
        RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(this.f51628m);
        QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
        DownloadTask B = g1.f.G().B(str);
        if (B == null) {
            return;
        }
        if (APKUtils.E(B)) {
            queryDownloadInfoRequestArgs.setGameId(((ModInfoBean) JsonMapper.getInstance().fromJson(B.getMod_info(), ModInfoBean.class)).getMain_game_id());
        } else {
            queryDownloadInfoRequestArgs.setGameId(str);
        }
        queryDownloadInfoRequestArgs.setUid(uid);
        queryDownloadInfoRequestArgs.setToken(token);
        queryDownloadInfoRequestArgs.setIsRecommend(com.join.mgps.pref.h.n(this.f51628m).x() ? "rec" : "");
        requestModel.setArgs(queryDownloadInfoRequestArgs);
        if (z3) {
            return;
        }
        com.join.mgps.rpc.impl.h.L().J().U(requestModel).enqueue(new i(str, z3, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.B, f1.a.G})
    public void L0() {
        O();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M() {
        Throwable th;
        int i2;
        int i4;
        int uid;
        ResultMainBean<List<APKVersionMainBean>> r12;
        ApkVersionbean apkVersionbean;
        Exception exc;
        EMUApkTable eMUApkTable;
        String ver;
        HomeViewSwich homeViewSwich;
        int i5;
        if (this.f51617b.plugHasUpdate().d().booleanValue() || I) {
            return;
        }
        int i6 = 1;
        I = true;
        ArrayList<ApkVersionbean> arrayList = (ArrayList) JsonMapper.getInstance().fromJson(getResources().getString(R.string.defalut_app_ver), JsonMapper.getInstance().createCollectionType(ArrayList.class, ApkVersionbean.class));
        t0.d("getEMUVersion", "start");
        HashMap hashMap = new HashMap();
        hashMap.put("tag_id", "31");
        List<EMUApkTable> h4 = n1.p.o().h(hashMap);
        List<EMUApkArenaTable> h5 = n1.o.o().h(hashMap);
        if (h4 != null && h4.size() != 0) {
            q1(arrayList, h4, "31");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ApkVersionbean next = it2.next();
                if (next.getTag_id().equals("31")) {
                    n1.p.o().k(new EMUApkTable(next));
                }
            }
        }
        if (h5 != null && h5.size() != 0) {
            r1(arrayList, h5, "31");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it3 = arrayList.iterator();
            while (it3.hasNext()) {
                ApkVersionbean next2 = it3.next();
                if (next2.getTag_id().equals("31")) {
                    n1.o.o().k(new EMUApkArenaTable(next2));
                }
            }
        }
        HashMap hashMap2 = new HashMap();
        hashMap2.put("tag_id", "35");
        List<EMUApkTable> h6 = n1.p.o().h(hashMap2);
        List<EMUApkArenaTable> h7 = n1.o.o().h(hashMap2);
        if (h6 != null && h6.size() != 0) {
            q1(arrayList, h6, "35");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it4 = arrayList.iterator();
            while (it4.hasNext()) {
                ApkVersionbean next3 = it4.next();
                if (next3.getTag_id().equals("35")) {
                    n1.p.o().k(new EMUApkTable(next3));
                }
            }
        }
        if (h7 != null && h7.size() != 0) {
            r1(arrayList, h7, "35");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it5 = arrayList.iterator();
            while (it5.hasNext()) {
                ApkVersionbean next4 = it5.next();
                if (next4.getTag_id().equals("35")) {
                    n1.o.o().k(new EMUApkArenaTable(next4));
                }
            }
        }
        HashMap hashMap3 = new HashMap();
        hashMap3.put("tag_id", "43");
        List<EMUApkTable> h8 = n1.p.o().h(hashMap3);
        List<EMUApkArenaTable> h9 = n1.o.o().h(hashMap3);
        if (h8 != null && h8.size() != 0) {
            q1(arrayList, h8, "43");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it6 = arrayList.iterator();
            while (it6.hasNext()) {
                ApkVersionbean next5 = it6.next();
                if (next5.getTag_id().equals("43")) {
                    n1.p.o().k(new EMUApkTable(next5));
                }
            }
        }
        if (h9 != null && h9.size() != 0) {
            r1(arrayList, h9, "43");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it7 = arrayList.iterator();
            while (it7.hasNext()) {
                ApkVersionbean next6 = it7.next();
                if (next6.getTag_id().equals("43")) {
                    n1.o.o().k(new EMUApkArenaTable(next6));
                }
            }
        }
        HashMap hashMap4 = new HashMap();
        hashMap4.put("tag_id", "33");
        List<EMUApkTable> h10 = n1.p.o().h(hashMap4);
        List<EMUApkArenaTable> h11 = n1.o.o().h(hashMap4);
        if (h10 != null && h10.size() != 0) {
            q1(arrayList, h10, "33");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it8 = arrayList.iterator();
            while (it8.hasNext()) {
                ApkVersionbean next7 = it8.next();
                if (next7.getTag_id().equals("33")) {
                    n1.p.o().k(new EMUApkTable(next7));
                }
            }
        }
        if (h11 != null && h11.size() != 0) {
            r1(arrayList, h11, "33");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it9 = arrayList.iterator();
            while (it9.hasNext()) {
                ApkVersionbean next8 = it9.next();
                if (next8.getTag_id().equals("33")) {
                    n1.o.o().k(new EMUApkArenaTable(next8));
                }
            }
        }
        HashMap hashMap5 = new HashMap();
        hashMap5.put("tag_id", "34");
        List<EMUApkTable> h12 = n1.p.o().h(hashMap5);
        List<EMUApkArenaTable> h13 = n1.o.o().h(hashMap5);
        if (h12 != null && h12.size() != 0) {
            q1(arrayList, h12, "34");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it10 = arrayList.iterator();
            while (it10.hasNext()) {
                ApkVersionbean next9 = it10.next();
                if (next9.getTag_id().equals("34")) {
                    n1.p.o().k(new EMUApkTable(next9));
                }
            }
        }
        if (h13 != null && h13.size() != 0) {
            r1(arrayList, h13, "34");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it11 = arrayList.iterator();
            while (it11.hasNext()) {
                ApkVersionbean next10 = it11.next();
                if (next10.getTag_id().equals("34")) {
                    n1.o.o().k(new EMUApkArenaTable(next10));
                }
            }
        }
        HashMap hashMap6 = new HashMap();
        hashMap6.put("tag_id", "51");
        List<EMUApkTable> h14 = n1.p.o().h(hashMap6);
        List<EMUApkArenaTable> h15 = n1.o.o().h(hashMap6);
        if (h14 != null && h14.size() != 0) {
            q1(arrayList, h14, "51");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it12 = arrayList.iterator();
            while (it12.hasNext()) {
                ApkVersionbean next11 = it12.next();
                if (next11.getTag_id().equals("51")) {
                    n1.p.o().k(new EMUApkTable(next11));
                }
            }
        }
        if (h15 != null && h15.size() != 0) {
            r1(arrayList, h15, "51");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it13 = arrayList.iterator();
            while (it13.hasNext()) {
                ApkVersionbean next12 = it13.next();
                if (next12.getTag_id().equals("51")) {
                    n1.o.o().k(new EMUApkArenaTable(next12));
                }
            }
        }
        HashMap hashMap7 = new HashMap();
        hashMap7.put("tag_id", "53");
        List<EMUApkTable> h16 = n1.p.o().h(hashMap7);
        List<EMUApkArenaTable> h17 = n1.o.o().h(hashMap7);
        if (h16 != null && h16.size() != 0) {
            q1(arrayList, h16, "53");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it14 = arrayList.iterator();
            while (it14.hasNext()) {
                ApkVersionbean next13 = it14.next();
                if (next13.getTag_id().equals("53")) {
                    n1.p.o().k(new EMUApkTable(next13));
                }
            }
        }
        if (h17 != null && h17.size() != 0) {
            r1(arrayList, h17, "53");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it15 = arrayList.iterator();
            while (it15.hasNext()) {
                ApkVersionbean next14 = it15.next();
                if (next14.getTag_id().equals("53")) {
                    n1.o.o().k(new EMUApkArenaTable(next14));
                }
            }
        }
        HashMap hashMap8 = new HashMap();
        hashMap8.put("tag_id", "54");
        List<EMUApkTable> h18 = n1.p.o().h(hashMap8);
        List<EMUApkArenaTable> h19 = n1.o.o().h(hashMap8);
        if (h18 != null && h18.size() != 0) {
            q1(arrayList, h18, "54");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it16 = arrayList.iterator();
            while (it16.hasNext()) {
                ApkVersionbean next15 = it16.next();
                if (next15.getTag_id().equals("54")) {
                    n1.p.o().k(new EMUApkTable(next15));
                }
            }
        }
        if (h19 != null && h19.size() != 0) {
            r1(arrayList, h19, "54");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it17 = arrayList.iterator();
            while (it17.hasNext()) {
                ApkVersionbean next16 = it17.next();
                if (next16.getTag_id().equals("54")) {
                    n1.o.o().k(new EMUApkArenaTable(next16));
                }
            }
        }
        HashMap hashMap9 = new HashMap();
        hashMap9.put("tag_id", "32");
        List<EMUApkTable> h20 = n1.p.o().h(hashMap9);
        List<EMUApkArenaTable> h21 = n1.o.o().h(hashMap9);
        if ((h20 == null || h20.size() == 0) && arrayList != null) {
            Iterator<ApkVersionbean> it18 = arrayList.iterator();
            while (it18.hasNext()) {
                ApkVersionbean next17 = it18.next();
                if (next17.getTag_id().equals("32")) {
                    n1.p.o().k(new EMUApkTable(next17));
                }
            }
        }
        if ((h21 == null || h21.size() == 0) && arrayList != null) {
            Iterator<ApkVersionbean> it19 = arrayList.iterator();
            while (it19.hasNext()) {
                ApkVersionbean next18 = it19.next();
                if (next18.getTag_id().equals("32")) {
                    n1.o.o().k(new EMUApkArenaTable(next18));
                }
            }
        }
        HashMap hashMap10 = new HashMap();
        hashMap10.put("tag_id", "56");
        List<EMUApkTable> h22 = n1.p.o().h(hashMap10);
        List<EMUApkArenaTable> h23 = n1.o.o().h(hashMap10);
        if (h22 != null && h22.size() != 0) {
            q1(arrayList, h22, "56");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it20 = arrayList.iterator();
            while (it20.hasNext()) {
                ApkVersionbean next19 = it20.next();
                if (next19.getTag_id().equals("56")) {
                    n1.p.o().k(new EMUApkTable(next19));
                }
            }
        }
        if (h23 != null && h23.size() != 0) {
            r1(arrayList, h23, "56");
        } else if (arrayList != null) {
            Iterator<ApkVersionbean> it21 = arrayList.iterator();
            while (it21.hasNext()) {
                ApkVersionbean next20 = it21.next();
                if (next20.getTag_id().equals("56")) {
                    n1.o.o().k(new EMUApkArenaTable(next20));
                }
            }
        }
        HashMap hashMap11 = new HashMap();
        hashMap11.put("tag_id", "57");
        List<EMUApkTable> h24 = n1.p.o().h(hashMap11);
        List<EMUApkArenaTable> h25 = n1.o.o().h(hashMap11);
        if ((h24 == null || h24.size() == 0) && arrayList != null) {
            Iterator<ApkVersionbean> it22 = arrayList.iterator();
            while (it22.hasNext()) {
                ApkVersionbean next21 = it22.next();
                if (next21.getTag_id().equals("57")) {
                    n1.p.o().k(new EMUApkTable(next21));
                }
            }
        }
        if ((h25 == null || h25.size() == 0) && arrayList != null) {
            Iterator<ApkVersionbean> it23 = arrayList.iterator();
            while (it23.hasNext()) {
                ApkVersionbean next22 = it23.next();
                if (next22.getTag_id().equals("57")) {
                    n1.o.o().k(new EMUApkArenaTable(next22));
                }
            }
        }
        HashMap hashMap12 = new HashMap();
        hashMap12.put("tag_id", "58");
        List<EMUApkTable> h26 = n1.p.o().h(hashMap12);
        List<EMUApkTable> h27 = n1.p.o().h(hashMap12);
        if ((h26 == null || h26.size() == 0) && arrayList != null) {
            Iterator<ApkVersionbean> it24 = arrayList.iterator();
            while (it24.hasNext()) {
                ApkVersionbean next23 = it24.next();
                if (next23.getTag_id().equals("58")) {
                    n1.p.o().k(new EMUApkTable(next23));
                }
            }
        }
        if ((h27 == null || h27.size() == 0) && arrayList != null) {
            Iterator<ApkVersionbean> it25 = arrayList.iterator();
            while (it25.hasNext()) {
                ApkVersionbean next24 = it25.next();
                if (next24.getTag_id().equals("58")) {
                    n1.o.o().k(new EMUApkArenaTable(next24));
                }
            }
        }
        HashMap hashMap13 = new HashMap();
        hashMap13.put("tag_id", "60");
        List<EMUApkTable> h28 = n1.p.o().h(hashMap13);
        List<EMUApkTable> h29 = n1.p.o().h(hashMap13);
        if ((h28 == null || h28.size() == 0) && arrayList != null) {
            Iterator<ApkVersionbean> it26 = arrayList.iterator();
            while (it26.hasNext()) {
                ApkVersionbean next25 = it26.next();
                if (next25.getTag_id().equals("60")) {
                    n1.p.o().k(new EMUApkTable(next25));
                }
            }
        }
        if ((h29 == null || h29.size() == 0) && arrayList != null) {
            Iterator<ApkVersionbean> it27 = arrayList.iterator();
            while (it27.hasNext()) {
                ApkVersionbean next26 = it27.next();
                if (next26.getTag_id().equals("60")) {
                    n1.o.o().k(new EMUApkArenaTable(next26));
                }
            }
        }
        HashMap hashMap14 = new HashMap();
        hashMap14.put("tag_id", "166");
        List<EMUApkTable> h30 = n1.p.o().h(hashMap14);
        List<EMUApkTable> h31 = n1.p.o().h(hashMap14);
        if ((h30 == null || h30.size() == 0) && arrayList != null) {
            Iterator<ApkVersionbean> it28 = arrayList.iterator();
            while (it28.hasNext()) {
                ApkVersionbean next27 = it28.next();
                if (next27.getTag_id().equals("166")) {
                    n1.p.o().k(new EMUApkTable(next27));
                }
            }
        }
        if ((h31 == null || h31.size() == 0) && arrayList != null) {
            Iterator<ApkVersionbean> it29 = arrayList.iterator();
            while (it29.hasNext()) {
                ApkVersionbean next28 = it29.next();
                if (next28.getTag_id().equals("166")) {
                    n1.o.o().k(new EMUApkArenaTable(next28));
                }
            }
        }
        if (com.join.android.app.common.utils.f.j(this)) {
            ResultMainBean<List<APKVersionMainBean>> resultMainBean = null;
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData != null) {
                    try {
                        uid = accountData.getUid();
                    } catch (Exception unused) {
                        I = false;
                        if (resultMainBean == null) {
                            this.f51638w = i4 - 1;
                            try {
                                Thread.sleep(5000L);
                                M();
                            } catch (InterruptedException unused2) {
                            }
                        }
                        J();
                        S();
                    } catch (Throwable th2) {
                        th = th2;
                        I = false;
                        if (resultMainBean == null) {
                            this.f51638w = i2 - 1;
                            try {
                                Thread.sleep(5000L);
                                M();
                            } catch (InterruptedException unused3) {
                            }
                        }
                        throw th;
                    }
                } else {
                    uid = 0;
                }
                r12 = com.join.mgps.rpc.impl.c.P1().r1(RequestBeanUtil.getInstance(this).getApkVersion(2, 2, 0, uid));
                if (r12 != null) {
                    try {
                        try {
                            if (r12.getFlag() == 1) {
                                t0.d("getEMUVersion", "sucess");
                                this.f51617b.plugHasUpdate().g(Boolean.TRUE);
                                if (r12.getMessages().getData().size() == 0) {
                                    I = false;
                                    return;
                                }
                                APKVersionMainBean aPKVersionMainBean = r12.getMessages().getData().get(0);
                                if (aPKVersionMainBean != null) {
                                    apkVersionbean = aPKVersionMainBean.getApp().get(0);
                                    try {
                                        MApplication.f9228s0 = aPKVersionMainBean.getSimulator_run_ad_text_cfg();
                                        MApplication.f9230t0 = aPKVersionMainBean.getSingle_game_run_ad_text_cfg();
                                        MApplication.f9232u0 = aPKVersionMainBean.getPublic_video_cfg();
                                        SingleGameRunAdTextCfgBean singleGameRunAdTextCfgBean = MApplication.f9230t0;
                                        if (singleGameRunAdTextCfgBean != null) {
                                            MApplication.f9234v0 = singleGameRunAdTextCfgBean.getCounts();
                                        }
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("获得配置：");
                                        sb.append(MApplication.f9230t0.getCounts());
                                        List<HomeViewSwich> cfg = aPKVersionMainBean.getCfg();
                                        if (cfg != null && cfg.size() > 0 && (homeViewSwich = cfg.get(0)) != null) {
                                            try {
                                                String m4 = m(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_speed_limit().getCfg_values(), null));
                                                if (!m4.equals("-1")) {
                                                    homeViewSwich.getDown_load_speed_limit().setCfg_values_express(m4);
                                                } else {
                                                    homeViewSwich.getDown_load_speed_limit().setCfg_values_express("300");
                                                }
                                                String m5 = m(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_size().getCfg_values(), null));
                                                if (!m5.equals("0")) {
                                                    homeViewSwich.getDown_load_size().setCfg_values_express(m5);
                                                } else {
                                                    homeViewSwich.getDown_load_size().setCfg_values_express("500");
                                                }
                                                String m6 = m(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_cfg_net_game_speed_limit().getCfg_switch(), null));
                                                if (!m6.equals("-1")) {
                                                    homeViewSwich.getDown_load_cfg_net_game_speed_limit().setCfg_switch_express(m6);
                                                } else {
                                                    homeViewSwich.getDown_load_cfg_net_game_speed_limit().setCfg_switch_express("0");
                                                }
                                                String m7 = m(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_cfg_simulator_speed_limit().getCfg_switch(), null));
                                                if (!m7.equals("-1")) {
                                                    homeViewSwich.getDown_load_cfg_simulator_speed_limit().setCfg_switch_express(m7);
                                                } else {
                                                    homeViewSwich.getDown_load_cfg_simulator_speed_limit().setCfg_switch_express("0");
                                                }
                                                String m8 = m(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_cfg_stand_alone_speed_limit().getCfg_switch(), null));
                                                if (!m8.equals("-1")) {
                                                    homeViewSwich.getDown_load_cfg_stand_alone_speed_limit().setCfg_switch_express(m8);
                                                } else {
                                                    homeViewSwich.getDown_load_cfg_stand_alone_speed_limit().setCfg_switch_express("0");
                                                }
                                                homeViewSwich.getDown_load_unrestricted_speed().setCfg_values_express(m(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_unrestricted_speed().getCfg_values(), null)));
                                                com.join.mgps.pref.h.n(this.f51628m).N(homeViewSwich);
                                                MApplication.I = homeViewSwich;
                                            } catch (Exception e4) {
                                                e4.printStackTrace();
                                            }
                                            BattaleSwitchBean seep_up_read_only_number_of_win = homeViewSwich.getSeep_up_read_only_number_of_win();
                                            if (seep_up_read_only_number_of_win != null && seep_up_read_only_number_of_win.getCfg_switch() == 1) {
                                                this.f51617b.downloadSpeedUpCount().g(Integer.valueOf(seep_up_read_only_number_of_win.getCfg_values()));
                                            } else {
                                                this.f51617b.downloadSpeedUpCount().g(0);
                                            }
                                            BattaleSwitchBean seep_up_read_only_game_size = homeViewSwich.getSeep_up_read_only_game_size();
                                            if (seep_up_read_only_game_size != null && seep_up_read_only_game_size.getCfg_switch() == 1) {
                                                this.f51617b.downloadSpeedUpGameSize().g(Integer.valueOf(seep_up_read_only_game_size.getCfg_values()));
                                            } else {
                                                this.f51617b.downloadSpeedUpGameSize().g(0);
                                            }
                                            if (!x.t(this.f51617b.downloadSpeedUpLastTime().d().longValue())) {
                                                this.f51617b.downloadSpeedUpCountCurrent().g(0);
                                                this.f51617b.downloadSpeedUpCountCurrentAD().g(0);
                                                this.f51617b.downloadSpeedUpGames().g("");
                                            }
                                            BattaleSwitchBean an_battle_switch = homeViewSwich.getAn_battle_switch();
                                            if (an_battle_switch != null && an_battle_switch.getCfg_switch() == 1) {
                                                this.f51617b.showAnBattle().g(Boolean.TRUE);
                                            } else {
                                                this.f51617b.showAnBattle().g(Boolean.FALSE);
                                            }
                                            BattaleSwitchBean psp_ad_show_time = homeViewSwich.getPsp_ad_show_time();
                                            if (psp_ad_show_time != null) {
                                                this.f51617b.pspAdShowTimeSwitch().g(Integer.valueOf(psp_ad_show_time.getCfg_switch()));
                                                this.f51617b.pspAdShowTime().g(Integer.valueOf(psp_ad_show_time.getCfg_values()));
                                            }
                                            BattaleSwitchBean ranking_menu = homeViewSwich.getRanking_menu();
                                            if (ranking_menu != null) {
                                                this.f51617b.rankingMenu().g(ranking_menu.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_arc_ad_id = homeViewSwich.getSeep_up_read_only_arc_ad_id();
                                            if (seep_up_read_only_arc_ad_id != null && seep_up_read_only_arc_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_arc_ad_id.getCfg_values())) {
                                                this.f51617b.adIdArc().g(seep_up_read_only_arc_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_psp_ad_id = homeViewSwich.getSeep_up_read_only_psp_ad_id();
                                            if (seep_up_read_only_psp_ad_id != null && seep_up_read_only_psp_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_psp_ad_id.getCfg_values())) {
                                                this.f51617b.adIdPsp().g(seep_up_read_only_psp_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_down_ad_id = homeViewSwich.getSeep_up_read_only_down_ad_id();
                                            if (seep_up_read_only_down_ad_id != null && seep_up_read_only_down_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_down_ad_id.getCfg_values())) {
                                                this.f51617b.adIdDownloadSpeedUp().g(seep_up_read_only_down_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_common_s_ad_id = homeViewSwich.getSeep_up_read_only_common_s_ad_id();
                                            if (seep_up_read_only_common_s_ad_id != null && seep_up_read_only_common_s_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_common_s_ad_id.getCfg_values())) {
                                                this.f51617b.adIdCommonV().g(seep_up_read_only_common_s_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_common_h_ad_id = homeViewSwich.getSeep_up_read_only_common_h_ad_id();
                                            if (seep_up_read_only_common_h_ad_id != null && seep_up_read_only_common_h_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_common_h_ad_id.getCfg_values())) {
                                                this.f51617b.adIdCommonH().g(seep_up_read_only_common_h_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean nick_name_modify_title = homeViewSwich.getNick_name_modify_title();
                                            if (nick_name_modify_title != null) {
                                                this.f51617b.changeNickNameNotice().g(nick_name_modify_title.getCfg_values());
                                            }
                                            BattaleSwitchBean game_download_boot = homeViewSwich.getGame_download_boot();
                                            if (game_download_boot != null) {
                                                String cfg_values = game_download_boot.getCfg_values();
                                                if (d2.i(cfg_values)) {
                                                    try {
                                                        int intValue = this.f51617b.insatllAppFirst().d().intValue();
                                                        int parseInt = Integer.parseInt(cfg_values);
                                                        if (intValue == -8) {
                                                            this.f51617b.insatllAppFirst().g(Integer.valueOf(parseInt));
                                                        }
                                                    } catch (Exception e5) {
                                                        e5.printStackTrace();
                                                    }
                                                }
                                            }
                                            BattaleSwitchBean game_performance_boot = homeViewSwich.getGame_performance_boot();
                                            if (game_performance_boot != null) {
                                                String cfg_values2 = game_performance_boot.getCfg_values();
                                                if (d2.i(cfg_values2)) {
                                                    try {
                                                        int parseInt2 = Integer.parseInt(cfg_values2);
                                                        if (this.f51617b.runRomFirst().d().intValue() == -8) {
                                                            this.f51617b.runRomFirst().g(Integer.valueOf(parseInt2));
                                                        }
                                                    } catch (Exception e6) {
                                                        e6.printStackTrace();
                                                    }
                                                }
                                            }
                                            BattaleSwitchBean app_down_wifi_status = homeViewSwich.getApp_down_wifi_status();
                                            if (app_down_wifi_status != null) {
                                                String cfg_values3 = app_down_wifi_status.getCfg_values();
                                                if (d2.i(cfg_values3)) {
                                                    try {
                                                        int parseInt3 = Integer.parseInt(cfg_values3);
                                                        if (this.f51617b.wifiDownNumber().d().intValue() == -1) {
                                                            this.f51617b.wifiDownNumber().g(Integer.valueOf(parseInt3));
                                                        }
                                                    } catch (Exception e7) {
                                                        e7.printStackTrace();
                                                    }
                                                }
                                            }
                                            BattaleSwitchBean ext_game_upload_type = homeViewSwich.getExt_game_upload_type();
                                            if (ext_game_upload_type != null && d2.i(ext_game_upload_type.getCfg_values())) {
                                                try {
                                                    this.f51617b.uploadType2().g(ext_game_upload_type.getCfg_values());
                                                } catch (Exception e8) {
                                                    e8.printStackTrace();
                                                }
                                            }
                                            BattaleSwitchBean wf_home_page_position = homeViewSwich.getWf_home_page_position();
                                            if (wf_home_page_position != null && wf_home_page_position.getCfg_switch() == 1) {
                                                this.f51617b.showIndex().g(wf_home_page_position.getCfg_values());
                                            } else {
                                                this.f51617b.showIndex().g(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                                            }
                                            BattaleSwitchBean md5_file_tag = homeViewSwich.getMd5_file_tag();
                                            if (md5_file_tag != null && md5_file_tag.getCfg_switch() == 1) {
                                                this.f51617b.md5FileTag().g(md5_file_tag.getCfg_values());
                                                u.f27859r = md5_file_tag.getCfg_values();
                                            } else {
                                                this.f51617b.md5FileTag().g("");
                                            }
                                            try {
                                                this.f51617b.emulatorStartAdCount().g(Integer.valueOf(Integer.parseInt(homeViewSwich.getEmulator_start_ad_count().getCfg_values())));
                                            } catch (Exception e9) {
                                                e9.printStackTrace();
                                            }
                                            this.f51617b.emulatorGoldenFingerUrl().g(homeViewSwich.getEmulator_golden_finger_url().getCfg_values());
                                            this.f51617b.emulatorOneSkillUrl().g(homeViewSwich.getEmulator_one_skill_url().getCfg_values());
                                            this.f51617b.emulatorCheckpointUrl().g(homeViewSwich.getEmulator_checkpoint_url().getCfg_values());
                                        }
                                        this.f51617b.gameTimeLvCfg().g(JsonMapper.toJsonString(aPKVersionMainBean.getPlay_game_time_lv_cfg()));
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                } else {
                                    apkVersionbean = null;
                                }
                                if (r12.getFlag() == 1) {
                                    String[] A = com.join.android.app.common.utils.j.n(this).A();
                                    int parseInt4 = Integer.parseInt(apkVersionbean.getVer().split("_")[0]);
                                    int parseInt5 = Integer.parseInt(apkVersionbean.getVer_compatible().split("_")[0]);
                                    if (Integer.parseInt(A[0]) <= parseInt4) {
                                        VersionDto versionDto = new VersionDto();
                                        versionDto.setAndroidUrl(apkVersionbean.getDown_url());
                                        versionDto.setVersionNo(Integer.parseInt(ver.split("_")[0]));
                                        versionDto.setInfo(apkVersionbean.getVer_info());
                                        versionDto.setHead_pic(apkVersionbean.getHead_pic());
                                        versionDto.setTow_tpl_back_ground_pic(apkVersionbean.getTow_tpl_back_ground_pic());
                                        versionDto.setTpl_type(apkVersionbean.getTpl_type());
                                        if (Integer.parseInt(A[0]) < parseInt4) {
                                            Intent intent = new Intent(f1.a.J);
                                            if (Float.parseFloat(A[0]) < parseInt5) {
                                                versionDto.setQiangzhi(true);
                                                intent.putExtra("appUpdateBean", versionDto);
                                            } else {
                                                versionDto.setQiangzhi(false);
                                                intent.putExtra("appUpdateBean", versionDto);
                                            }
                                            sendBroadcast(intent);
                                        }
                                    }
                                }
                                List<ApkVersionbean> plugin = aPKVersionMainBean.getPlugin();
                                if (plugin != null) {
                                    for (ApkVersionbean apkVersionbean2 : plugin) {
                                        DownloadTask B = g1.f.G().B(apkVersionbean2.getTag_id());
                                        if (B != null && !TextUtils.isEmpty(apkVersionbean2.getVer())) {
                                            if (apkVersionbean2.equals(B.getVer() + "_" + B.getVer_name()) && B.getDown_type() != apkVersionbean2.getDown_type()) {
                                                g1.f.G().delete((g1.f) B);
                                                B = null;
                                            }
                                        }
                                        HashMap hashMap15 = new HashMap();
                                        hashMap15.put("tag_id", apkVersionbean2.getTag_id());
                                        List<EMUApkTable> h32 = n1.p.o().h(hashMap15);
                                        if (h32 != null && h32.size() > 0) {
                                            if (h32.size() > i6) {
                                                for (int i7 = 0; i7 < h32.size(); i7++) {
                                                    n1.p.o().delete((n1.p) h32.get(i7));
                                                }
                                            }
                                            try {
                                                eMUApkTable = h32.get(0);
                                                try {
                                                    eMUApkTable.setApk_name(apkVersionbean2.getApk_name());
                                                    eMUApkTable.setDown_url(apkVersionbean2.getDown_url());
                                                    eMUApkTable.setLaunch_name(apkVersionbean2.getLaunch_name());
                                                    eMUApkTable.setLogo(apkVersionbean2.getLogo());
                                                    eMUApkTable.setPackage_name(apkVersionbean2.getPackage_name());
                                                    eMUApkTable.setRelease_date(apkVersionbean2.getRelease_date());
                                                    eMUApkTable.setSize(apkVersionbean2.getSize());
                                                    eMUApkTable.setTag_id(apkVersionbean2.getTag_id());
                                                    eMUApkTable.setTeam_info(apkVersionbean2.getTeam_info());
                                                    eMUApkTable.setVer(apkVersionbean2.getVer());
                                                    eMUApkTable.setVer_compatible(apkVersionbean2.getVer_compatible());
                                                    eMUApkTable.setVer_info(apkVersionbean2.getVer_info());
                                                    eMUApkTable.setDown_type(apkVersionbean2.getDown_type());
                                                    eMUApkTable.setRemark(JsonMapper.toJsonString(apkVersionbean2.getPlugin_md5()));
                                                    boolean r02 = UtilsMy.r0(this, eMUApkTable);
                                                    if (B != null) {
                                                        if (TextUtils.isEmpty(eMUApkTable.getApkPath())) {
                                                            com.join.android.app.common.utils.h.I(this.f51628m, B, eMUApkTable);
                                                        }
                                                        if (r02 && B.getStatus() == 5) {
                                                            B.setUrl(apkVersionbean2.getDown_url());
                                                            if (d2.h(B.getMod_info())) {
                                                                B.setStatus(9);
                                                            }
                                                            B.setDescribe(apkVersionbean2.getVer_info());
                                                            B.setPortraitURL(apkVersionbean2.getLogo());
                                                            B.setShowName(apkVersionbean2.getApk_name());
                                                        } else if (B.getStatus() == 0) {
                                                            B.setStatus(5);
                                                        }
                                                        g1.f.G().m(B);
                                                        if (B.getStatus() == 9 || (r02 && B.getStatus() == 5)) {
                                                            com.join.android.app.common.utils.h.G(this.f51628m, eMUApkTable);
                                                        }
                                                    } else if (r02) {
                                                        if (eMUApkTable.getDown_type() == 2) {
                                                            if (com.join.android.app.common.utils.h.t(this.f51628m, eMUApkTable, false, new String[0])) {
                                                                UtilsMy.a2(eMUApkTable, this.f51628m);
                                                                com.join.android.app.common.utils.h.G(this.f51628m, eMUApkTable);
                                                            }
                                                        } else {
                                                            UtilsMy.a2(eMUApkTable, this.f51628m);
                                                        }
                                                    } else if (com.join.android.app.common.utils.h.t(this.f51628m, eMUApkTable, false, new String[0])) {
                                                        UtilsMy.Z1(eMUApkTable, this.f51628m);
                                                    }
                                                } catch (Exception e11) {
                                                    exc = e11;
                                                    exc.printStackTrace();
                                                    n1.p.o().update(eMUApkTable);
                                                    com.join.android.app.common.utils.h.F(eMUApkTable);
                                                    i6 = 1;
                                                }
                                            } catch (Exception e12) {
                                                exc = e12;
                                                eMUApkTable = null;
                                            }
                                            n1.p.o().update(eMUApkTable);
                                            com.join.android.app.common.utils.h.F(eMUApkTable);
                                        } else {
                                            EMUApkTable eMUApkTable2 = new EMUApkTable();
                                            eMUApkTable2.setApk_name(apkVersionbean2.getApk_name());
                                            eMUApkTable2.setDown_url(apkVersionbean2.getDown_url());
                                            eMUApkTable2.setLaunch_name(apkVersionbean2.getLaunch_name());
                                            eMUApkTable2.setLogo(apkVersionbean2.getLogo());
                                            eMUApkTable2.setPackage_name(apkVersionbean2.getPackage_name());
                                            eMUApkTable2.setRelease_date(apkVersionbean2.getRelease_date());
                                            eMUApkTable2.setSize(apkVersionbean2.getSize());
                                            eMUApkTable2.setTag_id(apkVersionbean2.getTag_id());
                                            eMUApkTable2.setTeam_info(apkVersionbean2.getTeam_info());
                                            eMUApkTable2.setVer(apkVersionbean2.getVer());
                                            eMUApkTable2.setVer_compatible(apkVersionbean2.getVer_compatible());
                                            eMUApkTable2.setVer_info(apkVersionbean2.getVer_info());
                                            eMUApkTable2.setDown_type(apkVersionbean2.getDown_type());
                                            eMUApkTable2.setRemark(JsonMapper.toJsonString(apkVersionbean2.getPlugin_md5()));
                                            n1.p.o().k(eMUApkTable2);
                                            com.join.android.app.common.utils.h.F(eMUApkTable2);
                                            boolean r03 = UtilsMy.r0(this, eMUApkTable2);
                                            if (B != null) {
                                                if (TextUtils.isEmpty(eMUApkTable2.getApkPath())) {
                                                    com.join.android.app.common.utils.h.I(this.f51628m, B, eMUApkTable2);
                                                }
                                                if (r03 && B.getStatus() == 5) {
                                                    B.setUrl(apkVersionbean2.getDown_url());
                                                    B.setShowName(apkVersionbean2.getApk_name());
                                                    if (d2.h(B.getMod_info())) {
                                                        B.setStatus(9);
                                                    }
                                                } else if (B.getStatus() == 0) {
                                                    B.setStatus(5);
                                                }
                                                g1.f.G().m(B);
                                                if (B.getStatus() == 9 || (r03 && B.getStatus() == 5)) {
                                                    com.join.android.app.common.utils.h.G(this.f51628m, eMUApkTable2);
                                                }
                                            } else if (r03) {
                                                if (eMUApkTable2.getDown_type() == 2) {
                                                    if (com.join.android.app.common.utils.h.t(this.f51628m, eMUApkTable2, false, new String[0])) {
                                                        UtilsMy.a2(eMUApkTable2, this.f51628m);
                                                    }
                                                } else {
                                                    UtilsMy.a2(eMUApkTable2, this.f51628m);
                                                }
                                            } else if (com.join.android.app.common.utils.h.t(this.f51628m, eMUApkTable2, false, new String[0])) {
                                                UtilsMy.Z1(eMUApkTable2, this.f51628m);
                                            }
                                        }
                                        i6 = 1;
                                    }
                                }
                                com.papa.sim.statistic.p.l(getApplicationContext()).w2(true, JsonMapper.getInstance().toJson(n1.p.o().d()));
                            }
                        } catch (Exception unused4) {
                            resultMainBean = r12;
                            I = false;
                            if (resultMainBean == null && (i4 = this.f51638w) > 0) {
                                this.f51638w = i4 - 1;
                                Thread.sleep(5000L);
                                M();
                            }
                            J();
                            S();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        resultMainBean = r12;
                        I = false;
                        if (resultMainBean == null && (i2 = this.f51638w) > 0) {
                            this.f51638w = i2 - 1;
                            Thread.sleep(5000L);
                            M();
                        }
                        throw th;
                    }
                }
                I = false;
            } catch (Exception unused5) {
                resultMainBean = null;
            } catch (Throwable th4) {
                th = th4;
                resultMainBean = null;
            }
            if (r12 == null && (i5 = this.f51638w) > 0) {
                this.f51638w = i5 - 1;
                Thread.sleep(5000L);
                M();
            }
        } else {
            I = false;
            t0.d("getEMUVersion", "nonet");
        }
        J();
        S();
    }

    void M0() {
        this.E = new l();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(this.E.f51680b);
        intentFilter.addAction(this.E.f51681c);
        intentFilter.addAction(this.E.f51682d);
        intentFilter.addAction(this.E.f51683e);
        intentFilter.addAction(this.E.f51684f);
        intentFilter.addAction(this.E.f51685g);
        intentFilter.addAction(this.E.f51686h);
        registerReceiver(this.E, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 500)
    public void O() {
        if (com.join.android.app.common.utils.f.j(this.f51628m)) {
            try {
                String uid = AccountUtil_.getInstance_(this).getUid();
                String token = AccountUtil_.getInstance_(this).getToken();
                HashMap hashMap = new HashMap();
                hashMap.put("uid", uid);
                hashMap.put("token", token);
                ResultMainBean<List<AppBean>> a4 = com.join.mgps.rpc.impl.e.b().a(hashMap);
                if (a4 == null || a4.getFlag() != 1 || a4.getMessages() == null || a4.getMessages().getData() == null) {
                    return;
                }
                U0(a4.getMessages().getData());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O0() {
        BluetoothHandleBlackListData data;
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                BluetoothHandleBlackListRequestBean bluetoothHandleBlackListRequestBean = new BluetoothHandleBlackListRequestBean();
                bluetoothHandleBlackListRequestBean.setDevice_id("");
                AccountResultMainBean<BluetoothHandleBlackListData> W = com.join.mgps.rpc.impl.a.b0().W(bluetoothHandleBlackListRequestBean.getParams());
                if (W == null || (data = W.getData()) == null || !data.is_success()) {
                    return;
                }
                v1(data.getData_info());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void P(String str) {
        List<MiniGameSdkDtoAdCfgValue> ad_list;
        if (com.join.android.app.common.utils.f.j(this)) {
            Bundle bundle = new Bundle();
            try {
                bundle.putString("fromPkg", str);
                bundle.putString("action", "getMiniGameAdConfigResult");
                List<DownloadTask> D = g1.f.G().D(str);
                String str2 = "";
                String uid = AccountUtil_.getInstance_(this).getUid();
                if (D != null) {
                    Iterator<DownloadTask> it2 = D.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        DownloadTask next = it2.next();
                        if (APKUtils.I(next)) {
                            str2 = next.getCrc_link_type_val();
                            break;
                        }
                    }
                }
                RequestModel<MiniGameSdkDtoRequestArgs> requestModel = new RequestModel<>();
                requestModel.setDefault(this);
                MiniGameSdkDtoRequestArgs miniGameSdkDtoRequestArgs = new MiniGameSdkDtoRequestArgs();
                miniGameSdkDtoRequestArgs.setGameId(str2);
                miniGameSdkDtoRequestArgs.setUid(uid);
                requestModel.setArgs(miniGameSdkDtoRequestArgs);
                ResponseModel<MiniGameSdkDtoResponseResponseData> w3 = com.join.mgps.rpc.impl.h.L().w(requestModel);
                if (w3 != null) {
                    if (w3.getData() != null && w3.getCode() == 200 && (ad_list = w3.getData().getAd_list()) != null && ad_list.size() > 0) {
                        ArrayList arrayList = new ArrayList();
                        for (int i2 = 0; i2 < ad_list.size(); i2++) {
                            MiniGameSdkDtoAdCfgValue miniGameSdkDtoAdCfgValue = ad_list.get(i2);
                            l2.b bVar = new l2.b();
                            bVar.b(miniGameSdkDtoAdCfgValue.getSdk_app_id());
                            int i4 = -1;
                            if (miniGameSdkDtoAdCfgValue.getSdk_type() == 1) {
                                i4 = AdChannel.Type.TT.val;
                            } else if (miniGameSdkDtoAdCfgValue.getSdk_type() == 2) {
                                i4 = AdChannel.Type.GDT.val;
                            }
                            bVar.c(i4);
                            arrayList.add(bVar);
                        }
                        AdService.b(this, arrayList);
                    }
                    bundle.putString("data", JsonMapper.toJsonString(w3));
                    H0(bundle);
                    return;
                }
                H0(bundle);
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                H0(bundle);
                return;
            }
        }
        f1(getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 5000)
    public void Q() {
        String w3;
        String v3;
        Iterator<ShowViewDataBean> it2;
        String w4;
        String v4;
        String v5;
        String w5;
        String w6;
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                RequestBeanUtil.getInstance(this).getShowViewDatas();
                RequestModel<RequestGameIdArgs> requestModel = new RequestModel<>();
                requestModel.setDefault(this.f51628m);
                ResponseModel<FirstScreenAdDtoData> body = com.join.mgps.rpc.impl.h.L().J().Z(requestModel).execute().body();
                if (body != null && body.getFlag() == 1) {
                    List<ShowViewDataBean> wf_ad_list = body.getData().getWf_ad_list();
                    if (body.getData().getTh_ad_switch() != null) {
                        if (body.getData().getTh_ad_switch().getFx_ad_switch() == 1) {
                            this.f51617b.firstNewSplashV2().g(Boolean.FALSE);
                        }
                        this.f51617b.thAdSwitchCfg().g(JsonMapper.toJsonString(body.getData().getTh_ad_switch()));
                    } else {
                        this.f51617b.thAdSwitchCfg().g("");
                    }
                    if (wf_ad_list.size() > 0) {
                        List<ShowViewDataBeanTable> d4 = n1.i0.n().d();
                        ArrayList<ShowViewDataBean> arrayList = new ArrayList();
                        for (ShowViewDataBeanTable showViewDataBeanTable : d4) {
                            arrayList.add(showViewDataBeanTable.getShowVieDatabean());
                        }
                        File file = new File(this.f51630o);
                        Iterator<ShowViewDataBean> it3 = wf_ad_list.iterator();
                        while (it3.hasNext()) {
                            ShowViewDataBean next = it3.next();
                            for (ShowViewDataBean showViewDataBean : arrayList) {
                                if (next.getStrategy_id().equals(showViewDataBean.getStrategy_id())) {
                                    boolean z3 = false;
                                    showViewDataBean.setNeedDelt(false);
                                    next.setNeedDelt(false);
                                    if (showViewDataBean.getUp_times().equals(next.getUp_times()) && file.exists()) {
                                        for (SplashIntentBean splashIntentBean : showViewDataBean.getJump_info()) {
                                            if (d2.h(splashIntentBean.getPic_remote_local()) || !new File(splashIntentBean.getPic_remote_local()).exists()) {
                                                for (SplashIntentBean splashIntentBean2 : next.getJump_info()) {
                                                    StringBuilder sb = new StringBuilder();
                                                    Iterator<ShowViewDataBean> it4 = it3;
                                                    sb.append(splashIntentBean2.getCrc_link_type_val());
                                                    sb.append("");
                                                    if (sb.toString().equals(splashIntentBean.getCrc_link_type_val())) {
                                                        if (!d2.h(splashIntentBean2.getVedio_url()) && (w5 = w(splashIntentBean2.getVedio_url())) != null) {
                                                            splashIntentBean.setVedio_url(w5);
                                                            z3 = true;
                                                        }
                                                        if (!d2.h(splashIntentBean2.getPic_remote()) && (v5 = v(splashIntentBean2.getPic_remote())) != null) {
                                                            splashIntentBean.setPic_remote_local(v5);
                                                            z3 = true;
                                                        }
                                                    }
                                                    it3 = it4;
                                                }
                                            }
                                            Iterator<ShowViewDataBean> it5 = it3;
                                            if (d2.h(splashIntentBean.getVedio_url_local()) || !new File(splashIntentBean.getVedio_url_local()).exists()) {
                                                for (SplashIntentBean splashIntentBean3 : next.getJump_info()) {
                                                    if ((splashIntentBean3.getCrc_link_type_val() + "").equals(splashIntentBean.getCrc_link_type_val()) && !d2.h(splashIntentBean3.getVedio_url()) && (w6 = w(splashIntentBean3.getVedio_url())) != null) {
                                                        splashIntentBean.setVedio_url_local(w6);
                                                        z3 = true;
                                                    }
                                                }
                                            }
                                            it3 = it5;
                                        }
                                        it2 = it3;
                                        if (z3) {
                                            n1.i0.n().m(showViewDataBean.getShowVieDatabeanTable());
                                            if (this.f51617b.lastClickPageAD().d().equals(showViewDataBean.getId() + "")) {
                                                this.f51617b.lastClickPageAD().g("0");
                                            }
                                        }
                                    }
                                    it2 = it3;
                                    next.setId(showViewDataBean.getId());
                                    for (SplashIntentBean splashIntentBean4 : next.getJump_info()) {
                                        if (!TextUtils.isEmpty(splashIntentBean4.getPic_remote()) && (v4 = v(splashIntentBean4.getPic_remote())) != null) {
                                            splashIntentBean4.setPic_remote_local(v4);
                                        }
                                        if (!TextUtils.isEmpty(splashIntentBean4.getVedio_url()) && (w4 = w(splashIntentBean4.getVedio_url())) != null) {
                                            splashIntentBean4.setVedio_url_local(w4);
                                        }
                                    }
                                    n1.i0.n().m(next.getShowVieDatabeanTable());
                                    if (this.f51617b.lastClickPageAD().d().equals(showViewDataBean.getId() + "")) {
                                        this.f51617b.lastClickPageAD().g("0");
                                    }
                                } else {
                                    it2 = it3;
                                }
                                it3 = it2;
                            }
                        }
                        for (ShowViewDataBean showViewDataBean2 : wf_ad_list) {
                            if (showViewDataBean2.isNeedDelt() || !file.exists()) {
                                for (SplashIntentBean splashIntentBean5 : showViewDataBean2.getJump_info()) {
                                    if (!TextUtils.isEmpty(splashIntentBean5.getPic_remote()) && (v3 = v(splashIntentBean5.getPic_remote())) != null) {
                                        splashIntentBean5.setPic_remote_local(v3);
                                    }
                                    if (!TextUtils.isEmpty(splashIntentBean5.getVedio_url()) && (w3 = w(splashIntentBean5.getVedio_url())) != null) {
                                        splashIntentBean5.setVedio_url_local(w3);
                                    }
                                }
                                n1.i0.n().m(showViewDataBean2.getShowVieDatabeanTable());
                            }
                        }
                        for (ShowViewDataBean showViewDataBean3 : arrayList) {
                            if (showViewDataBean3.isNeedDelt()) {
                                for (SplashIntentBean splashIntentBean6 : showViewDataBean3.getJump_info()) {
                                    if (!TextUtils.isEmpty(splashIntentBean6.getPic_remote())) {
                                        UtilsMy.delete(new File(splashIntentBean6.getPic_remote()));
                                    }
                                    if (!TextUtils.isEmpty(splashIntentBean6.getVedio_url())) {
                                        UtilsMy.delete(new File(splashIntentBean6.getVedio_url()));
                                    }
                                }
                                n1.i0.n().delete((n1.i0) showViewDataBean3.getShowVieDatabeanTable());
                            }
                        }
                        this.f51617b.firstNewSplashV2().g(Boolean.FALSE);
                        this.f51617b.isShowSplash().g(Boolean.valueOf(Z()));
                        return;
                    }
                    this.f51617b.isShowSplash().g(Boolean.FALSE);
                    return;
                }
                this.f51617b.isShowSplash().g(Boolean.FALSE);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.adInfo"})
    public void Q0(@Receiver.Extra String str) {
        this.f51617b.hasShowAdInfo().g(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        if (com.join.android.app.common.utils.f.j(this.f51628m)) {
            try {
                CommentResponse<CommentTokenBean> c4 = com.join.mgps.rpc.impl.d.m().c(RequestBeanUtil.getInstance(this).getTokenRequestBean(AccountUtil_.getInstance_(this).getUid(), ""));
                if (c4 == null || c4.getCode() != 0 || c4.getData_info() == null || TextUtils.isEmpty(c4.getData_info().getToken())) {
                    return;
                }
                String f4 = AESUtils.f(c4.getData_info().getToken() + "|" + c4.getData_info().getTimes());
                StringBuilder sb = new StringBuilder();
                sb.append("token=");
                sb.append(f4);
                u0.e("getToken", sb.toString());
                this.f51617b.commentToken().g(f4);
                this.f51617b.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S() {
        Context context;
        Intent intent;
        try {
            if (com.join.android.app.common.utils.f.j(this.f51628m)) {
                try {
                    AccountBean accountData = AccountUtil_.getInstance_(this.f51628m).getAccountData();
                    if (accountData == null) {
                        accountData = new AccountBean();
                    }
                    RequestModel requestModel = new RequestModel();
                    VideoAdCfgRequestArgs videoAdCfgRequestArgs = new VideoAdCfgRequestArgs();
                    videoAdCfgRequestArgs.setUid(accountData.getUid());
                    videoAdCfgRequestArgs.setToken(accountData.getToken());
                    requestModel.setArgs(videoAdCfgRequestArgs);
                    requestModel.setDefault(this.f51628m);
                    ResponseModel<VideoAdCfgBean> q3 = com.join.mgps.rpc.impl.h.L().q(requestModel.makeSign());
                    if (q3 != null && q3.getCode() == 200) {
                        VideoAdCfgBean data = q3.getData();
                        this.f51617b.arcadeGameAdCfg().g(BaseBean.toJsonStringOrEmpty(data.getArcade_game_ad_cfg()));
                        this.f51617b.singleGameAdCfg().g(BaseBean.toJsonStringOrEmpty(data.getSingle_game_ad_cfg()));
                        this.f51617b.pspGameAdCfg().g(BaseBean.toJsonStringOrEmpty(data.getPsp_game_ad_cfg()));
                        this.f51617b.pspAdShowTimeSwitch().g(Integer.valueOf(data.getPsp_game_ad_cfg().getSwitch_state()));
                        this.f51617b.pspAdShowTime().g(Integer.valueOf(data.getPsp_game_ad_cfg().getCount_down()));
                        this.f51617b.downloadSpeedupCfg().g(BaseBean.toJsonStringOrEmpty(data.getDownload_speedup_cfg()));
                        this.f51617b.mod_normal_ad_cfg().g(BaseBean.toJsonStringOrEmpty(data.getMod_normal_ad_cfg()));
                        this.f51617b.mod_enhance_ad_cfg().g(BaseBean.toJsonStringOrEmpty(data.getMod_enhance_ad_cfg()));
                        this.f51617b.simulator_path_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_path_cfg()));
                        this.f51617b.simulator_fc_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_fc_cfg()));
                        this.f51617b.simulator_gba_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_gba_cfg()));
                        this.f51617b.simulator_psp_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_psp_cfg()));
                        this.f51617b.simulator_jj_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_jj_cfg()));
                        this.f51617b.simulator_gold_finger_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_gold_finger_cfg()));
                        if (data.getDownload_speedup_cfg() != null) {
                            if (data.getDownload_speedup_cfg().getSwitch_state() == 1) {
                                this.f51617b.downloadSpeedUpCountAD().g(Integer.valueOf(data.getDownload_speedup_cfg().getSpeedup_times()));
                            } else {
                                this.f51617b.downloadSpeedUpCountAD().g(0);
                            }
                        } else {
                            this.f51617b.downloadSpeedUpCountAD().g(0);
                        }
                    } else if (q3 != null) {
                        e1(q3.getMessage());
                    }
                    context = this.f51628m;
                    intent = new Intent(f1.a.f65501s0);
                } catch (Exception e4) {
                    e4.printStackTrace();
                    e1(this.f51628m.getResources().getString(R.string.request_failure));
                    context = this.f51628m;
                    intent = new Intent(f1.a.f65501s0);
                }
                context.sendBroadcast(intent);
                return;
            }
            e1(this.f51628m.getResources().getString(R.string.net_connect_failed));
        } catch (Throwable th) {
            this.f51628m.sendBroadcast(new Intent(f1.a.f65501s0));
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void T() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ForumBannerBean.ForumBannerResponseBean Z = com.join.mgps.rpc.impl.c.P1().Z(i0.V(this, 1));
                if (Z != null && Z.getFlag().equals("1") && Z.getMessages() != null && Z.getMessages().getData() != null) {
                    R0(Z.getMessages().getData());
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ForumResponse<ForumData.ForumForumWelcomeData> i02 = com.join.mgps.rpc.impl.f.A0().i0("");
                ForumData.ForumForumWelcomeData data = i02 != null ? i02.getData() : null;
                if (data != null) {
                    S0(data);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U0(List<AppBean> list) {
        e0.o().a();
        if (list != null) {
            g1.e.d(getApplicationContext());
            for (AppBean appBean : list) {
                e0.o().m(new PurchasedListTable(appBean));
            }
        }
        UtilsMy.e2(this);
        s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void V(int i2) {
        ForumResponse<ForumData.ForumForumWelcomePostsData> t02;
        ForumData.ForumForumWelcomePostsData data;
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean T = i0.T(this);
                if (i0.Y0(this)) {
                    t02 = com.join.mgps.rpc.impl.f.A0().V(i2, i0.f27592d, T.getUid(), T.getToken(), "");
                } else {
                    t02 = com.join.mgps.rpc.impl.f.A0().t0(i2, i0.f27592d, "");
                }
                if (t02 == null || (data = t02.getData()) == null) {
                    return;
                }
                T0(data);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007c A[Catch: Exception -> 0x0091, TRY_LEAVE, TryCatch #0 {Exception -> 0x0091, blocks: (B:2:0x0000, B:4:0x0006, B:6:0x000c, B:9:0x0014, B:10:0x0022, B:12:0x0028, B:14:0x0038, B:15:0x003c, B:18:0x0043, B:32:0x007c, B:21:0x0052, B:24:0x005f, B:27:0x006c), top: B:38:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void V0(java.lang.String r5, java.lang.String r6, java.lang.String r7) {
        /*
            r4 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L91
            if (r0 != 0) goto L90
            boolean r0 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> L91
            if (r0 != 0) goto L90
            boolean r0 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Exception -> L91
            if (r0 == 0) goto L14
            goto L90
        L14:
            java.lang.String r0 = ""
            g1.f r1 = g1.f.G()     // Catch: java.lang.Exception -> L91
            java.util.List r1 = r1.D(r5)     // Catch: java.lang.Exception -> L91
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Exception -> L91
        L22:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Exception -> L91
            if (r2 == 0) goto L3c
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Exception -> L91
            com.github.snowdream.android.app.downloader.DownloadTask r2 = (com.github.snowdream.android.app.downloader.DownloadTask) r2     // Catch: java.lang.Exception -> L91
            java.lang.String r3 = r2.getPackageName()     // Catch: java.lang.Exception -> L91
            boolean r3 = r3.equals(r5)     // Catch: java.lang.Exception -> L91
            if (r3 == 0) goto L22
            java.lang.String r0 = r2.getCrc_link_type_val()     // Catch: java.lang.Exception -> L91
        L3c:
            boolean r5 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L91
            if (r5 == 0) goto L43
            return
        L43:
            r5 = 0
            com.papa.sim.statistic.Event r1 = com.papa.sim.statistic.Event.smallGameStartSDK     // Catch: java.lang.Exception -> L91
            java.lang.String r2 = r1.name()     // Catch: java.lang.Exception -> L91
            boolean r2 = r6.equals(r2)     // Catch: java.lang.Exception -> L91
            if (r2 == 0) goto L52
        L50:
            r5 = r1
            goto L79
        L52:
            com.papa.sim.statistic.Event r1 = com.papa.sim.statistic.Event.smallRequestAdSDK     // Catch: java.lang.Exception -> L91
            java.lang.String r2 = r1.name()     // Catch: java.lang.Exception -> L91
            boolean r2 = r6.equals(r2)     // Catch: java.lang.Exception -> L91
            if (r2 == 0) goto L5f
            goto L50
        L5f:
            com.papa.sim.statistic.Event r1 = com.papa.sim.statistic.Event.smallExpAdSDK     // Catch: java.lang.Exception -> L91
            java.lang.String r2 = r1.name()     // Catch: java.lang.Exception -> L91
            boolean r2 = r6.equals(r2)     // Catch: java.lang.Exception -> L91
            if (r2 == 0) goto L6c
            goto L50
        L6c:
            com.papa.sim.statistic.Event r1 = com.papa.sim.statistic.Event.smallVideoDoneAdSDK     // Catch: java.lang.Exception -> L91
            java.lang.String r2 = r1.name()     // Catch: java.lang.Exception -> L91
            boolean r6 = r6.equals(r2)     // Catch: java.lang.Exception -> L91
            if (r6 == 0) goto L79
            goto L50
        L79:
            if (r5 != 0) goto L7c
            return
        L7c:
            android.content.Context r6 = r4.f51628m     // Catch: java.lang.Exception -> L91
            com.join.mgps.Util.AccountUtil_ r6 = com.join.mgps.Util.AccountUtil_.getInstance_(r6)     // Catch: java.lang.Exception -> L91
            java.lang.String r6 = r6.getUid()     // Catch: java.lang.Exception -> L91
            android.content.Context r1 = r4.f51628m     // Catch: java.lang.Exception -> L91
            com.papa.sim.statistic.p r1 = com.papa.sim.statistic.p.l(r1)     // Catch: java.lang.Exception -> L91
            r1.q(r5, r0, r7, r6)     // Catch: java.lang.Exception -> L91
            goto L95
        L90:
            return
        L91:
            r5 = move-exception
            r5.printStackTrace()
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.service.CommonService.V0(java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65496q})
    public void W() {
        i2.a(getApplicationContext()).b("存储空间不足，请清理空间后再下载");
    }

    void Y0() {
        try {
            this.f51619d.putExtra("type", "1");
            this.f51619d.putExtra("msg", "登录成功");
            sendBroadcast(this.f51619d);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Z0(SharePostRequest sharePostRequest) {
        try {
            ForumResponse<ForumData.ForumResult> f4 = com.join.mgps.rpc.impl.f.A0().f(sharePostRequest.getParams());
            if (f4 != null) {
                t0.d("shareResult ", f4.getError() + "  " + f4.getError_message());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            t0.d("shareResult ", "请求报错");
        }
    }

    void a1() {
        if (this.f51636u != null) {
            this.f51636u.w(null, new f());
            this.f51636u.v(new g());
        }
    }

    boolean b1(ShowViewDataBean showViewDataBean) {
        t0.c("setImageback time =" + System.currentTimeMillis());
        try {
            if (showViewDataBean.getIs_force().equals("1")) {
                showViewDataBean.getJump_info().get(0).getPic_remote();
                return !this.f51617b.lastClickPageAD().d().equals(showViewDataBean.getId() + "");
            }
            for (SplashIntentBean splashIntentBean : showViewDataBean.getJump_info()) {
                if (splashIntentBean.getTag_show() != 2) {
                    return true;
                }
            }
            return false;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void c() {
        boolean r02;
        boolean r03;
        ArrayList arrayList = new ArrayList();
        List<DownloadTask> v3 = g1.f.G().v();
        List<DownloadTask> J2 = g1.f.G().J(false);
        if (J2 != null && J2.size() > 0) {
            Iterator<DownloadTask> it2 = J2.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                EMUApkTable X = UtilsMy.X(next.getPackageName());
                if (X != null && X.getDown_type() == 2) {
                    r03 = com.join.android.app.common.utils.h.y(X, false);
                } else {
                    r03 = UtilsMy.r0(this, X);
                }
                if (!com.join.android.app.common.utils.h.t(this, X, false, next.getPackageName())) {
                    next.setStatus(5);
                } else if (r03) {
                    if (UtilsMy.t0(X.getVer().split("_")[0], next.getVer())) {
                        if (d2.h(next.getMod_info())) {
                            next.setStatus(9);
                            it2.remove();
                        }
                    } else if (next.getGameZipPath() != null && !next.getGameZipPath().equals("")) {
                        if (next.getStatus() == 5 && new File(next.getGameZipPath()).exists()) {
                            next.setStatus(5);
                        } else if (d2.h(next.getMod_info())) {
                            next.setStatus(9);
                            it2.remove();
                        }
                    } else if (d2.h(next.getMod_info())) {
                        next.setStatus(9);
                        it2.remove();
                    }
                } else {
                    next.setStatus(5);
                    it2.remove();
                }
            }
        }
        if (v3 != null) {
            arrayList.addAll(v3);
        }
        if (J2 != null) {
            arrayList.addAll(J2);
        }
        if (arrayList.size() > 0) {
            UtilsMy.S2(this, ((DownloadTask) arrayList.get(0)).getShowName(), arrayList.size(), 11);
            return;
        }
        List<DownloadTask> J3 = g1.f.G().J(true);
        ArrayList arrayList2 = new ArrayList();
        if (J3 != null && J3.size() > 0) {
            for (DownloadTask downloadTask : J3) {
                if (downloadTask.getStatus() == 9) {
                    arrayList2.addAll(J3);
                }
            }
        }
        List<DownloadTask> p3 = g1.f.G().p();
        if (p3 == null || p3.size() <= 0) {
            return;
        }
        Iterator<DownloadTask> it3 = p3.iterator();
        while (it3.hasNext()) {
            DownloadTask next2 = it3.next();
            if (next2.getFileType().equals(Dtype.chajian.name())) {
                EMUApkTable X2 = UtilsMy.X(next2.getPackageName());
                int status = next2.getStatus();
                if (X2 != null && X2.getDown_type() == 2) {
                    r02 = com.join.android.app.common.utils.h.y(X2, false);
                } else {
                    r02 = UtilsMy.r0(this, X2);
                }
                if (!com.join.android.app.common.utils.h.t(this, X2, false, next2.getPackageName())) {
                    next2.setStatus(5);
                } else if (r02) {
                    if (UtilsMy.t0(X2.getVer().split("_")[0], next2.getVer())) {
                        if (d2.h(next2.getMod_info())) {
                            next2.setStatus(9);
                            arrayList2.add(next2);
                            it3.remove();
                        }
                    } else if (next2.getGameZipPath() != null && !next2.getGameZipPath().equals("")) {
                        if (next2.getStatus() == 5 && new File(next2.getGameZipPath()).exists()) {
                            next2.setStatus(5);
                        } else if (d2.h(next2.getMod_info())) {
                            next2.setStatus(9);
                            arrayList2.add(next2);
                            it3.remove();
                        }
                    } else if (d2.h(next2.getMod_info())) {
                        next2.setStatus(9);
                        arrayList2.add(next2);
                        it3.remove();
                    }
                } else {
                    next2.setStatus(5);
                    it3.remove();
                }
                if (status != next2.getStatus()) {
                    UtilsMy.g2(next2, next2.getStatus());
                }
            } else if (next2.getFileType().equals(Dtype.android.name()) && next2.getStatus() == 9 && d2.h(next2.getMod_info())) {
                arrayList2.add(next2);
            }
        }
        if (arrayList2.size() > 0) {
            UtilsMy.S2(this, ((DownloadTask) arrayList2.get(0)).getShowName(), arrayList2.size(), 9);
        }
    }

    boolean c1() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d() {
        JSONArray jSONArray;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("MG=>LOGIN1--");
            sb.append(MApplication.f9220o0);
            sb.append("");
            AccountBean accountData = AccountUtil_.getInstance_(this.f51628m).getAccountData();
            int uid = accountData.getUid();
            String token = accountData.getToken();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(com.join.mgps.rpc.g.f51536o + "/im/account/login?uid=" + uid + "&nickname=" + URLEncoder.encode(accountData.getNickname()) + "&battleRoomId=" + MApplication.f9220o0 + "&token=" + token).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.connect();
            if (200 == httpURLConnection.getResponseCode()) {
                JSONObject optJSONObject = new JSONObject(new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "utf-8")).readLine()).optJSONObject("data");
                optJSONObject.optString("uid");
                optJSONObject.optString("token");
                String str = "";
                for (int i2 = 0; i2 < new JSONArray(optJSONObject.optString("quickMessages")).length(); i2++) {
                    str = str + jSONArray.getString(i2) + "|";
                }
                if (!str.equals("")) {
                    this.f51619d.putExtra("type", "12");
                    this.f51619d.putExtra("msg", str);
                    sendBroadcast(this.f51619d);
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("弹幕");
                sb2.append(str);
                this.D = optJSONObject.optString("chatRoomId");
                if (com.wufan.friend.chat.c.u().F()) {
                    Y0();
                    return;
                } else {
                    com.wufan.friend.chat.c.u().K();
                    return;
                }
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("MG=>LOGIN200!");
            sb3.append(httpURLConnection.getResponseCode());
        } catch (Exception e4) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("-->");
            sb4.append(e4.toString());
            J = false;
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65488m})
    public void d0() {
        this.f51617b.apName().d().intValue();
        String apSSID = WifiUtils.getInstance(this).getApSSID();
        if (d2.i(apSSID) && apSSID.startsWith(com.join.mgps.data.c.f47301p)) {
            WifiUtils.getInstance(this).createWiFiAP(WifiUtils.getInstance(this).createAPInfo(apSSID, com.join.mgps.data.c.f47302q), false);
        }
        try {
            if (this.f51617b.isWifiConnectedBefore().d().booleanValue()) {
                WifiUtils.getInstance(this).OpenWifi();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d1(String str, String str2, QueryDownloadInfoResponseData queryDownloadInfoResponseData, DownloadTask downloadTask, boolean z3) {
        boolean z4;
        boolean z5;
        DownloadTask downloadTask2 = downloadTask;
        boolean booleanValue = this.f51617b.noPromptDownload().d().booleanValue();
        boolean z6 = true;
        if (queryDownloadInfoResponseData != null) {
            if (queryDownloadInfoResponseData.isForceShow()) {
                queryDownloadInfoResponseData.setSelectedNextTips(true);
                booleanValue = false;
            }
            if (!TextUtils.isEmpty(queryDownloadInfoResponseData.getBtnStatus()) && queryDownloadInfoResponseData.getBtnStatus().equals("open")) {
                booleanValue = false;
            }
        }
        if (downloadTask2 != null) {
            z4 = downloadTask.isUncheckSelfSupport();
            z5 = downloadTask.isDisableShowSpeedUpPrompt();
        } else {
            z4 = false;
            z5 = false;
        }
        if (!booleanValue && !z4) {
            if (downloadTask2 == null) {
                downloadTask2 = new DownloadTask();
            }
            ((DownloadMethodPromptDialog_.l) ((DownloadMethodPromptDialog_.l) ((DownloadMethodPromptDialog_.l) ((DownloadMethodPromptDialog_.l) ((DownloadMethodPromptDialog_.l) DownloadMethodPromptDialog_.S0(this.f51628m).flags(805306368)).g(str).extra("data", queryDownloadInfoResponseData)).extra(DownloadMethodPromptDialog_.A, str2)).extra(DownloadMethodPromptDialog_.D, z5)).extra(DownloadMethodPromptDialog_.C, z3)).a(downloadTask2.get_from()).b(downloadTask2.get_from_type()).h((queryDownloadInfoResponseData == null || !queryDownloadInfoResponseData.isForceShow()) ? false : false).start();
            return;
        }
        DownloadTask B = g1.f.G().B(str);
        L(str, downloadTask.getShowName(), z3);
        if (queryDownloadInfoResponseData != null && B != null && (B.getStatus() == 9 || B.getStatus() == 9)) {
            if (TextUtils.isEmpty(B.getCrc_link_type_val())) {
                return;
            }
            com.php25.PDownload.d.b(B);
            B.setVer(queryDownloadInfoResponseData.getVer());
            B.setVer_name(queryDownloadInfoResponseData.getVer_name());
            B.setUrl(queryDownloadInfoResponseData.getDownloadURL());
            B.setResource_url_remote(queryDownloadInfoResponseData.getResourceURL());
            B.setActual_size(queryDownloadInfoResponseData.getActualSize());
            B.setRes_actual_size(queryDownloadInfoResponseData.getResourceSize());
            B.setExt(str2);
            B.setFromRecomDown(z3);
            com.php25.PDownload.d.c(B, this);
        } else if (B == null && queryDownloadInfoResponseData != null) {
            downloadTask2.setVer(queryDownloadInfoResponseData.getVer());
            downloadTask2.setVer_name(queryDownloadInfoResponseData.getVer_name());
            downloadTask2.setUrl(queryDownloadInfoResponseData.getDownloadURL());
            downloadTask2.setResource_url_remote(queryDownloadInfoResponseData.getResourceURL());
            downloadTask2.setActual_size(queryDownloadInfoResponseData.getActualSize());
            downloadTask2.setRes_actual_size(queryDownloadInfoResponseData.getResourceSize());
            downloadTask2.setExt(str2);
            downloadTask.setFromRecomDown(z3);
            com.php25.PDownload.d.c(downloadTask2, this);
        } else {
            K(str, str2, true, queryDownloadInfoResponseData != null ? queryDownloadInfoResponseData.getResourceSize() : 0L, queryDownloadInfoResponseData, z5, downloadTask.get_from(), downloadTask.get_from_type(), true);
        }
    }

    public void e(String str) {
        this.f51619d.putExtra("type", "4");
        Intent intent = this.f51619d;
        intent.putExtra("msg", str + "");
        sendBroadcast(this.f51619d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.T})
    public void e0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra String str3, @Receiver.Extra String str4) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).w1(str2, str3, str4);
    }

    void e1(final String str) {
        this.f51632q.post(new Runnable() { // from class: com.join.mgps.service.a
            @Override // java.lang.Runnable
            public final void run() {
                CommonService.this.c0(str);
            }
        });
    }

    void f() {
        if (this.f51626k == null) {
            IntentFilter intentFilter = new IntentFilter();
            this.f51621f = intentFilter;
            intentFilter.addAction("com.join.android.app.mgsim.wufun.loginNim");
            o oVar = new o();
            this.f51626k = oVar;
            registerReceiver(oVar, this.f51621f);
        }
        if (this.f51627l == null) {
            IntentFilter intentFilter2 = new IntentFilter();
            this.f51625j = intentFilter2;
            intentFilter2.addAction("com.join.android.app.mgsim.wufun.SendTextMsg");
            p pVar = new p();
            this.f51627l = pVar;
            registerReceiver(pVar, this.f51625j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f1(String str) {
        i2.a(this.f51628m).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1(CollectionBeanSub collectionBeanSub, boolean z3) {
        h1(collectionBeanSub, z3, false, "", false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    @Receiver(actions = {"android.net.wifi.WIFI_STATE_CHANGED", "android.net.wifi.STATE_CHANGE", "android.net.conn.CONNECTIVITY_CHANGE", "android.net.wifi.SCAN_RESULTS"})
    public void h0(Intent intent) {
        String action = intent.getAction();
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action) || action.equals("android.net.wifi.STATE_CHANGE") || action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            boolean j4 = com.join.android.app.common.utils.f.j(this.f51628m);
            StringBuilder sb = new StringBuilder();
            sb.append("网络状态：");
            sb.append(j4);
            if (com.join.android.app.common.utils.f.k(this.f51628m)) {
                if (!this.f51617b.isFightActivity().d().booleanValue()) {
                    this.f51617b.isWifiConnectedBefore().g(Boolean.TRUE);
                }
                this.f51637v = true;
            } else {
                if (!this.f51617b.isFightActivity().d().booleanValue()) {
                    this.f51617b.isWifiConnectedBefore().g(Boolean.FALSE);
                }
                this.f51637v = false;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("wifi状态：");
            sb2.append(com.join.android.app.common.utils.f.k(this.f51628m));
            StringBuilder sb3 = new StringBuilder();
            sb3.append("移动网络状态：");
            sb3.append(com.join.android.app.common.utils.f.i(this.f51628m));
            StringBuilder sb4 = new StringBuilder();
            sb4.append("网络连接类型：");
            sb4.append(com.join.android.app.common.utils.f.c(this.f51628m));
            t0.d("getEMUVersion", "net connect");
            if (j4 && !this.f51617b.plugHasUpdate().d().booleanValue()) {
                M();
            }
            if (j4) {
                u0.e("onConnectivityChanged");
                com.wufan.friend.chat.c.u().K();
            }
        }
        if (action.equals("android.net.wifi.SCAN_RESULTS")) {
            if (this.f51617b.isFightActivity().d().booleanValue()) {
                return;
            }
            this.f51617b.isWifiConnectedBefore().g(Boolean.TRUE);
        } else if (action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("android.net.wifi.WIFI_STATE_CHANGED | ");
            sb5.append(intent.getIntExtra("wifi_state", -1));
            sb5.append(" | ");
            sb5.append(intent.getIntExtra("previous_wifi_state", -1));
            if (this.f51617b.isFightActivity().d().booleanValue()) {
                return;
            }
            if (intent.getIntExtra("wifi_state", -1) == 0 || intent.getIntExtra("wifi_state", -1) == 1) {
                this.f51617b.isWifiConnectedBefore().g(Boolean.FALSE);
            }
        } else if (!action.equals("android.net.wifi.STATE_CHANGE") || this.f51617b.isFightActivity().d().booleanValue()) {
        } else {
            this.f51617b.isWifiConnectedBefore().g(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h1(CollectionBeanSub collectionBeanSub, boolean z3, boolean z4, String str, boolean z5, boolean z6) {
        int i2;
        if (collectionBeanSub == null) {
            return;
        }
        try {
            DownloadTask downloadtaskDown = collectionBeanSub.getDownloadtaskDown();
            if (downloadtaskDown != null) {
                downloadtaskDown.setDisableShowSpeedUpPrompt(z5);
                downloadtaskDown.setUncheckSelfSupport(z4);
                downloadtaskDown.setRes_actual_size(collectionBeanSub.getResourceSize());
                downloadtaskDown.setExt(str);
                downloadtaskDown.setFromRecomDown(z6);
                if (z3) {
                    if (UtilsMy.o0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id()) > 0) {
                        AccountBean accountData = AccountUtil_.getInstance_(this.f51628m).getAccountData();
                        if (accountData != null && accountData.getAccount_type() != 2) {
                            UtilsMy.m3(this.f51628m, downloadtaskDown.getCrc_link_type_val());
                            return;
                        }
                        IntentUtil.getInstance().goMyAccountLoginActivityNewTask(this.f51628m);
                    } else if (UtilsMy.n0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
                        UtilsMy.m3(this.f51628m, downloadtaskDown.getCrc_link_type_val());
                    } else {
                        UtilsMy.c1(downloadtaskDown, collectionBeanSub);
                        UtilsMy.G0(this.f51628m, downloadtaskDown, collectionBeanSub.getTp_down_url(), collectionBeanSub.getOther_down_switch(), collectionBeanSub.getCdn_down_switch());
                    }
                } else if (UtilsMy.T0(this.f51628m, downloadtaskDown)) {
                } else {
                    if (collectionBeanSub.getDown_status() == 5) {
                        if (downloadtaskDown.getMax_an_compatible_ver() > 0 && (((i2 = Build.VERSION.SDK_INT) < downloadtaskDown.getMin_an_compatible_ver() || i2 > downloadtaskDown.getMax_an_compatible_ver()) && d2.h(downloadtaskDown.getMod_info()))) {
                            this.f51634s = downloadtaskDown;
                            Intent intent = new Intent(f1.a.f65491n0);
                            intent.putExtra("gameid", this.f51634s.getCrc_link_type_val());
                            sendBroadcast(intent);
                            return;
                        }
                        UtilsMy.R0(this.f51628m, downloadtaskDown);
                        return;
                    }
                    com.php25.PDownload.d.c(downloadtaskDown, this.f51628m);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void i0(int i2, List<ControllerManager.c> list) {
        j0(i2, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i1(String str, int i2) {
        com.join.mgps.Util.r.j(this.f51628m, str, i2);
    }

    public void j0(int i2, List<ControllerManager.c> list) {
        if ((list != null ? list.size() : 0) <= 0) {
            return;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            ControllerManager.c cVar = list.get(i4);
            if (!X(cVar.a())) {
                P0(cVar);
                X0(cVar);
            }
        }
    }

    void j1() {
        try {
            if (this.f51636u == null) {
                this.f51636u = com.papa.controller.core.d.r(this);
                a1();
            }
            com.papa.controller.core.d dVar = this.f51636u;
            if (dVar != null) {
                dVar.x(true);
                this.f51636u.B();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.I0})
    public void k0(@Receiver.Extra String str, @Receiver.Extra SpValue spValue) {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences("PrefDef", 4);
            if (spValue != null) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                if (edit != null) {
                    if (spValue.getValue() instanceof Boolean) {
                        edit.putBoolean(str, ((Boolean) spValue.getValue()).booleanValue());
                    } else if (spValue.getValue() instanceof Integer) {
                        edit.putInt(str, ((Integer) spValue.getValue()).intValue());
                    } else if (spValue.getValue() instanceof String) {
                        edit.putString(str, (String) spValue.getValue());
                    } else if (spValue.getValue() instanceof Float) {
                        edit.putFloat(str, ((Float) spValue.getValue()).floatValue());
                    } else if (spValue.getValue() instanceof Long) {
                        edit.putLong(str, ((Long) spValue.getValue()).longValue());
                    }
                }
                edit.commit();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k1(String str, PayOrderInfo payOrderInfo, AccountBean accountBean, boolean z3, String str2) {
        PapayOrder papayOrder = new PapayOrder();
        papayOrder.PA_OPEN_UID = accountBean.getUid();
        papayOrder.APP_ORDER_ID = "";
        papayOrder.APP_NAME = payOrderInfo.getGame_name();
        papayOrder.PRODUCT_ID = str;
        papayOrder.APPKEY = payOrderInfo.getGame_app_key();
        try {
            papayOrder.MONEY_AMOUNT = (Float.parseFloat(payOrderInfo.getPay_game_amount()) / 100.0f) + "";
        } catch (NumberFormatException e4) {
            e4.printStackTrace();
        }
        papayOrder.PAYSHOWTYPE = payOrderInfo.getPay_show_type();
        papayOrder.PAYTYPE = payOrderInfo.getPay_type();
        papayOrder.PRODUCT_NAME = payOrderInfo.getGame_name();
        if (z3) {
            papayOrder.ORDERTYPE = 3;
        } else {
            papayOrder.ORDERTYPE = 2;
        }
        if (z3) {
            ExtBean extBean = new ExtBean();
            extBean.setFrom("1");
            extBean.setFrom_id(str2);
            extBean.setPosition(str);
            ((PayNowActivity_.k) PayNowActivity_.j1(this.f51628m).c(papayOrder).flags(268435456)).a(extBean).start();
            return;
        }
        ((PayNowActivity_.k) PayNowActivity_.j1(this.f51628m).c(papayOrder).flags(268435456)).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F})
    public void l0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            e0.o().m(n4);
        }
        if (collectionBeanSub != null) {
            t(collectionBeanSub.getGame_id());
        }
        L0();
    }

    void l1() {
        com.papa.controller.core.d dVar = this.f51636u;
        if (dVar != null) {
            dVar.F();
        }
    }

    String m(String str) {
        try {
            String[] split = str.split("_");
            return split[0].equals(com.join.android.app.common.utils.j.n(this.f51628m).e(this.f51628m)) ? split[1] : "-1";
        } catch (Exception e4) {
            e4.printStackTrace();
            return "-1";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.H0})
    public void m0(@Receiver.Extra String str, @Receiver.Extra boolean z3) {
        getSharedPreferences("PrefDef", 4).edit().putBoolean(str, z3).commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void m1() {
        AccountBean user_info;
        if (!com.join.android.app.common.utils.f.j(this) || Y()) {
            return;
        }
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(com.join.android.app.common.utils.j.n(getApplicationContext()).z());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            touristLoginRequestBean.setTuid(this.f51617b.touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(u1.f(touristLoginRequestBean));
            AccountResultMainBean<AccountTokenSuccess> s3 = com.join.mgps.rpc.impl.a.b0().s(touristLoginRequestBean.getParams());
            if (s3 == null || s3.getError() != 0 || !s3.getData().is_success() || (user_info = s3.getData().getUser_info()) == null) {
                return;
            }
            AccountBean accountData = this.f51618c.getAccountData();
            if (accountData == null || accountData.getUid() == 0) {
                AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(user_info, getApplicationContext());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65510x})
    public void n0(Intent intent) {
    }

    void n1(String str) {
        try {
            this.f51619d.putExtra("type", "4");
            this.f51619d.putExtra("msg", str);
            sendBroadcast(this.f51619d);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void o(String str, boolean z3, String str2) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                int uid = accountData != null ? accountData.getUid() : 0;
                String string = !TextUtils.isEmpty(MApplication.f9241z) ? MApplication.f9241z : Settings.System.getString(this.f51628m.getContentResolver(), "android_id");
                RequestAppDetialArgs requestAppDetialArgs = new RequestAppDetialArgs();
                requestAppDetialArgs.setDeviceid(string);
                requestAppDetialArgs.setVersion(com.join.android.app.common.utils.j.n(this.f51628m).y() + "_" + com.join.android.app.common.utils.j.n(this.f51628m).z());
                requestAppDetialArgs.setGame_id(str);
                requestAppDetialArgs.setUid(uid);
                requestAppDetialArgs.setToken(accountData.getToken());
                com.join.mgps.rpc.m.c(requestAppDetialArgs, new d(z3, str2, str, accountData));
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                f1("获取游戏信息失败");
                return;
            }
        }
        f1("请检查网络连接");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.N})
    public void o0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra String str3, @Receiver.Extra long j4) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        List<PlayGameTimeTable> o3 = d0.n().o(str3, str2);
        if (o3 != null && o3.size() > 0) {
            PlayGameTimeTable playGameTimeTable = o3.get(0);
            long gamePlayTotalTime = playGameTimeTable.getGamePlayTotalTime();
            playGameTimeTable.setGamePlayRecentlyTime(System.currentTimeMillis() / 1000);
            playGameTimeTable.setGamePlayTotalTime(gamePlayTotalTime + j4);
            d0.n().m(playGameTimeTable);
        }
        com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(getApplicationContext());
        l4.J1(str2, j4 + "", str3, UUID.randomUUID().toString());
    }

    void o1(String str, String str2, String str3) {
        n1("{\"content\":\"" + str + "\",\"color\":6,\"titlename\":\"\",\"vipType\":-1,\"name\":\"" + str2 + "\",\"userId\":\"" + str3 + "\"}");
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f();
        com.join.android.app.common.http.h.b().c(this);
        com.wufan.friend.chat.c.u();
        u0.e("FriendPresenter srv login");
        com.wufan.friend.chat.c.u().K();
        if (!org.greenrobot.eventbus.c.f().m(this)) {
            org.greenrobot.eventbus.c.f().t(this);
        }
        M0();
        Q();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f51631p = true;
        try {
            ScheduledExecutorService scheduledExecutorService = this.f51616a;
            if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
                this.f51616a.shutdown();
            }
            l1();
            o oVar = this.f51626k;
            if (oVar != null) {
                unregisterReceiver(oVar);
            }
            p pVar = this.f51627l;
            if (pVar != null) {
                unregisterReceiver(pVar);
            }
            if (org.greenrobot.eventbus.c.f().m(this)) {
                org.greenrobot.eventbus.c.f().y(this);
            }
            p1();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        super.onDestroy();
    }

    @Subscribe
    public void onFriendEvent(w1 w1Var) {
        com.wufan.friend.chat.protocol.m r02;
        if (w1Var == null) {
            return;
        }
        try {
            if (w1Var.y() == 1 && w1Var.F() == 1) {
                if (w1Var.getData() != null && w1Var.getData().x2() != null && w1Var.getData().x2().C0()) {
                    u0.e("channel", "登录成功！");
                    com.wufan.friend.chat.c.u().T(true);
                    Y0();
                } else {
                    u0.e("channel", w1Var.getData().x2().getMessage());
                    this.f51632q.postDelayed(new Runnable() { // from class: com.join.mgps.service.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            CommonService.b0();
                        }
                    }, 5000L);
                }
            }
            if (w1Var.A1() != 6 || w1Var.getData() == null || w1Var.getData().getNotification() == null || (r02 = w1Var.getData().getNotification().r0()) == null) {
                return;
            }
            n1(r02.getMessage());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i4) {
        String str;
        boolean z3;
        this.f51628m = this;
        if (intent != null) {
            String stringExtra = intent.getStringExtra("action");
            if (!TextUtils.isEmpty(stringExtra)) {
                if (stringExtra.equals("launchVGame")) {
                    com.join.mgps.va.overmind.e.p().S(this, 0, intent.getStringExtra("packageName"));
                    return super.onStartCommand(intent, i2, i4);
                } else if (stringExtra.equals("getMiniGameConfig")) {
                    P(intent.getStringExtra("fromPkg"));
                } else if (stringExtra.equals("adStatisticEvent")) {
                    V0(intent.getStringExtra("fromPkg"), intent.getStringExtra(NotificationCompat.CATEGORY_EVENT), intent.getStringExtra("adId"));
                }
            }
        }
        if (intent != null && d2.i(intent.getStringExtra("paygameid"))) {
            o(intent.getStringExtra("paygameid"), intent.getBooleanExtra("fromSdk", false), intent.getStringExtra("appkey"));
        } else {
            DownloadTask downloadTask = null;
            if (intent != null && d2.i(intent.getStringExtra("downGameId"))) {
                boolean booleanExtra = intent.getBooleanExtra("uncheckSelfSupport", false);
                boolean booleanExtra2 = intent.getBooleanExtra(DownloadMethodPromptDialog_.D, false);
                long longExtra = intent.getLongExtra("resourceSize", 0L);
                K(intent.getStringExtra("downGameId"), intent.getStringExtra(DownloadMethodPromptDialog_.A), booleanExtra, longExtra, (intent.getSerializableExtra("data") == null || !(intent.getSerializableExtra("data") instanceof QueryDownloadInfoResponseData)) ? null : (QueryDownloadInfoResponseData) intent.getSerializableExtra("data"), booleanExtra2, intent.getIntExtra(DownloadMethodPromptDialog_.F, 0), intent.getIntExtra(DownloadMethodPromptDialog_.G, 0), intent.getBooleanExtra(DownloadMethodPromptDialog_.C, false));
            } else if (intent != null && d2.i(intent.getStringExtra("requestAndDownloadGameById"))) {
                DownloadGameArgsBean downloadGameArgsBean = (DownloadGameArgsBean) intent.getSerializableExtra("_downloadArgs");
                if (downloadGameArgsBean == null) {
                    downloadGameArgsBean = new DownloadGameArgsBean();
                    downloadGameArgsBean.setGameId(intent.getStringExtra("requestAndDownloadGameById"));
                }
                N0(downloadGameArgsBean, 0);
            } else if (intent != null && d2.i(intent.getStringExtra("requestAndUpdateGameById"))) {
                DownloadGameArgsBean downloadGameArgsBean2 = (DownloadGameArgsBean) intent.getSerializableExtra("_downloadArgs");
                if (downloadGameArgsBean2 == null) {
                    downloadGameArgsBean2 = new DownloadGameArgsBean();
                    downloadGameArgsBean2.setGameId(intent.getStringExtra("requestAndUpdateGameById"));
                }
                N0(downloadGameArgsBean2, 1);
            } else if (intent != null && d2.i(intent.getStringExtra("requestAndChoiceUpdateGameById"))) {
                DownloadGameArgsBean downloadGameArgsBean3 = (DownloadGameArgsBean) intent.getSerializableExtra("_downloadArgs");
                if (downloadGameArgsBean3 == null) {
                    downloadGameArgsBean3 = new DownloadGameArgsBean();
                    downloadGameArgsBean3.setGameId(intent.getStringExtra("requestAndChoiceUpdateGameById"));
                }
                N0(downloadGameArgsBean3, 2);
            } else if (intent != null && d2.i(intent.getStringExtra("gameDownloadDetail"))) {
                N(new n(intent.getStringExtra("gameDownloadDetail"), intent.getBooleanExtra(DownloadMethodPromptDialog_.C, false), intent.getIntExtra(DownloadMethodPromptDialog_.F, 0), intent.getIntExtra(DownloadMethodPromptDialog_.G, 0), intent.getStringExtra("keyWord"), intent.getStringExtra("recPosition"), intent.getStringExtra("remarks"), intent.getStringExtra("nodeId"), intent.getStringExtra("volcanoOther")));
            } else if (intent != null && d2.i(intent.getStringExtra("gameDownloadDetail2"))) {
                DownloadTask downloadTask2 = this.f51634s;
                if (downloadTask2 != null && downloadTask2.getCrc_link_type_val().equals(intent.getStringExtra("gameDownloadDetail2"))) {
                    if (this.f51634s.getDown_status() == 5) {
                        UtilsMy.S0(this.f51628m, this.f51634s);
                    } else {
                        Context context = this.f51628m;
                        DownloadTask downloadTask3 = this.f51634s;
                        UtilsMy.G0(context, downloadTask3, downloadTask3.getTp_down_url(), this.f51634s.getOther_down_switch(), this.f51634s.getCdn_down_switch());
                    }
                }
            } else if (intent != null && d2.i(intent.getStringExtra("downGameIdNotSelfSupport"))) {
                String stringExtra2 = intent.getStringExtra("downGameIdNotSelfSupport");
                if (intent.getSerializableExtra("downloadTask") == null || !(intent.getSerializableExtra("downloadTask") instanceof DownloadTask)) {
                    str = "";
                    z3 = false;
                } else {
                    downloadTask = (DownloadTask) intent.getSerializableExtra("downloadTask");
                    str = downloadTask.getExt();
                    z3 = downloadTask.isFromRecomDown();
                }
                x(stringExtra2, str, downloadTask, z3);
            } else if (intent != null && d2.i(intent.getStringExtra("accountloginSuccess"))) {
                H();
            } else if (intent != null && intent.getSerializableExtra("checkcoin") != null) {
                q((DownloadTask) intent.getSerializableExtra("checkcoin"));
            } else if (intent != null && intent.getSerializableExtra("sharePostData") != null) {
                Z0((SharePostRequest) intent.getSerializableExtra("sharePostData"));
            } else if (intent != null && intent.getSerializableExtra("getDownloadRecomedData") != null) {
                String str2 = (String) intent.getSerializableExtra("getDownloadRecomedData");
                if (intent.getSerializableExtra("downloadTask") != null && (intent.getSerializableExtra("downloadTask") instanceof DownloadTask)) {
                    downloadTask = (DownloadTask) intent.getSerializableExtra("downloadTask");
                }
                L(str2, downloadTask.getShowName(), downloadTask.isFromRecomDown());
            } else if (intent != null && intent.getSerializableExtra("onClickGamebeSpeakGameId") != null) {
                g0((String) intent.getSerializableExtra("onClickGamebeSpeakGameId"));
            } else {
                try {
                    if (a.C0235a.a()) {
                        a0();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                this.f51630o = u.d(this.f51628m).getAbsolutePath();
                this.f51616a.scheduleWithFixedDelay(new m(), 0L, 50L, TimeUnit.MINUTES);
                this.f51616a.scheduleWithFixedDelay(new j(this, null), 10L, 30L, TimeUnit.SECONDS);
                H();
            }
        }
        L0();
        return super.onStartCommand(intent, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0584 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x007b A[SYNTHETIC] */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void p(java.util.List<java.lang.String> r14) {
        /*
            Method dump skipped, instructions count: 1487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.service.CommonService.p(java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void p0(int i2) {
        try {
            if (i0.Y0(this)) {
                ForumRequestBean.ForumPostsPraiseRequestBean e02 = i0.e0(this, i2);
                e02.setDevice_id("");
                ForumResponse<ForumData.ForumPostsPraiseData> o3 = com.join.mgps.rpc.impl.f.A0().o(e02.getParams());
                if (o3 == null) {
                    return;
                }
                ForumData.ForumPostsPraiseData data = o3.getData();
                data.isResult();
                i0.m1(e02, data);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void p1() {
        l lVar = this.E;
        if (lVar != null) {
            unregisterReceiver(lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void q(DownloadTask downloadTask) {
        String key;
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                int uid = accountData != null ? accountData.getUid() : 0;
                ResultMainBean<DownDeductCoinResponse> t12 = com.join.mgps.rpc.impl.c.P1().t1(RequestBeanUtil.getInstance(this).getDownDeductCoin(downloadTask.getCrc_link_type_val(), accountData.getToken(), uid, null));
                if (t12 != null && t12.getFlag() != 0) {
                    DownDeductCoinResponse data = t12.getMessages().getData();
                    if (data == null || (key = data.getKey()) == null) {
                        return;
                    }
                    String[] split = AESUtils.c(key).split("\\|");
                    String str = split.length > 0 ? split[0] : "";
                    String str2 = split.length > 1 ? split[1] : "";
                    String str3 = split.length > 2 ? split[2] : "";
                    int parseInt = split.length > 3 ? Integer.parseInt(split[3]) : 0;
                    if (d2.i(str2) && data.getNum().equals(str2) && d2.i(str)) {
                        if ((uid + "").equals(str) && str3.equals(downloadTask.getCrc_link_type_val())) {
                            if (parseInt == 0) {
                                ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.L0(this.f51628m).flags(268435456)).b("铜板支付失败，请重试").c(parseInt).start();
                                return;
                            } else if (parseInt == 1) {
                                ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.L0(this.f51628m).flags(268435456)).b("正在下载<strong>【" + downloadTask.getShowName() + "】</strong>花费<font color=#FFDD1C>" + downloadTask.getSp_tag_info().getCoin().getName() + "</font>").c(parseInt).start();
                                com.php25.PDownload.d.e(downloadTask, this.f51628m);
                                return;
                            } else if (parseInt == 2) {
                                com.php25.PDownload.d.e(downloadTask, this.f51628m);
                                return;
                            } else if (parseInt == 3) {
                                ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.L0(this.f51628m).flags(268435456)).b("需要<font color=#F47500>" + downloadTask.getSp_tag_info().getCoin().getName() + "</font>").c(parseInt).a(data.getBalance()).start();
                                return;
                            } else if (parseInt != 6) {
                                return;
                            } else {
                                ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.L0(this.f51628m).flags(268435456)).b("正在下载<strong>【" + downloadTask.getShowName() + "】</strong>花费<font color=#FFDD1C>" + downloadTask.getSp_tag_info().getCoin().getName() + "</font>").c(parseInt).start();
                                com.php25.PDownload.d.e(downloadTask, this.f51628m);
                                return;
                            }
                        }
                    }
                    ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.L0(this.f51628m).b("铜板支付失败，请重试").flags(268435456)).c(0).start();
                    return;
                }
                ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.L0(this.f51628m).b("铜板支付失败，请重试").flags(268435456)).c(0).start();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.L0(this.f51628m).b("铜板支付失败，请重试").flags(268435456)).c(0).start();
                return;
            }
        }
        f1("请检查网络连接");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.W})
    public void q0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.OnClickPSPCutDown, new Ext());
    }

    void q1(ArrayList<ApkVersionbean> arrayList, List<EMUApkTable> list, String str) {
        try {
            if (com.join.android.app.common.utils.j.n(this).y() >= 131 && list != null && list.size() != 0 && !TextUtils.isEmpty(str)) {
                if (list.get(0).getDown_type() != 2 && arrayList != null) {
                    Iterator<ApkVersionbean> it2 = arrayList.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        ApkVersionbean next = it2.next();
                        if (next.getTag_id().equals(str)) {
                            n1.p.o().k(new EMUApkTable(next));
                            break;
                        }
                    }
                }
                DownloadTask V = g1.f.G().V(Integer.parseInt(str));
                if (V == null || V.getDown_type() == 2) {
                    return;
                }
                g1.f.G().delete((g1.f) V);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.exitVippopup"})
    public void r0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        Ext ext = new Ext();
        ext.setGameId(str2);
        ext.setUid(Integer.valueOf(str3).intValue());
        ext.setPosition(i2 + "");
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.exitVippopup, ext);
    }

    void r1(ArrayList<ApkVersionbean> arrayList, List<EMUApkArenaTable> list, String str) {
        try {
            if (com.join.android.app.common.utils.j.n(this).y() >= 131 && list != null && list.size() != 0 && !TextUtils.isEmpty(str)) {
                if (list.get(0).getDown_type() != 2 && arrayList != null) {
                    Iterator<ApkVersionbean> it2 = arrayList.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        ApkVersionbean next = it2.next();
                        if (next.getTag_id().equals(str)) {
                            n1.o.o().k(new EMUApkArenaTable(next));
                            break;
                        }
                    }
                }
                DownloadTask V = g1.f.G().V(Integer.parseInt(str));
                if (V == null || V.getDown_type() == 2) {
                    return;
                }
                g1.f.G().delete((g1.f) V);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void s() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.Z})
    public void s0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.PSPLimitMember, new Ext());
    }

    public void s1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void t(String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.Y})
    public void t0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.PSPLimitPlay, new Ext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    @Receiver(actions = {f1.a.f65504u, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"})
    public void t1() {
        s1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.X})
    public void u0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.PSPLimitPopup, new Ext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {BAction.ACTION_EMU_GAME_PLAY_TIMES})
    public void u1(@Receiver.Extra String str, @Receiver.Extra Long l4) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Ext ext = new Ext();
        ext.setGameId(str);
        u0.e("liveTime:" + l4 + " receive");
        if (l4.longValue() == 0) {
            return;
        }
        ext.setLiveTime(l4.longValue());
        u0.e("liveTime:" + l4 + " send");
        com.papa.sim.statistic.p.l(this.f51628m).K1(Event.gamePlayTimes, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65465a0})
    public void v0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.PSPLimitQuit, new Ext());
    }

    void v1(List<BluetoothHandleBlackListData.DataInfo> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < list.size(); i2++) {
            BluetoothHandleBlackListData.DataInfo dataInfo = list.get(i2);
            hashMap.put(dataInfo.getId() + "", dataInfo.getModel_number());
        }
        com.join.mgps.joystick.map.a.b().l(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.NotpromptVippopup"})
    public void w0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        Ext ext = new Ext();
        ext.setGameId(str2);
        ext.setUid(Integer.valueOf(str3).intValue());
        ext.setPosition(i2 + "");
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.NotpromptVippopup, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void x(String str, String str2, DownloadTask downloadTask, boolean z3) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                String uid = AccountUtil_.getInstance_(this).getUid();
                String token = AccountUtil_.getInstance_(this).getToken();
                RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
                requestModel.setDefault(this);
                QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
                queryDownloadInfoRequestArgs.setGameId(str);
                queryDownloadInfoRequestArgs.setUid(uid);
                queryDownloadInfoRequestArgs.setToken(token);
                requestModel.setArgs(queryDownloadInfoRequestArgs);
                ResponseModel<QueryDownloadInfoResponseData> j4 = com.join.mgps.rpc.impl.h.L().j(requestModel);
                if (j4 != null && j4.getCode() == 600) {
                    if (j4.getData() == null) {
                        f1("获取资源失败，请重新再试。");
                        return;
                    } else {
                        d1(str, str2, j4.getData(), downloadTask, z3);
                        return;
                    }
                }
                f1("获取资源失败，请重新再试。");
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                f1("获取资源失败，请重新再试。");
                return;
            }
        }
        f1(getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.onclickFunction"})
    public void x0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        Ext ext = new Ext();
        ext.setGameId(str2);
        ext.setUid(Integer.valueOf(str3).intValue());
        ext.setPosition(i2 + "");
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.onclickFunction, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint"})
    public void y(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra String str3, @Receiver.Extra String str4) {
        Event[] values;
        Ext ext = new Ext();
        if (d2.i(str2)) {
            ext.setGameId(str2);
        }
        if (d2.i(str4)) {
            ext.setUid(Integer.valueOf(str4).intValue());
        }
        if (d2.i(str3)) {
            ext.setPosition(str3 + "");
        }
        Event event = Event.clickKnowGoRealPage;
        if (event.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event, ext);
            return;
        }
        Event event2 = Event.realNameUpWindows;
        if (event2.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event2, ext);
            return;
        }
        Event event3 = Event.antiAddtionWindowUp;
        if (event3.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event3, ext);
            return;
        }
        Event event4 = Event.realNameAuth;
        if (event4.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event4, ext);
            return;
        }
        Event event5 = Event.nonageAstrictHint;
        if (event5.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event5, ext);
            return;
        }
        Event event6 = Event.realNameClickSubmit;
        if (event6.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event6, ext);
            return;
        }
        Event event7 = Event.clickClosedRealNameWindow;
        if (event7.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event7, ext);
            return;
        }
        Event event8 = Event.realNameDisplayWindow;
        if (event8.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event8, ext);
            return;
        }
        Event event9 = Event.Emu_PatchAd_Pop;
        if (event9.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event9, ext);
            return;
        }
        Event event10 = Event.Emu_PatchAd_Close;
        if (event10.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event10, ext);
            return;
        }
        Event event11 = Event.Emu_PatchAd_Click;
        if (event11.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event11, ext);
            return;
        }
        Event event12 = Event.Custom_openGoldfinger;
        if (event12.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event12, ext);
            return;
        }
        Event event13 = Event.Custom_closeGoldfinger;
        if (event13.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event13, ext);
            return;
        }
        Event event14 = Event.Customgoldfinger_AdMust_Pop;
        if (event14.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event14, ext);
            return;
        }
        Event event15 = Event.Customgoldfinger_AdMust_Vedio;
        if (event15.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event15, ext);
            return;
        }
        Event event16 = Event.Customgoldfinger_AdMust_Buy;
        if (event16.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event16, ext);
            return;
        }
        Event event17 = Event.Customgoldfinger_AdMust_Close;
        if (event17.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event17, ext);
            return;
        }
        Event event18 = Event.Customgoldfinger_AdUnnecessary_Pop;
        if (event18.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event18, ext);
            return;
        }
        Event event19 = Event.Customgoldfinger_AdUnnecessary_Vedio;
        if (event19.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event19, ext);
            return;
        }
        Event event20 = Event.Customgoldfinger_AdUnnecessary_Buy;
        if (event20.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event20, ext);
            return;
        }
        Event event21 = Event.Customgoldfinger_AdUnnecessary_Close;
        if (event21.name().equals(str)) {
            com.papa.sim.statistic.p.l(getApplicationContext()).K1(event21, ext);
            return;
        }
        for (Event event22 : Event.values()) {
            if (event22.name().equals(str)) {
                com.papa.sim.statistic.p.l(getApplicationContext()).K1(event22, ext);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.onclickVippopup"})
    public void y0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        Ext ext = new Ext();
        ext.setGameId(str2);
        ext.setUid(Integer.valueOf(str3).intValue());
        ext.setPosition(i2 + "");
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.onclickVippopup, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.V})
    public void z(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra String str3, @Receiver.Extra String str4, @Receiver.Extra String str5) {
        EmuErrorDto emuErrorDto = new EmuErrorDto();
        emuErrorDto.setGame_id(str);
        emuErrorDto.setUid(str2);
        emuErrorDto.setPlugin_package_name(str3);
        emuErrorDto.setPlugin_version(str4);
        emuErrorDto.setError(str5);
        com.papa.sim.statistic.p.l(getApplicationContext()).f0(JsonMapper.getInstance().toJson(emuErrorDto));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.openGoldfinger"})
    public void z0(@Receiver.Extra String str, @Receiver.Extra String str2, @Receiver.Extra int i2, @Receiver.Extra String str3) {
        Ext ext = new Ext();
        ext.setGameId(str2);
        ext.setUid(Integer.valueOf(str3).intValue());
        ext.setPosition(i2 + "");
        com.papa.sim.statistic.p.l(getApplicationContext()).K1(Event.openGoldfinger, ext);
    }
}
