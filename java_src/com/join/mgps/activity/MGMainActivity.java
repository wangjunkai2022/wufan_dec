package com.join.mgps.activity;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaResponse;
import com.MApplication;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.github.snowdream.android.app.downloader.b;
import com.join.android.app.common.http.MiitHelper;
import com.join.android.app.common.servcie.DownloadBaseActivity;
import com.join.android.app.common.servcie.DownloadService_;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.FindGameMainFragment;
import com.join.kotlin.ui.findgame.data.IntentClassfyEvent;
import com.join.kotlin.ui.userrecom.UserRecomRequestArgs;
import com.join.kotlin.ui.userrecom.UserRecomendActivity;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.activity.FriendInviteActivity_;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity;
import com.join.mgps.activity.arena.NewArenaDownloadActivity_;
import com.join.mgps.activity.login.LoginCfgsBean;
import com.join.mgps.activity.login.UsercenterFragmentNew;
import com.join.mgps.activity.login.UsercenterFragmentNew_;
import com.join.mgps.activity.message.MessageMainActivity_;
import com.join.mgps.activity.recomend.RecomendActivity_;
import com.join.mgps.customview.CircleDownloadProgressBar;
import com.join.mgps.customview.LightningView;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.customview.input.InputNumView;
import com.join.mgps.customview.smartpopupwindow.SmartPopupWindow;
import com.join.mgps.db.tables.EMUApkArenaTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.db.tables.VideoWatchLogTable;
import com.join.mgps.dialog.y1;
import com.join.mgps.dto.APKVersionMainBean;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountUserInfoRequestBean;
import com.join.mgps.dto.ApkVersionbean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.BaseBean;
import com.join.mgps.dto.BaseRequestArgs;
import com.join.mgps.dto.BattaleSwitchBean;
import com.join.mgps.dto.BootPageData;
import com.join.mgps.dto.BootPageItem;
import com.join.mgps.dto.BootPageRequestArgs;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentSendMessageResultBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ConfigData;
import com.join.mgps.dto.DownloadSpeedupCfgBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.FirstIntentData;
import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendInviteBean;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.GameHeadAd;
import com.join.mgps.dto.HomeViewSwich;
import com.join.mgps.dto.JPushIntentData;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.PlayCfgBean;
import com.join.mgps.dto.PopupAdBean;
import com.join.mgps.dto.PspGameAdCfgBean;
import com.join.mgps.dto.PublicVideoCfgBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RecomeWifiDatabean;
import com.join.mgps.dto.RegisterRequestBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestUidtagidTagdes;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.dto.SNKGameInfoBean;
import com.join.mgps.dto.SingleGameAdBean;
import com.join.mgps.dto.SingleGameRunAdTextCfgBean;
import com.join.mgps.dto.ThAdSwitchDataBean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.dto.VideoAdCfgBean;
import com.join.mgps.dto.VideoAdCfgRequestArgs;
import com.join.mgps.dto.VideoAdWatchLogRequest;
import com.join.mgps.enums.Dtype;
import com.join.mgps.mod.utils.PluginConfig;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.BootReceiver_;
import com.join.mgps.service.CommonService;
import com.join.mgps.service.CommonService_;
import com.join.mgps.service.UpdateService_;
import com.mob.MobSDK;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.ExtFrom;
import com.papa91.VideoStrategyPop;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.wrapper.UserPrefs;
import com.uc.crashsdk.export.LogType;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;
import io.netty.handler.traffic.AbstractTrafficShapingHandler;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.springframework.util.LinkedMultiValueMap;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import tv.danmaku.ijk.media.player.IMediaPlayer;
@EActivity(R.layout.mg_mainlayout)
/* loaded from: classes.dex */
public class MGMainActivity extends DownloadBaseActivity implements com.join.mgps.pref.f {
    public static final String KEY_EXTRAS = "extras";
    public static final String KEY_MEDIACMD = "key_mediacmd";
    public static final String KEY_MEDIACMDPARAMS = "key_mediacmd_params";
    public static final String KEY_MESSAGE = "message";
    public static final String KEY_TITLE = "title";
    public static final String MESSAGE_RECEIVED_ACTION = "com.example.jpushdemo.MESSAGE_RECEIVED_ACTION";
    private static int MainAppInfoColorMain = -4802890;
    private static int MainYelloColor = -756480;
    public static boolean isForeground;
    private long LastOpHomePageButtonTime;
    private AccountBean accountBean;
    TextView accountId;
    private com.join.mgps.dialog.c adVipMainDialog;
    private Animation animation;
    private ObjectAnimator animation2;
    private com.join.mgps.dialog.f appUpdateDialog;
    SimpleDraweeView avatar;
    SimpleDraweeView avatar1;
    @ViewById
    TextView bigCenterRound;
    TextView biground;
    @ViewById
    LinearLayout bottom;
    View button;
    @ViewById
    CircleDownloadProgressBar cdp_down_progress;
    FindGameMainFragment choiceFragment;
    View close;
    SimpleDraweeView coinFloatad;
    private Context context;
    private Activity curActivty;
    @ViewById
    TextView dialogBack;
    Dialog dialogU;
    @ViewById
    ImageView discoverHuojian;
    @ViewById
    ImageView discoverMessage;
    @ViewById
    LinearLayout discoverNormal;
    LinearLayout downloadLayout;
    public ImageView downloadLine;
    public List<DownloadTask> downloadTasks;
    @ViewById
    SimpleDraweeView downlodingGameIcon;
    private String fialePath;
    com.join.mgps.fragment.f0 fightFragment;
    @ViewById
    ImageView fightImage;
    @ViewById
    RelativeLayout fightSelect;
    @ViewById
    TextView fightText;
    com.join.mgps.Util.h0 flipCardAnimation;
    private FragmentManager fragmentManager;
    com.join.mgps.rpc.i friendClient;
    TextView gameName;
    com.join.mgps.ad.e gdtAdVideo;
    com.join.mgps.ad.e gdtDownLoadSpeedAd;
    com.join.mgps.ad.e gdtGoldAdVideo;
    com.join.mgps.ad.e gdtPspAd;
    @ViewById
    SimpleDraweeView gifIcon;
    private boolean hasNet;
    ImageView hasNewFinishedGameImage;
    private boolean hasShowAd;
    @ViewById
    LinearLayout home_tab_default_layout;
    @ViewById
    ImageView home_tab_huojian_image;
    @ViewById
    ImageView home_tab_monkey_image;
    @ViewById
    RelativeLayout home_tab_monkey_layout;
    ImageView imageLoading;
    @ViewById
    ImageView imageView36;
    @Extra
    IntentDateBean intentDateBean;
    @Extra
    IntentDateBean intentDateBean22;
    SmartPopupWindow invitePop;
    private boolean isDestroyed;
    private boolean isFirst;
    private boolean isMessageReceiverRegisted;
    private boolean isPapaMainFragmentHasNewData;
    @Extra
    JPushIntentData jPushIntentData;
    @ViewById
    RelativeLayout layout_others;
    private List<String> listZip;
    b.InterfaceC0098b listener;
    private com.join.android.app.common.dialog.f localGameOneDialog;
    private com.join.android.app.common.dialog.j localGameThreeDialog;
    private com.join.android.app.common.dialog.l localGameTwoDialog;
    private m0 mAdReceived;
    private DownloadTask mAdVipEvent;
    private com.join.android.app.common.dialog.c mAddShortcutDialog;
    Dialog mDialog;
    private MessageReceiver mMessageReceiver;
    w1 mPapaActivity;
    com.join.mgps.rpc.d mRpcClient;
    private q.rorbin.badgeview.a messagebadge;
    Fragment mgPapaMainFragment;
    @ViewById
    ImageView mg_category_image;
    @ViewById
    LinearLayout mg_category_tabselect;
    @ViewById
    TextView mg_category_text;
    @ViewById
    ImageView mg_chart_image;
    @ViewById
    RelativeLayout mg_chart_tabselect;
    @ViewById
    TextView mg_chart_text;
    @ViewById
    ImageView mg_emulator_image;
    @ViewById
    RelativeLayout mg_emulator_tabselect;
    @ViewById
    TextView mg_emulator_text;
    @ViewById
    ImageView mg_recom_image;
    @ViewById
    RelativeLayout mg_recom_tabselect;
    @ViewById
    TextView mg_recom_text;
    @ViewById
    TextView miniGameBadge;
    TextView name;
    TextView name1;
    @StringRes(resName = "connect_server_excption")
    String netConnectException;
    @StringRes(resName = "net_excption")
    String netExcption;
    @ViewById
    LinearLayout notice_layout;
    @ViewById
    TextView notice_text;
    @ViewById
    LightningView numberInTab;
    TextView papa_user_round;
    @Pref
    PrefDef_ prefDef;
    private n0 receiver;
    private RecomDatabean recomDatabean;
    com.join.mgps.rpc.d recommendClient;
    @ViewById
    TextView red_point;
    com.join.mgps.rpc.b rpcAccountClient;
    com.join.mgps.rpc.d rpcClient;
    com.join.mgps.rpc.f rpcConsoleGameClient;
    com.join.mgps.rpc.h rpcForumClient;
    TextView scroll_text;
    public ScrollTextViewLayout scroll_text_layout;
    private String shortcutGameId;
    @ViewById
    ImageView splash;
    com.join.mgps.ad.m ttAdVideo;
    com.join.mgps.ad.m ttDownLoadSpeedAd;
    com.join.mgps.ad.m ttGoldAdVideo;
    com.join.mgps.ad.m ttPspAd;
    @ViewById
    TextView unreadMessageBadge;
    UsercenterFragmentNew userCenterFragment;
    SimpleDraweeView user_icon;
    private VideoStrategyPop videoStrategyPop;
    private String TAG = MGMainActivity.class.getSimpleName();
    private Bitmap mBitmap = null;
    private int num = 0;
    private int messageNum = 0;

    /* renamed from: n  reason: collision with root package name */
    private int f33218n = 0;
    private int tableNum = 0;
    private int positionNum = 3;
    private int classiFy = 0;
    private int classifyPrimaryIndex = 1;
    private int isOpenExit = 1;
    private long startTime = 0;
    private boolean isNotThisGame = false;
    private Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();
    private boolean timeIsFinish = false;
    private Handler handler = new k();
    private String mainPos = "MainPos";
    private DownloadSpeedupCfgBean downloadSpeedupCfgBean = null;
    private PspGameAdCfgBean pspGameAdCfgBean = null;
    AlertDialog.Builder dialog = null;
    private boolean isfirst35 = false;
    private Handler handlerx = new a();
    boolean hasPermiss = false;
    private boolean showInstallNoticeOrappDialog = false;
    private boolean hasRunFinishforFinishDialog = false;
    boolean hasBackupIng = false;
    private int backupNumber = 0;
    private int reloadNumber = 5;
    boolean showUpdate = false;
    private long exitTime = 0;
    private boolean activityHasDes = false;
    private boolean isFirstCommendVersion = false;
    private boolean showInstallLayout = true;
    private boolean hasResouse = false;
    private boolean checkHasSo = false;
    private boolean hasNewDownload = false;
    private String downloadUrl = "";
    private String downLoadFileName = "";
    com.github.snowdream.android.app.downloader.b factory = null;
    private boolean showMonkey = true;
    long lastcheckDownService = 0;
    private List<String> listTempZip = new ArrayList();
    long timelastSnk = 0;
    private List<String> snkGameList = new ArrayList();
    private boolean isFirstCheck = true;
    private String allJsonStr = "";
    DownloadTask downloadTaskx = null;
    boolean showText = false;
    boolean needStopAnim = false;
    boolean hasRom = false;
    boolean hasPlug = false;

    /* renamed from: r  reason: collision with root package name */
    Runnable f33219r = new Runnable() { // from class: com.join.mgps.activity.g1
        @Override // java.lang.Runnable
        public final void run() {
            MGMainActivity.this.lambda$new$8();
        }
    };
    int currTabNumber = 4;

    /* loaded from: classes3.dex */
    public enum MediaCmd {
        CMD_PLAY,
        CMD_PLAY_BACKGROUND,
        CMD_PAUSE,
        CMD_STOP,
        CMD_FULLSCREEN,
        CMD_TRANSLATE_Y
    }

    /* loaded from: classes3.dex */
    public class MessageReceiver extends BroadcastReceiver {
        public MessageReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (MGMainActivity.MESSAGE_RECEIVED_ACTION.equals(intent.getAction())) {
                String stringExtra = intent.getStringExtra("message");
                String stringExtra2 = intent.getStringExtra(MGMainActivity.KEY_EXTRAS);
                StringBuilder sb = new StringBuilder();
                sb.append("message : ");
                sb.append(stringExtra);
                sb.append("\n");
                if (com.join.mgps.Util.q0.e(stringExtra2)) {
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("extras : ");
                sb2.append(stringExtra2);
                sb2.append("\n");
            }
        }
    }

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                com.join.android.app.common.utils.a.g0(MGMainActivity.this.context).u(MGMainActivity.this, new File(MGMainActivity.this.fialePath));
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a0 extends com.join.mgps.ad.e {

        /* renamed from: q  reason: collision with root package name */
        final /* synthetic */ boolean f33222q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a0(Context context, String str, String str2, boolean z3) {
            super(context, str, str2);
            this.f33222q = z3;
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADClose() {
            super.onADClose();
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.e eVar = mGMainActivity.gdtPspAd;
            com.join.mgps.ad.c.i(mGMainActivity, 18);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADShow() {
            super.onADShow();
            MGMainActivity.this.sendVideoAdWatchLog(2, 2);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(this.f33222q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Callback<ResponseModel<List<CollectionBeanSub>>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f33224a;

        b(long j4) {
            this.f33224a = j4;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<List<CollectionBeanSub>>> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<List<CollectionBeanSub>>> call, Response<ResponseModel<List<CollectionBeanSub>>> response) {
            List<CollectionBeanSub> data;
            if (response == null || response.code() != 200 || (data = response.body().getData()) == null || data.size() <= 0) {
                return;
            }
            Intent intent = new Intent(MGMainActivity.this.context, UserRecomendActivity.class);
            intent.putExtra("listDatas", (Serializable) data);
            intent.putExtra("range", this.f33224a);
            MGMainActivity.this.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b0 implements Animation.AnimationListener {
        b0() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            ((com.join.mgps.Util.h0) animation).a();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Callback<ResponseModel<ConfigData>> {
        c() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<ConfigData>> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<ConfigData>> call, Response<ResponseModel<ConfigData>> response) {
            ConfigData data;
            if (response == null || response.body() == null || (data = response.body().getData()) == null) {
                return;
            }
            String client_ip = data.getClient_ip();
            try {
                MGMainActivity.this.prefDef.launch_game_switch().g(Boolean.valueOf(data.isLaunch_game_switch()));
                MGMainActivity.this.prefDef.download_game_switch().g(Boolean.valueOf(data.isDownload_game_switch()));
                MGMainActivity.this.prefDef.non_online_user_switch().g(Boolean.valueOf(data.isNon_online_user_switch()));
                MGMainActivity.this.prefDef.androidIdNullsKey().g(JsonMapper.getInstance().toJson(data.getReal_name_black_list()));
                String d4 = com.join.mgps.Util.a.d(client_ip, "UTF-8");
                if (d4.equals(MApplication.f9231u)) {
                    return;
                }
                MApplication.f9231u = d4;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c0 implements InputNumView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f33228a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArenaRequest f33229b;

        c0(com.join.mgps.customview.input.a aVar, ArenaRequest arenaRequest) {
            this.f33228a = aVar;
            this.f33229b = arenaRequest;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f33228a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String str) {
            this.f33228a.c();
            if (this.f33229b == null) {
                return;
            }
            FriendBean friendBean = new FriendBean();
            friendBean.setGameId(this.f33229b.gameId + "");
            friendBean.setRoomId(this.f33229b.roomId);
            friendBean.setElite(this.f33229b.isElite);
            friendBean.setRoomPwd(str);
            com.wufan.friend.chat.c.u().p(friendBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Callback<ResultMainBean<LoginCfgsBean>> {
        d() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<LoginCfgsBean>> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<LoginCfgsBean>> call, Response<ResultMainBean<LoginCfgsBean>> response) {
            LoginCfgsBean data;
            if (response != null) {
                try {
                    if (response.body() != null) {
                        ResultMainBean<LoginCfgsBean> body = response.body();
                        if (body.getCode() != 600 || body.getMessages() == null || (data = body.getMessages().getData()) == null) {
                            return;
                        }
                        MApplication.J = data;
                        com.join.mgps.pref.h.n(MGMainActivity.this.context).M(data);
                        if (MGMainActivity.this.prefDef.startGameShowLoginNumber().d().intValue() == -1) {
                            MGMainActivity.this.prefDef.startGameShowLoginNumber().g(Integer.valueOf(data.getHow_times_open()));
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d0 implements Callback<ResponseModel> {
        d0() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel> call, Response<ResponseModel> response) {
            if (response != null && response.body() != null) {
                ResponseModel body = response.body();
                if (body.getError() == 0) {
                    MGMainActivity.this.addSuccess(Boolean.TRUE);
                    return;
                } else {
                    MGMainActivity.this.toast(body.getMsg());
                    return;
                }
            }
            MGMainActivity.this.toast("添加失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f33233a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f33234b;

        e(CollectionBeanSub collectionBeanSub, com.join.mgps.customview.t tVar) {
            this.f33233a = collectionBeanSub;
            this.f33234b = tVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!this.f33233a.getGame_id().isEmpty() && !this.f33233a.getGame_info_tpl_type().isEmpty()) {
                IntentUtil.getInstance().intentActivity(MGMainActivity.this, this.f33233a.getIntentDataBean());
            }
            this.f33234b.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e0 extends AsyncTask<Integer, Void, FriendAccountInfo> {
        e0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public FriendAccountInfo doInBackground(Integer... numArr) {
            int intValue = numArr[0].intValue();
            try {
                AccountBean accountData = AccountUtil_.getInstance_(MGMainActivity.this).getAccountData();
                FriendReqBean friendReqBean = new FriendReqBean();
                friendReqBean.setUid(accountData.getUid());
                friendReqBean.setToken(accountData.getToken());
                friendReqBean.setRuid(intValue);
                ResponseModel<FriendAccountInfo> i2 = com.join.mgps.rpc.impl.g.p().i(accountData.getUid() + "", accountData.getToken() + "", intValue + "");
                if (i2 != null) {
                    if (i2.getError() == 0) {
                        return i2.getData();
                    }
                    MGMainActivity.this.toast(i2.getMsg());
                    return null;
                }
                return null;
            } catch (Exception e4) {
                e4.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b */
        public void onPostExecute(FriendAccountInfo friendAccountInfo) {
            super.onPostExecute(friendAccountInfo);
            if (friendAccountInfo == null) {
                return;
            }
            try {
                MyImageLoader.w(MGMainActivity.this.avatar1, friendAccountInfo.getAvatar());
                MGMainActivity.this.name1.setText(friendAccountInfo.getNickName());
                TextView textView = MGMainActivity.this.accountId;
                textView.setText(friendAccountInfo.getAccount() + "");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity.this.downloadLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f0 implements MiitHelper.a {
        f0() {
        }

        @Override // com.join.android.app.common.http.MiitHelper.a
        public void a(@NonNull String str) {
            if (!com.join.mgps.Util.d2.i(str)) {
                str = "";
            }
            MApplication.A = str;
            com.papa.sim.statistic.q.f(MApplication.f9223q).s(str);
            MApplication.f9223q.y();
        }
    }

    /* loaded from: classes3.dex */
    class g implements w2.g<com.tbruyelle.rxpermissions2.b> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", MGMainActivity.this.getPackageName(), null));
                MGMainActivity.this.startActivity(intent);
            }
        }

        g() {
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
            if (bVar.f59248b) {
                MGMainActivity mGMainActivity = MGMainActivity.this;
                if (mGMainActivity.hasPermiss) {
                    return;
                }
                mGMainActivity.hasPermiss = ContextCompat.checkSelfPermission(mGMainActivity.context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
                MGMainActivity mGMainActivity2 = MGMainActivity.this;
                boolean z3 = mGMainActivity2.hasPermiss;
                if (z3) {
                    mGMainActivity2.startBackups(z3);
                }
            } else if (bVar.f59249c) {
            } else {
                MGMainActivity mGMainActivity3 = MGMainActivity.this;
                Dialog dialog = mGMainActivity3.dialogU;
                if (dialog == null) {
                    mGMainActivity3.dialog = new AlertDialog.Builder(mGMainActivity3.context, R.style.AlertDialogCustom);
                } else if (dialog.isShowing()) {
                    return;
                }
                if (bVar.f59247a.equals("android.permission.ACCESS_FINE_LOCATION")) {
                    return;
                }
                MGMainActivity.this.dialog.setTitle("提示");
                if (!bVar.f59247a.equals("android.permission.WRITE_EXTERNAL_STORAGE") && !bVar.f59247a.equals("android.permission.READ_EXTERNAL_STORAGE")) {
                    MGMainActivity.this.dialog.setMessage("请去设置中开启权限");
                } else {
                    MGMainActivity.this.dialog.setMessage("需要打开读写存储权限，请去设置中开启权限");
                }
                MGMainActivity.this.dialog.setPositiveButton("去打开", new a());
                MGMainActivity mGMainActivity4 = MGMainActivity.this;
                mGMainActivity4.dialogU = mGMainActivity4.dialog.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g0 implements Runnable {
        g0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity.this.queryDownTask();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity.this.getSNKGameInfo(-1);
            MGMainActivity.this.resetSelfSupportPrmopt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h0 implements Runnable {

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MGMainActivity.this.shortcutGameId = "";
            }
        }

        h0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadTask B = g1.f.G().B(MGMainActivity.this.shortcutGameId);
            if (B != null) {
                UtilsMy.f3(MGMainActivity.this.context, B, "");
                new Handler().postDelayed(new a(), 1500L);
                return;
            }
            MGMainActivity.this.isNotThisGame = true;
            MGMainActivity.this.positionNum = 2;
            MGMainActivity mGMainActivity = MGMainActivity.this;
            mGMainActivity.setTabSelect(mGMainActivity.positionNum);
            com.join.mgps.Util.i2.a(MGMainActivity.this.context).b("游戏不存在，请重新下载。");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements Animation.AnimationListener {
        i() {
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
    /* loaded from: classes3.dex */
    public class i0 implements Runnable {
        i0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (MGMainActivity.this.jPushIntentData.getType().equals("1")) {
                    if (MGMainActivity.this.jPushIntentData.getJumpInfo() == null || MGMainActivity.this.jPushIntentData.getJumpInfo().getSub() == null || MGMainActivity.this.jPushIntentData.getJumpInfo().getSub().size() <= 0) {
                        MessageMainActivity_.I0(MGMainActivity.this.context).d(true).a(0).start();
                    } else {
                        MessageMainActivity_.I0(MGMainActivity.this.context).d(true).a(0).b(MGMainActivity.this.jPushIntentData.getJumpInfo().getSub().get(0).getIntentDataBean()).start();
                    }
                } else if (MGMainActivity.this.jPushIntentData.getType().equals(PayCenterOrderRequest.PAY_TYPE_RECHARGE)) {
                    if (MGMainActivity.this.jPushIntentData.getSubType().equals("1")) {
                        MessageMainActivity_.I0(MGMainActivity.this.context).d(true).a(1).c(true).start();
                    } else if (MGMainActivity.this.jPushIntentData.getSubType().equals(PayCenterOrderRequest.PAY_TYPE_RECHARGE)) {
                        MessageMainActivity_.I0(MGMainActivity.this.context).d(true).a(1).c(false).start();
                    }
                } else if (MGMainActivity.this.jPushIntentData.getType().equals("3")) {
                    if (MGMainActivity.this.jPushIntentData.getSubType().equals("1")) {
                        MessageMainActivity_.I0(MGMainActivity.this.context).d(true).a(2).c(true).start();
                    } else if (MGMainActivity.this.jPushIntentData.getSubType().equals(PayCenterOrderRequest.PAY_TYPE_RECHARGE)) {
                        MessageMainActivity_.I0(MGMainActivity.this.context).d(true).a(2).c(false).start();
                    }
                }
                MGMainActivity.this.hideRedPoint();
            } catch (Exception e4) {
                e4.getMessage();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabean f33247a;

        j(RecomDatabean recomDatabean) {
            this.f33247a = recomDatabean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity.this.coinFloatad.setVisibility(8);
            MGMainActivity.this.prefDef.clickFloatViewTime().g(Long.valueOf(System.currentTimeMillis()));
            if (com.join.mgps.Util.d2.i(this.f33247a.getMain().getPic_remote())) {
                IntentUtil.getInstance().intentActivity(MGMainActivity.this.context, this.f33247a.getSub().get(0).getIntentDataBean());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j0 implements Runnable {
        j0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity.this.preloadingAD();
            MGMainActivity.this.receiver = new n0(MGMainActivity.this, null);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(BootReceiver_.f51456f);
            MGMainActivity mGMainActivity = MGMainActivity.this;
            mGMainActivity.registerReceiver(mGMainActivity.receiver, intentFilter);
            MGMainActivity.this.initAdBroadcast();
            com.join.mgps.Util.q2.a(MGMainActivity.this.context);
        }
    }

    /* loaded from: classes3.dex */
    class k extends Handler {
        k() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                MGMainActivity.this.timeIsFinish = true;
            } else if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                MGMainActivity.this.startShowRecommendwifi((RecomeWifiDatabean) message.obj);
            } else {
                RecomeWifiDatabean recomeWifiDatabean = (RecomeWifiDatabean) message.obj;
                if (!MGMainActivity.this.timeIsFinish) {
                    long currentTimeMillis = 3000 - (System.currentTimeMillis() - MGMainActivity.this.startTime);
                    if (currentTimeMillis > 0 && currentTimeMillis < 3000) {
                        Message message2 = new Message();
                        message2.what = 3;
                        message2.obj = message.obj;
                        sendMessageDelayed(message2, currentTimeMillis);
                        return;
                    }
                    MGMainActivity.this.startShowRecommendwifi(recomeWifiDatabean);
                    return;
                }
                MGMainActivity.this.startShowRecommendwifi(recomeWifiDatabean);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k0 implements GameRoomActivity.x {
        k0() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements View.OnClickListener {

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MGMainActivity.this.localGameOneDialog != null) {
                    try {
                        MGMainActivity.this.localGameOneDialog.dismiss();
                    } catch (Exception unused) {
                    }
                    MGMainActivity.this.localGameOneDialog = null;
                }
                if (MGMainActivity.this.localGameTwoDialog.a()) {
                    return;
                }
                try {
                    MGMainActivity.this.localGameTwoDialog.dismiss();
                } catch (Exception unused2) {
                }
            }
        }

        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGMainActivity.this.localGameTwoDialog != null) {
                try {
                    MGMainActivity.this.localGameTwoDialog.dismiss();
                } catch (Exception unused) {
                }
                MGMainActivity.this.localGameTwoDialog = null;
            }
            if (MGMainActivity.this.localGameThreeDialog != null) {
                try {
                    MGMainActivity.this.localGameThreeDialog.dismissAllowingStateLoss();
                } catch (Exception unused2) {
                }
                MGMainActivity.this.localGameThreeDialog = null;
            }
            MGMainActivity.this.localGameTwoDialog = new com.join.android.app.common.dialog.l(MGMainActivity.this.curActivty);
            MGMainActivity.this.localGameTwoDialog.show();
            MGMainActivity.this.localGameTwoDialog.e(new a());
            MGMainActivity.this.changeText();
            MGMainActivity.this.localGameTwoDialog.d("识别中...");
            MGMainActivity.this.localGameTwoDialog.b();
            MGMainActivity.this.checkSNKGame();
            try {
                MGMainActivity.this.localGameOneDialog.dismiss();
            } catch (Exception unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l0 extends com.facebook.imagepipeline.datasource.b {
        l0() {
        }

        @Override // com.facebook.datasource.b
        public void e(com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> cVar) {
            StringBuilder sb = new StringBuilder();
            sb.append("onFailureImpl():");
            sb.append(cVar.toString());
        }

        @Override // com.facebook.imagepipeline.datasource.b
        public void g(Bitmap bitmap) {
            MApplication.f9224q0 = bitmap;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m extends com.join.mgps.ad.m {

        /* renamed from: s  reason: collision with root package name */
        final /* synthetic */ boolean f33255s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(Context context, String str, String str2, boolean z3) {
            super(context, str, str2);
            this.f33255s = z3;
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void a(String str, int i2, int i4) {
            super.a(str, i2, i4);
            UserPrefs userPrefs = new UserPrefs(MGMainActivity.this.context);
            userPrefs.setFbaAdGamesConfig(str, MGMainActivity.this.accountBean.getUid() + "", i2 + 1, i4 + 1);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void b(boolean z3) {
            super.b(z3);
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.m mVar = mGMainActivity.ttAdVideo;
            com.join.mgps.ad.c.i(mGMainActivity, 9);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADShow() {
            super.onADShow();
            MGMainActivity.this.sendVideoAdWatchLog(1, 1);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(this.f33255s);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onVideoCached() {
            super.onVideoCached();
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.m mVar = mGMainActivity.ttAdVideo;
            com.join.mgps.ad.c.i(mGMainActivity, 9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m0 extends BroadcastReceiver {
        m0() {
        }

        /* JADX WARN: Removed duplicated region for block: B:135:0x03b3  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0209  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x024d  */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onReceive(android.content.Context r35, android.content.Intent r36) {
            /*
                Method dump skipped, instructions count: 1281
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MGMainActivity.m0.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n extends com.join.mgps.ad.e {

        /* renamed from: q  reason: collision with root package name */
        final /* synthetic */ boolean f33258q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(Context context, String str, String str2, boolean z3) {
            super(context, str, str2);
            this.f33258q = z3;
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void a(String str, int i2, int i4) {
            super.a(str, i2, i4);
            UserPrefs userPrefs = new UserPrefs(MGMainActivity.this.context);
            userPrefs.setFbaAdGamesConfig(str, MGMainActivity.this.accountBean.getUid() + "", i2 + 1, i4 + 1);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void b(boolean z3) {
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.e eVar = mGMainActivity.gdtAdVideo;
            com.join.mgps.ad.c.i(mGMainActivity, 9);
            super.b(z3);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADShow() {
            super.onADShow();
            MGMainActivity.this.sendVideoAdWatchLog(1, 2);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(this.f33258q);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onVideoCached() {
            super.onVideoCached();
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.e eVar = mGMainActivity.gdtAdVideo;
            com.join.mgps.ad.c.i(mGMainActivity, 9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class n0 extends BroadcastReceiver {
        private n0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !BootReceiver_.f51456f.equals(intent.getAction())) {
                return;
            }
            try {
                long longExtra = intent.getLongExtra("extra_download_id", -1L);
                DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
                String mimeTypeForDownloadedFile = downloadManager.getMimeTypeForDownloadedFile(longExtra);
                String s3 = com.join.mgps.Util.g0.s(context, downloadManager.getUriForDownloadedFile(longExtra));
                String substring = s3.substring(s3.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                File file = new File(s3);
                if (file.exists() && substring.startsWith("temp_")) {
                    substring.replace("temp_", "");
                    File file2 = new File(s3.replace("temp_", ""));
                    if (file2.exists()) {
                        file2.delete();
                    }
                    file.renameTo(new File(s3.replace("temp_", "")));
                }
                if ((mimeTypeForDownloadedFile.equals("application/zip") || s3.endsWith("zip")) && com.join.mgps.pref.h.n(context).f()) {
                    org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.p(1));
                }
            } catch (Exception unused) {
            }
        }

        /* synthetic */ n0(MGMainActivity mGMainActivity, k kVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o extends com.join.mgps.ad.m {

        /* renamed from: s  reason: collision with root package name */
        final /* synthetic */ boolean f33261s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(Context context, String str, String str2, boolean z3) {
            super(context, str, str2);
            this.f33261s = z3;
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void d(String str, int i2, int i4, Map<String, Object> map) {
            super.d(str, i2, i4, map);
            UserPrefs userPrefs = new UserPrefs(MGMainActivity.this.context);
            userPrefs.setGoldFingerAdGamesConfig(str, MGMainActivity.this.accountBean.getUid() + "", i2 + 1, i4 + 1);
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.m mVar = mGMainActivity.ttGoldAdVideo;
            com.join.mgps.ad.c.j(mGMainActivity.context, 1007, map);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(this.f33261s);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p extends com.join.mgps.ad.e {

        /* renamed from: q  reason: collision with root package name */
        final /* synthetic */ boolean f33263q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(Context context, String str, String str2, boolean z3) {
            super(context, str, str2);
            this.f33263q = z3;
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void d(String str, int i2, int i4, Map<String, Object> map) {
            super.d(str, i2, i4, map);
            UserPrefs userPrefs = new UserPrefs(MGMainActivity.this.context);
            userPrefs.setGoldFingerAdGamesConfig(str, MGMainActivity.this.accountBean.getUid() + "", i2 + 1, i4 + 1);
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.e eVar = mGMainActivity.gdtGoldAdVideo;
            com.join.mgps.ad.c.j(mGMainActivity.context, 1007, map);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(this.f33263q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGMainActivity.this.adVipMainDialog == null || com.join.mgps.Util.d2.h(MGMainActivity.this.adVipMainDialog.e())) {
                return;
            }
            Intent intent = new Intent("com.tools.AdBroadcast");
            intent.putExtra("action", 3);
            intent.putExtra("url", MGMainActivity.this.adVipMainDialog.e());
            MGMainActivity.this.sendBroadcast(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGMainActivity.this.adVipMainDialog == null || com.join.mgps.Util.d2.h(MGMainActivity.this.adVipMainDialog.f())) {
                return;
            }
            Intent intent = new Intent("com.tools.AdBroadcast");
            intent.putExtra("action", 4);
            intent.putExtra("url", MGMainActivity.this.adVipMainDialog.f());
            MGMainActivity.this.sendBroadcast(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!com.join.android.app.common.utils.f.j(MGMainActivity.this.context)) {
                MGMainActivity.this.allJsonStr = "";
                com.join.mgps.Util.i2.a(MGMainActivity.this.context).b("请联网后重试！");
                return;
            }
            MGMainActivity.this.adVipMainDialog.dismiss();
            MGMainActivity.this.adVipMainDialog = null;
        }
    }

    /* loaded from: classes3.dex */
    class t implements VideoStrategyPop.VideoPopListener {
        t() {
        }

        @Override // com.papa91.VideoStrategyPop.VideoPopListener
        public void onClose() {
            MGMainActivity.this.toStartGame();
        }
    }

    /* loaded from: classes3.dex */
    class u implements PopupWindow.OnDismissListener {
        u() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            MGMainActivity.this.videoStrategyPop.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class v implements y1.f {
        v() {
        }

        @Override // com.join.mgps.dialog.y1.f
        public void a() {
            if (ContextCompat.checkSelfPermission(MGMainActivity.this.context, "android.permission.READ_PHONE_STATE") == 0) {
                com.papa.sim.statistic.pref.b.j(MGMainActivity.this.context).D(true);
            }
            MGMainActivity.this.prefDef.firstShowUserPermiss().g(Boolean.FALSE);
            com.papa.sim.statistic.pref.b.j(MGMainActivity.this.context).J(false);
            MGMainActivity.this.dialogBack.setVisibility(8);
            MGMainActivity.this.initApplicationData();
            MGMainActivity.this.initApplicationV2();
            MobSDK.submitPolicyGrantResult(true, null);
            MGMainActivity.this.getRootUrl();
            MGMainActivity.this.afterViewsInitData(true);
            MGMainActivity.this.onResume();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity.this.shortcutGameId = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class x extends com.join.mgps.ad.m {

        /* renamed from: s  reason: collision with root package name */
        final /* synthetic */ boolean f33272s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        x(Context context, String str, String str2, boolean z3) {
            super(context, str, str2);
            this.f33272s = z3;
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void c(String str) {
            super.c(str);
            if (!TextUtils.isEmpty(str)) {
                DownloadTask B = g1.f.G().B(str);
                if (B != null && B.getStatus() == 11) {
                    UtilsMy.j3(B, MGMainActivity.this);
                }
                MGMainActivity mGMainActivity = MGMainActivity.this;
                com.join.mgps.ad.m mVar = mGMainActivity.ttDownLoadSpeedAd;
                com.join.mgps.ad.c.k(mGMainActivity, 21, str);
            }
            MGMainActivity.this.delayChangeAdshow();
            MGMainActivity mGMainActivity2 = MGMainActivity.this;
            mGMainActivity2.delayLoadRewardAd(mGMainActivity2.ttDownLoadSpeedAd);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADShow() {
            super.onADShow();
            MGMainActivity.this.sendVideoAdWatchLog(3, 1);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(this.f33272s);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class y extends com.join.mgps.ad.m {

        /* renamed from: s  reason: collision with root package name */
        final /* synthetic */ boolean f33274s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y(Context context, String str, String str2, boolean z3) {
            super(context, str, str2);
            this.f33274s = z3;
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADClose() {
            super.onADClose();
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.m mVar = mGMainActivity.ttPspAd;
            com.join.mgps.ad.c.i(mGMainActivity, 18);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADShow() {
            super.onADShow();
            MGMainActivity.this.sendVideoAdWatchLog(2, 1);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(this.f33274s);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class z extends com.join.mgps.ad.e {

        /* renamed from: q  reason: collision with root package name */
        final /* synthetic */ boolean f33276q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        z(Context context, String str, String str2, boolean z3) {
            super(context, str, str2);
            this.f33276q = z3;
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void c(String str) {
            super.c(str);
            if (!TextUtils.isEmpty(str)) {
                DownloadTask B = g1.f.G().B(str);
                if (B != null && B.getStatus() == 11) {
                    UtilsMy.j3(B, MGMainActivity.this);
                }
                MGMainActivity mGMainActivity = MGMainActivity.this;
                com.join.mgps.ad.e eVar = mGMainActivity.gdtDownLoadSpeedAd;
                com.join.mgps.ad.c.k(mGMainActivity, 21, str);
            }
            MGMainActivity.this.delayChangeAdshow();
            MGMainActivity mGMainActivity2 = MGMainActivity.this;
            mGMainActivity2.delayLoadRewardAd(mGMainActivity2.gdtDownLoadSpeedAd);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onADShow() {
            super.onADShow();
            MGMainActivity.this.sendVideoAdWatchLog(3, 2);
        }

        @Override // com.join.mgps.ad.c, com.join.mgps.ad.i, com.join.mgps.ad.f
        public void onInitSuccess() {
            super.onInitSuccess();
            h(this.f33276q);
        }
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeText() {
        List<String> k4 = com.join.mgps.Util.g0.k(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath());
        this.listZip = k4;
        if (k4 != null && k4.size() != 0) {
            com.join.android.app.common.dialog.l lVar = this.localGameTwoDialog;
            lVar.d("共找到" + this.listZip.size() + "个zip文件");
            this.localGameTwoDialog.c();
            return;
        }
        com.join.android.app.common.dialog.l lVar2 = this.localGameTwoDialog;
        if (lVar2 != null) {
            lVar2.d("未找到游戏");
        }
        this.localGameTwoDialog.b();
    }

    private void clearSelection() {
        this.home_tab_monkey_layout.setVisibility(8);
        this.home_tab_default_layout.setVisibility(0);
        this.mg_recom_image.setImageResource(R.drawable.mg_choice_selectback_normal);
        this.mg_recom_text.setTextColor(MainAppInfoColorMain);
        this.mg_category_image.setImageResource(R.drawable.tab_usercenter_normal);
        this.mg_category_text.setTextColor(MainAppInfoColorMain);
        this.mg_chart_text.setTextColor(MainAppInfoColorMain);
        this.mg_emulator_image.setImageResource(R.drawable.mg_shop_selectback_normal);
        this.mg_emulator_text.setTextColor(MainAppInfoColorMain);
        this.unreadMessageBadge.setVisibility(8);
        this.mg_emulator_text.setText("首页");
        ObjectAnimator objectAnimator = this.animation2;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.mg_emulator_image.animate().rotation(0.0f).setDuration(50L).start();
        }
        this.fightImage.setImageResource(R.drawable.mg_discovery_selectback_normal);
        this.fightText.setTextColor(MainAppInfoColorMain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void downloadLayout() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
        this.scroll_text_layout.p();
        this.imageLoading.setVisibility(8);
        this.prefDef.isNewFinishedGame().g(Boolean.FALSE);
        this.hasNewFinishedGameImage.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PlayCfgBean getAdConfig(List<PlayCfgBean> list, int i2) {
        if (list != null) {
            for (PlayCfgBean playCfgBean : list) {
                if (playCfgBean.getSdk_type() == i2) {
                    return playCfgBean;
                }
            }
        }
        return null;
    }

    private void getArenaPluginInfo() {
        ResultMainBean<List<ApkVersionbean>> resultMainBean;
        ResultMainBean<List<ApkVersionbean>> resultMainBean2;
        ResultMainBean<List<ApkVersionbean>> C1;
        EMUApkArenaTable eMUApkArenaTable;
        if (!com.join.android.app.common.utils.f.j(this)) {
            return;
        }
        try {
            C1 = this.recommendClient.C1(RequestBeanUtil.getInstance(this).getApkVersion(2, 2, 0));
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
                                        if (B != null && B.getFileType() != null && B.getFileType().equals(Dtype.chajian.name()) && B.getDown_type() == 2 && eMUApkArenaTable.getDown_type() == 2 && TextUtils.isEmpty(eMUApkArenaTable.getApkPath())) {
                                            eMUApkArenaTable.setApkPath(com.join.android.app.common.utils.h.h(B.getPlugin_num(), new File(B.getGameZipPath())));
                                        }
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
                                    if (B != null && B.getFileType() != null && B.getFileType().equals(Dtype.chajian.name()) && B.getDown_type() == 2 && eMUApkArenaTable2.getDown_type() == 2 && TextUtils.isEmpty(eMUApkArenaTable2.getApkPath())) {
                                        eMUApkArenaTable2.setApkPath(com.join.android.app.common.utils.h.h(B.getPlugin_num(), new File(B.getGameZipPath())));
                                    }
                                    n1.o.o().k(eMUApkArenaTable2);
                                    com.join.android.app.common.utils.h.E(eMUApkArenaTable2);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        resultMainBean = C1;
                        if (resultMainBean == null && this.reloadNumber > 0) {
                            com.join.mgps.Util.t0.d("getEMUVersionForArena", "failed  " + this.recomDatabean);
                            this.reloadNumber = this.reloadNumber - 1;
                            try {
                                Thread.sleep(5000L);
                                getArenaPluginInfo();
                            } catch (InterruptedException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception unused2) {
                    resultMainBean2 = C1;
                    if (resultMainBean2 != null || this.reloadNumber <= 0) {
                        return;
                    }
                    com.join.mgps.Util.t0.d("getEMUVersionForArena", "failed  " + this.recomDatabean);
                    this.reloadNumber = this.reloadNumber - 1;
                    try {
                        Thread.sleep(5000L);
                        getArenaPluginInfo();
                    } catch (InterruptedException unused3) {
                        return;
                    }
                }
            }
        } catch (Exception unused4) {
            resultMainBean2 = null;
        } catch (Throwable th2) {
            th = th2;
            resultMainBean = null;
        }
        if (C1 != null || this.reloadNumber <= 0) {
            return;
        }
        com.join.mgps.Util.t0.d("getEMUVersionForArena", "failed  " + this.recomDatabean);
        this.reloadNumber = this.reloadNumber - 1;
        Thread.sleep(5000L);
        getArenaPluginInfo();
    }

    private void getLogincfgs() {
        try {
            com.join.mgps.rpc.impl.c.P1().O1().P1(RequestBeanUtil.getInstance(this.context).getDefalutRequestBean(new RequestUidtagidTagdes())).enqueue(new d());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void hideFragments(FragmentTransaction fragmentTransaction) {
        Fragment fragment = this.mgPapaMainFragment;
        if (fragment != null) {
            fragmentTransaction.hide(fragment);
        }
        com.join.mgps.fragment.f0 f0Var = this.fightFragment;
        if (f0Var != null) {
            fragmentTransaction.hide(f0Var);
        }
        w1 w1Var = this.mPapaActivity;
        if (w1Var != null) {
            fragmentTransaction.hide(w1Var);
        }
        FindGameMainFragment findGameMainFragment = this.choiceFragment;
        if (findGameMainFragment != null) {
            fragmentTransaction.hide(findGameMainFragment);
        }
        UsercenterFragmentNew usercenterFragmentNew = this.userCenterFragment;
        if (usercenterFragmentNew != null) {
            fragmentTransaction.hide(usercenterFragmentNew);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initAdBroadcast() {
        if (this.mAdReceived == null) {
            this.mAdReceived = new m0();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.tools.AdBroadcast");
            registerReceiver(this.mAdReceived, intentFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initApplicationV2() {
        UMConfigure.init(this, "55af129367e58e94ba0025b7", "channel_1028", 1, null);
        MobclickAgent.setPageCollectionMode(MobclickAgent.PageMode.AUTO);
        MobSDK.init(this, "563efaa5a8fe", "47378ac7ef1e9db5870c9cf62ee34a1d");
        com.join.android.app.common.utils.h.o(this);
        com.join.mgps.Util.a2.b(this);
        try {
            new MiitHelper(new f0()).getDeviceIds(this);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void initDefaultPluginInfo() {
        ArrayList arrayList = (ArrayList) JsonMapper.getInstance().fromJson(getResources().getString(R.string.defalut_app_ver), JsonMapper.getInstance().createCollectionType(ArrayList.class, ApkVersionbean.class));
        com.join.mgps.Util.t0.d("getEMUVersion", "start");
        HashMap hashMap = new HashMap();
        hashMap.put("tag_id", "31");
        List<EMUApkTable> h4 = n1.p.o().h(hashMap);
        List<EMUApkArenaTable> h5 = n1.o.o().h(hashMap);
        if ((h4 == null || h4.size() == 0) && arrayList != null) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ApkVersionbean apkVersionbean = (ApkVersionbean) it2.next();
                if (apkVersionbean.getTag_id().equals("31")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean));
                }
            }
        }
        if ((h5 == null || h5.size() == 0) && arrayList != null) {
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                ApkVersionbean apkVersionbean2 = (ApkVersionbean) it3.next();
                if (apkVersionbean2.getTag_id().equals("31")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean2));
                }
            }
        }
        HashMap hashMap2 = new HashMap();
        hashMap2.put("tag_id", "35");
        List<EMUApkTable> h6 = n1.p.o().h(hashMap2);
        List<EMUApkArenaTable> h7 = n1.o.o().h(hashMap2);
        if ((h6 == null || h6.size() == 0) && arrayList != null) {
            Iterator it4 = arrayList.iterator();
            while (it4.hasNext()) {
                ApkVersionbean apkVersionbean3 = (ApkVersionbean) it4.next();
                if (apkVersionbean3.getTag_id().equals("35")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean3));
                }
            }
        }
        if ((h7 == null || h7.size() == 0) && arrayList != null) {
            Iterator it5 = arrayList.iterator();
            while (it5.hasNext()) {
                ApkVersionbean apkVersionbean4 = (ApkVersionbean) it5.next();
                if (apkVersionbean4.getTag_id().equals("35")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean4));
                }
            }
        }
        HashMap hashMap3 = new HashMap();
        hashMap3.put("tag_id", "43");
        List<EMUApkTable> h8 = n1.p.o().h(hashMap3);
        List<EMUApkArenaTable> h9 = n1.o.o().h(hashMap3);
        if ((h8 == null || h8.size() == 0) && arrayList != null) {
            Iterator it6 = arrayList.iterator();
            while (it6.hasNext()) {
                ApkVersionbean apkVersionbean5 = (ApkVersionbean) it6.next();
                if (apkVersionbean5.getTag_id().equals("43")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean5));
                }
            }
        }
        if ((h9 == null || h9.size() == 0) && arrayList != null) {
            Iterator it7 = arrayList.iterator();
            while (it7.hasNext()) {
                ApkVersionbean apkVersionbean6 = (ApkVersionbean) it7.next();
                if (apkVersionbean6.getTag_id().equals("43")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean6));
                }
            }
        }
        HashMap hashMap4 = new HashMap();
        hashMap4.put("tag_id", "33");
        List<EMUApkTable> h10 = n1.p.o().h(hashMap4);
        List<EMUApkArenaTable> h11 = n1.o.o().h(hashMap4);
        if ((h10 == null || h10.size() == 0) && arrayList != null) {
            Iterator it8 = arrayList.iterator();
            while (it8.hasNext()) {
                ApkVersionbean apkVersionbean7 = (ApkVersionbean) it8.next();
                if (apkVersionbean7.getTag_id().equals("33")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean7));
                }
            }
        }
        if ((h11 == null || h11.size() == 0) && arrayList != null) {
            Iterator it9 = arrayList.iterator();
            while (it9.hasNext()) {
                ApkVersionbean apkVersionbean8 = (ApkVersionbean) it9.next();
                if (apkVersionbean8.getTag_id().equals("33")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean8));
                }
            }
        }
        HashMap hashMap5 = new HashMap();
        hashMap5.put("tag_id", "34");
        List<EMUApkTable> h12 = n1.p.o().h(hashMap5);
        List<EMUApkArenaTable> h13 = n1.o.o().h(hashMap5);
        if ((h12 == null || h12.size() == 0) && arrayList != null) {
            Iterator it10 = arrayList.iterator();
            while (it10.hasNext()) {
                ApkVersionbean apkVersionbean9 = (ApkVersionbean) it10.next();
                if (apkVersionbean9.getTag_id().equals("34")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean9));
                }
            }
        }
        if ((h13 == null || h13.size() == 0) && arrayList != null) {
            Iterator it11 = arrayList.iterator();
            while (it11.hasNext()) {
                ApkVersionbean apkVersionbean10 = (ApkVersionbean) it11.next();
                if (apkVersionbean10.getTag_id().equals("34")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean10));
                }
            }
        }
        HashMap hashMap6 = new HashMap();
        hashMap6.put("tag_id", "51");
        List<EMUApkTable> h14 = n1.p.o().h(hashMap6);
        List<EMUApkArenaTable> h15 = n1.o.o().h(hashMap6);
        if ((h14 == null || h14.size() == 0) && arrayList != null) {
            Iterator it12 = arrayList.iterator();
            while (it12.hasNext()) {
                ApkVersionbean apkVersionbean11 = (ApkVersionbean) it12.next();
                if (apkVersionbean11.getTag_id().equals("51")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean11));
                }
            }
        }
        if ((h15 == null || h15.size() == 0) && arrayList != null) {
            Iterator it13 = arrayList.iterator();
            while (it13.hasNext()) {
                ApkVersionbean apkVersionbean12 = (ApkVersionbean) it13.next();
                if (apkVersionbean12.getTag_id().equals("51")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean12));
                }
            }
        }
        HashMap hashMap7 = new HashMap();
        hashMap7.put("tag_id", "53");
        List<EMUApkTable> h16 = n1.p.o().h(hashMap7);
        List<EMUApkArenaTable> h17 = n1.o.o().h(hashMap7);
        if ((h16 == null || h16.size() == 0) && arrayList != null) {
            Iterator it14 = arrayList.iterator();
            while (it14.hasNext()) {
                ApkVersionbean apkVersionbean13 = (ApkVersionbean) it14.next();
                if (apkVersionbean13.getTag_id().equals("53")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean13));
                }
            }
        }
        if ((h17 == null || h17.size() == 0) && arrayList != null) {
            Iterator it15 = arrayList.iterator();
            while (it15.hasNext()) {
                ApkVersionbean apkVersionbean14 = (ApkVersionbean) it15.next();
                if (apkVersionbean14.getTag_id().equals("53")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean14));
                }
            }
        }
        HashMap hashMap8 = new HashMap();
        hashMap8.put("tag_id", "54");
        List<EMUApkTable> h18 = n1.p.o().h(hashMap8);
        List<EMUApkArenaTable> h19 = n1.o.o().h(hashMap8);
        if ((h18 == null || h18.size() == 0) && arrayList != null) {
            Iterator it16 = arrayList.iterator();
            while (it16.hasNext()) {
                ApkVersionbean apkVersionbean15 = (ApkVersionbean) it16.next();
                if (apkVersionbean15.getTag_id().equals("54")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean15));
                }
            }
        }
        if ((h19 == null || h19.size() == 0) && arrayList != null) {
            Iterator it17 = arrayList.iterator();
            while (it17.hasNext()) {
                ApkVersionbean apkVersionbean16 = (ApkVersionbean) it17.next();
                if (apkVersionbean16.getTag_id().equals("54")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean16));
                }
            }
        }
        HashMap hashMap9 = new HashMap();
        hashMap9.put("tag_id", "32");
        List<EMUApkTable> h20 = n1.p.o().h(hashMap9);
        List<EMUApkArenaTable> h21 = n1.o.o().h(hashMap9);
        if ((h20 == null || h20.size() == 0) && arrayList != null) {
            Iterator it18 = arrayList.iterator();
            while (it18.hasNext()) {
                ApkVersionbean apkVersionbean17 = (ApkVersionbean) it18.next();
                if (apkVersionbean17.getTag_id().equals("32")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean17));
                }
            }
        }
        if ((h21 == null || h21.size() == 0) && arrayList != null) {
            Iterator it19 = arrayList.iterator();
            while (it19.hasNext()) {
                ApkVersionbean apkVersionbean18 = (ApkVersionbean) it19.next();
                if (apkVersionbean18.getTag_id().equals("32")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean18));
                }
            }
        }
        HashMap hashMap10 = new HashMap();
        hashMap10.put("tag_id", "56");
        List<EMUApkTable> h22 = n1.p.o().h(hashMap10);
        List<EMUApkArenaTable> h23 = n1.o.o().h(hashMap10);
        if ((h22 == null || h22.size() == 0) && arrayList != null) {
            Iterator it20 = arrayList.iterator();
            while (it20.hasNext()) {
                ApkVersionbean apkVersionbean19 = (ApkVersionbean) it20.next();
                if (apkVersionbean19.getTag_id().equals("56")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean19));
                }
            }
        }
        if ((h23 == null || h23.size() == 0) && arrayList != null) {
            Iterator it21 = arrayList.iterator();
            while (it21.hasNext()) {
                ApkVersionbean apkVersionbean20 = (ApkVersionbean) it21.next();
                if (apkVersionbean20.getTag_id().equals("56")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean20));
                }
            }
        }
        HashMap hashMap11 = new HashMap();
        hashMap11.put("tag_id", "57");
        List<EMUApkTable> h24 = n1.p.o().h(hashMap11);
        List<EMUApkArenaTable> h25 = n1.o.o().h(hashMap11);
        if ((h24 == null || h24.size() == 0) && arrayList != null) {
            Iterator it22 = arrayList.iterator();
            while (it22.hasNext()) {
                ApkVersionbean apkVersionbean21 = (ApkVersionbean) it22.next();
                if (apkVersionbean21.getTag_id().equals("57")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean21));
                }
            }
        }
        if ((h25 == null || h25.size() == 0) && arrayList != null) {
            Iterator it23 = arrayList.iterator();
            while (it23.hasNext()) {
                ApkVersionbean apkVersionbean22 = (ApkVersionbean) it23.next();
                if (apkVersionbean22.getTag_id().equals("57")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean22));
                }
            }
        }
        HashMap hashMap12 = new HashMap();
        hashMap12.put("tag_id", "58");
        List<EMUApkTable> h26 = n1.p.o().h(hashMap12);
        List<EMUApkTable> h27 = n1.p.o().h(hashMap12);
        if ((h26 == null || h26.size() == 0) && arrayList != null) {
            Iterator it24 = arrayList.iterator();
            while (it24.hasNext()) {
                ApkVersionbean apkVersionbean23 = (ApkVersionbean) it24.next();
                if (apkVersionbean23.getTag_id().equals("58")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean23));
                }
            }
        }
        if ((h27 == null || h27.size() == 0) && arrayList != null) {
            Iterator it25 = arrayList.iterator();
            while (it25.hasNext()) {
                ApkVersionbean apkVersionbean24 = (ApkVersionbean) it25.next();
                if (apkVersionbean24.getTag_id().equals("58")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean24));
                }
            }
        }
        HashMap hashMap13 = new HashMap();
        hashMap13.put("tag_id", "60");
        List<EMUApkTable> h28 = n1.p.o().h(hashMap13);
        List<EMUApkTable> h29 = n1.p.o().h(hashMap13);
        if ((h28 == null || h28.size() == 0) && arrayList != null) {
            Iterator it26 = arrayList.iterator();
            while (it26.hasNext()) {
                ApkVersionbean apkVersionbean25 = (ApkVersionbean) it26.next();
                if (apkVersionbean25.getTag_id().equals("60")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean25));
                }
            }
        }
        if ((h29 == null || h29.size() == 0) && arrayList != null) {
            Iterator it27 = arrayList.iterator();
            while (it27.hasNext()) {
                ApkVersionbean apkVersionbean26 = (ApkVersionbean) it27.next();
                if (apkVersionbean26.getTag_id().equals("60")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean26));
                }
            }
        }
        HashMap hashMap14 = new HashMap();
        hashMap14.put("tag_id", "166");
        List<EMUApkTable> h30 = n1.p.o().h(hashMap14);
        List<EMUApkTable> h31 = n1.p.o().h(hashMap14);
        if ((h30 == null || h30.size() == 0) && arrayList != null) {
            Iterator it28 = arrayList.iterator();
            while (it28.hasNext()) {
                ApkVersionbean apkVersionbean27 = (ApkVersionbean) it28.next();
                if (apkVersionbean27.getTag_id().equals("166")) {
                    n1.p.o().k(new EMUApkTable(apkVersionbean27));
                }
            }
        }
        if ((h31 == null || h31.size() == 0) && arrayList != null) {
            Iterator it29 = arrayList.iterator();
            while (it29.hasNext()) {
                ApkVersionbean apkVersionbean28 = (ApkVersionbean) it29.next();
                if (apkVersionbean28.getTag_id().equals("166")) {
                    n1.o.o().k(new EMUApkArenaTable(apkVersionbean28));
                }
            }
        }
    }

    private void initGDTDownLoadSpeedAd(String str, boolean z3) {
        String str2;
        String str3;
        PlayCfgBean adConfig;
        DownloadSpeedupCfgBean downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.downloadSpeedupCfg().d(), DownloadSpeedupCfgBean.class);
        this.downloadSpeedupCfgBean = downloadSpeedupCfgBean;
        if (downloadSpeedupCfgBean == null || (adConfig = getAdConfig(downloadSpeedupCfgBean.getPlay_cfg(), 2)) == null) {
            str2 = "";
            str3 = str2;
        } else {
            String sdk_key = adConfig.getSdk_key();
            str3 = adConfig.getAd_id();
            str2 = sdk_key;
        }
        if (this.gdtDownLoadSpeedAd == null && com.join.mgps.Util.d2.i(str2)) {
            z zVar = new z(this, str2, str3, z3);
            this.gdtDownLoadSpeedAd = zVar;
            zVar.m(str);
            this.gdtDownLoadSpeedAd.e();
        }
    }

    private void initGDTPspAd(boolean z3) {
        String str;
        String str2;
        PlayCfgBean adConfig;
        try {
            PspGameAdCfgBean pspGameAdCfgBean = (PspGameAdCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.pspGameAdCfg().d(), PspGameAdCfgBean.class);
            this.pspGameAdCfgBean = pspGameAdCfgBean;
            if (pspGameAdCfgBean == null || (adConfig = getAdConfig(pspGameAdCfgBean.getPlay_cfg(), 2)) == null) {
                str = "";
                str2 = str;
            } else {
                String sdk_key = adConfig.getSdk_key();
                str2 = adConfig.getAd_id();
                str = sdk_key;
            }
            if (this.gdtPspAd == null && com.join.mgps.Util.d2.i(str)) {
                a0 a0Var = new a0(this, str, str2, z3);
                this.gdtPspAd = a0Var;
                a0Var.e();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void initTTDownLoadSpeedAd(String str, boolean z3) {
        String str2;
        String str3;
        PlayCfgBean adConfig;
        DownloadSpeedupCfgBean downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.downloadSpeedupCfg().d(), DownloadSpeedupCfgBean.class);
        this.downloadSpeedupCfgBean = downloadSpeedupCfgBean;
        if (downloadSpeedupCfgBean == null || (adConfig = getAdConfig(downloadSpeedupCfgBean.getPlay_cfg(), 1)) == null) {
            str2 = "";
            str3 = str2;
        } else {
            String sdk_key = adConfig.getSdk_key();
            str3 = adConfig.getAd_id();
            str2 = sdk_key;
        }
        if (this.ttDownLoadSpeedAd == null && com.join.mgps.Util.d2.i(str2)) {
            x xVar = new x(this, str2, str3, z3);
            this.ttDownLoadSpeedAd = xVar;
            xVar.m(str);
            this.ttDownLoadSpeedAd.e();
        }
    }

    private void initTTPspAd(boolean z3) {
        String str;
        String str2;
        PlayCfgBean adConfig;
        try {
            PspGameAdCfgBean pspGameAdCfgBean = (PspGameAdCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.pspGameAdCfg().d(), PspGameAdCfgBean.class);
            this.pspGameAdCfgBean = pspGameAdCfgBean;
            if (pspGameAdCfgBean == null || (adConfig = getAdConfig(pspGameAdCfgBean.getPlay_cfg(), 1)) == null) {
                str = "";
                str2 = str;
            } else {
                String sdk_key = adConfig.getSdk_key();
                str2 = adConfig.getAd_id();
                str = sdk_key;
            }
            if (this.ttPspAd == null && com.join.mgps.Util.d2.i(str)) {
                y yVar = new y(this, str, str2, z3);
                this.ttPspAd = yVar;
                yVar.e();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void initViewS() {
        View inflate = LayoutInflater.from(this.context).inflate(R.layout.mgmain_otherlayout, (ViewGroup) null);
        this.papa_user_round = (TextView) inflate.findViewById(R.id.papa_user_round);
        this.biground = (TextView) inflate.findViewById(R.id.biground);
        this.downloadLayout = (LinearLayout) inflate.findViewById(R.id.downloadLayout);
        this.scroll_text = (TextView) inflate.findViewById(R.id.scroll_text);
        this.scroll_text_layout = (ScrollTextViewLayout) inflate.findViewById(R.id.scroll_text_layout);
        this.hasNewFinishedGameImage = (ImageView) inflate.findViewById(R.id.hasNewFinishedGameImage);
        this.downloadLine = (ImageView) inflate.findViewById(R.id.downloadLine);
        this.imageLoading = (ImageView) inflate.findViewById(R.id.imageLoading);
        this.coinFloatad = (SimpleDraweeView) inflate.findViewById(R.id.coinFloatad);
        this.user_icon = (SimpleDraweeView) inflate.findViewById(R.id.papa_user_icon);
        View findViewById = inflate.findViewById(R.id.statubar);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) findViewById.getLayoutParams();
        if (Build.VERSION.SDK_INT >= 21) {
            layoutParams.height = com.join.android.app.common.utils.j.v(this.context);
        }
        findViewById.setLayoutParams(layoutParams);
        this.layout_others.addView(inflate);
        this.downloadLayout.setOnClickListener(new f());
    }

    private boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    private boolean isModMainGame(DownloadTask downloadTask) {
        ModInfoBean modInfoBean = com.join.mgps.Util.d2.i(downloadTask.getMod_info()) ? (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class) : null;
        return modInfoBean != null && downloadTask.getCrc_link_type_val().equals(modInfoBean.getMain_game_id());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$checkInstallApp$0(DownloadTask downloadTask, DownloadTask downloadTask2) {
        if (downloadTask.getFinishTime() > downloadTask2.getFinishTime()) {
            return -1;
        }
        return downloadTask.getFinishTime() < downloadTask2.getFinishTime() ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$checkInstallApp$1(DownloadTask downloadTask, DownloadTask downloadTask2) {
        if (downloadTask.getFinishTime() > downloadTask2.getFinishTime()) {
            return -1;
        }
        return downloadTask.getFinishTime() < downloadTask2.getFinishTime() ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleVideoAdWatchLogRecord$5(VideoWatchLogTable videoWatchLogTable) {
        videoAdWatchLog(videoWatchLogTable, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$invite$10(FriendInviteBean friendInviteBean, View view) {
        reject(friendInviteBean.getFromAccountId());
        com.wufan.friend.chat.c.u().P();
        this.invitePop.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$invite$9(View view) {
        com.wufan.friend.chat.c.u().O();
        this.invitePop.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8() {
        SmartPopupWindow smartPopupWindow = this.invitePop;
        if (smartPopupWindow != null && smartPopupWindow.isShowing()) {
            com.wufan.friend.chat.c.u().P();
            this.invitePop.dismiss();
        }
        com.wufan.friend.chat.c.u().P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onFriendEvent$6() {
        com.wufan.friend.chat.c.u().C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFriendInviteEvent$7(boolean z3, FriendInviteBean friendInviteBean) {
        if (!z3) {
            if (com.join.android.app.common.utils.j.n(this).d(this)) {
                Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.showInvitePlay");
                intent.putExtra("userId", friendInviteBean.getFromAccountId() + "");
                intent.putExtra("userName", friendInviteBean.getFromNickname());
                intent.putExtra("userAvatar", friendInviteBean.getAvatar());
                intent.putExtra("roomId", friendInviteBean.getLobbyRoomId());
                intent.putExtra("gameId", friendInviteBean.getGameId());
                intent.putExtra("gameName", friendInviteBean.getGameName());
                intent.putExtra("timestamp", friendInviteBean.getTimestamp());
                sendBroadcast(intent);
                return;
            } else if (com.join.android.app.common.utils.j.n(this).c(this)) {
                ((FriendInviteActivity_.e) FriendInviteActivity_.E1(this).a(friendInviteBean).flags(536870912)).start();
                return;
            } else {
                com.wufan.friend.chat.c.u().Q();
                return;
            }
        }
        ((FriendInviteActivity_.e) FriendInviteActivity_.E1(this).a(friendInviteBean).flags(536870912)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAddFriend$12(View view) {
        this.mDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAddFriend$13(int i2, View view) {
        if (IntentUtil.getInstance().isLogined(view.getContext()) && !IntentUtil.getInstance().isTourist(view.getContext())) {
            add(i2);
            Ext ext = new Ext();
            ext.setFrom("3");
            com.papa.sim.statistic.p.l(view.getContext()).K1(Event.addFriends, ext);
            this.mDialog.dismiss();
            return;
        }
        IntentUtil.getInstance().goMyAccountLoginActivity(view.getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showVersionDownLoadHint$2(DialogInterface dialogInterface) {
        this.showUpdate = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showupdateDialog$3(DialogInterface dialogInterface) {
        this.showUpdate = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toast$11(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    private void loadIpAddress() {
        com.papa.sim.statistic.pref.b.j(this.context).h();
        RequestModel<BaseRequestArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(this.context);
        BaseRequestArgs baseRequestArgs = new BaseRequestArgs();
        baseRequestArgs.setUid(AccountUtil_.getInstance_(this.context).getAccountData().getUid());
        requestModel.setArgs(baseRequestArgs);
        com.join.mgps.rpc.impl.h.L().J().I(requestModel).enqueue(new c());
    }

    private void onMygameSelected() {
        try {
            new com.tbruyelle.rxpermissions2.c(this).r("android.permission.WRITE_EXTERNAL_STORAGE").B5(new g());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryDownTask() {
        try {
            Cursor query = ((DownloadManager) getSystemService("download")).query(new DownloadManager.Query());
            if (query == null) {
                return;
            }
            while (query.moveToNext()) {
                query.getInt(query.getColumnIndex("_id"));
                query.getString(query.getColumnIndex("title"));
                String string = query.getString(query.getColumnIndex("local_uri"));
                query.getString(query.getColumnIndex("bytes_so_far"));
                query.getString(query.getColumnIndex("total_size"));
                int i2 = query.getInt(query.getColumnIndex("status"));
                query.getString(query.getColumnIndex("local_filename"));
                if (i2 == 8 && !com.join.mgps.Util.d2.h(string)) {
                    String substring = string.substring(string.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                    String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
                    File file = new File(path, substring);
                    if (file.exists() && substring.startsWith("temp_")) {
                        File file2 = new File(path, substring.replace("temp_", ""));
                        if (file2.exists()) {
                            file2.delete();
                        }
                        file.renameTo(file2);
                    }
                }
            }
            query.close();
        } catch (Exception unused) {
        }
    }

    private void saveImageFromUrl(String str, Context context) {
        Fresco.getImagePipeline().i(ImageRequestBuilder.u(Uri.parse(str)).C(true).a(), context).e(new l0(), com.facebook.common.executors.a.a());
    }

    private void show10Permiss() {
        boolean createNewFile;
        if (Build.VERSION.SDK_INT <= 28 || !this.prefDef.needShowPermissdialog().d().booleanValue()) {
            return;
        }
        try {
            String g4 = com.join.mgps.pref.h.n(this).g();
            if (com.join.mgps.Util.d2.i(g4)) {
                File file = new File(g4);
                if (file.exists()) {
                    File file2 = new File(g4, "test_canwhite.txt");
                    if (file2.exists()) {
                        createNewFile = file2.delete();
                    } else {
                        createNewFile = file2.createNewFile();
                    }
                    if (createNewFile) {
                        this.prefDef.needShowPermissdialog().g(Boolean.FALSE);
                    }
                } else if (file.mkdirs()) {
                    this.prefDef.needShowPermissdialog().g(Boolean.FALSE);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void showAdVipMainDialog(String str) {
        com.join.mgps.dialog.c cVar = new com.join.mgps.dialog.c(MApplication.f9223q.getActivity(), str);
        this.adVipMainDialog = cVar;
        cVar.show();
        this.adVipMainDialog.h(new q());
        this.adVipMainDialog.i(new r());
        this.adVipMainDialog.j(new s());
    }

    private void showVideoPopWin() {
        PublicVideoCfgBean publicVideoCfgBean = MApplication.f9232u0;
        if (publicVideoCfgBean != null) {
            VideoStrategyPop videoStrategyPop = this.videoStrategyPop;
            if (videoStrategyPop == null || !videoStrategyPop.isShowing()) {
                this.prefDef.isShowVideo().g(Boolean.TRUE);
                VideoStrategyPop videoStrategyPop2 = new VideoStrategyPop(this, publicVideoCfgBean.getTimes(), publicVideoCfgBean.getUrl(), new t());
                this.videoStrategyPop = videoStrategyPop2;
                videoStrategyPop2.showAtLocation(videoStrategyPop2.getContentView(), 17, 0, 0);
                this.videoStrategyPop.setOnDismissListener(new u());
            }
        }
    }

    private void startAnimation(com.join.mgps.Util.h0 h0Var, View view, com.join.mgps.Util.m0 m0Var) {
        if (h0Var != null) {
            h0Var.a();
            view.startAnimation(h0Var);
            return;
        }
        int width = view.getWidth() / 2;
        int height = view.getHeight() / 2;
        if (width == 0 || height == 0) {
            width = getResources().getDimensionPixelOffset(R.dimen.wdp35);
            height = width;
        }
        com.join.mgps.Util.h0 h0Var2 = new com.join.mgps.Util.h0(0.0f, 180.0f, width, height);
        h0Var2.setInterpolator(m0Var);
        h0Var2.setDuration(2000L);
        h0Var2.setFillAfter(false);
        h0Var2.setRepeatCount(-1);
        h0Var2.setAnimationListener(new b0());
        view.startAnimation(h0Var2);
        this.flipCardAnimation = h0Var2;
    }

    private void stopAlphBreathAnim() {
        com.join.mgps.Util.h0 h0Var = this.flipCardAnimation;
        if (h0Var != null) {
            h0Var.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toStartGame() {
        if (!com.join.mgps.Util.d2.h(this.allJsonStr)) {
            this.prefDef.singleGameShowDialog().g(this.allJsonStr);
            this.allJsonStr = "";
        }
        UtilsMy.d3(this.context, this.mAdVipEvent, 0);
        this.mAdVipEvent = null;
        new Handler().postDelayed(new w(), 1500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.B})
    public void accountChange(Intent intent) {
        getRedPointData();
    }

    void add(int i2) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
            FriendReqBean friendReqBean = new FriendReqBean();
            friendReqBean.setUid(accountData.getUid());
            friendReqBean.setToken(accountData.getToken());
            friendReqBean.setRuid(i2);
            friendReqBean.setRequestInfo("嘿，交个朋友，少年~(*^▽^*)");
            com.join.mgps.rpc.impl.g.p().o().b(friendReqBean).enqueue(new d0());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void addSuccess(Boolean bool) {
        if (bool.booleanValue()) {
            toast("已发送加好友申请");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.action_login_success"})
    public void afterLogin() {
        com.wufan.friend.chat.c.u().g();
        if (!com.wufan.friend.chat.c.u().F()) {
            com.wufan.friend.chat.c.u().L(this.accountBean.getUid(), this.accountBean.getToken());
        }
        autoSendAdd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.mRpcClient = com.join.mgps.rpc.impl.c.P1();
        this.friendClient = com.join.mgps.rpc.impl.g.p();
        this.context = this;
        String d4 = this.prefDef.md5FileTag().d();
        if (com.join.mgps.Util.d2.i(d4)) {
            com.join.mgps.Util.u.f27859r = d4;
        }
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
        boolean booleanValue = this.prefDef.firstShowUserPermiss().d().booleanValue();
        if (this.prefDef.isFirst35().d().booleanValue() && booleanValue) {
            this.dialogBack.setVisibility(0);
            new com.join.mgps.dialog.y1(this, 1, com.join.mgps.rpc.g.f51524k + com.constant.b.f11067a, new v()).show();
            return;
        }
        if (booleanValue) {
            initApplicationData();
            initApplicationV2();
            afterViewsInitData(true);
            MobSDK.submitPolicyGrantResult(true, null);
            onResume();
        }
        getRootUrl();
        com.papa.sim.statistic.pref.b.j(this.context).D(true);
        this.prefDef.firstShowUserPermiss().g(Boolean.FALSE);
        com.papa.sim.statistic.pref.b.j(this.context).J(false);
        MobSDK.submitPolicyGrantResult(true, null);
        afterViewsInitData(false);
    }

    void afterViewsInitData(boolean z3) {
        boolean z4;
        Intent intent;
        if (!isTaskRoot() && (intent = getIntent()) != null) {
            String action = intent.getAction();
            if (com.join.mgps.Util.d2.i(intent.getStringExtra("exitGamePackage"))) {
                this.isBackHome = true;
            }
            if (intent.hasCategory("android.intent.category.LAUNCHER") && "android.intent.action.MAIN".equals(action)) {
                finish();
                return;
            }
        }
        new Thread(new g0()).start();
        if (com.join.mgps.pref.h.n(this.context).I() == 0) {
            com.join.mgps.pref.h.n(this.context).x0(System.currentTimeMillis());
        }
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        boolean z5 = false;
        this.hasPermiss = ContextCompat.checkSelfPermission(this.context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
        this.rpcClient = com.join.mgps.rpc.impl.c.P1();
        this.downloadTasks = new ArrayList();
        this.recommendClient = com.join.mgps.rpc.impl.c.P1();
        if (com.join.mgps.Util.b1.b(this) < 26 || Build.VERSION.SDK_INT < 26) {
            DownloadService_.M(getApplicationContext()).a();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("method afterViews() called.");
        sb.append(this.prefDef.isShowSplash().d());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("MGmain method afterViews() called.");
        sb2.append(System.currentTimeMillis());
        try {
            ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
            if (clipboardManager.hasPrimaryClip()) {
                ClipData.Item itemAt = clipboardManager.getPrimaryClip().getItemAt(0);
                if (itemAt.getText() != null) {
                    String charSequence = itemAt.getText().toString();
                    if (charSequence.length() > 5 && charSequence.charAt(0) == 'w' && charSequence.charAt(1) == 'u' && charSequence.charAt(2) == 'f' && charSequence.charAt(3) == 'a' && charSequence.charAt(4) == 'n') {
                        getDetailData(charSequence.substring(5));
                        clipboardManager.setText("");
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        saveUUID();
        if (this.prefDef.isFirstCustomApk().d().booleanValue()) {
            FirstIntentData a4 = com.join.mgps.Util.b1.a(this);
            if (a4 != null && a4.isCustomApk() && a4.isAPKSplashImage()) {
                z4 = true;
            } else {
                if (a4 != null && a4.isCustomApk() && this.prefDef.isFirstCustomApk().d().booleanValue() && a4.isIntent()) {
                    this.prefDef.isFirstCustomApk().g(Boolean.FALSE);
                    IntentDateBean intentDateBean = a4.getIntentDateBean();
                    if (intentDateBean.getLink_type() == 1 && !a4.isGoDetail()) {
                        this.prefDef.showIndex().g("1");
                    } else {
                        if (a4.isAutoDownload()) {
                            intentDateBean.setObject(Boolean.TRUE);
                        }
                        intentDateBean.setExtBean(new ExtBean().set_from_type(134));
                        IntentUtil.getInstance().intentActivity(this, intentDateBean);
                    }
                }
                z4 = false;
            }
            this.prefDef.isFirstCustomApk().g(Boolean.FALSE);
        } else {
            z4 = false;
        }
        this.shortcutGameId = getIntent().getStringExtra("shortcutGameId");
        StringBuilder sb3 = new StringBuilder();
        sb3.append("shortcutGameId:");
        sb3.append(this.shortcutGameId);
        if (!com.join.mgps.Util.d2.h(this.shortcutGameId)) {
            com.papa.sim.statistic.p.l(this.context).p("startByDeskIcon", this.shortcutGameId, AccountUtil_.getInstance_(this.context).getUid());
            new Handler().postDelayed(new h0(), 1500L);
        }
        if (this.prefDef.isFirstCommendVersion().d().booleanValue() && g1.f.G().d().size() == 0 && !z4 && this.prefDef.isFirst35().d().booleanValue()) {
            this.isFirstCommendVersion = true;
            RecomendActivity_.intent(this.context).startForResult(34343);
        } else {
            String d4 = this.prefDef.thAdSwitchCfg().d();
            ThAdSwitchDataBean thAdSwitchDataBean = com.join.mgps.Util.d2.i(d4) ? (ThAdSwitchDataBean) JsonMapper.getInstance().fromJson(d4, ThAdSwitchDataBean.class) : null;
            org.androidannotations.api.sharedpreferences.d isFirstCommendVersion = this.prefDef.isFirstCommendVersion();
            Boolean bool = Boolean.FALSE;
            isFirstCommendVersion.g(bool);
            if (thAdSwitchDataBean != null && thAdSwitchDataBean.getFx_ad_switch() == 1) {
                if (!this.prefDef.isFirstCommendVersion().d().booleanValue()) {
                    if (this.prefDef.isFirst35().d().booleanValue()) {
                        this.isfirst35 = true;
                        this.prefDef.isFirst35().g(bool);
                    } else {
                        z5 = true;
                    }
                    if (z5 && com.join.mgps.Util.d2.h(this.shortcutGameId)) {
                        SplashActivity_.H(this).a(thAdSwitchDataBean).startForResult(10000);
                    }
                    z4 = z5;
                }
            } else if (this.prefDef.isShowSplash().d().booleanValue() && !this.prefDef.isFirstCommendVersion().d().booleanValue()) {
                if (this.prefDef.isFirst35().d().booleanValue()) {
                    this.isfirst35 = true;
                    this.prefDef.isFirst35().g(bool);
                    z4 = false;
                } else {
                    z4 = true;
                }
                if (z4 && com.join.mgps.Util.d2.h(this.shortcutGameId)) {
                    this.showInstallLayout = false;
                    SplashActivity_.H(this).startForResult(10000);
                }
            }
        }
        if (z4) {
            hideSplash();
        } else if (!z3 || !this.isFirstCommendVersion) {
            this.splash.setVisibility(8);
        }
        this.prefDef.firstNewSplash().g(Boolean.FALSE);
        init();
        initViewS();
        try {
            Class.forName("android.os.AsyncTask");
        } catch (ClassNotFoundException e5) {
            e5.printStackTrace();
        }
        this.fragmentManager = getSupportFragmentManager();
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            this.positionNum = 3;
        } else {
            int i2 = extras.getInt(this.mainPos);
            this.positionNum = i2;
            if (i2 == 0) {
                this.positionNum = 3;
            }
            this.classiFy = extras.getInt("classiFy");
            this.classifyPrimaryIndex = extras.getInt("classifyPrimaryIndex");
        }
        if (this.positionNum == 0) {
            if (this.prefDef.showIndex().d().equals("1")) {
                this.positionNum = 7;
            } else {
                this.positionNum = 3;
            }
        }
        this.isFirst = true;
        if (!com.join.mgps.Util.d2.h(this.shortcutGameId) && this.isNotThisGame) {
            this.positionNum = 2;
        }
        setTabSelect(this.positionNum);
        registerMessageReceiver();
        StringBuilder sb4 = new StringBuilder();
        sb4.append("MGmain afterview finish");
        sb4.append(System.currentTimeMillis());
        getData(z4);
        getLogincfgs();
        UtilsMy.f2(this);
        getRedPointData();
        initJPushJoinDevice();
        if (this.jPushIntentData != null) {
            new Handler().postDelayed(new i0(), 500L);
        }
        new Handler().postDelayed(new j0(), 1000L);
        if (this.splash.getVisibility() == 8) {
            show10Permiss();
        }
        updateStartGameTable(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void autoSendAdd() {
        Dialog dialog;
        try {
            if (this.button == null || (dialog = this.mDialog) == null || !dialog.isShowing()) {
                return;
            }
            this.button.performClick();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    String backSplitData(String str) {
        try {
            String[] split = str.split("_");
            return split[0].equals(com.join.android.app.common.utils.j.n(this.context).e(this.context)) ? split[1] : "-1";
        } catch (Exception e4) {
            e4.printStackTrace();
            return "-1";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65512y})
    public void backUpGameFinish(Intent intent) {
        checkDownlodingNumber();
    }

    @Override // com.join.mgps.pref.f
    public void callHomePageNewData(Bundle bundle) {
        this.isPapaMainFragmentHasNewData = bundle.getBoolean("homeHasNewData");
        if (this.positionNum == 3) {
            refreshTabIcon();
        }
    }

    @Override // com.join.mgps.pref.f
    public void callOnlineCoupon(Bundle bundle) {
        getOnlineCouponConfig(bundle.getInt("localType"));
    }

    @Override // com.join.mgps.pref.f
    public void callbackClassify(Bundle bundle) {
        setTabSelect(1);
    }

    @Override // com.join.mgps.pref.f
    public void callbackClassifyTipsVisible(Bundle bundle) {
    }

    @Override // com.join.mgps.pref.f
    public void callbackDownloadCenterVisible(Bundle bundle) {
        if (this.positionNum == 4) {
            this.downloadLayout.setVisibility(0);
            this.biground.setVisibility(0);
            checkDownlodingNumber();
            return;
        }
        this.downloadLayout.setVisibility(8);
        this.biground.setVisibility(8);
    }

    @Override // com.join.mgps.pref.f
    public void callbackForumWelcome(Bundle bundle) {
        setTabSelect(3);
    }

    @Override // com.join.mgps.pref.f
    public void callbackFunChart(Bundle bundle) {
        setTabSelect(2);
    }

    @Override // com.join.mgps.pref.f
    public void callbackHome(Bundle bundle) {
        setTabSelect(7);
    }

    @Override // com.join.mgps.pref.f
    public void callbackPlayVideo(Bundle bundle) {
    }

    @Override // com.join.mgps.pref.f
    public void callbackUnReadMessage(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.messageNum = bundle.getInt(com.join.mgps.Util.y1.f27946r1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: checkClipboard */
    public void lambda$onResume$4() {
        int l4;
        try {
            ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
            if (clipboardManager.hasPrimaryClip()) {
                ClipData.Item itemAt = clipboardManager.getPrimaryClip().getItemAt(0);
                if (itemAt.getText() == null || (l4 = com.wufan.friend.chat.c.u().l(itemAt.getText().toString())) == 0) {
                    return;
                }
                showAddFriend(l4);
                clipboardManager.setText("");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkDownlodingNumber() {
        this.num = g1.f.G().O();
        this.f33218n = g1.f.G().S(this);
        updateLine(g1.f.G().W());
        int i2 = this.num;
        if (i2 != 0) {
            updateDownloadingPoint(i2);
        } else if (this.f33218n != 0) {
            updateNoOpenPoint();
        } else {
            updateHidePoint();
        }
    }

    protected boolean checkGameIsInstall(String str) {
        this.hasRom = false;
        this.hasPlug = false;
        DownloadTask B = g1.f.G().B(str);
        if (B != null && B.getStatus() == 5) {
            this.hasRom = true;
            EMUApkTable n4 = n1.o.o().n(B.getPlugin_num());
            if (n4 != null) {
                if (com.join.android.app.common.utils.h.t(this, n4, false, new String[0]) && !UtilsMy.q0(this, n4)) {
                    this.hasPlug = true;
                } else {
                    this.hasPlug = false;
                }
            } else {
                this.hasPlug = true;
            }
        } else {
            this.hasRom = false;
        }
        return this.hasPlug && this.hasRom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0035 A[Catch: Exception -> 0x0170, TryCatch #0 {Exception -> 0x0170, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:8:0x001f, B:10:0x0025, B:11:0x002f, B:13:0x0035, B:15:0x0049, B:17:0x0057, B:19:0x0065, B:24:0x0080, B:26:0x008e, B:28:0x009c, B:30:0x00a2, B:32:0x00a6, B:33:0x00b5, B:34:0x00b8, B:35:0x00cc, B:37:0x00d2, B:43:0x00e9, B:46:0x00ef, B:48:0x00f5, B:50:0x0110, B:51:0x0126, B:53:0x012a, B:55:0x0139, B:57:0x013f, B:59:0x0155, B:61:0x0159, B:62:0x016d), top: B:73:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d2 A[Catch: Exception -> 0x0170, TryCatch #0 {Exception -> 0x0170, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:8:0x001f, B:10:0x0025, B:11:0x002f, B:13:0x0035, B:15:0x0049, B:17:0x0057, B:19:0x0065, B:24:0x0080, B:26:0x008e, B:28:0x009c, B:30:0x00a2, B:32:0x00a6, B:33:0x00b5, B:34:0x00b8, B:35:0x00cc, B:37:0x00d2, B:43:0x00e9, B:46:0x00ef, B:48:0x00f5, B:50:0x0110, B:51:0x0126, B:53:0x012a, B:55:0x0139, B:57:0x013f, B:59:0x0155, B:61:0x0159, B:62:0x016d), top: B:73:0x0001 }] */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void checkInstallApp() {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MGMainActivity.checkInstallApp():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1200)
    public void checkPlugNeedUpdate() {
        try {
            for (DownloadTask downloadTask : g1.f.G().d()) {
                if (downloadTask.getFileType().equals(Dtype.chajian.name()) && downloadTask.getStatus() == 9) {
                    return;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkPurchasedList() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void checkRealName() {
        if (com.join.mgps.Util.x.t(this.prefDef.lastRealNameCheckTime().d().longValue())) {
            return;
        }
        this.prefDef.lastRealNameCheckTime().g(Long.valueOf(System.currentTimeMillis()));
        UtilsMy.p0(this.context, 5, "", "ANDROID_SINGLE", new k0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkSNKGame() {
        if (com.join.android.app.common.utils.f.j(this.context)) {
            List<String> list = this.snkGameList;
            if (list != null && list.size() != 0) {
                try {
                    this.listTempZip.clear();
                    String str = "";
                    for (int i2 = 0; i2 < this.listZip.size(); i2++) {
                        String d4 = com.join.mgps.Util.v0.d(this.listZip.get(i2) + "wufan2019");
                        int i4 = 0;
                        while (true) {
                            if (i4 >= this.snkGameList.size()) {
                                break;
                            } else if (d4.equals(this.snkGameList.get(i4))) {
                                this.listTempZip.add(this.listZip.get(i2));
                                str = str.equals("") ? d4 : str + "," + d4;
                            } else {
                                i4++;
                            }
                        }
                    }
                    if (str.equals("")) {
                        showCheckData(null);
                        return;
                    }
                    ResultMainBean<List<CollectionBeanSub>> A1 = this.mRpcClient.A1(RequestBeanUtil.getInstance(this.context).getSNKGameCheckRequestBean(str));
                    if (A1 != null) {
                        showCheckData(A1.getMessages().getData());
                        return;
                    }
                    return;
                } catch (Exception e4) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("e:");
                    sb.append(e4.getMessage());
                    return;
                }
            }
            this.localGameTwoDialog.d("未检测出游戏！");
            this.localGameTwoDialog.b();
            return;
        }
        this.localGameTwoDialog.d("网络链接失败，未检测出游戏！");
        this.localGameTwoDialog.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void checkShowOldUserRecom(boolean z3) {
        if (!z3 && !this.prefDef.firstShowUserPermiss().d().booleanValue()) {
            long longValue = this.prefDef.userLastStartAPP().d().longValue();
            long a4 = com.join.mgps.Util.x.a(longValue, System.currentTimeMillis());
            this.prefDef.userLastStartAPP().g(Long.valueOf(System.currentTimeMillis()));
            if (longValue != 0 && !com.join.mgps.Util.x.t(longValue)) {
                startIntentOldUserRecom(a4);
                return;
            }
        }
        if (this.hasShowAd) {
            return;
        }
        showAdM();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkToken() {
        try {
            this.rpcAccountClient = com.join.mgps.rpc.impl.a.b0();
            AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
            if (accountData == null || accountData.getAccount_type() == 2) {
                return;
            }
            AccountUserInfoRequestBean accountUserInfoRequestBean = new AccountUserInfoRequestBean();
            accountUserInfoRequestBean.setUid(accountData.getUid() + "");
            accountUserInfoRequestBean.setToken(accountData.getToken());
            accountUserInfoRequestBean.setDevice_id("");
            accountUserInfoRequestBean.setSign(com.join.mgps.Util.u1.f(accountUserInfoRequestBean));
            AccountResultMainBean<AccountTokenSuccess> h4 = this.rpcAccountClient.h(accountUserInfoRequestBean.getParams());
            if (h4 != null && h4.getData() != null && h4.getData().getUser_info() != null) {
                AccountBean user_info = h4.getData().getUser_info();
                AccountBean accountData2 = AccountUtil_.getInstance_(this).getAccountData();
                accountData2.setVip_level(user_info.getVip_level());
                accountData2.setSvip_level(user_info.getSvip_level());
                accountData2.setVip_exp_time(user_info.getVip_exp_time());
                accountData2.setIs_anchor(user_info.getIs_anchor());
                AccountUtil_.getInstance_(this).saveAccountData(accountData2, this);
            }
            if (h4 == null || h4.getError() != 701) {
                return;
            }
            showMessage(getString(R.string.pay_token_fail));
            AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(this);
            touristLogin();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void clearOldCache(PopupAdBean popupAdBean) {
        File[] listFiles;
        String pic_remote;
        if (popupAdBean == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (popupAdBean.getBig_pic() != null && popupAdBean.getBig_pic().size() > 0) {
            int size = popupAdBean.getBig_pic().size();
            for (int i2 = 0; i2 < size; i2++) {
                RecomDatabean recomDatabean = popupAdBean.getBig_pic().get(i2);
                if (recomDatabean.getMain() != null && com.join.mgps.Util.d2.i(recomDatabean.getMain().getPic_remote())) {
                    if (com.join.mgps.Util.d2.i(recomDatabean.getMain().getPic_remote())) {
                        arrayList.add(com.join.mgps.Util.u.b(this.context) + com.join.mgps.Util.g0.o(pic_remote));
                    }
                }
            }
        }
        File b4 = com.join.mgps.Util.u.b(this.context);
        if (b4 != null && b4.exists() && b4.isDirectory()) {
            for (File file : b4.listFiles()) {
                if (file.isFile()) {
                    if (!arrayList.contains(file + "")) {
                        UtilsMy.delete(file);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 2000)
    public void delayChangeAdshow() {
        this.prefDef.lastShowTOUTIAOAd().g("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 300)
    public void delayLoadRewardAd(com.join.mgps.ad.c cVar) {
        if (cVar != null) {
            cVar.h(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 3000)
    public void delaydown(DownloadTask downloadTask) {
        downloadTask.setPath("");
        downloadTask.setId(0);
        com.php25.PDownload.d.c(downloadTask, this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65485k0})
    public void downloadPermissGet(Intent intent) {
        startBackups(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65483j0})
    public void downloaddelay(Intent intent) {
        delaydown((DownloadTask) JsonMapper.getInstance().fromJson(intent.getStringExtra("downloadTastJson"), DownloadTask.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65471d0})
    public void emuOnResume(@Receiver.Extra String str) {
        if (TextUtils.isEmpty(str) || !str.equals(getPackageName()) || isRunService(this, CommonService_.class.getName())) {
            return;
        }
        updateHistory();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void fightSelect() {
        setTabSelect(4);
        showDownNotice();
    }

    public void full(boolean z3) {
        if (z3) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.flags |= 1024;
            getWindow().setAttributes(attributes);
            getWindow().addFlags(512);
            return;
        }
        WindowManager.LayoutParams attributes2 = getWindow().getAttributes();
        attributes2.flags &= -1025;
        getWindow().setAttributes(attributes2);
        getWindow().clearFlags(512);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1500)
    public void getBootPageData() {
        List<BootPageData> data;
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ResultMainBean<List<BootPageData>> C = this.rpcClient.C(RequestBeanUtil.getInstance(this).getBootPageData(new BootPageRequestArgs(Build.MODEL, Build.VERSION.RELEASE, Build.BRAND)));
                if (C == null || C.getFlag() != 1 || (data = C.getMessages().getData()) == null || data.size() <= 0) {
                    return;
                }
                preLoadBootImage(data.get(0));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public int getClassifyPrimaryIndex() {
        return this.classifyPrimaryIndex;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void getData(boolean z3) {
        setJPushJump();
        getdownloadTask();
        getEMUVersion();
        loadIpAddress();
        setDefutDownloadPath();
        if (System.currentTimeMillis() - this.prefDef.isFirstRunApkBackupLong().e(0L).longValue() > 86400000 || this.isfirst35) {
            boolean z4 = ContextCompat.checkSelfPermission(this.context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
            this.hasPermiss = z4;
            startBackups(z4);
            getHaveGameList();
        }
        if (com.join.mgps.Util.d2.h(this.prefDef.insatllAppFirstData().d())) {
            getBootPageData();
        }
        checkToken();
        if (z3 || this.prefDef.isFirstCommendVersion().d().booleanValue() || !com.join.mgps.Util.d2.h(this.shortcutGameId) || this.prefDef.firstShowUserPermiss().d().booleanValue()) {
            return;
        }
        checkRealName();
        getHomePopupAd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDetailData(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            if (this.rpcClient == null) {
                this.rpcClient = com.join.mgps.rpc.impl.c.P1();
            }
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                ResultMainBean<CollectionBeanSub> e12 = this.rpcClient.e1(RequestBeanUtil.getInstance(this).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                if (e12 == null || e12.getFlag() == 0) {
                    return;
                }
                showSharedGameDialog(e12.getMessages().getData());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getEMUVersion() {
        Throwable th;
        boolean z3;
        long j4;
        int uid;
        ResultMainBean<List<APKVersionMainBean>> r12;
        ApkVersionbean apkVersionbean;
        Exception exc;
        EMUApkTable eMUApkTable;
        String ver;
        HomeViewSwich homeViewSwich;
        if (this.prefDef.plugHasUpdate().d().booleanValue() || CommonService.I) {
            return;
        }
        int i2 = 1;
        CommonService.I = true;
        try {
            initDefaultPluginInfo();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        int i4 = 0;
        if (com.join.android.app.common.utils.f.j(this)) {
            ResultMainBean<List<APKVersionMainBean>> resultMainBean = null;
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData != null) {
                    try {
                        uid = accountData.getUid();
                    } catch (Exception unused) {
                        CommonService.I = false;
                        if (resultMainBean == null) {
                            com.join.mgps.Util.t0.d("getEMUVersion", "failed  " + this.recomDatabean);
                            this.reloadNumber = this.reloadNumber - 1;
                            j4 = 5000;
                            try {
                                Thread.sleep(j4);
                                getEMUVersion();
                            } catch (InterruptedException unused2) {
                            }
                        }
                        getArenaPluginInfo();
                        getVideoAdCfg(true);
                    } catch (Throwable th2) {
                        th = th2;
                        z3 = false;
                        CommonService.I = z3;
                        if (resultMainBean == null) {
                            com.join.mgps.Util.t0.d("getEMUVersion", "failed  " + this.recomDatabean);
                            this.reloadNumber = this.reloadNumber - 1;
                            try {
                                Thread.sleep(5000L);
                                getEMUVersion();
                            } catch (InterruptedException unused3) {
                            }
                        }
                        throw th;
                    }
                } else {
                    uid = 0;
                }
                r12 = this.recommendClient.r1(RequestBeanUtil.getInstance(this).getApkVersion(2, 2, 0, uid));
                if (r12 != null) {
                    try {
                        try {
                            if (r12.getFlag() == 1) {
                                com.join.mgps.Util.t0.d("getEMUVersion", "sucess");
                                this.prefDef.plugHasUpdate().g(Boolean.TRUE);
                                if (r12.getMessages().getData().size() == 0) {
                                    CommonService.I = false;
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
                                        List<HomeViewSwich> cfg = aPKVersionMainBean.getCfg();
                                        if (cfg != null && cfg.size() > 0 && (homeViewSwich = cfg.get(0)) != null) {
                                            try {
                                                String backSplitData = backSplitData(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_speed_limit().getCfg_values(), null));
                                                if (!backSplitData.equals("-1")) {
                                                    homeViewSwich.getDown_load_speed_limit().setCfg_values_express(backSplitData);
                                                } else {
                                                    homeViewSwich.getDown_load_speed_limit().setCfg_values_express("300");
                                                }
                                                String backSplitData2 = backSplitData(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_size().getCfg_values(), null));
                                                if (!backSplitData2.equals("0")) {
                                                    homeViewSwich.getDown_load_size().setCfg_values_express(backSplitData2);
                                                } else {
                                                    homeViewSwich.getDown_load_size().setCfg_values_express("500");
                                                }
                                                String backSplitData3 = backSplitData(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_cfg_net_game_speed_limit().getCfg_switch(), null));
                                                if (!backSplitData3.equals("-1")) {
                                                    homeViewSwich.getDown_load_cfg_net_game_speed_limit().setCfg_switch_express(backSplitData3);
                                                } else {
                                                    homeViewSwich.getDown_load_cfg_net_game_speed_limit().setCfg_switch_express("0");
                                                }
                                                String backSplitData4 = backSplitData(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_cfg_simulator_speed_limit().getCfg_switch(), null));
                                                if (!backSplitData4.equals("-1")) {
                                                    homeViewSwich.getDown_load_cfg_simulator_speed_limit().setCfg_switch_express(backSplitData4);
                                                } else {
                                                    homeViewSwich.getDown_load_cfg_simulator_speed_limit().setCfg_switch_express("0");
                                                }
                                                String backSplitData5 = backSplitData(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_cfg_stand_alone_speed_limit().getCfg_switch(), null));
                                                if (!backSplitData5.equals("-1")) {
                                                    homeViewSwich.getDown_load_cfg_stand_alone_speed_limit().setCfg_switch_express(backSplitData5);
                                                } else {
                                                    homeViewSwich.getDown_load_cfg_stand_alone_speed_limit().setCfg_switch_express("0");
                                                }
                                                homeViewSwich.getDown_load_unrestricted_speed().setCfg_values_express(backSplitData(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_unrestricted_speed().getCfg_values(), null)));
                                                com.join.mgps.pref.h.n(this.context).N(homeViewSwich);
                                                MApplication.I = homeViewSwich;
                                            } catch (Exception e5) {
                                                e5.printStackTrace();
                                            }
                                            BattaleSwitchBean an_battle_switch = homeViewSwich.getAn_battle_switch();
                                            if (an_battle_switch != null && an_battle_switch.getCfg_switch() == 1) {
                                                this.prefDef.showAnBattle().g(Boolean.TRUE);
                                            } else {
                                                this.prefDef.showAnBattle().g(Boolean.FALSE);
                                            }
                                            BattaleSwitchBean seep_up_read_only_number_of_win = homeViewSwich.getSeep_up_read_only_number_of_win();
                                            if (seep_up_read_only_number_of_win != null && seep_up_read_only_number_of_win.getCfg_switch() == 1) {
                                                this.prefDef.downloadSpeedUpCount().g(Integer.valueOf(seep_up_read_only_number_of_win.getCfg_values()));
                                            } else {
                                                this.prefDef.downloadSpeedUpCount().g(0);
                                            }
                                            BattaleSwitchBean seep_up_read_only_game_size = homeViewSwich.getSeep_up_read_only_game_size();
                                            if (seep_up_read_only_game_size != null && seep_up_read_only_game_size.getCfg_switch() == 1) {
                                                this.prefDef.downloadSpeedUpGameSize().g(Integer.valueOf(seep_up_read_only_game_size.getCfg_values()));
                                            } else {
                                                this.prefDef.downloadSpeedUpGameSize().g(0);
                                            }
                                            if (!com.join.mgps.Util.x.t(this.prefDef.downloadSpeedUpLastTime().d().longValue())) {
                                                this.prefDef.downloadSpeedUpCountCurrent().g(0);
                                                this.prefDef.downloadSpeedUpCountCurrentAD().g(0);
                                                this.prefDef.downloadSpeedUpGames().g("");
                                            }
                                            BattaleSwitchBean psp_ad_show_time = homeViewSwich.getPsp_ad_show_time();
                                            if (psp_ad_show_time != null) {
                                                this.prefDef.pspAdShowTimeSwitch().g(Integer.valueOf(psp_ad_show_time.getCfg_switch()));
                                                this.prefDef.pspAdShowTime().g(Integer.valueOf(psp_ad_show_time.getCfg_values()));
                                            }
                                            BattaleSwitchBean ranking_menu = homeViewSwich.getRanking_menu();
                                            if (ranking_menu != null) {
                                                this.prefDef.rankingMenu().g(ranking_menu.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_arc_ad_id = homeViewSwich.getSeep_up_read_only_arc_ad_id();
                                            if (seep_up_read_only_arc_ad_id != null && seep_up_read_only_arc_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_arc_ad_id.getCfg_values())) {
                                                this.prefDef.adIdArc().g(seep_up_read_only_arc_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_psp_ad_id = homeViewSwich.getSeep_up_read_only_psp_ad_id();
                                            if (seep_up_read_only_psp_ad_id != null && seep_up_read_only_psp_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_psp_ad_id.getCfg_values())) {
                                                this.prefDef.adIdPsp().g(seep_up_read_only_psp_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_down_ad_id = homeViewSwich.getSeep_up_read_only_down_ad_id();
                                            if (seep_up_read_only_down_ad_id != null && seep_up_read_only_down_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_down_ad_id.getCfg_values())) {
                                                this.prefDef.adIdDownloadSpeedUp().g(seep_up_read_only_down_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_common_s_ad_id = homeViewSwich.getSeep_up_read_only_common_s_ad_id();
                                            if (seep_up_read_only_common_s_ad_id != null && seep_up_read_only_common_s_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_common_s_ad_id.getCfg_values())) {
                                                this.prefDef.adIdCommonV().g(seep_up_read_only_common_s_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_common_h_ad_id = homeViewSwich.getSeep_up_read_only_common_h_ad_id();
                                            if (seep_up_read_only_common_h_ad_id != null && seep_up_read_only_common_h_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_common_h_ad_id.getCfg_values())) {
                                                this.prefDef.adIdCommonH().g(seep_up_read_only_common_h_ad_id.getCfg_values());
                                            }
                                            initAdBroadcast();
                                            BattaleSwitchBean nick_name_modify_title = homeViewSwich.getNick_name_modify_title();
                                            if (nick_name_modify_title != null) {
                                                this.prefDef.changeNickNameNotice().g(nick_name_modify_title.getCfg_values());
                                            }
                                            BattaleSwitchBean game_download_boot = homeViewSwich.getGame_download_boot();
                                            if (game_download_boot != null) {
                                                String cfg_values = game_download_boot.getCfg_values();
                                                if (com.join.mgps.Util.d2.i(cfg_values)) {
                                                    try {
                                                        int intValue = this.prefDef.insatllAppFirst().d().intValue();
                                                        int parseInt = Integer.parseInt(cfg_values);
                                                        if (intValue == -8) {
                                                            this.prefDef.insatllAppFirst().g(Integer.valueOf(parseInt));
                                                        }
                                                    } catch (Exception e6) {
                                                        e6.printStackTrace();
                                                    }
                                                }
                                            }
                                            BattaleSwitchBean game_performance_boot = homeViewSwich.getGame_performance_boot();
                                            if (game_performance_boot != null) {
                                                String cfg_values2 = game_performance_boot.getCfg_values();
                                                if (com.join.mgps.Util.d2.i(cfg_values2)) {
                                                    try {
                                                        int parseInt2 = Integer.parseInt(cfg_values2);
                                                        if (this.prefDef.runRomFirst().d().intValue() == -8) {
                                                            this.prefDef.runRomFirst().g(Integer.valueOf(parseInt2));
                                                        }
                                                    } catch (Exception e7) {
                                                        e7.printStackTrace();
                                                    }
                                                }
                                            }
                                            BattaleSwitchBean app_down_wifi_status = homeViewSwich.getApp_down_wifi_status();
                                            if (app_down_wifi_status != null) {
                                                String cfg_values3 = app_down_wifi_status.getCfg_values();
                                                if (com.join.mgps.Util.d2.i(cfg_values3)) {
                                                    try {
                                                        int parseInt3 = Integer.parseInt(cfg_values3);
                                                        if (this.prefDef.wifiDownNumber().d().intValue() == -1) {
                                                            this.prefDef.wifiDownNumber().g(Integer.valueOf(parseInt3));
                                                        }
                                                    } catch (Exception e8) {
                                                        e8.printStackTrace();
                                                    }
                                                }
                                            }
                                            BattaleSwitchBean ext_game_upload_type = homeViewSwich.getExt_game_upload_type();
                                            if (ext_game_upload_type != null && com.join.mgps.Util.d2.i(ext_game_upload_type.getCfg_values())) {
                                                try {
                                                    this.prefDef.uploadType2().g(ext_game_upload_type.getCfg_values());
                                                } catch (Exception e9) {
                                                    e9.printStackTrace();
                                                }
                                            }
                                            BattaleSwitchBean wf_home_page_position = homeViewSwich.getWf_home_page_position();
                                            if (wf_home_page_position != null && wf_home_page_position.getCfg_switch() == 1) {
                                                this.prefDef.showIndex().g(wf_home_page_position.getCfg_values());
                                            } else {
                                                this.prefDef.showIndex().g(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                                            }
                                            BattaleSwitchBean md5_file_tag = homeViewSwich.getMd5_file_tag();
                                            if (md5_file_tag != null && md5_file_tag.getCfg_switch() == 1) {
                                                this.prefDef.md5FileTag().g(md5_file_tag.getCfg_values());
                                                com.join.mgps.Util.u.f27859r = md5_file_tag.getCfg_values();
                                            } else {
                                                this.prefDef.md5FileTag().g("");
                                            }
                                            try {
                                                this.prefDef.emulatorStartAdCount().g(Integer.valueOf(Integer.parseInt(homeViewSwich.getEmulator_start_ad_count().getCfg_values())));
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                            this.prefDef.emulatorGoldenFingerUrl().g(homeViewSwich.getEmulator_golden_finger_url().getCfg_values());
                                            this.prefDef.emulatorOneSkillUrl().g(homeViewSwich.getEmulator_one_skill_url().getCfg_values());
                                            this.prefDef.emulatorCheckpointUrl().g(homeViewSwich.getEmulator_checkpoint_url().getCfg_values());
                                        }
                                    } catch (Exception e11) {
                                        e11.printStackTrace();
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
                                            if (Float.parseFloat(A[0]) < parseInt5) {
                                                showVersionDownLoadHint(versionDto, true);
                                            } else {
                                                showVersionDownLoadHint(versionDto, false);
                                            }
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
                                        HashMap hashMap = new HashMap();
                                        hashMap.put("tag_id", apkVersionbean2.getTag_id());
                                        List<EMUApkTable> h4 = n1.p.o().h(hashMap);
                                        if (h4 != null && h4.size() > 0) {
                                            if (h4.size() > i2) {
                                                for (int i5 = 0; i5 < h4.size(); i5++) {
                                                    n1.p.o().delete((n1.p) h4.get(i5));
                                                }
                                            }
                                            try {
                                                eMUApkTable = h4.get(i4);
                                            } catch (Exception e12) {
                                                exc = e12;
                                                eMUApkTable = null;
                                            }
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
                                                    if (B.getFileType() != null && B.getFileType().equals(Dtype.chajian.name()) && B.getDown_type() == 2 && eMUApkTable.getDown_type() == 2 && TextUtils.isEmpty(eMUApkTable.getApkPath())) {
                                                        eMUApkTable.setApkPath(com.join.android.app.common.utils.h.h(B.getPlugin_num(), new File(B.getGameZipPath())));
                                                    }
                                                    if (r02 && B.getStatus() == 5) {
                                                        B.setUrl(apkVersionbean2.getDown_url());
                                                        if (com.join.mgps.Util.d2.h(B.getMod_info())) {
                                                            B.setStatus(9);
                                                        }
                                                        B.setShowName(apkVersionbean2.getApk_name());
                                                        B.setDescribe(apkVersionbean2.getVer_info());
                                                        B.setPortraitURL(apkVersionbean2.getLogo());
                                                    } else if (B.getStatus() == 0) {
                                                        B.setStatus(5);
                                                    }
                                                    g1.f.G().m(B);
                                                    if (B.getStatus() == 9 || (r02 && B.getStatus() == 5)) {
                                                        com.join.android.app.common.utils.h.G(this.context, eMUApkTable);
                                                    }
                                                } else if (r02) {
                                                    if (eMUApkTable.getDown_type() == 2) {
                                                        if (com.join.android.app.common.utils.h.t(this.context, eMUApkTable, false, new String[0])) {
                                                            UtilsMy.a2(eMUApkTable, this.context);
                                                        }
                                                    } else {
                                                        UtilsMy.a2(eMUApkTable, this.context);
                                                    }
                                                } else if (com.join.android.app.common.utils.h.t(this.context, eMUApkTable, false, new String[0])) {
                                                    UtilsMy.Z1(eMUApkTable, this.context);
                                                }
                                            } catch (Exception e13) {
                                                exc = e13;
                                                exc.printStackTrace();
                                                n1.p.o().update(eMUApkTable);
                                                com.join.android.app.common.utils.h.F(eMUApkTable);
                                                i2 = 1;
                                                i4 = 0;
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
                                                if (B.getFileType() != null && B.getFileType().equals(Dtype.chajian.name()) && B.getDown_type() == 2 && eMUApkTable2.getDown_type() == 2 && TextUtils.isEmpty(eMUApkTable2.getApkPath())) {
                                                    eMUApkTable2.setApkPath(com.join.android.app.common.utils.h.h(B.getPlugin_num(), new File(B.getGameZipPath())));
                                                }
                                                if (r03 && B.getStatus() == 5) {
                                                    B.setUrl(apkVersionbean2.getDown_url());
                                                    B.setShowName(apkVersionbean2.getApk_name());
                                                    if (com.join.mgps.Util.d2.h(B.getMod_info())) {
                                                        B.setStatus(9);
                                                    }
                                                } else if (B.getStatus() == 0) {
                                                    B.setStatus(5);
                                                }
                                                g1.f.G().m(B);
                                                if (B.getStatus() == 9 || (r03 && B.getStatus() == 5)) {
                                                    com.join.android.app.common.utils.h.G(this.context, eMUApkTable2);
                                                }
                                            } else {
                                                if (r03) {
                                                    if (eMUApkTable2.getDown_type() == 2) {
                                                        if (com.join.android.app.common.utils.h.t(this.context, eMUApkTable2, false, new String[0])) {
                                                            UtilsMy.a2(eMUApkTable2, this.context);
                                                        }
                                                    } else {
                                                        UtilsMy.a2(eMUApkTable2, this.context);
                                                    }
                                                } else if (com.join.android.app.common.utils.h.t(this.context, eMUApkTable2, false, new String[0])) {
                                                    UtilsMy.Z1(eMUApkTable2, this.context);
                                                }
                                                i2 = 1;
                                                i4 = 0;
                                            }
                                        }
                                        i2 = 1;
                                        i4 = 0;
                                    }
                                }
                                com.papa.sim.statistic.p.l(getApplicationContext()).w2(true, JsonMapper.getInstance().toJson(n1.p.o().d()));
                            }
                        } catch (Exception unused4) {
                            resultMainBean = r12;
                            CommonService.I = false;
                            if (resultMainBean == null && this.reloadNumber > 0) {
                                com.join.mgps.Util.t0.d("getEMUVersion", "failed  " + this.recomDatabean);
                                this.reloadNumber = this.reloadNumber - 1;
                                j4 = 5000;
                                Thread.sleep(j4);
                                getEMUVersion();
                            }
                            getArenaPluginInfo();
                            getVideoAdCfg(true);
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        resultMainBean = r12;
                        z3 = false;
                        CommonService.I = z3;
                        if (resultMainBean == null && this.reloadNumber > 0) {
                            com.join.mgps.Util.t0.d("getEMUVersion", "failed  " + this.recomDatabean);
                            this.reloadNumber = this.reloadNumber - 1;
                            Thread.sleep(5000L);
                            getEMUVersion();
                        }
                        throw th;
                    }
                }
                CommonService.I = false;
            } catch (Exception unused5) {
                resultMainBean = null;
            } catch (Throwable th4) {
                th = th4;
                z3 = false;
                resultMainBean = null;
            }
            if (r12 == null && this.reloadNumber > 0) {
                com.join.mgps.Util.t0.d("getEMUVersion", "failed  " + this.recomDatabean);
                this.reloadNumber = this.reloadNumber - 1;
                j4 = 5000;
                Thread.sleep(j4);
                getEMUVersion();
            }
        } else {
            CommonService.I = false;
            com.join.mgps.Util.t0.d("getEMUVersion", "nonet");
        }
        getArenaPluginInfo();
        getVideoAdCfg(true);
    }

    void getFriendInfo(int i2) {
        new e0().execute(Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getHaveGameList() {
        if (com.join.android.app.common.utils.f.j(this.context)) {
            try {
                if (this.rpcConsoleGameClient == null) {
                    this.rpcConsoleGameClient = com.join.mgps.rpc.impl.e.b();
                }
                String uid = AccountUtil_.getInstance_(this).getUid();
                String token = AccountUtil_.getInstance_(this).getToken();
                HashMap hashMap = new HashMap();
                hashMap.put("uid", uid);
                hashMap.put("token", token);
                ResultMainBean<List<AppBean>> a4 = this.rpcConsoleGameClient.a(hashMap);
                if (a4 == null || a4.getFlag() != 1 || a4.getMessages() == null || a4.getMessages().getData() == null) {
                    return;
                }
                savePurchasedList(a4.getMessages().getData());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getHomePopupAd() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.context).getAccountData();
                ResultMainBean<PopupAdBean> J = this.rpcClient.J(RequestBeanUtil.getInstance(this).getHomePopupAd(accountData.getVip_level() > 0, accountData.getUid()));
                if (J != null && J.getFlag() == 1) {
                    showHomePopupAd(J.getMessages().getData());
                } else {
                    showHomePopupAd(null);
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showHomePopupAd(null);
                return;
            }
        }
        showHomePopupAd(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getOnlineCouponConfig(int i2) {
    }

    public int getPositionNum() {
        return this.positionNum;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getRedPointData() {
        AccountBean accountData;
        UsercenterFragmentNew usercenterFragmentNew;
        if (!com.join.android.app.common.utils.f.j(this.context) || (accountData = AccountUtil_.getInstance_(this.context).getAccountData()) == null || accountData.getUid() == 0 || AccountUtil_.getInstance_(this.context).isTourist()) {
            return;
        }
        try {
            MessageRedPointBean H1 = this.rpcClient.H1(RequestBeanUtil.getInstance(this.context).getGRedPointNum(accountData.getUid()));
            if (H1 != null && H1.getMessages() != null && H1.getMessages().getData() != null) {
                MessageRedPointBean.MessagesBean.DataBean data = H1.getMessages().getData();
                MApplication.D = data;
                int community_praise_surplus_number = data.getCommunity_praise_surplus_number() + MApplication.D.getCommunity_surplus_number() + MApplication.D.getNotice_surplus_number() + MApplication.D.getPraise_surplus_number() + MApplication.D.getReplay_surplus_number();
                MApplication.H = community_praise_surplus_number;
                if (community_praise_surplus_number > 0) {
                    if (this.positionNum == 1 && (usercenterFragmentNew = this.userCenterFragment) != null) {
                        usercenterFragmentNew.showNotif();
                    } else {
                        showRedPoint();
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public CommonRequestBean getRequestBean(int i2) {
        return RequestBeanUtil.getInstance(this).getRecomeAppwifi(i2, 9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getRootUrl() {
        try {
            com.join.android.app.common.http.c.e(this.context);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getSNKGameInfo(int i2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.timelastSnk < com.join.mgps.data.c.f47286a) {
            return;
        }
        this.timelastSnk = currentTimeMillis;
        if (!com.join.android.app.common.utils.f.j(this.context)) {
            if (i2 == 0) {
                showToast("网络已断开，请连上网络后再试！");
                return;
            }
            return;
        }
        try {
            ResultMainBean<SNKGameInfoBean> V = this.mRpcClient.V(RequestBeanUtil.getInstance(this.context).getPreloadingADRequestBean());
            if (V == null || V.getCode() != 600) {
                return;
            }
            setSNKGameData(V.getMessages().getData());
        } catch (Exception e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("e:");
            sb.append(e4.getMessage());
        }
    }

    public List<String> getSnkGameList() {
        return this.snkGameList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.J})
    public void getUpdateIntent(Intent intent) {
        VersionDto versionDto = (VersionDto) intent.getSerializableExtra("appUpdateBean");
        showVersionDownLoadHint(versionDto, versionDto.isQiangzhi());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getVideoAdCfg(boolean z3) {
        try {
            if (com.join.android.app.common.utils.f.j(this.context)) {
                try {
                    AccountBean accountData = AccountUtil_.getInstance_(this.context).getAccountData();
                    if (accountData == null) {
                        accountData = new AccountBean();
                    }
                    RequestModel requestModel = new RequestModel();
                    VideoAdCfgRequestArgs videoAdCfgRequestArgs = new VideoAdCfgRequestArgs();
                    videoAdCfgRequestArgs.setUid(accountData.getUid());
                    videoAdCfgRequestArgs.setToken(accountData.getToken());
                    requestModel.setArgs(videoAdCfgRequestArgs);
                    requestModel.setDefault(this.context);
                    ResponseModel<VideoAdCfgBean> q3 = com.join.mgps.rpc.impl.h.L().q(requestModel.makeSign());
                    if (q3 != null && q3.getCode() == 200) {
                        VideoAdCfgBean data = q3.getData();
                        this.prefDef.arcadeGameAdCfg().g(BaseBean.toJsonStringOrEmpty(data.getArcade_game_ad_cfg()));
                        this.prefDef.singleGameAdCfg().g(BaseBean.toJsonStringOrEmpty(data.getSingle_game_ad_cfg()));
                        this.prefDef.pspGameAdCfg().g(BaseBean.toJsonStringOrEmpty(data.getPsp_game_ad_cfg()));
                        this.prefDef.pspAdShowTimeSwitch().g(Integer.valueOf(data.getPsp_game_ad_cfg().getSwitch_state()));
                        this.prefDef.pspAdShowTime().g(Integer.valueOf(data.getPsp_game_ad_cfg().getCount_down()));
                        this.prefDef.downloadSpeedupCfg().g(BaseBean.toJsonStringOrEmpty(data.getDownload_speedup_cfg()));
                        this.prefDef.mod_normal_ad_cfg().g(BaseBean.toJsonStringOrEmpty(data.getMod_normal_ad_cfg()));
                        this.prefDef.mod_enhance_ad_cfg().g(BaseBean.toJsonStringOrEmpty(data.getMod_enhance_ad_cfg()));
                        this.prefDef.simulator_path_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_path_cfg()));
                        this.prefDef.simulator_fc_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_fc_cfg()));
                        this.prefDef.simulator_gba_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_gba_cfg()));
                        this.prefDef.simulator_psp_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_psp_cfg()));
                        this.prefDef.simulator_jj_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_jj_cfg()));
                        this.prefDef.simulator_gold_finger_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_gold_finger_cfg()));
                        if (data.getDownload_speedup_cfg() != null) {
                            if (data.getDownload_speedup_cfg().getSwitch_state() == 1) {
                                this.prefDef.downloadSpeedUpCountAD().g(Integer.valueOf(data.getDownload_speedup_cfg().getSpeedup_times()));
                            } else {
                                this.prefDef.downloadSpeedUpCountAD().g(0);
                            }
                        } else {
                            this.prefDef.downloadSpeedUpCountAD().g(0);
                        }
                    } else if (q3 != null) {
                        showToast(q3.getMessage());
                    }
                    if (!z3) {
                        return;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    showToast(this.context.getResources().getString(R.string.request_failure));
                    if (!z3) {
                        return;
                    }
                }
                initAdVideoConfig();
                return;
            }
            showToast(this.context.getResources().getString(R.string.net_connect_failed));
        } catch (Throwable th) {
            if (z3) {
                initAdVideoConfig();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1000)
    public void getdownloadTask() {
        List<DownloadTask> d4 = g1.f.G().d();
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException e4) {
            e4.printStackTrace();
        }
        getdownloadTaskUI(d4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void getdownloadTaskUI(List<DownloadTask> list) {
        this.downloadTasks = list;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : list) {
            if ("46".equals(downloadTask.getPlugin_num()) && downloadTask.getStatus() == 5) {
                if (!Boolean.valueOf(com.join.android.app.common.utils.a.g0(this).c(this, downloadTask.getPackageName()) || com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName())).booleanValue() && downloadTask.getStatus() == 5) {
                    g1.f.G().n(downloadTask.getCrc_link_type_val());
                }
            }
            if (downloadTask.getCrc_link_type_val() != null) {
                this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleFailure(ArenaResponse arenaResponse) {
        int i2;
        Activity w3 = com.join.android.app.common.utils.j.w();
        if (w3 == null || (w3 instanceof GameMainActivity3) || (w3 instanceof GameRoomListActivity) || (i2 = arenaResponse.errorType) == 10) {
            return;
        }
        if (i2 == 16) {
            showToast("无法加入，你被禁止加入该房间");
        } else if (i2 == 17) {
            showToast("该房间为比赛专用房间,非参赛选手无法加入");
        } else if (i2 == 9) {
            showToast("房间人数已满你无法加入房间");
        } else if (i2 == 7) {
            showToast("密码输入错误，请重试!");
        } else if (i2 == 8) {
            showToast("房间已经被解散！");
            org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.m(8));
        } else if (i2 == 11) {
            showToast("铜板不足，无法创建房间!");
        } else if (i2 == 13) {
            showToast("铜板不足，无法加入房间");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 5000)
    public void handleVideoAdWatchLogRecord() {
        List<VideoWatchLogTable> d4 = n1.n0.n().d();
        if (d4 == null || d4.size() <= 0) {
            return;
        }
        for (final VideoWatchLogTable videoWatchLogTable : d4) {
            this.handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.h1
                @Override // java.lang.Runnable
                public final void run() {
                    MGMainActivity.this.lambda$handleVideoAdWatchLogRecord$5(videoWatchLogTable);
                }
            }, 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideRedPoint() {
        this.red_point.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1300)
    public void hideSplash() {
        show10Permiss();
        this.splash.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1300)
    public void hideSplash2() {
        show10Permiss();
        this.splash.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void init() {
        if (!com.join.mgps.Util.c0.a().b(this)) {
            com.join.mgps.Util.c0.a().d(this);
        }
        com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(getApplicationContext());
        l4.o();
        l4.z2(new com.join.mgps.listener.d());
        if (Build.VERSION.SDK_INT >= 11) {
            l4.y2(true);
            l4.x2(true);
        }
        com.papa.sim.statistic.p.l(this).C2(0, AccountUtil_.getInstance_(this).getUid());
        try {
            CommonService_.d2(getApplicationContext()).a();
        } catch (Exception unused) {
        }
        this.prefDef.plugHasUpdate().g(Boolean.FALSE);
        CommonService.I = false;
        com.papa.sim.statistic.p.l(this).R1(AccountUtil_.getInstance_(this).getUid());
        jpushInit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void initAdVideoConfig() {
        initTTDownLoadSpeedAd("", false);
        initTTPspAd(false);
        initGDTDownLoadSpeedAd("", false);
        initGDTPspAd(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void initApplicationData() {
        MApplication mApplication = MApplication.f9223q;
        mApplication.r();
        mApplication.y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void initCheckSNKGame(List<String> list, int i2) {
        List<String> list2;
        if (!com.join.android.app.common.utils.f.j(this.context) || (list2 = this.snkGameList) == null || list2.size() <= 0) {
            return;
        }
        String str = "";
        for (int i4 = 0; i4 < list.size(); i4++) {
            try {
                String d4 = com.join.mgps.Util.v0.d(list.get(i4) + "wufan2019");
                int i5 = 0;
                while (true) {
                    if (i5 >= this.snkGameList.size()) {
                        break;
                    } else if (d4.equals(this.snkGameList.get(i5))) {
                        this.listTempZip.add(list.get(i4));
                        str = str.equals("") ? d4 : str + "," + d4;
                    } else {
                        i5++;
                    }
                }
            } catch (Exception e4) {
                StringBuilder sb = new StringBuilder();
                sb.append("e:");
                sb.append(e4.getMessage());
                return;
            }
        }
        if (str.equals("")) {
            showCheckData(null);
            return;
        }
        ResultMainBean<List<CollectionBeanSub>> A1 = this.mRpcClient.A1(RequestBeanUtil.getInstance(this.context).getSNKGameCheckRequestBean(str));
        if (A1 == null || A1.getMessages().getData().size() <= 0) {
            return;
        }
        if (i2 == 1) {
            showCheckData(A1.getMessages().getData());
        } else {
            sanLocalGameIv(1);
        }
    }

    public void initGDTAd(String str, String str2, String str3, int i2, int i4, boolean z3) {
        if (this.gdtAdVideo == null && com.join.mgps.Util.d2.i(str)) {
            n nVar = new n(this, str, str2, z3);
            this.gdtAdVideo = nVar;
            nVar.m(str3);
            this.gdtAdVideo.n(i2);
            this.gdtAdVideo.o(i4);
            this.gdtAdVideo.e();
            return;
        }
        com.join.mgps.ad.e eVar = this.gdtAdVideo;
        if (eVar != null) {
            eVar.h(false);
        }
    }

    public void initGoldGDTAd(String str, String str2, String str3, int i2, int i4, Map<String, Object> map, boolean z3) {
        if (this.gdtGoldAdVideo == null && com.join.mgps.Util.d2.i(str)) {
            p pVar = new p(this, str, str2, z3);
            this.gdtGoldAdVideo = pVar;
            pVar.m(str3);
            this.gdtGoldAdVideo.n(i2);
            this.gdtGoldAdVideo.o(i4);
            this.gdtGoldAdVideo.l(map);
            this.gdtGoldAdVideo.e();
            return;
        }
        com.join.mgps.ad.e eVar = this.gdtGoldAdVideo;
        if (eVar != null) {
            eVar.h(false);
        }
    }

    public void initGoldTTAd(String str, String str2, String str3, int i2, int i4, Map<String, Object> map, boolean z3) {
        if (this.ttGoldAdVideo == null && com.join.mgps.Util.d2.i(str)) {
            o oVar = new o(this, str, str2, z3);
            this.ttGoldAdVideo = oVar;
            oVar.m(str3);
            this.ttGoldAdVideo.n(i2);
            this.ttGoldAdVideo.o(i4);
            this.ttGoldAdVideo.l(map);
            this.ttGoldAdVideo.e();
            return;
        }
        com.join.mgps.ad.m mVar = this.ttGoldAdVideo;
        if (mVar != null) {
            mVar.h(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void initJPushJoinDevice() {
        AccountBean accountData;
        if (!com.join.android.app.common.utils.f.j(this.context) || (accountData = AccountUtil_.getInstance_(this.context).getAccountData()) == null || accountData.getUid() == 0 || AccountUtil_.getInstance_(this.context).isTourist()) {
            return;
        }
        if (this.rpcAccountClient == null) {
            this.rpcAccountClient = com.join.mgps.rpc.impl.a.b0();
        }
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this.context).getUid() + "");
        linkedMultiValueMap.add("token", AccountUtil_.getInstance_(this.context).getToken());
        AccountResultMainBean<JPushJoinDeviceResult> R = this.rpcAccountClient.R(linkedMultiValueMap);
        if (R != null && R.getError() == 0 && R.getData().isResult()) {
            R.getData().getMsg();
        }
    }

    public void initTTAd(String str, String str2, boolean z3) {
        if (this.ttAdVideo == null && com.join.mgps.Util.d2.i(str)) {
            m mVar = new m(this, str, str2, z3);
            this.ttAdVideo = mVar;
            mVar.e();
            return;
        }
        com.join.mgps.ad.m mVar2 = this.ttAdVideo;
        if (mVar2 != null) {
            mVar2.h(false);
        }
    }

    void invite(final FriendInviteBean friendInviteBean) {
        SmartPopupWindow smartPopupWindow = this.invitePop;
        if (smartPopupWindow != null && smartPopupWindow.isShowing()) {
            this.handler.removeCallbacks(this.f33219r);
            this.invitePop.dismiss();
        }
        com.join.android.app.common.utils.j.n(this);
        Activity w3 = com.join.android.app.common.utils.j.w();
        if (w3 == null) {
            return;
        }
        View inflate = LayoutInflater.from(this).inflate(R.layout.pop_friend_invite, (ViewGroup) null);
        SmartPopupWindow b4 = SmartPopupWindow.f.a(w3, inflate).e(false).d(R.style.animationFromRight).b();
        this.invitePop = b4;
        b4.setWidth(getResources().getDimensionPixelOffset(R.dimen.wdp465));
        this.invitePop.setHeight(getResources().getDimensionPixelOffset(R.dimen.wdp137));
        inflate.findViewById(R.id.accept).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.b1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MGMainActivity.this.lambda$invite$9(view);
            }
        });
        inflate.findViewById(R.id.decline).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MGMainActivity.this.lambda$invite$10(friendInviteBean, view);
            }
        });
        this.avatar = (SimpleDraweeView) inflate.findViewById(R.id.avatar);
        this.name = (TextView) inflate.findViewById(R.id.name);
        this.gameName = (TextView) inflate.findViewById(R.id.gameName);
        this.name.setText(friendInviteBean.getFromNickname());
        this.gameName.setText(friendInviteBean.getGameName());
        MyImageLoader.w(this.avatar, friendInviteBean.getAvatar());
        this.invitePop.B(w3.getWindow().getDecorView(), 3, 4);
        this.handler.postDelayed(this.f33219r, AbstractTrafficShapingHandler.DEFAULT_MAX_TIME);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean isHomePopupAdCached(com.join.mgps.dto.PopupAdBean r8) {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
            if (r8 == 0) goto L68
            java.util.List r2 = r8.getBig_pic()     // Catch: java.lang.Exception -> L66
            if (r2 == 0) goto L68
            java.util.List r2 = r8.getBig_pic()     // Catch: java.lang.Exception -> L66
            int r2 = r2.size()     // Catch: java.lang.Exception -> L66
            if (r2 <= 0) goto L68
            java.util.List r2 = r8.getBig_pic()     // Catch: java.lang.Exception -> L66
            int r2 = r2.size()     // Catch: java.lang.Exception -> L66
            r3 = 0
            r4 = 0
        L1e:
            if (r3 >= r2) goto L62
            java.util.List r5 = r8.getBig_pic()     // Catch: java.lang.Exception -> L66
            java.lang.Object r5 = r5.get(r3)     // Catch: java.lang.Exception -> L66
            com.join.mgps.dto.RecomDatabean r5 = (com.join.mgps.dto.RecomDatabean) r5     // Catch: java.lang.Exception -> L66
            com.join.mgps.dto.ModleBean r6 = r5.getMain()     // Catch: java.lang.Exception -> L66
            if (r6 == 0) goto L5f
            com.join.mgps.dto.ModleBean r6 = r5.getMain()     // Catch: java.lang.Exception -> L66
            java.lang.String r6 = r6.getPic_remote()     // Catch: java.lang.Exception -> L66
            boolean r6 = com.join.mgps.Util.d2.i(r6)     // Catch: java.lang.Exception -> L66
            if (r6 == 0) goto L5f
            com.join.mgps.dto.ModleBean r5 = r5.getMain()     // Catch: java.lang.Exception -> L66
            java.lang.String r5 = r5.getPic_remote()     // Catch: java.lang.Exception -> L66
            boolean r6 = com.join.mgps.Util.k0.n(r5)     // Catch: java.lang.Exception -> L66
            if (r6 != 0) goto L5d
            boolean r6 = r7.isHomePopupAdLocalCached(r5)     // Catch: java.lang.Exception -> L66
            if (r6 == 0) goto L53
            goto L5d
        L53:
            android.content.Context r6 = r7.context     // Catch: java.lang.Exception -> L66
            java.io.File r6 = com.join.mgps.Util.u.b(r6)     // Catch: java.lang.Exception -> L66
            com.join.mgps.Util.k0.f(r5, r7, r6, r0)     // Catch: java.lang.Exception -> L66
            goto L5f
        L5d:
            int r4 = r4 + 1
        L5f:
            int r3 = r3 + 1
            goto L1e
        L62:
            if (r4 != r2) goto L68
            r2 = 1
            goto L69
        L66:
            r8 = move-exception
            goto Lbf
        L68:
            r2 = 0
        L69:
            if (r8 == 0) goto Lc3
            java.util.List r3 = r8.getMore()     // Catch: java.lang.Exception -> Lbd
            if (r3 == 0) goto Lc3
            java.util.List r3 = r8.getMore()     // Catch: java.lang.Exception -> Lbd
            int r3 = r3.size()     // Catch: java.lang.Exception -> Lbd
            if (r3 <= 0) goto Lc3
            java.util.List r8 = r8.getMore()     // Catch: java.lang.Exception -> Lbd
            java.lang.Object r8 = r8.get(r1)     // Catch: java.lang.Exception -> Lbd
            com.join.mgps.dto.RecomDatabean r8 = (com.join.mgps.dto.RecomDatabean) r8     // Catch: java.lang.Exception -> Lbd
            if (r8 == 0) goto Lc3
            com.join.mgps.dto.ModleBean r1 = r8.getMain()     // Catch: java.lang.Exception -> Lbd
            if (r1 == 0) goto Lc3
            com.join.mgps.dto.ModleBean r1 = r8.getMain()     // Catch: java.lang.Exception -> Lbd
            java.lang.String r1 = r1.getPic_remote()     // Catch: java.lang.Exception -> Lbd
            boolean r1 = com.join.mgps.Util.d2.i(r1)     // Catch: java.lang.Exception -> Lbd
            if (r1 == 0) goto Lc3
            com.join.mgps.dto.ModleBean r8 = r8.getMain()     // Catch: java.lang.Exception -> Lbd
            java.lang.String r8 = r8.getPic_remote()     // Catch: java.lang.Exception -> Lbd
            boolean r1 = com.join.mgps.Util.k0.n(r8)     // Catch: java.lang.Exception -> Lbd
            if (r1 != 0) goto Lba
            boolean r1 = r7.isHomePopupAdLocalCached(r8)     // Catch: java.lang.Exception -> Lbd
            if (r1 == 0) goto Lb0
            goto Lba
        Lb0:
            android.content.Context r1 = r7.context     // Catch: java.lang.Exception -> Lbd
            java.io.File r1 = com.join.mgps.Util.u.b(r1)     // Catch: java.lang.Exception -> Lbd
            com.join.mgps.Util.k0.f(r8, r7, r1, r0)     // Catch: java.lang.Exception -> Lbd
            goto Lc3
        Lba:
            r2 = r2 & 1
            goto Lc3
        Lbd:
            r8 = move-exception
            r1 = r2
        Lbf:
            r8.printStackTrace()
            goto Lc4
        Lc3:
            r1 = r2
        Lc4:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MGMainActivity.isHomePopupAdCached(com.join.mgps.dto.PopupAdBean):boolean");
    }

    boolean isHomePopupAdLocalCached(String str) {
        return new File(com.join.mgps.Util.u.b(this.context), com.join.mgps.Util.g0.o(str)).exists();
    }

    public boolean isRunService(Context context, String str) {
        for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningServices(Integer.MAX_VALUE)) {
            if (str.equals(runningServiceInfo.service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    void jpushInit() {
        try {
            com.join.mgps.Util.q0.i(getApplicationContext());
            long currentTimeMillis = System.currentTimeMillis();
            long longValue = this.prefDef.lastSendAppTime().d().longValue();
            if (currentTimeMillis - longValue > 86400000 || longValue == 0) {
                this.prefDef.needsendRigeister().d().booleanValue();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void mg_category_tabselectClicked() {
        setTabSelect(1);
        showDownNotice();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void mg_chart_tabselectClicked() {
        this.notice_layout.setVisibility(8);
        setTabSelect(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void mg_emulator_tabselect() {
        Fragment fragment;
        showDownNotice();
        if (this.positionNum == 3 && (fragment = this.mgPapaMainFragment) != null && (fragment instanceof o2)) {
            if (this.isPapaMainFragmentHasNewData) {
                ((o2) fragment).B0();
                this.isPapaMainFragmentHasNewData = false;
                Ext ext = new Ext();
                ext.setIsAutoRefresh(2);
                com.papa.sim.statistic.p.l(this.context).C1(ext);
            } else {
                ((o2) fragment).g1();
            }
        }
        setTabSelect(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void mg_recom_tabselectClicked() {
        setTabSelect(7);
        showDownNotice();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        int i5;
        super.onActivityResult(i2, i4, intent);
        if (i2 == 10000) {
            this.showInstallLayout = true;
            checkRealName();
            getHomePopupAd();
            show10Permiss();
            this.splash.setVisibility(8);
        } else if (i2 == 10002) {
        } else {
            if (i2 != 10003) {
                if (i2 == 34343) {
                    show10Permiss();
                    this.splash.setVisibility(8);
                    return;
                }
                return;
            }
            com.join.mgps.Util.t0.d("backupData", "提示弹窗2222");
            if (this.showInstallNoticeOrappDialog && (i5 = this.backupNumber) > 0) {
                showBackupFinishDialog(i5);
            } else {
                this.hasRunFinishforFinishDialog = true;
            }
            showDownNotice();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAdVipEvent(com.join.mgps.event.a aVar) {
        DownloadTask a4 = aVar.a();
        this.mAdVipEvent = a4;
        if (a4 == null) {
            return;
        }
        String crc_link_type_val = a4.getCrc_link_type_val();
        String d4 = this.prefDef.singleGameShowDialog().d();
        if (com.join.mgps.Util.d2.h(d4)) {
            HashMap hashMap = new HashMap();
            hashMap.put(crc_link_type_val, new SingleGameAdBean(1, System.currentTimeMillis()));
            this.allJsonStr = JsonMapper.getInstance().toJson(hashMap);
            toStartGame();
            return;
        }
        new HashMap();
        Map map = (Map) JsonMapper.getInstance().fromJson(d4, JsonMapper.getInstance().getTypeFactory().constructParametricType(HashMap.class, String.class, SingleGameAdBean.class));
        if (!d4.contains(crc_link_type_val)) {
            map.put(crc_link_type_val, new SingleGameAdBean(1, System.currentTimeMillis()));
            this.allJsonStr = JsonMapper.getInstance().toJson(map);
            toStartGame();
            return;
        }
        SingleGameAdBean singleGameAdBean = (SingleGameAdBean) map.get(crc_link_type_val);
        int counts = singleGameAdBean.getCounts();
        long time = singleGameAdBean.getTime();
        int i2 = MApplication.f9234v0;
        if (!com.join.mgps.Util.x.t(time)) {
            map.put(crc_link_type_val, new SingleGameAdBean(-1, System.currentTimeMillis()));
            this.allJsonStr = JsonMapper.getInstance().toJson(map);
            showAdVipMainDialog(this.mAdVipEvent.getCrc_link_type_val());
        } else if (counts == -1) {
            toStartGame();
        } else {
            int i4 = counts + 1;
            map.put(crc_link_type_val, new SingleGameAdBean(i4, System.currentTimeMillis()));
            this.allJsonStr = JsonMapper.getInstance().toJson(map);
            if (i4 == i2) {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                this.accountBean = accountData;
                if (accountData.getVip_exp_time() * 1000 <= System.currentTimeMillis()) {
                    showAdVipMainDialog(this.mAdVipEvent.getCrc_link_type_val());
                    return;
                } else {
                    toStartGame();
                    return;
                }
            }
            toStartGame();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAddShortcutEvent(com.join.mgps.event.b bVar) {
        w1 w1Var = this.mPapaActivity;
        if (w1Var == null || !(w1Var instanceof w1) || bVar == null) {
            return;
        }
        w1Var.K0(bVar.a());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onArenaResponse(ArenaResponse arenaResponse) {
        if (arenaResponse == null) {
            return;
        }
        handleFailure(arenaResponse);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.papa.sim.statistic.p.l(this).G1(AccountUtil_.getInstance_(getApplicationContext()).getUid());
        if (new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            return;
        }
        MobclickAgent.onEvent(this, "mainPageShow");
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        full(getResources().getConfiguration().orientation == 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.android.app.common.servcie.DownloadBaseActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.prefDef.lastInstallApp().g("");
        MApplication.f9240y0 = false;
        getWindow().getDecorView().setBackground(null);
        this.prefDef.platform().g("wufun");
        this.hasNet = com.join.android.app.common.utils.f.j(this);
        PluginConfig.put(this, com.join.mgps.mod.utils.d.f51085o, "wufun");
        PluginConfig.put(this, com.join.mgps.mod.utils.d.f51086p, "wufunNormal");
        PluginConfig.put(this, com.join.mgps.mod.utils.d.f51087q, com.join.android.app.mgsim.wufun.b.f17920n + "");
        handleVideoAdWatchLogRecord();
    }

    @Override // com.join.android.app.common.servcie.DownloadBaseActivity, com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.activityHasDes = true;
        com.papa.sim.statistic.p.l(getApplicationContext()).C2(1, AccountUtil_.getInstance_(getApplicationContext()).getUid());
        try {
            if (!this.isBackHome) {
                if (this.isMessageReceiverRegisted) {
                    unregisterReceiver(this.mMessageReceiver);
                    this.isMessageReceiverRegisted = false;
                }
                n0 n0Var = this.receiver;
                if (n0Var != null) {
                    unregisterReceiver(n0Var);
                }
                m0 m0Var = this.mAdReceived;
                if (m0Var != null) {
                    unregisterReceiver(m0Var);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        MApplication.f9221p = true;
        this.isDestroyed = true;
        com.join.mgps.Util.c0.a().e(this);
        com.wufan.friend.chat.c.u().Z();
        com.join.android.app.component.video.e.d();
        super.onDestroy();
    }

    @Override // com.join.android.app.common.servcie.DownloadBaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadRuntimeEvent(com.join.mgps.event.j jVar) {
        if (System.currentTimeMillis() - this.lastcheckDownService > 20000) {
            this.lastcheckDownService = System.currentTimeMillis();
            if (!com.php25.PDownload.d.g(this.context)) {
                UtilsMy.a3(getApplicationContext());
            }
        }
        super.onDownloadRuntimeEvent(jVar);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        if (lVar.c() == 8) {
            updateWaterProgress();
        } else {
            updateStartGameTable(lVar.a());
        }
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            updateUI(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    updateUI(a4, 6);
                    return;
                } else if (c4 == 7) {
                    a4.setStatus(7);
                    updateUI(a4, 3);
                    return;
                } else if (c4 == 8) {
                    updateUI(a4, 4);
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            if (a4 == null) {
                                return;
                            }
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
                }
            }
            if (this.isFirstCommendVersion) {
                showDownNotice();
            }
            updateUI(a4, 5);
        } else {
            updateUI(a4, 2);
        }
    }

    @Override // com.BaseAppCompatActivity
    public void onFavoriteChanged(int i2, boolean z3) {
        super.onFavoriteChanged(i2, z3);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendEvent(com.wufan.friend.chat.protocol.w1 w1Var) {
        if (w1Var == null) {
            return;
        }
        if (w1Var.y() == 1) {
            if (w1Var.F() == 1) {
                if (w1Var.getData() != null && w1Var.getData().x2() != null && w1Var.getData().x2().C0()) {
                    com.join.mgps.Util.u0.e("channel", "登录成功！");
                    com.wufan.friend.chat.c.u().T(true);
                    com.wufan.friend.chat.c.u().U(0);
                } else {
                    com.join.mgps.Util.u0.e("channel", w1Var.getData().x2().getMessage());
                    this.handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.x0
                        @Override // java.lang.Runnable
                        public final void run() {
                            MGMainActivity.lambda$onFriendEvent$6();
                        }
                    }, com.join.mgps.data.c.f47286a);
                }
            } else if (w1Var.F() == 5 && w1Var.getData() != null && w1Var.getData().getNotification() != null && w1Var.getData().getNotification().k2() != null) {
                com.wufan.friend.chat.protocol.x k22 = w1Var.getData().getNotification().k2();
                try {
                    if ((k22.g().d() + "").equals(AccountUtil_.getInstance_(this).getUid())) {
                        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.onOnlineState");
                        intent.putExtra(NoticeTopAnimActivityDialog_.f34402n, k22.getStateValue());
                        sendBroadcast(intent);
                        com.wufan.friend.chat.c.u().W(k22.getStateValue());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
        if (w1Var.A1() == 4) {
            com.wufan.friend.chat.c.u().M();
        } else if (w1Var.A1() == 1) {
            try {
                FriendInviteBean friendInviteBean = new FriendInviteBean();
                friendInviteBean.set(w1Var.getData().getNotification().g1());
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData != null && friendInviteBean.getAccountId() == accountData.getUid()) {
                    com.wufan.friend.chat.c.u().R(friendInviteBean);
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        } else if (w1Var.A1() == 10) {
            if (w1Var.getData() != null && w1Var.getData().getNotification() != null && w1Var.getData().getNotification().K1() != null) {
                showToast(w1Var.getData().getNotification().K1().getMessage());
            }
        } else if (w1Var.A1() == 2) {
            try {
                com.wufan.friend.chat.protocol.x k23 = w1Var.getData().getNotification().k2();
                if ((k23.g().d() + "").equals(AccountUtil_.getInstance_(this).getUid())) {
                    Intent intent2 = new Intent("com.join.android.app.mgsim.wufun.broadcast.onOnlineState");
                    intent2.putExtra(NoticeTopAnimActivityDialog_.f34402n, k23.getStateValue());
                    sendBroadcast(intent2);
                    com.wufan.friend.chat.c.u().W(k23.getStateValue());
                }
            } catch (Exception e6) {
                e6.printStackTrace();
            }
        }
        if (w1Var.getData() == null || w1Var.getData().J0() == null || !w1Var.getData().J0().F0()) {
            return;
        }
        toast(w1Var.getData().J0().getMessage());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendInviteEvent(final FriendInviteBean friendInviteBean) {
        if (friendInviteBean == null) {
            return;
        }
        try {
            com.join.android.app.common.utils.j.n(this);
            final boolean G = com.join.android.app.common.utils.j.G(this);
            this.handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.w0
                @Override // java.lang.Runnable
                public final void run() {
                    MGMainActivity.this.lambda$onFriendInviteEvent$7(G, friendInviteBean);
                }
            }, 200L);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getAction() == 0) {
            if (com.join.android.app.component.video.a.c0(this, "DiscoveryFragment")) {
                return true;
            }
            VideoStrategyPop videoStrategyPop = this.videoStrategyPop;
            if (videoStrategyPop != null && videoStrategyPop.isShowing()) {
                return true;
            }
            if (this.isOpenExit == 1) {
                if (System.currentTimeMillis() - this.exitTime > 2000) {
                    Toast.makeText(getApplicationContext(), "再按一次退出程序", 0).show();
                    this.exitTime = System.currentTimeMillis();
                } else {
                    MApplication.f9240y0 = true;
                    com.papa.sim.statistic.p.l(getApplicationContext()).C2(1, AccountUtil_.getInstance_(getApplicationContext()).getUid());
                    try {
                        if (this.isMessageReceiverRegisted) {
                            unregisterReceiver(this.mMessageReceiver);
                            this.isMessageReceiverRegisted = false;
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    finish();
                    sendBroadcast(new Intent(f1.a.f65514z));
                }
                return true;
            }
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity
    public void onNetworkChanged(int i2) {
        super.onNetworkChanged(i2);
        this.hasNet = com.join.android.app.common.utils.f.j(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Bundle extras = intent.getExtras();
        if (extras != null) {
            int i2 = extras.getInt(this.mainPos);
            if (i2 != 0) {
                this.positionNum = i2;
            }
            this.classiFy = extras.getInt("classiFy");
            this.classifyPrimaryIndex = extras.getInt("classifyPrimaryIndex");
            this.intentDateBean = (IntentDateBean) extras.getSerializable("intentDateBean");
        }
        setJPushJump();
        setTabSelect(this.positionNum);
    }

    @Override // com.join.android.app.common.servcie.DownloadBaseActivity, com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        isForeground = false;
        if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            MobclickAgent.onPause(this);
        }
        super.onPause();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onRecivedIntentEvent(IntentClassfyEvent intentClassfyEvent) {
        this.currTabNumber = intentClassfyEvent.getType();
        setTabSelect(7);
    }

    @Override // com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            if (this.hasNewFinishedGameImage == null) {
                return;
            }
            if (this.prefDef.isNewFinishedGame().d().booleanValue()) {
                this.hasNewFinishedGameImage.setVisibility(0);
            } else {
                this.hasNewFinishedGameImage.setVisibility(8);
            }
            AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
            this.accountBean = accountData;
            if (accountData.getVip_exp_time() * 1000 > System.currentTimeMillis()) {
                if (this.mAdVipEvent != null) {
                    toStartGame();
                }
                com.join.mgps.dialog.c cVar = this.adVipMainDialog;
                if (cVar != null && cVar.isShowing()) {
                    this.adVipMainDialog.dismiss();
                    this.adVipMainDialog = null;
                }
            }
            new Handler().postDelayed(new h(), 1000L);
            touristLogin();
            isForeground = true;
            onresumData();
            com.join.mgps.Util.t0.c("MGMainActivityonResume finish time =" + System.currentTimeMillis());
            showDownNotice();
            MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.D;
            if (dataBean != null) {
                int community_praise_surplus_number = dataBean.getCommunity_praise_surplus_number() + MApplication.D.getCommunity_surplus_number() + MApplication.D.getNotice_surplus_number() + MApplication.D.getPraise_surplus_number() + MApplication.D.getReplay_surplus_number();
                MApplication.H = community_praise_surplus_number;
                if (community_praise_surplus_number == 0) {
                    hideRedPoint();
                }
            }
            com.wufan.friend.chat.c.u().f(this);
            this.handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.f1
                @Override // java.lang.Runnable
                public final void run() {
                    MGMainActivity.this.lambda$onResume$4();
                }
            }, 500L);
            if (!this.hasPermiss) {
                boolean z3 = ContextCompat.checkSelfPermission(this.context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
                this.hasPermiss = z3;
                if (z3) {
                    startBackups(z3);
                }
            }
        }
        startPlayVideo();
        pullUpExtHelper();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onToastEvent(com.join.mgps.event.q qVar) {
        if (qVar == null || TextUtils.isEmpty(qVar.a())) {
            return;
        }
        showToast(qVar.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1000)
    public void onresumData() {
        try {
            com.papa.sim.statistic.p.l(this).R1(AccountUtil_.getInstance_(this).getUid());
            checkDownlodingNumber();
            if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
                MobclickAgent.onResume(this);
                MobclickAgent.onEvent(this, "ym_test156");
            }
            updateAndroidApp();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void preLoad(PopupAdBean popupAdBean) {
        RecomDatabean recomDatabean;
        if (popupAdBean != null) {
            try {
                if (popupAdBean.getBig_pic() != null && popupAdBean.getBig_pic().size() > 0) {
                    int size = popupAdBean.getBig_pic().size();
                    for (int i2 = 0; i2 < size; i2++) {
                        RecomDatabean recomDatabean2 = popupAdBean.getBig_pic().get(i2);
                        if (recomDatabean2.getMain() != null && com.join.mgps.Util.d2.i(recomDatabean2.getMain().getPic_remote())) {
                            String pic_remote = recomDatabean2.getMain().getPic_remote();
                            if (!isHomePopupAdLocalCached(pic_remote)) {
                                com.join.mgps.Util.k0.f(pic_remote, this, com.join.mgps.Util.u.b(this.context), null);
                            }
                        }
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        if (popupAdBean == null || popupAdBean.getMore() == null || popupAdBean.getMore().size() <= 0 || (recomDatabean = popupAdBean.getMore().get(0)) == null || recomDatabean.getMain() == null || !com.join.mgps.Util.d2.i(recomDatabean.getMain().getPic_remote())) {
            return;
        }
        String pic_remote2 = recomDatabean.getMain().getPic_remote();
        if (isHomePopupAdLocalCached(pic_remote2)) {
            return;
        }
        com.join.mgps.Util.k0.f(pic_remote2, this, com.join.mgps.Util.u.b(this.context), null);
    }

    void preLoadBootImage(BootPageData bootPageData) {
        String[] pic;
        String[] pic2;
        if (bootPageData != null) {
            this.prefDef.insatllAppFirstData().g(JsonMapper.getInstance().toJson(bootPageData));
            BootPageItem game_setup_boot = bootPageData.getGame_setup_boot();
            BootPageItem performance_boot = bootPageData.getPerformance_boot();
            if (game_setup_boot != null) {
                for (String str : game_setup_boot.getPic()) {
                    if (!isHomePopupAdLocalCached(str)) {
                        com.join.mgps.Util.k0.f(str, this, com.join.mgps.Util.u.b(this.context), null);
                    }
                }
            }
            if (performance_boot != null) {
                for (String str2 : performance_boot.getPic()) {
                    if (!isHomePopupAdLocalCached(str2)) {
                        com.join.mgps.Util.k0.f(str2, this, com.join.mgps.Util.u.b(this.context), null);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void preloadingAD() {
        if (com.join.android.app.common.utils.f.j(this.context)) {
            try {
                ResultMainBean<List<GameHeadAd>> v12 = this.recommendClient.v1(RequestBeanUtil.getInstance(this.context).getPreloadingADRequestBean());
                if (v12 == null || v12.getCode() != 600) {
                    return;
                }
                setADCacheData(v12.getMessages().getData());
            } catch (Exception e4) {
                StringBuilder sb = new StringBuilder();
                sb.append("e:");
                sb.append(e4.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void pullUpExtHelper() {
    }

    public void raseVipToMgsim(int i2, String str, String str2) {
        if (com.join.mgps.Util.d2.h(str2)) {
            str2 = com.join.mgps.rpc.g.f51524k + "/member/vip_view/welfare/third_other_ad";
        }
        ComponentName componentName = new ComponentName(this, "com.join.mgps.activity.ShareWebActivity_");
        Intent intent = new Intent();
        intent.setComponent(componentName);
        intent.setAction("android.intent.action.VIEW");
        intent.putExtra("PAPA_EMU_INTENT_EXTRA_ACTION_FROM", i2 + "");
        intent.putExtra("gameId", str + "");
        intent.putExtra("url", str2);
        intent.setAction("com.join.mgps.papa.share_webview_raiseVip");
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void receiveDelete(DownloadTask downloadTask) {
        List<DownloadTask> list = this.downloadTasks;
        if (list == null) {
            return;
        }
        Iterator<DownloadTask> it2 = list.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.downloadTasksMap.remove(next.getCrc_link_type_val());
                it2.remove();
                List<DownloadTask> N = g1.f.G().N(null);
                if (N != null && N.size() == 0) {
                    this.prefDef.isNewFinishedGame().g(Boolean.FALSE);
                    this.hasNewFinishedGameImage.setVisibility(8);
                }
                checkDownlodingNumber();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void receiveStart(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            try {
                if (!TextUtils.isEmpty(downloadTask.getCrc_link_type_val())) {
                    com.join.mgps.Util.t1.e(this, downloadTask.getCrc_link_type_val());
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        UtilsMy.D3(this.downloadTasks);
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null) {
            return;
        }
        if (map.containsKey(downloadTask.getCrc_link_type_val())) {
            if (i2 != 1 && i2 != 7) {
                if (downloadTask.getStatus() == 3 || downloadTask.getStatus() == 6) {
                    checkDownlodingNumber();
                    return;
                }
                return;
            }
            checkDownlodingNumber();
            return;
        }
        List<DownloadTask> list = this.downloadTasks;
        if (list != null) {
            list.add(downloadTask);
        }
        this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        String[] strArr = {"", "size", "", "size"};
        ScrollTextViewLayout scrollTextViewLayout = this.scroll_text_layout;
        if (scrollTextViewLayout != null) {
            scrollTextViewLayout.setTextArray(strArr);
            this.scroll_text_layout.setIsStop(false);
            this.scroll_text_layout.n();
        }
        checkDownlodingNumber();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            if (this.downloadTasks == null) {
                this.downloadTasks = new ArrayList();
            }
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.downloadTasksMap.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        checkDownlodingNumber();
        this.prefDef.isNewFinishedGame().g(Boolean.TRUE);
        ImageView imageView = this.hasNewFinishedGameImage;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65501s0})
    public void receivedInitAdVideoConfig(Intent intent) {
        initAdVideoConfig();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.join.intent.showtoast"})
    public void recivedShowToast(Intent intent) {
        showMessage(intent.getStringExtra("message"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.D})
    public void recveidDownLiveRes(Intent intent) {
        String stringExtra = intent.getStringExtra("downLoadUrl");
        com.join.mgps.Util.t0.d("liveResLog", "recveidDownLiveRes");
        if (this.downloadUrl.equals(stringExtra)) {
            this.hasNewDownload = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.E})
    public void recveidcoinfloat(Intent intent) {
        if (this.coinFloatad == null) {
            return;
        }
        RecomDatabean recomDatabean = null;
        if (intent != null) {
            try {
                recomDatabean = (RecomDatabean) intent.getSerializableExtra("coinFloatData");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        if (recomDatabean != null && recomDatabean.getMain().getAd_switch() == 1) {
            if (com.join.android.app.common.utils.c.g(this.prefDef.clickFloatViewTime().d().longValue())) {
                this.coinFloatad.setVisibility(8);
                return;
            }
            this.coinFloatad.setVisibility(8);
            if (com.join.mgps.Util.d2.i(recomDatabean.getMain().getPic_remote())) {
                MyImageLoader.i(this.coinFloatad, recomDatabean.getMain().getPic_remote(), r.c.f12138a);
                this.coinFloatad.setVisibility(0);
                this.coinFloatad.setOnClickListener(new j(recomDatabean));
                return;
            }
            this.coinFloatad.setVisibility(8);
            return;
        }
        this.coinFloatad.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshTabIcon() {
        if (this.isPapaMainFragmentHasNewData) {
            this.mg_emulator_image.setImageResource(R.drawable.mg_main_has_new_data);
            this.mg_emulator_text.setText("刷新推荐");
            this.unreadMessageBadge.setVisibility(0);
            ObjectAnimator objectAnimator = this.animation2;
            if (objectAnimator == null || !objectAnimator.isRunning()) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mg_emulator_image, Key.ROTATION, 0.0f, 720.0f);
                this.animation2 = ofFloat;
                ofFloat.setInterpolator(new DecelerateInterpolator());
                this.animation2.setDuration(2500L);
                this.animation2.start();
                ImageView imageView = this.mg_emulator_image;
                imageView.setPivotX(imageView.getMeasuredWidth() / 2);
                ImageView imageView2 = this.mg_emulator_image;
                imageView2.setPivotY(imageView2.getMeasuredHeight() / 2);
            }
            if (System.currentTimeMillis() - this.LastOpHomePageButtonTime > 1000) {
                Ext ext = new Ext();
                ext.setIsAutoRefresh(1);
                com.papa.sim.statistic.p.l(this.context).C1(ext);
                this.LastOpHomePageButtonTime = System.currentTimeMillis();
                return;
            }
            return;
        }
        ObjectAnimator objectAnimator2 = this.animation2;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
            this.mg_emulator_image.animate().rotation(0.0f).setDuration(50L).start();
        }
        this.mg_emulator_image.setImageResource(R.drawable.mg_shop_selectback_pressed);
        this.mg_emulator_text.setText("首页");
        this.unreadMessageBadge.setVisibility(8);
    }

    public void registerMessageReceiver() {
        this.mMessageReceiver = new MessageReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(1000);
        intentFilter.addAction(MESSAGE_RECEIVED_ACTION);
        registerReceiver(this.mMessageReceiver, intentFilter);
        this.isMessageReceiverRegisted = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void reject(int i2) {
        try {
            if (com.ta.utdid2.android.utils.f.f(this)) {
                HashMap hashMap = new HashMap();
                hashMap.put("uid", AccountUtil_.getInstance_(this).getUid());
                hashMap.put("token", AccountUtil_.getInstance_(this).getToken());
                hashMap.put("friendId", Integer.valueOf(i2));
                this.friendClient.j(hashMap);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void resetSelfSupportPrmopt() {
        int y3 = com.join.android.app.common.utils.j.n(this).y();
        if (this.prefDef.versionCode().d().intValue() != y3) {
            this.prefDef.noPromptDownload().g(Boolean.FALSE);
            this.prefDef.versionCode().g(Integer.valueOf(y3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void rewadCopper() {
        AccountBean accountData;
        List<RewardBean> data;
        RewardBean rewardBean;
        try {
            if (!com.join.android.app.common.utils.f.j(this) || (accountData = AccountUtil_.getInstance_(this).getAccountData()) == null) {
                return;
            }
            ResultMainBean<List<RewardBean>> i02 = this.rpcClient.i0(RequestBeanUtil.getInstance(this).vipMessage(accountData.getUid()));
            if (i02 == null || i02.getFlag() != 1 || (data = i02.getMessages().getData()) == null || data.size() <= 0 || (rewardBean = data.get(0)) == null) {
                return;
            }
            toastData(rewardBean);
            this.papa_user_round.setVisibility(0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void sanLocalGameIv(int i2) {
        try {
            this.curActivty = MApplication.f9223q.getActivity();
            List<String> list = this.snkGameList;
            if (list != null && list.size() != 0) {
                if (i2 == 0) {
                    Activity activity = this.curActivty;
                    if (activity != null || (activity instanceof FragmentActivity)) {
                        com.join.android.app.common.dialog.f fVar = this.localGameOneDialog;
                        if (fVar != null) {
                            try {
                                fVar.dismiss();
                            } catch (Exception unused) {
                            }
                            this.localGameOneDialog = null;
                        }
                        com.join.android.app.common.dialog.f fVar2 = new com.join.android.app.common.dialog.f(this.curActivty, i2);
                        this.localGameOneDialog = fVar2;
                        fVar2.show();
                        this.localGameOneDialog.f(new l());
                        return;
                    }
                    return;
                }
                List<String> k4 = com.join.mgps.Util.g0.k(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath());
                this.listZip = k4;
                if (k4 == null || k4.size() <= 0) {
                    return;
                }
                initCheckSNKGame(this.listZip, i2);
                return;
            }
            this.isFirstCheck = true;
            getSNKGameInfo(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void savePurchasedList(List<AppBean> list) {
        n1.e0.o().a();
        if (list != null) {
            for (AppBean appBean : list) {
                n1.e0.o().m(new PurchasedListTable(appBean));
            }
        }
        UtilsMy.e2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void saveUUID() {
        String str = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + ".papakey";
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        File file = new File(str);
        if (!file.exists()) {
            String uuid = UUID.randomUUID().toString();
            try {
                file.getParentFile().mkdirs();
                file.createNewFile();
                com.join.mgps.Util.f0.A(".papakey", absolutePath, uuid);
                com.join.mgps.pref.h.n(this.context).w0(uuid);
                return;
            } catch (IOException e4) {
                e4.printStackTrace();
                return;
            }
        }
        try {
            if (com.join.mgps.Util.d2.h(com.join.mgps.pref.h.n(this.context).H())) {
                String x3 = com.join.mgps.Util.f0.x(MApplication.f9223q, str);
                if (com.join.mgps.Util.d2.h(x3)) {
                    String uuid2 = UUID.randomUUID().toString();
                    try {
                        file.getParentFile().mkdirs();
                        file.createNewFile();
                        com.join.mgps.Util.f0.A(".papakey", absolutePath, uuid2);
                        com.join.mgps.pref.h.n(this.context).w0(uuid2);
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                } else {
                    com.join.mgps.pref.h.n(this.context).w0(x3);
                }
            }
        } catch (IOException e6) {
            e6.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 800)
    public void selectTableDelay() {
        setTabSelect(this.positionNum);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void sendRegister(String str) {
        sendRigester(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sendRigester(String str) {
        List<CommentSendMessageResultBean> data;
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                RegisterRequestBean registerRequestBean = new RegisterRequestBean();
                registerRequestBean.setReg_id(str);
                registerRequestBean.setTimes(System.currentTimeMillis());
                ResultMainBean<List<CommentSendMessageResultBean>> J1 = this.recommendClient.J1(RequestBeanUtil.getInstance(this).sendRegisterId(registerRequestBean));
                if (J1 == null || J1.getFlag() == 0 || (data = J1.getMessages().getData()) == null || data.size() <= 0) {
                    return;
                }
                CommentSendMessageResultBean commentSendMessageResultBean = data.get(0);
                if (commentSendMessageResultBean.getVal() == null || commentSendMessageResultBean.getVal().equals("") || !commentSendMessageResultBean.getVal().equals("true")) {
                    return;
                }
                this.prefDef.needsendRigeister().g(Boolean.FALSE);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    void sendVideoAdWatchLog(int i2, int i4) {
        VideoWatchLogTable videoWatchLogTable = new VideoWatchLogTable();
        videoWatchLogTable.setSceneType(i2);
        videoWatchLogTable.setSdkType(i4);
        videoWatchLogTable.setUserId(this.accountBean.getUid());
        videoAdWatchLog(videoWatchLogTable, false);
        handleVideoAdWatchLogRecord();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void serverConnectionException() {
        com.join.android.app.common.manager.a.h().j(this, this.netConnectException, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setADCacheData(List<GameHeadAd> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        GameHeadAd gameHeadAd = list.get(0);
        if (gameHeadAd.getMain() == null || gameHeadAd.getSub() == null || gameHeadAd.getSub().size() <= 0) {
            return;
        }
        MApplication.f9222p0 = gameHeadAd;
        String pic_remote = gameHeadAd.getMain().getPic_remote();
        StringBuilder sb = new StringBuilder();
        sb.append("iamgeUrl:");
        sb.append(pic_remote);
        if (com.join.mgps.Util.d2.h(pic_remote)) {
            return;
        }
        saveImageFromUrl(pic_remote, this.context);
    }

    public void setClassifyPrimaryIndex(int i2) {
        this.classifyPrimaryIndex = i2;
    }

    void setDefutDownloadPath() {
        com.join.mgps.Util.u.e(this.context);
        com.join.mgps.pref.h.n(this).V(com.join.mgps.Util.u.f27846e);
        show10Permiss();
    }

    public void setHomeTabImage(boolean z3) {
        this.showMonkey = z3;
        if (z3) {
            this.home_tab_monkey_image.startAnimation(AnimationUtils.loadAnimation(this, R.anim.papamain_tabhome_movedown2));
            this.home_tab_huojian_image.startAnimation(AnimationUtils.loadAnimation(this, R.anim.papamain_tabhome_movedown));
            return;
        }
        this.home_tab_monkey_image.startAnimation(AnimationUtils.loadAnimation(this, R.anim.papamain_tabhome_move));
        this.home_tab_huojian_image.startAnimation(AnimationUtils.loadAnimation(this, R.anim.papamain_tabhome_move2));
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void setJPushJump() {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MGMainActivity.setJPushJump():void");
    }

    public void setPapaMainFragmentLastPosition(String str) {
        Fragment fragment = this.mgPapaMainFragment;
        if (fragment == null || !(fragment instanceof o2)) {
            return;
        }
        ((o2) fragment).J1(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setSNKGameData(SNKGameInfoBean sNKGameInfoBean) {
        List<String> k4;
        this.snkGameList = sNKGameInfoBean.getScanning_md5();
        if (this.isFirstCheck) {
            this.isFirstCheck = false;
            if (this.context.getSharedPreferences("downloadplato", 0).getLong("plato", 0L) <= 0 || (k4 = com.join.mgps.Util.g0.k(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath())) == null || k4.size() <= 0) {
                return;
            }
            initCheckSNKGame(k4, 1);
        }
    }

    public void setSnkGameList(List<String> list) {
        this.snkGameList = list;
    }

    public void setTabSelect(int i2) {
        this.positionNum = i2;
        clearSelection();
        FragmentManager fragmentManager = this.fragmentManager;
        if (fragmentManager == null) {
            return;
        }
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        hideFragments(beginTransaction);
        updateStartGameTable(null);
        this.discoverNormal.setVisibility(0);
        switch (i2) {
            case 1:
            case 6:
                Fragment fragment = this.userCenterFragment;
                if (fragment == null) {
                    UsercenterFragmentNew_ usercenterFragmentNew_ = new UsercenterFragmentNew_();
                    this.userCenterFragment = usercenterFragmentNew_;
                    beginTransaction.add(R.id.mg_mian_fragmentlayout, usercenterFragmentNew_);
                } else {
                    beginTransaction.show(fragment);
                    this.userCenterFragment.refreshUserCenter();
                }
                this.mg_category_image.setImageResource(R.drawable.tab_usercenter_pressed);
                this.mg_category_text.setTextColor(MainYelloColor);
                hideRedPoint();
                break;
            case 2:
            case 5:
                Fragment fragment2 = this.mPapaActivity;
                if (fragment2 == null) {
                    y1 y1Var = new y1();
                    this.mPapaActivity = y1Var;
                    beginTransaction.add(R.id.mg_mian_fragmentlayout, y1Var);
                } else {
                    beginTransaction.show(fragment2);
                }
                com.papa.sim.statistic.p.l(this.context).K1(Event.enterMyGameTab, new Ext());
                this.mg_chart_text.setTextColor(MainYelloColor);
                this.mPapaActivity.X0();
                break;
            case 3:
                this.home_tab_monkey_layout.setVisibility(8);
                Fragment fragment3 = this.mgPapaMainFragment;
                if (fragment3 == null) {
                    Fragment o2Var = new o2();
                    this.mgPapaMainFragment = o2Var;
                    beginTransaction.add(R.id.mg_mian_fragmentlayout, o2Var);
                } else {
                    beginTransaction.show(fragment3);
                }
                if (com.join.mgps.Util.d2.h(this.shortcutGameId)) {
                    com.papa.sim.statistic.p.l(this).u(ExtFrom.home.name(), AccountUtil_.getInstance_(this).getUid());
                }
                refreshTabIcon();
                this.mg_emulator_text.setTextColor(MainYelloColor);
                break;
            case 4:
                com.papa.sim.statistic.p.l(this).f2(AccountUtil_.getInstance_(this).getUid(), "findTab");
                Fragment fragment4 = this.fightFragment;
                if (fragment4 == null) {
                    com.join.mgps.fragment.f0 f0Var = new com.join.mgps.fragment.f0();
                    this.fightFragment = f0Var;
                    beginTransaction.add(R.id.mg_mian_fragmentlayout, f0Var);
                    this.discoverNormal.setVisibility(0);
                } else {
                    beginTransaction.show(fragment4);
                }
                this.fightImage.setImageResource(R.drawable.mg_discovery_selectback_pressed);
                this.fightText.setTextColor(MainYelloColor);
                break;
            case 7:
                com.papa.sim.statistic.p.l(this).d2(AccountUtil_.getInstance_(this).getUid());
                Fragment fragment5 = this.choiceFragment;
                if (fragment5 == null) {
                    this.choiceFragment = new FindGameMainFragment();
                    Bundle bundle = new Bundle();
                    bundle.putInt("currTabNumber", this.currTabNumber);
                    this.choiceFragment.setArguments(bundle);
                    beginTransaction.add(R.id.mg_mian_fragmentlayout, this.choiceFragment);
                } else {
                    beginTransaction.show(fragment5);
                }
                this.mg_recom_image.setImageResource(R.drawable.mg_choice_selectback_pressed);
                this.mg_recom_text.setTextColor(MainYelloColor);
                TextView textView = this.miniGameBadge;
                if (textView != null) {
                    textView.setVisibility(8);
                    this.prefDef.hasShowMiniGameBadge().g(Boolean.TRUE);
                    break;
                }
                break;
        }
        try {
            this.positionNum = i2;
            beginTransaction.commitAllowingStateLoss();
            if (i2 == 4) {
                this.downloadLayout.setVisibility(0);
                this.biground.setVisibility(0);
            } else {
                this.downloadLayout.setVisibility(8);
                this.biground.setVisibility(8);
            }
            if (i2 != 3) {
                if (this.prefDef.isNewFinishedGame().d().booleanValue()) {
                    this.hasNewFinishedGameImage.setVisibility(0);
                } else {
                    this.hasNewFinishedGameImage.setVisibility(8);
                }
                if (this.scroll_text_layout.m()) {
                    this.scroll_text_layout.p();
                }
            }
            checkDownlodingNumber();
            startPlayVideo();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        TextView textView2 = this.miniGameBadge;
        if (textView2 != null) {
            textView2.setVisibility(this.prefDef.hasShowMiniGameBadge().d().booleanValue() ? 8 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void setwifiStadu() {
        String apSSID = WifiUtils.getInstance(getApplicationContext()).getApSSID();
        if (com.join.mgps.Util.d2.i(apSSID)) {
            WifiUtils.getInstance(this).createWiFiAP(WifiUtils.getInstance(getApplicationContext()).createAPInfo(apSSID, com.join.mgps.data.c.f47302q), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showAdM() {
        try {
            if (this.showInstallLayout) {
                checkInstallApp();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void showAddFriend(final int i2) {
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData == null || accountData.getUid() == i2 || accountData.getUid() == 0) {
            return;
        }
        if (this.mDialog == null) {
            Dialog dialog = new Dialog(this, R.style.newtrans_floating_dialog);
            this.mDialog = dialog;
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                this.mDialog.getWindow().setAttributes(attributes);
            }
            View inflate = LayoutInflater.from(this).inflate(R.layout.dialog_friend_add, (ViewGroup) null);
            this.close = inflate.findViewById(R.id.close);
            this.button = inflate.findViewById(R.id.button);
            this.name1 = (TextView) inflate.findViewById(R.id.name);
            this.accountId = (TextView) inflate.findViewById(R.id.accountId);
            this.avatar1 = (SimpleDraweeView) inflate.findViewById(R.id.avatar);
            this.mDialog.setContentView(inflate);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp526);
            int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.wdp509);
            Window window = this.mDialog.getWindow();
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            if (dimensionPixelOffset == 0) {
                dimensionPixelOffset = -1;
            }
            attributes2.width = dimensionPixelOffset;
            if (dimensionPixelOffset2 == 0) {
                dimensionPixelOffset2 = -1;
            }
            attributes2.height = dimensionPixelOffset2;
            window.setGravity(17);
            this.close.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.c1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MGMainActivity.this.lambda$showAddFriend$12(view);
                }
            });
        }
        this.button.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.d1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MGMainActivity.this.lambda$showAddFriend$13(i2, view);
            }
        });
        getFriendInfo(i2);
        if (!this.mDialog.isShowing()) {
            this.mDialog.show();
        }
        com.papa.sim.statistic.p.l(this).K1(Event.showInviteCode, new Ext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showBackupFinishDialog(int i2) {
        if (!this.activityHasDes && i2 > 0) {
            Intent intent = new Intent();
            intent.setAction(f1.a.f65512y);
            sendBroadcast(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00dc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00dd A[Catch: Exception -> 0x00e6, TRY_LEAVE, TryCatch #1 {Exception -> 0x00e6, blocks: (B:38:0x00ba, B:40:0x00be, B:43:0x00c3, B:45:0x00c7, B:49:0x00dd, B:46:0x00d2), top: B:71:0x00ba }] */
    @org.androidannotations.annotations.UiThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void showCheckData(java.util.List<com.join.mgps.dto.CollectionBeanSub> r14) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MGMainActivity.showCheckData(java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1500)
    public void showDownNotice() {
    }

    void showDownloadVideoAd(String str) {
        this.prefDef.lastShowTOUTIAOAd().g(str);
        DownloadSpeedupCfgBean downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.downloadSpeedupCfg().d(), DownloadSpeedupCfgBean.class);
        this.downloadSpeedupCfgBean = downloadSpeedupCfgBean;
        if (downloadSpeedupCfgBean != null) {
            int i2 = 0;
            if (downloadSpeedupCfgBean.getPlay_cfg() != null && this.downloadSpeedupCfgBean.getPlay_cfg().size() > 0) {
                ArrayList arrayList = new ArrayList();
                for (PlayCfgBean playCfgBean : this.downloadSpeedupCfgBean.getPlay_cfg()) {
                    arrayList.add(Double.valueOf(playCfgBean.getProbability()));
                }
                i2 = com.join.mgps.ad.g.b(arrayList);
            }
            PlayCfgBean playCfgBean2 = this.downloadSpeedupCfgBean.getPlay_cfg().get(i2);
            if (playCfgBean2 != null) {
                if (playCfgBean2.getSdk_type() == 1) {
                    com.join.mgps.ad.m mVar = this.ttDownLoadSpeedAd;
                    if (mVar == null) {
                        initTTDownLoadSpeedAd(str, true);
                    } else {
                        mVar.q(this, str);
                    }
                } else if (playCfgBean2.getSdk_type() == 2) {
                    com.join.mgps.ad.e eVar = this.gdtDownLoadSpeedAd;
                    if (eVar == null) {
                        initGDTDownLoadSpeedAd(str, true);
                    } else {
                        eVar.q(this, str);
                    }
                } else {
                    playCfgBean2.getSdk_type();
                }
            }
        }
    }

    public void showGoldFingerVideo(PlayCfgBean playCfgBean, String str, int i2, int i4, int i5, boolean z3) {
        if (playCfgBean != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(NoticeTopAnimActivityDialog_.f34402n, Integer.valueOf(i5));
            hashMap.put("close", Boolean.valueOf(z3));
            if (playCfgBean.getSdk_type() == 1) {
                com.join.mgps.ad.m mVar = this.ttGoldAdVideo;
                if (mVar == null) {
                    initGoldTTAd(playCfgBean.getSdk_key(), playCfgBean.getAd_id(), str, i2, i4, hashMap, true);
                } else {
                    mVar.s(this, str, i2, i4, hashMap);
                }
            } else if (playCfgBean.getSdk_type() == 2) {
                com.join.mgps.ad.e eVar = this.gdtGoldAdVideo;
                if (eVar == null) {
                    initGoldGDTAd(playCfgBean.getSdk_key(), playCfgBean.getAd_id(), str, i2, i4, hashMap, true);
                } else {
                    eVar.s(this, str, i2, i4, hashMap);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009e, code lost:
        if (isHomePopupAdCached(r8) != false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a3 A[Catch: Exception -> 0x00da, TryCatch #0 {Exception -> 0x00da, blocks: (B:3:0x0001, B:7:0x0038, B:9:0x003e, B:11:0x004c, B:13:0x0052, B:15:0x005e, B:17:0x0069, B:23:0x0090, B:30:0x00a3, B:32:0x00c8, B:26:0x009a, B:21:0x0073), top: B:40:0x0001 }] */
    @org.androidannotations.annotations.UiThread(delay = 500)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void showHomePopupAd(com.join.mgps.dto.PopupAdBean r8) {
        /*
            r7 = this;
            r0 = 0
            com.join.mgps.pref.PrefDef_ r1 = r7.prefDef     // Catch: java.lang.Exception -> Lda
            org.androidannotations.api.sharedpreferences.k r1 = r1.homePopupAdLastTime()     // Catch: java.lang.Exception -> Lda
            java.lang.Object r1 = r1.d()     // Catch: java.lang.Exception -> Lda
            java.lang.Long r1 = (java.lang.Long) r1     // Catch: java.lang.Exception -> Lda
            long r1 = r1.longValue()     // Catch: java.lang.Exception -> Lda
            com.join.mgps.pref.PrefDef_ r3 = r7.prefDef     // Catch: java.lang.Exception -> Lda
            org.androidannotations.api.sharedpreferences.i r3 = r3.homePopupAdCount()     // Catch: java.lang.Exception -> Lda
            java.lang.Object r3 = r3.d()     // Catch: java.lang.Exception -> Lda
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: java.lang.Exception -> Lda
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lda
            com.join.mgps.pref.PrefDef_ r4 = r7.prefDef     // Catch: java.lang.Exception -> Lda
            org.androidannotations.api.sharedpreferences.p r4 = r4.homePopupAdLast()     // Catch: java.lang.Exception -> Lda
            java.lang.Object r4 = r4.d()     // Catch: java.lang.Exception -> Lda
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Exception -> Lda
            boolean r1 = com.join.android.app.common.utils.c.g(r1)     // Catch: java.lang.Exception -> Lda
            if (r1 != 0) goto L36
            java.lang.String r4 = ""
            r3 = 0
        L36:
            if (r8 != 0) goto L4a
            boolean r1 = com.join.mgps.Util.d2.i(r4)     // Catch: java.lang.Exception -> Lda
            if (r1 == 0) goto L4a
            com.join.android.app.common.utils.JsonMapper r8 = com.join.android.app.common.utils.JsonMapper.getInstance()     // Catch: java.lang.Exception -> Lda
            java.lang.Class<com.join.mgps.dto.PopupAdBean> r1 = com.join.mgps.dto.PopupAdBean.class
            java.lang.Object r8 = r8.fromJson(r4, r1)     // Catch: java.lang.Exception -> Lda
            com.join.mgps.dto.PopupAdBean r8 = (com.join.mgps.dto.PopupAdBean) r8     // Catch: java.lang.Exception -> Lda
        L4a:
            if (r8 == 0) goto Lde
            java.lang.String r1 = r8.getAd_switch()     // Catch: java.lang.Exception -> Lda
            if (r1 == 0) goto Lde
            java.lang.String r1 = r8.getAd_switch()     // Catch: java.lang.Exception -> Lda
            java.lang.String r2 = "1"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Exception -> Lda
            if (r1 == 0) goto Lde
            java.lang.String r1 = com.join.android.app.common.utils.JsonMapper.toJsonString(r8)     // Catch: java.lang.Exception -> Lda
            boolean r2 = r1.equals(r4)     // Catch: java.lang.Exception -> Lda
            r4 = 1
            if (r2 == 0) goto L73
            int r2 = r8.getStart_up_counts()     // Catch: java.lang.Exception -> Lda
            if (r3 >= r2) goto L71
            r2 = 1
            goto L8e
        L71:
            r2 = 0
            goto L8e
        L73:
            com.join.mgps.pref.PrefDef_ r2 = r7.prefDef     // Catch: java.lang.Exception -> Lda
            org.androidannotations.api.sharedpreferences.p r2 = r2.homePopupAdLast()     // Catch: java.lang.Exception -> Lda
            r2.g(r1)     // Catch: java.lang.Exception -> Lda
            com.join.mgps.pref.PrefDef_ r2 = r7.prefDef     // Catch: java.lang.Exception -> Lda
            org.androidannotations.api.sharedpreferences.i r2 = r2.homePopupAdCount()     // Catch: java.lang.Exception -> Lda
            java.lang.Integer r3 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Exception -> Lda
            r2.g(r3)     // Catch: java.lang.Exception -> Lda
            r7.clearOldCache(r8)     // Catch: java.lang.Exception -> Lda
            r2 = 1
            r3 = 0
        L8e:
            if (r2 == 0) goto La0
            java.lang.String r1 = com.join.android.app.common.utils.JsonMapper.toJsonString(r8)     // Catch: java.lang.Exception -> Lda
            r7.preLoad(r8)     // Catch: java.lang.Exception -> Lda
            if (r3 != 0) goto L9a
            goto La1
        L9a:
            boolean r8 = r7.isHomePopupAdCached(r8)     // Catch: java.lang.Exception -> Lda
            if (r8 != 0) goto La1
        La0:
            r2 = 0
        La1:
            if (r2 == 0) goto Lde
            com.join.mgps.pref.PrefDef_ r8 = r7.prefDef     // Catch: java.lang.Exception -> Lda
            org.androidannotations.api.sharedpreferences.k r8 = r8.homePopupAdLastTime()     // Catch: java.lang.Exception -> Lda
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> Lda
            java.lang.Long r2 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Exception -> Lda
            r8.g(r2)     // Catch: java.lang.Exception -> Lda
            com.join.mgps.pref.PrefDef_ r8 = r7.prefDef     // Catch: java.lang.Exception -> Lda
            org.androidannotations.api.sharedpreferences.i r8 = r8.homePopupAdCount()     // Catch: java.lang.Exception -> Lda
            int r3 = r3 + r4
            java.lang.Integer r2 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Exception -> Lda
            r8.g(r2)     // Catch: java.lang.Exception -> Lda
            r7.showInstallLayout = r0     // Catch: java.lang.Exception -> Lda
            boolean r8 = r7.activityHasDes     // Catch: java.lang.Exception -> Lda
            if (r8 != 0) goto Lde
            r7.hasShowAd = r4     // Catch: java.lang.Exception -> Lda
            android.content.Context r8 = r7.context     // Catch: java.lang.Exception -> Lda
            com.join.mgps.activity.HomePopupAdActivity_$c r8 = com.join.mgps.activity.HomePopupAdActivity_.K0(r8)     // Catch: java.lang.Exception -> Lda
            com.join.mgps.activity.HomePopupAdActivity_$c r8 = r8.a(r1)     // Catch: java.lang.Exception -> Lda
            r1 = 10002(0x2712, float:1.4016E-41)
            r8.startForResult(r1)     // Catch: java.lang.Exception -> Lda
            return
        Lda:
            r8 = move-exception
            r8.printStackTrace()
        Lde:
            boolean r8 = r7.hasShowAd
            if (r8 != 0) goto Le5
            r7.checkShowOldUserRecom(r0)
        Le5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MGMainActivity.showHomePopupAd(com.join.mgps.dto.PopupAdBean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInputRoomPwdDialog(ArenaRequest arenaRequest) {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this, "请输入房间密码", 4, false);
        aVar.g(new c0(aVar, arenaRequest));
        aVar.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallAppDialogActivity(int i2, List<DownloadTask> list) {
        if (this.hasDialog || this.showUpdate || list == null) {
            return;
        }
        com.join.mgps.Util.a0.c0(this).Q(this.context, i2, list);
        this.hasDialog = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showOnlineCouponDialog(OnlineCouponConfigBean onlineCouponConfigBean, int i2) {
        com.join.mgps.Util.a0.c0(this.context).U(this.context, onlineCouponConfigBean, i2);
        com.papa.sim.statistic.p.l(this).M1(Event.homeSuccessUpRedBag, AccountUtil_.getInstance_(this).getAccountData().getUid());
    }

    void showPspVideoAd() {
        PspGameAdCfgBean pspGameAdCfgBean = (PspGameAdCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.pspGameAdCfg().d(), PspGameAdCfgBean.class);
        this.pspGameAdCfgBean = pspGameAdCfgBean;
        if (pspGameAdCfgBean != null) {
            int i2 = 0;
            if (pspGameAdCfgBean.getPlay_cfg() != null && this.pspGameAdCfgBean.getPlay_cfg().size() > 0) {
                ArrayList arrayList = new ArrayList();
                for (PlayCfgBean playCfgBean : this.pspGameAdCfgBean.getPlay_cfg()) {
                    arrayList.add(Double.valueOf(playCfgBean.getProbability()));
                }
                i2 = com.join.mgps.ad.g.b(arrayList);
            }
            PlayCfgBean playCfgBean2 = this.pspGameAdCfgBean.getPlay_cfg().get(i2);
            if (playCfgBean2.getSdk_type() == 1) {
                com.join.mgps.ad.m mVar = this.ttPspAd;
                if (mVar == null) {
                    initTTPspAd(true);
                } else {
                    mVar.p(this);
                }
            } else if (playCfgBean2.getSdk_type() == 2) {
                com.join.mgps.ad.e eVar = this.gdtPspAd;
                if (eVar == null) {
                    initGDTPspAd(true);
                } else {
                    eVar.p(this);
                }
            } else {
                playCfgBean2.getSdk_type();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showRedPoint() {
        this.red_point.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showSharedGameDialog(CollectionBeanSub collectionBeanSub) {
        try {
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.context, R.style.MyDialog);
            tVar.setContentView(R.layout.shared_game);
            tVar.setCanceledOnTouchOutside(true);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) tVar.findViewById(R.id.game_icon);
            TextView textView = (TextView) tVar.findViewById(R.id.game_name);
            TextView textView2 = (TextView) tVar.findViewById(R.id.game_info);
            Button button = (Button) tVar.findViewById(R.id.ok);
            if (!collectionBeanSub.getIco_remote().isEmpty()) {
                MyImageLoader.d(simpleDraweeView, R.drawable.main_normal_icon, collectionBeanSub.getIco_remote());
            }
            if (!collectionBeanSub.getGame_name().isEmpty()) {
                textView.setText(collectionBeanSub.getGame_name());
            }
            if (!collectionBeanSub.getInfo().isEmpty()) {
                textView2.setText(collectionBeanSub.getInfo());
            }
            button.setOnClickListener(new e(collectionBeanSub, tVar));
            tVar.show();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.context).b(str);
    }

    @UiThread
    public void showVersionDownLoadHint(VersionDto versionDto, boolean z3) {
        int intValue = this.prefDef.wifiDownNumber().d().intValue();
        if (com.join.android.app.common.utils.f.k(this.context) && !z3 && (intValue == -1 || intValue > 0)) {
            this.prefDef.wifiDownNumber().g(Integer.valueOf(intValue - 1));
            ((UpdateService_.a) ((UpdateService_.a) ((UpdateService_.a) UpdateService_.p(this.context).extra("url", versionDto.getAndroidUrl())).extra("downNotInstall", true)).extra("papaUpdateinfo", versionDto)).a();
            return;
        }
        SharedPreferences.Editor edit = getSharedPreferences("VersionXML", 0).edit();
        edit.putBoolean("Mandatory", z3);
        edit.putString("VersionDto", JsonMapper.getInstance().toJson(versionDto));
        edit.commit();
        com.join.mgps.dialog.f fVar = this.appUpdateDialog;
        if (fVar != null && fVar.isShowing()) {
            this.appUpdateDialog.dismiss();
        }
        com.join.mgps.dialog.f fVar2 = new com.join.mgps.dialog.f(this, R.style.HKDialogLoading, versionDto, z3);
        this.appUpdateDialog = fVar2;
        fVar2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.join.mgps.activity.a1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MGMainActivity.this.lambda$showVersionDownLoadHint$2(dialogInterface);
            }
        });
        this.appUpdateDialog.show();
        this.showUpdate = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65473e0})
    public void showupdateDialog(Intent intent) {
        com.join.mgps.dialog.f fVar = new com.join.mgps.dialog.f(this, R.style.HKDialogLoading, (VersionDto) intent.getSerializableExtra("papaUpdateinfo"));
        this.appUpdateDialog = fVar;
        fVar.show();
        this.appUpdateDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.join.mgps.activity.v0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MGMainActivity.this.lambda$showupdateDialog$3(dialogInterface);
            }
        });
        this.showUpdate = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void startAlphaBreathAnimation(View view) {
        view.setLayerType(1, null);
        startAnimation(this.flipCardAnimation, view, new com.join.mgps.Util.m0(0.7f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0527 A[Catch: all -> 0x0556, Exception -> 0x055a, TryCatch #4 {Exception -> 0x055a, blocks: (B:3:0x0009, B:8:0x0011, B:10:0x0033, B:13:0x003d, B:15:0x0049, B:16:0x0050, B:18:0x0066, B:19:0x007a, B:21:0x0080, B:25:0x00a4, B:27:0x00b0, B:28:0x00b7, B:30:0x00bd, B:31:0x00c4, B:33:0x00ca, B:34:0x00d1, B:36:0x00d7, B:37:0x00da, B:39:0x00e0, B:41:0x00e6, B:42:0x00ed, B:43:0x00f1, B:45:0x00f8, B:46:0x00fe, B:49:0x0111, B:51:0x011b, B:53:0x012a, B:54:0x0139, B:56:0x014c, B:58:0x0152, B:59:0x0160, B:61:0x0166, B:63:0x0176, B:65:0x017c, B:67:0x0186, B:82:0x01e1, B:83:0x01e4, B:87:0x01eb, B:88:0x01f0, B:89:0x01fc, B:91:0x0202, B:92:0x020c, B:94:0x0212, B:96:0x0226, B:97:0x022a, B:98:0x022e, B:101:0x0239, B:122:0x02bf, B:195:0x0500, B:198:0x051c, B:200:0x0527, B:202:0x0531, B:204:0x0539, B:205:0x054a, B:197:0x0506, B:192:0x04fa), top: B:228:0x0009 }] */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startBackups(boolean r19) {
        /*
            Method dump skipped, instructions count: 1387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.MGMainActivity.startBackups(boolean):void");
    }

    public void startDownloadActivity(String str, int i2) {
        Intent intent = new Intent(this, NewArenaDownloadActivity_.class);
        intent.putExtra("gameId", str);
        intent.putExtra(NewArenaDownloadActivity_.f36681q0, this.hasPlug);
        intent.putExtra(NewArenaDownloadActivity_.f36682r0, this.hasRom);
        intent.putExtra("from", "MGMainActivity_" + i2);
        startActivityForResult(intent, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = me.relex.photodraweeview.d.f72676b0)
    public void startGameRoom(com.join.mgps.event.m mVar) {
        if (mVar == null || mVar.d() == null) {
            return;
        }
        int h4 = mVar.h();
        String f4 = mVar.f();
        GameRoom d4 = mVar.d();
        int i2 = 2;
        if (mVar.i() != 1) {
            i2 = mVar.i() == 2 ? 3 : 1;
        }
        ((GameRoomActivity_.a0) GameRoomActivity_.u3(this).l(h4).h(f4).d(d4.getGameName()).i(d4).k(i2).flags(536870912)).start();
        Ext ext = new Ext();
        ext.setFrom("1");
        ext.setGameId(d4.getGameId() + "");
        AccountBean accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setPosition(i2 + "");
        com.papa.sim.statistic.p.l(this.context).K1(Event.JoinLobbyroom, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startIntentOldUserRecom(long j4) {
        if (com.join.android.app.common.utils.f.j(this.context)) {
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this);
            UserRecomRequestArgs userRecomRequestArgs = new UserRecomRequestArgs();
            ArrayList arrayList = new ArrayList();
            for (DownloadTask downloadTask : g1.f.G().d()) {
                arrayList.add(downloadTask.getCrc_link_type_val());
                if (APKUtils.E(downloadTask)) {
                    arrayList.add(((ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class)).getMain_game_id());
                }
            }
            userRecomRequestArgs.setDownloadedGameIdList(arrayList);
            userRecomRequestArgs.setDuration(j4);
            userRecomRequestArgs.setUid(AccountUtil_.getInstance_(this).getAccountData().getUid());
            requestModel.setArgs(userRecomRequestArgs);
            com.join.mgps.rpc.impl.h.L().J().V(requestModel.makeSign()).enqueue(new b(j4));
        }
    }

    void startLineAnimation() {
        this.downloadLine.setImageResource(R.drawable.line_blue_bg);
        Animation loadAnimation = AnimationUtils.loadAnimation(this, R.anim.img_translate);
        this.animation = loadAnimation;
        loadAnimation.setFillAfter(true);
        this.imageLoading.setVisibility(0);
        this.imageLoading.startAnimation(this.animation);
        this.animation.setAnimationListener(new i());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void startLoadRecommendwifi() {
        RecomeWifiDatabean data;
        List<CollectionBeanSub> game_list;
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ResultMainBean<RecomeWifiDatabean> I = this.rpcClient.I(getRequestBean(1));
                if (I == null || I.getFlag() != 1 || (game_list = (data = I.getMessages().getData()).getGame_list()) == null || game_list.size() <= 0) {
                    return;
                }
                Message message = new Message();
                message.what = 2;
                message.obj = data;
                this.handler.sendMessage(message);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void startPlayVideo() {
        com.join.mgps.fragment.f0 f0Var;
        int i2 = this.positionNum;
        if (i2 != 3) {
            if (i2 != 4 || (f0Var = this.fightFragment) == null) {
                return;
            }
            f0Var.T();
            return;
        }
        Fragment fragment = this.mgPapaMainFragment;
        if (fragment != null) {
            if (fragment instanceof g2) {
                ((g2) fragment).f0();
            } else if (fragment instanceof o2) {
                ((o2) fragment).x0();
            }
        }
    }

    void startShowRecommendwifi(RecomeWifiDatabean recomeWifiDatabean) {
        if (this.isDestroyed) {
            return;
        }
        Intent intent = new Intent(this, RecomWifiActivity_.class);
        intent.putExtra("data", recomeWifiDatabean);
        startActivity(intent);
    }

    void stopLineAnimation() {
        ImageView imageView = this.imageLoading;
        if (imageView == null) {
            return;
        }
        imageView.clearAnimation();
        this.imageLoading.setVisibility(8);
        int i2 = this.positionNum;
        if (i2 == 3 || i2 == 7 || i2 == 1) {
            this.downloadLine.setImageResource(R.drawable.line_grey_bg);
        } else if (i2 != 2 && i2 != 5) {
            this.downloadLine.setImageResource(R.drawable.line_white_bg);
        } else {
            this.downloadLine.setImageResource(R.drawable.line_grey_bg);
        }
    }

    void toast(final String str) {
        this.handler.post(new Runnable() { // from class: com.join.mgps.activity.i1
            @Override // java.lang.Runnable
            public final void run() {
                MGMainActivity.this.lambda$toast$11(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toastData(RewardBean rewardBean) {
        if (rewardBean != null) {
            rewardBean.getOn_off();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1000)
    public void touristLogin() {
        if (!com.join.android.app.common.utils.f.j(this) || isLogined(this)) {
            return;
        }
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.b0();
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(com.join.android.app.common.utils.j.n(this).z());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
            touristLoginRequestBean.setTuid(this.prefDef.touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(com.join.mgps.Util.u1.f(touristLoginRequestBean));
            AccountUtil_.getInstance_(this.context).setLocalUserIcon("");
            AccountResultMainBean<AccountTokenSuccess> s3 = this.rpcAccountClient.s(touristLoginRequestBean.getParams());
            if (s3 != null && s3.getError() == 0 && s3.getData().is_success()) {
                AccountUtil_.getInstance_(this).saveAccountData(s3.getData().getUser_info(), this);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65484k})
    public void unreadnotify(@Receiver.Extra String str) {
        updateStartGameTable(g1.f.G().B(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void updateAndroidApp() {
        APKUtils.a k4;
        try {
            for (DownloadTask downloadTask : g1.f.G().v()) {
                if (com.join.android.app.common.utils.a.g0(this).c(this, downloadTask.getPackageName()) && (k4 = com.join.android.app.common.utils.a.g0(this).k(this, downloadTask.getPackageName())) != null && com.join.mgps.Util.d2.i(downloadTask.getVer()) && k4.d() == Integer.parseInt(downloadTask.getVer())) {
                    UtilsMy.g2(downloadTask, 5);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadingPoint(int i2) {
        TextView textView = this.biground;
        if (textView == null) {
            return;
        }
        if (this.positionNum != 4) {
            textView.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        if (i2 < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.biground.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            this.biground.setLayoutParams(layoutParams);
            this.biground.setCompoundDrawables(null, null, null, null);
            this.biground.setBackgroundResource(R.drawable.mygame_big_round);
            this.biground.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.biground.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 4, 0);
            this.biground.setGravity(17);
            this.biground.setLayoutParams(layoutParams2);
            this.biground.setCompoundDrawables(null, null, null, null);
            this.biground.setBackgroundResource(R.drawable.message_round);
            this.biground.setPadding(1, 0, 2, 1);
        }
        TextView textView2 = this.biground;
        textView2.setText(i2 + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateHidePoint() {
        stopLineAnimation();
        TextView textView = this.biground;
        if (textView == null) {
            return;
        }
        textView.setVisibility(8);
        this.biground.setText("");
        this.bigCenterRound.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateHistory() {
        CommonService_.d2(getApplicationContext()).a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateLine(int i2) {
        ScrollTextViewLayout scrollTextViewLayout = this.scroll_text_layout;
        if (scrollTextViewLayout == null) {
            return;
        }
        int i4 = this.positionNum;
        if (i4 == 3 || i4 == 7 || i4 == 1) {
            scrollTextViewLayout.setDrawable(getResources().getDrawable(R.drawable.papa_download_selector));
        } else if (i4 != 2 && i4 != 5 && i4 != 1) {
            scrollTextViewLayout.setDrawable(getResources().getDrawable(R.drawable.papa_download_butn));
        } else {
            scrollTextViewLayout.setDrawable(getResources().getDrawable(R.drawable.papa_download_selector));
        }
        if (i2 == 0) {
            stopLineAnimation();
            return;
        }
        this.downloadLine.setImageResource(R.drawable.line_blue_bg);
        startLineAnimation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateNoOpenPoint() {
        if (this.biground == null) {
            return;
        }
        stopLineAnimation();
        this.biground.setVisibility(8);
        this.biground.setText("");
        Drawable drawable = getResources().getDrawable(R.drawable.mygame_litle_round);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        this.bigCenterRound.setVisibility(0);
        this.bigCenterRound.setCompoundDrawables(drawable, null, null, null);
        this.bigCenterRound.setBackgroundResource(R.color.transparent);
    }

    void updateStartGameTable(DownloadTask downloadTask) {
        try {
            int i2 = this.positionNum;
            if (2 != i2 && 5 != i2) {
                List<DownloadTask> d4 = g1.f.G().d();
                Iterator<DownloadTask> it2 = d4.iterator();
                while (it2.hasNext()) {
                    if (it2.next().getCrc_link_type_val().length() <= 3) {
                        it2.remove();
                    }
                }
                if (d4.size() > 0) {
                    if (downloadTask != null && downloadTask.getStatus() == 2) {
                        this.downloadTaskx = downloadTask;
                    } else {
                        long j4 = 0;
                        for (DownloadTask downloadTask2 : d4) {
                            if (downloadTask2.getStatus() == 2 && j4 < downloadTask2.getStartTime()) {
                                j4 = downloadTask2.getStartTime();
                                this.downloadTaskx = downloadTask2;
                            }
                        }
                    }
                    if (this.downloadTaskx != null) {
                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(this.downloadTaskx.getCrc_link_type_val());
                        if (f4 != null && f4.getStatus() == 2) {
                            this.downlodingGameIcon.setVisibility(0);
                            this.cdp_down_progress.setVisibility(0);
                            this.mg_chart_image.setVisibility(8);
                            MyImageLoader.h(this.downlodingGameIcon, this.downloadTaskx.getPortraitURL());
                            this.cdp_down_progress.setProgress((int) f4.getProgress());
                            int i4 = this.positionNum;
                            if (2 == i4 || 5 == i4) {
                                this.cdp_down_progress.setVisibility(8);
                                this.mg_chart_image.setVisibility(0);
                                this.downlodingGameIcon.setVisibility(8);
                            }
                            stopAlphBreathAnim();
                            return;
                        }
                        this.downlodingGameIcon.setVisibility(8);
                        this.cdp_down_progress.setVisibility(8);
                        this.mg_chart_image.setVisibility(0);
                    }
                }
                List<DownloadTask> T = g1.f.G().T(this.context);
                DownloadTask downloadTask3 = null;
                if (T != null && T.size() > 0) {
                    this.numberInTab.setVisibility(0);
                    this.downlodingGameIcon.setVisibility(8);
                    this.cdp_down_progress.setVisibility(8);
                    stopAlphBreathAnim();
                    int i5 = this.positionNum;
                    if (2 != i5 && 5 != i5) {
                        long j5 = 0;
                        for (DownloadTask downloadTask4 : T) {
                            if (j5 == 0 || j5 < downloadTask4.getFinishTime()) {
                                j5 = downloadTask4.getFinishTime();
                                downloadTask3 = downloadTask4;
                            }
                        }
                        if (downloadTask3 != null) {
                            MyImageLoader.h(this.gifIcon, downloadTask3.getPortraitURL());
                            startAlphaBreathAnimation(this.gifIcon);
                            this.gifIcon.setVisibility(0);
                            this.mg_chart_image.setVisibility(8);
                            return;
                        }
                        return;
                    }
                    this.gifIcon.setVisibility(8);
                    this.mg_chart_image.setVisibility(0);
                    return;
                }
                long j6 = 0;
                for (DownloadTask downloadTask5 : d4) {
                    if (downloadTask5.getStatus() == 5 && (j6 == 0 || j6 < downloadTask5.getOpenTime())) {
                        j6 = downloadTask5.getOpenTime();
                        downloadTask3 = downloadTask5;
                    }
                }
                if (downloadTask3 != null) {
                    MyImageLoader.h(this.gifIcon, downloadTask3.getPortraitURL());
                    this.gifIcon.setVisibility(0);
                    this.mg_chart_image.setVisibility(8);
                    return;
                }
                this.numberInTab.setVisibility(8);
                this.mg_chart_image.setVisibility(0);
                this.gifIcon.setVisibility(8);
                stopAlphBreathAnim();
                return;
            }
            this.gifIcon.setVisibility(8);
            this.downlodingGameIcon.setVisibility(8);
            this.cdp_down_progress.setVisibility(8);
            this.numberInTab.setVisibility(8);
            this.mg_chart_image.setImageResource(R.drawable.mg_main_chart_normal);
            this.mg_chart_image.setVisibility(0);
            stopAlphBreathAnim();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void updateUI(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            if (i2 != 1 && i2 != 2) {
                if (i2 == 3) {
                    receiveDelete(downloadTask);
                    return;
                } else if (i2 == 5) {
                    receiveSuccess(downloadTask);
                    return;
                } else if (i2 != 7 && i2 != 8 && i2 != 9) {
                    return;
                }
            }
            receiveStart(downloadTask, i2);
        }
    }

    void updateWaterProgress() {
        DownloadTask f4;
        if (this.downloadTaskx == null || (f4 = com.join.android.app.common.servcie.a.e().f(this.downloadTaskx.getCrc_link_type_val())) == null) {
            return;
        }
        this.cdp_down_progress.setProgress((int) f4.getProgress());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void videoAdWatchLog(VideoWatchLogTable videoWatchLogTable, boolean z3) {
        if (com.join.android.app.common.utils.f.j(this)) {
            RequestModel requestModel = new RequestModel();
            VideoAdWatchLogRequest videoAdWatchLogRequest = new VideoAdWatchLogRequest();
            videoAdWatchLogRequest.setUid(videoWatchLogTable.getUserId());
            videoAdWatchLogRequest.setSdkType(videoWatchLogTable.getSdkType());
            videoAdWatchLogRequest.setSceneType(videoWatchLogTable.getSceneType());
            requestModel.setArgs(videoAdWatchLogRequest);
            requestModel.setDefault(this.context);
            ResponseModel<Boolean> e4 = com.join.mgps.rpc.impl.h.L().e(requestModel.makeSign());
            if (e4 == null || e4.getCode() != 200) {
                return;
            }
            if (!e4.getData().booleanValue()) {
                n1.n0.n().m(videoWatchLogTable);
                return;
            } else if (z3) {
                n1.n0.n().delete((n1.n0) videoWatchLogTable);
                return;
            } else {
                getVideoAdCfg(false);
                return;
            }
        }
        n1.n0.n().m(videoWatchLogTable);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadRuntimeEvent(com.join.mgps.event.p pVar) {
        com.join.android.app.common.dialog.f fVar = this.localGameOneDialog;
        if (fVar != null) {
            fVar.dismiss();
            this.localGameOneDialog = null;
        }
        com.join.android.app.common.dialog.l lVar = this.localGameTwoDialog;
        if (lVar != null) {
            lVar.dismiss();
            this.localGameTwoDialog = null;
        }
        com.join.android.app.common.dialog.j jVar = this.localGameThreeDialog;
        if (jVar != null) {
            try {
                jVar.dismissAllowingStateLoss();
            } catch (Exception unused) {
            }
            this.localGameThreeDialog = null;
        }
        sanLocalGameIv(pVar.a());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.n nVar) {
        getRedPointData();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendEvent(com.join.mgps.event.m mVar) {
        if (mVar == null) {
            return;
        }
        if (mVar.a() == 1) {
            com.wufan.friend.chat.c.u().L(AccountUtil_.getInstance_(this).getAccountData() != null ? AccountUtil_.getInstance_(this).getAccountData().getUid() : 0, AccountUtil_.getInstance_(this).getToken());
        } else if (mVar.a() == 2) {
            showToast("已发送对战邀请！");
        } else if (mVar.a() == 3) {
            startGameRoom(mVar);
        } else if (mVar.a() == 5) {
            reject(mVar.b());
        } else if (mVar.a() == 7) {
            String c4 = mVar.c();
            if (!checkGameIsInstall(c4)) {
                startDownloadActivity(c4, IMediaPlayer.MEDIA_INFO_VIDEO_DECODED_START);
            } else {
                com.wufan.friend.chat.c.u().O();
            }
        }
    }
}
