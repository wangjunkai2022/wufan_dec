package com.papa91.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import com.join.mgps.Util.g0;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.SimulatorExitPlayActivity_;
import com.join.mgps.dialog.DownloadHighSpeedingDialog_;
import com.join.mgps.dto.Constant;
import com.join.mgps.service.CommonService_;
import com.papa91.MessageVipCommonDialog;
import com.papa91.VideoStrategyPop;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.arc.MarketUtil;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.bean.PopwindowBean;
import com.papa91.arc.bean.ReqRealNameArgs;
import com.papa91.arc.bean.Request;
import com.papa91.arc.bean.Response;
import com.papa91.arc.common.constants.BAction;
import com.papa91.arc.common.constants.IntentKeys;
import com.papa91.arc.dialog.PerfectWarmDialog;
import com.papa91.arc.dialog.RealNameDialog;
import com.papa91.arc.ext.ThreadManager;
import com.papa91.arc.interfaces.DialogListenerWrap;
import com.papa91.arc.interfaces.RealNameCallBack;
import com.papa91.arc.util.FileUtils;
import com.papa91.arc.util.SDCardUtil;
import com.papa91.arc.util.SignUtil;
import com.papa91.arc.util.SystemInfoUtils;
import com.papa91.common.BaseAppConfig;
import com.papa91.common.DNSDataResult;
import com.papa91.common.MyJson;
import com.papa91.mix.R;
import com.papa91.paay.PaayReceiver;
import com.papa91.paay.PayCenter;
import com.papa91.paay.PayListener;
import com.papa91.paay.PayResponse;
import com.papa91.paay.PayResponseData;
import com.papa91.utils.DownLoadFile;
import com.papa91.utils.HttpFinishInterface;
import com.papa91.utils.HttpUtils;
import com.papa91.view.AutoSaveSlot;
import com.papa91.view.DragProgressView;
import com.papa91.view.FloatingDragger;
import com.papa91.view.RewardBananaDialog;
import com.papa91.view.RewardBananaResultDialog;
import com.papa91.view.RewardBananaTipDialog;
import com.papa91.view.smartpopupwindow.SmartPopupWindow;
import com.umeng.analytics.pro.n;
import io.netty.handler.traffic.AbstractTrafficShapingHandler;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.ppsspp.ppsspp.CheatInfo;
import org.ppsspp.ppsspp.EditCheatInfo;
@SuppressLint({"NewApi"})
/* loaded from: classes4.dex */
public class EmuBaseActivity extends Cocos2dxActivity {
    private static String BBK_GIONEE_MAIN_NAME = null;
    public static final int BBK_IQOO = 1;
    public static final int CLOSE_AD = 10;
    public static final int COMPLAIN_PLAYER = 12;
    private static final int EXIT_AD_KEY = 101;
    public static final int GIONEE_SOFTMANAGER = 2;
    public static final int LIKT_TYPE_TO_HTML5 = 4;
    private static final String LOG_TAG = "EmuBaseActivity";
    protected static final String ON_NETWORK_ERROR_MSG = "您的网络有点差，请重试";
    protected static final String ON_TOKER_LOST_MSG = "验证失败请重新登录";
    private static final String PAPA_EMU_INTENT_EXTRA_ACTION_FROM = "PAPA_EMU_INTENT_EXTRA_ACTION_FROM";
    public static final int PAY_CHEAT = 6;
    public static final int PAY_COIN = 4;
    public static final int PAY_JOIN = 7;
    public static final int PAY_SP = 3;
    public static final int RAISE_VIP = 11;
    public static final int SELECT_CHEAT = 5;
    public static final int SELECT_COIN = 2;
    public static final int SELECT_JOIN = 8;
    public static final int SELECT_SP = 1;
    public static final int SHOW_AD = 9;
    private static final int TO_PREFECTURE_KEY = 100;
    public static final String actionEmuintent = "com.wufun.intent.activity.view.action.emuintent";
    public static final String actionVip = "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success";
    public static final String actionVip_mha = "com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success";
    public static final String actionlogin = "com.join.android.app.mgsim.wufun.broadcast.action_login_success";
    public static final String actionlogin_mha = "com.join.android.app.mgsim.wufan.mha.broadcast.action_login_success";
    public static final String aidlStr = "com.papa.mgsim.wufun.aidl.service";
    public static String appPackName = "com.join.android.app.mgsim.wufun";
    public static final String appPackName_aso4 = "com.papa91.fc.aso4";
    public static final String appPackName_mgsim = "com.join.android.app.mgsim.wufun";
    public static final String appPackName_mha = "com.join.android.app.mgsim.wufun.mha";
    static AutoSaveSlot autoSaveSlot = null;
    private static EmuBaseActivity baseActivity = null;
    protected static List<CheatInfo> cheatInfos = null;
    private static ClipboardManager cmb = null;
    static Context context = null;
    static int init_first_box_time = 0;
    static int left_device_play_reward_count = 0;
    static int left_play_reward_count = 0;
    static Messenger mMessenger = null;
    static ServiceConnection mServiceConnection = null;
    static int max_time_interval = 0;
    static int min_time_interval = 0;
    private static int payType = 0;
    public static final String prefix = "com.join.android.app.mgsim.wufun.broadcast";
    static DragProgressView progressView;
    static RewardBananaDialog rewardBananaDialog;
    public static String romName;
    public static String server_ip;
    static String unique_id;
    protected String AD_appId;
    protected TextView accept;
    private ActionReceiver actionReceiver;
    private boolean adClosed;
    protected FrameLayout adExitRootView;
    private RelativeLayout adParent;
    AdResultReceiver adResultReceiver;
    private RelativeLayout adRoot;
    PerfectWarmDialog alertTipDialog;
    protected SimpleDraweeView avatar;
    private Button btn_startRecord;
    private String crc_link_type_val;
    protected TextView gameName;
    GameReceiver gameReceiver;
    IMReceive iMReceive;
    private IntentFilter intentFilter;
    protected SmartPopupWindow invitePop;
    protected String jump_type;
    private String link_type;
    private String link_type_val;
    private boolean loading_real_name;
    MenuViewReceiver menuViewReceiver;
    public MessageVipCommonDialog messageDialog;
    protected TextView name;
    NetWorkReceiver netWorkReceiver;
    protected String onExitBannerId;
    protected String onLoadBannerId;
    protected String onMenuOpenBannerId;
    protected PaayReceiver paayReceiver;
    PerfectWarmDialog perfectWarmDialog;
    PlayTimeReceiver playTimeReceiver;
    protected int rankAutoUpload;
    RealNameDialog realNameDialog;
    RealNameResultReceiver realnameResultReceiver;
    PermissRecver recver;
    RewardBananaTipDialog rewardBananaTipDialog;
    ShareResultReceiver shareResultReceiver;
    private String tpl_type;
    private VideoStrategyPop videoStrategyPop;
    public static int[] keyVaule = {0, 0, 0, 0};
    public static String screenMOde = "1";
    public static String enableAudio = "1";
    public static String vibriorMode = "1";
    public static String version = "1.5.0";
    public static int fid = 0;
    public static String romPath = null;
    public static String ugcPath = null;
    protected static int startMode = 0;
    protected static String server_port = "5369";
    public static String UserID = "0";
    public static String GameID = "0";
    public static String Version = "0";
    public static String RoomID = "0";
    public static String GroupID = "0";
    public static long startTIme = 0;
    public static int spLock = 0;
    public static String token = "0";
    public static boolean tourist = true;
    private static String UPDATA_APP_TOAST = "请先将啪啪模拟器升级1.6版本";
    private static int systemSettingType = 0;
    public static String netState = "";
    public static String DEVICE_VERSION = "";
    public static String DEVICE_ID = "";
    public static String httpKeySign = "";
    public static String ExitAdImageFilePath = "";
    public static boolean hasAd = false;
    public static String className = null;
    public static String assetsPath = "/mnt/sdcard/test/assets/";
    public static String soPath = null;
    public static boolean hasRewardBanana = false;
    static boolean startRewardCount = false;
    static int getRewardConfig = 0;
    static int generatedTimes = 0;
    static String rewardConfig = "";
    protected static boolean gameIsPause = false;
    static boolean isNet = true;
    public static Dialog mDialog = null;
    static String dnsJson = "";

    /* renamed from: in  reason: collision with root package name */
    static Intent f56155in = new Intent("com.join.android.app.mgsim.wufun.loginNim");
    static Intent in5 = new Intent("com.join.android.app.mgsim.wufun.loginOutNim");
    static Intent in1 = new Intent("com.join.android.app.mgsim.wufun.StartRecording");
    static Intent in2 = new Intent("com.join.android.app.mgsim.wufun.FinishRecording");
    static Intent in3 = new Intent("com.join.android.app.mgsim.wufun.SendTextMsg");
    static boolean useIndependentEmu = false;
    static int generate_times = -1;
    static int received_times = 0;
    static int reward_amount = 0;
    static int reward_times = 0;
    static int reward_left_count = 0;
    static int total_reward_amount = 0;
    public static String actionShowMenuSlot = "com.join.android.app.mgsim.wufun.broadcast.showMenuSlot";
    public static String actionShowMenuCheat = "com.join.android.app.mgsim.wufun.broadcast.showMenuCheat";
    public static String actionShowMenuPerformance = "com.join.android.app.mgsim.wufun.broadcast.showMenuPerformance";
    public static String actionShowMenuGate = "com.join.android.app.mgsim.wufun.broadcast.showMenuGate";
    public static String actionShowMenuOnekey = "com.join.android.app.mgsim.wufun.broadcast.showMenuOnekey";
    public static String actionShowMenu = "com.join.android.app.mgsim.wufun.broadcast.showMenu";
    public static String actionHideMenu = "com.join.android.app.mgsim.wufun.broadcast.HideMenu";
    public static String actionVipTip = "com.join.android.app.mgsim.wufun.broadcast.VipTip";
    public static String actionShowMenuView = "com.join.android.app.mgsim.wufun.broadcast.ShowMenuView";
    public static String actionShowShare = "com.join.android.app.mgsim.wufun.broadcast.ShowShare";
    public static String actionLoadRomFinish = "com.join.android.app.mgsim.wufun.broadcast.LoadRomFinish";
    public static String actionLoadStageCompleted = "com.join.android.app.mgsim.wufun.broadcast.LoadStageCompleted";
    public static String actionRecordEnd = "com.join.android.app.mgsim.wufun.broadcast.recordEnd";
    public static String actionShowInvite = "com.join.android.app.mgsim.wufun.broadcast.showInvitePlay";
    public static String actionOnOnlineState = "com.join.android.app.mgsim.wufun.broadcast.onOnlineState";
    public static String actionHandleMessage = "com.join.android.app.mgsim.wufun.broadcast.onHandleMessage";
    public static String actionHandleEmptyMessage = "com.join.android.app.mgsim.wufun.broadcast.onHandleEmptyMessage";
    public static String actionHandleExitGame = "com.join.android.app.mgsim.wufun.broadcast.onHandleExitGame";
    private boolean appCodeIsBigger160 = false;
    protected int m_SVIP = 0;
    protected int m_VIP = 0;
    public boolean onAdShwoIsCloseMine = false;
    String messData = "";
    private int APP_Version = 0;
    public boolean allowPeripheralJoin = true;
    int getRewardConfigCount = 3;
    private boolean adLoadError = false;
    protected int miniRankTime = 0;
    int rankPlayTime = 1;
    protected boolean hasCheckRealName = false;
    private boolean needCheckRealName = true;
    private int checkRealNameType = 11;
    protected Handler handler = new Handler() { // from class: com.papa91.activity.EmuBaseActivity.4
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                EmuBaseActivity unused = EmuBaseActivity.baseActivity;
                EmuBaseActivity.startAPPActivity();
            } else if (i2 == 1) {
                EmuBaseActivity.baseActivity.selectSpAndCheat(EmuBaseActivity.payType);
            } else if (i2 == 3) {
                EmuBaseActivity.baseActivity.getSystemPaste();
            } else if (i2 == 4) {
                EmuBaseActivity.baseActivity.startBBK_GOINEE_sysAPP();
            } else if (i2 == 11) {
                EmuBaseActivity.baseActivity.raseVipToMgsim(message.arg1);
            } else if (i2 == 12) {
                EmuBaseActivity.baseActivity.complainMsg(message.arg1, message.arg2);
            } else if (i2 == 100) {
                EmuBaseActivity.baseActivity.startPrefecture(message.arg1);
            } else if (i2 == 101) {
                EmuBaseActivity.baseActivity.startAdActivity(message.arg1, message.arg2);
            }
            super.handleMessage(message);
        }
    };
    PayListener payListener = new PayListener() { // from class: com.papa91.activity.EmuBaseActivity.13
        @Override // com.papa91.paay.PayListener
        public void onResult(PayResponse payResponse) {
            JsonObject jsonObject = new JsonObject();
            if (payResponse == null) {
                jsonObject.addProperty("isbuy", Boolean.FALSE);
                EmuBaseActivity.requestOnInquiry(jsonObject.toString());
            } else if (payResponse.getError() == -1) {
                jsonObject.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                jsonObject.addProperty("data", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                jsonObject.addProperty("isbuy", Boolean.FALSE);
                jsonObject.addProperty("errorMsg", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                EmuBaseActivity.requestOnPay(jsonObject.toString());
            } else {
                PayResponseData data = payResponse.getData();
                boolean equals = data.getResult().equals("ok");
                JsonObject jsonObject2 = new JsonObject();
                String price_message = data.getPrice_message();
                String error_message = data.getError_message();
                jsonObject2.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                if (price_message != null && !price_message.equals("")) {
                    jsonObject2.addProperty("data", price_message);
                }
                jsonObject2.addProperty("isbuy", Boolean.valueOf(equals));
                if (error_message != null && !error_message.equals("")) {
                    jsonObject2.addProperty("errorMsg", error_message);
                }
                EmuBaseActivity.requestOnPay(jsonObject2.toString());
            }
        }
    };
    PayListener selectListener = new PayListener() { // from class: com.papa91.activity.EmuBaseActivity.14
        @Override // com.papa91.paay.PayListener
        public void onResult(PayResponse payResponse) {
            String str;
            JsonObject jsonObject = new JsonObject();
            if (payResponse == null) {
                jsonObject.addProperty("isbuy", Boolean.FALSE);
                EmuBaseActivity.requestOnInquiry(jsonObject.toString());
                return;
            }
            String str2 = "";
            if (payResponse.getError() == 701) {
                jsonObject.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                jsonObject.addProperty("data", "");
                jsonObject.addProperty("isbuy", Boolean.FALSE);
                EmuBaseActivity.requestOnInquiry(jsonObject.toString());
                return;
            }
            PayResponseData data = payResponse.getData();
            boolean z3 = false;
            if (data != null) {
                z3 = data.isIs_buy();
                str2 = data.getPrice_message();
                str = data.getBuy_error_message();
            } else {
                str = EmuBaseActivity.ON_NETWORK_ERROR_MSG;
            }
            if (payResponse.getError() == -1) {
                jsonObject.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                jsonObject.addProperty("data", EmuBaseActivity.ON_TOKER_LOST_MSG);
                jsonObject.addProperty("isbuy", Boolean.FALSE);
                jsonObject.addProperty("errorMsg", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                EmuBaseActivity.requestOnInquiry(jsonObject.toString());
                return;
            }
            jsonObject.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
            jsonObject.addProperty("data", str2);
            jsonObject.addProperty("isbuy", Boolean.valueOf(z3));
            jsonObject.addProperty("errorMsg", str);
            EmuBaseActivity.requestOnInquiry(jsonObject.toString());
        }
    };
    private PackageInfo appInfo = null;
    private boolean isStartRecord = false;
    boolean isInBackground = false;
    CountDownTimer timer = new CountDownTimer(AbstractTrafficShapingHandler.DEFAULT_MAX_TIME, 1000) { // from class: com.papa91.activity.EmuBaseActivity.37
        @Override // android.os.CountDownTimer
        public void onFinish() {
            EmuBaseActivity.acceptInvitePlay(2);
            SmartPopupWindow smartPopupWindow = EmuBaseActivity.this.invitePop;
            if (smartPopupWindow == null || !smartPopupWindow.isShowing()) {
                return;
            }
            EmuBaseActivity.this.invitePop.dismiss();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            TextView textView = EmuBaseActivity.this.accept;
            if (textView != null) {
                textView.setText("拒绝(" + (j4 / 1000) + "s)");
            }
        }
    };
    long playTime = 0;
    long limitTime = 0;
    boolean isArenaCheck = false;
    Runnable limitTimeRunnable = new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.39
        @Override // java.lang.Runnable
        public void run() {
            if (EmuBaseActivity.this.isFinishing() || EmuBaseActivity.this.isDestroyed()) {
                return;
            }
            EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
            long j4 = emuBaseActivity.playTime + 1;
            emuBaseActivity.playTime = j4;
            if (j4 >= emuBaseActivity.limitTime) {
                emuBaseActivity.onHandleRealName(3, emuBaseActivity.isArenaCheck);
            } else {
                emuBaseActivity.handler.postDelayed(this, 1000L);
            }
        }
    };
    private String gameType = "";

    /* renamed from: com.papa91.activity.EmuBaseActivity$3  reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass3 implements Runnable {
        AnonymousClass3() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$run$0(View view) {
            EmuBaseActivity.mDialog.dismiss();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (EmuBaseActivity.mDialog == null) {
                Dialog dialog = new Dialog(EmuBaseActivity.context, R.style.MyDialog);
                EmuBaseActivity.mDialog = dialog;
                dialog.setContentView(R.layout.bind_dialog2);
                Button button = (Button) EmuBaseActivity.mDialog.findViewById(R.id.dialog_button_ok);
                EmuBaseActivity.mDialog.setCancelable(false);
                EmuBaseActivity.mDialog.setCanceledOnTouchOutside(false);
                ((TextView) EmuBaseActivity.mDialog.findViewById(R.id.tip_title)).setText("提示");
                ((TextView) EmuBaseActivity.mDialog.findViewById(R.id.dialog_content)).setText("请校验会员身份\n联网校验后，你在一段时间内可离线使用。");
                ((TextView) EmuBaseActivity.mDialog.findViewById(R.id.dialog_desci)).setVisibility(8);
                button.setText("开启网络");
                View findViewById = EmuBaseActivity.mDialog.findViewById(R.id.close);
                if (findViewById != null) {
                    findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.activity.i
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            EmuBaseActivity.AnonymousClass3.lambda$run$0(view);
                        }
                    });
                }
                button.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.activity.EmuBaseActivity.3.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        EmuBaseActivity.context.startActivity(new Intent("android.settings.SETTINGS"));
                    }
                });
            }
            EmuBaseActivity.isNet = false;
            EmuBaseActivity.mDialog.show();
        }
    }

    /* loaded from: classes4.dex */
    public class ActionReceiver extends BroadcastReceiver {
        public ActionReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !BAction.ACTION_REAL_NAME_RESULT.equals(intent.getAction())) {
                return;
            }
            EmuBaseActivity.this.onHandlerResultNameResult(intent);
        }
    }

    /* loaded from: classes4.dex */
    public class AdResultReceiver extends BroadcastReceiver {
        private boolean hasReward;

        public AdResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i2 = 1;
            int intExtra = intent.getIntExtra(DownloadHighSpeedingDialog_.a.f47372b, 1);
            StringBuilder sb = new StringBuilder();
            sb.append("adAction：");
            sb.append(intExtra);
            try {
                if (intExtra == 7) {
                    EmuBaseActivity.runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.AdResultReceiver.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MessageVipCommonDialog messageVipCommonDialog = EmuBaseActivity.this.messageDialog;
                            if (messageVipCommonDialog != null) {
                                messageVipCommonDialog.dismiss();
                                EmuBaseActivity.this.messageDialog = null;
                            }
                        }
                    });
                    EmuBaseActivity.setAdResult(1);
                } else if (intExtra == 8) {
                } else {
                    if (intExtra == 6) {
                        this.hasReward = true;
                    } else if (intExtra == 1) {
                        this.hasReward = false;
                    } else if (intExtra != 3) {
                        if (intExtra == 98) {
                            EmuBaseActivity.runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.AdResultReceiver.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    MessageVipCommonDialog messageVipCommonDialog = EmuBaseActivity.this.messageDialog;
                                    if (messageVipCommonDialog != null) {
                                        messageVipCommonDialog.dismiss();
                                        EmuBaseActivity.this.messageDialog = null;
                                    }
                                }
                            });
                            String stringExtra = intent.getStringExtra("url");
                            int intExtra2 = intent.getIntExtra("time", 0);
                            if (intent.getIntExtra("V_switch", 0) != 0) {
                                EmuBaseActivity.this.showVideoPopWin(stringExtra, intExtra2);
                                return;
                            }
                            int intExtra3 = intent.getIntExtra("howTimes", 0);
                            int intExtra4 = intent.getIntExtra("adCount", 0);
                            int intExtra5 = intent.getIntExtra("adSdkType", 1);
                            String stringExtra2 = intent.getStringExtra("gameId");
                            Intent intent2 = new Intent("com.tools.AdBroadcast");
                            intent2.putExtra("action", 0);
                            intent2.putExtra("howTimes", intExtra3);
                            intent2.putExtra("adSdkType", intExtra5);
                            intent2.putExtra("adCount", intExtra4);
                            intent2.putExtra("gameId", stringExtra2);
                            EmuBaseActivity.send(intent2);
                        } else if (intExtra == 99) {
                            String stringExtra3 = intent.getStringExtra("content");
                            String stringExtra4 = intent.getStringExtra("dialogUrl");
                            String stringExtra5 = intent.getStringExtra("pic");
                            String stringExtra6 = intent.getStringExtra("ad_id");
                            String stringExtra7 = intent.getStringExtra("btn_l");
                            String stringExtra8 = intent.getStringExtra("btn_r");
                            String stringExtra9 = intent.getStringExtra("btn_url");
                            int intExtra6 = intent.getIntExtra("times", 0);
                            int intExtra7 = intent.getIntExtra("adCount", 0);
                            int intExtra8 = intent.getIntExtra("howTimes", 0);
                            int intExtra9 = intent.getIntExtra("adSdkType", 1);
                            EmuBaseActivity.this.adLoadError = false;
                            EmuBaseActivity.this.showVipDialog(stringExtra3, stringExtra4, stringExtra5, stringExtra6, stringExtra7, stringExtra8, stringExtra9, intExtra6, intExtra8, intExtra9, intExtra7);
                        } else if (intExtra == 13) {
                        } else {
                            if (intExtra != 17) {
                                if (intExtra != 100) {
                                    if (intExtra == 5) {
                                        EmuBaseActivity.this.adLoadError = true;
                                        EmuBaseActivity.this.handleAdError(context, intent);
                                        return;
                                    } else if (intExtra == 9) {
                                        EmuBaseActivity.this.adLoadError = false;
                                        return;
                                    } else {
                                        EmuBaseActivity.this.handleAdResult(context, intent);
                                        return;
                                    }
                                }
                                int intExtra10 = intent.getIntExtra("exit", 0);
                                EmuBaseActivity.this.onHandleEmuExit();
                                EmuBaseActivity.exitDlgBack(intExtra10);
                                if (intExtra10 == 1) {
                                    EmuBaseActivity.sendGamePlay(2);
                                    return;
                                } else if (intExtra10 == 2) {
                                    EmuBaseActivity.sendGamePlay(2);
                                    System.exit(0);
                                    Process.killProcess(Process.myPid());
                                    return;
                                } else {
                                    return;
                                }
                            }
                            String stringExtra10 = intent.getStringExtra("gameId");
                            if (TextUtils.isEmpty(stringExtra10) || TextUtils.isEmpty(EmuBaseActivity.GameID) || !EmuBaseActivity.GameID.equals(stringExtra10)) {
                                return;
                            }
                            int intExtra11 = intent.getIntExtra("result", 0);
                            int intExtra12 = intent.getIntExtra("amount", 0);
                            int intExtra13 = intent.getIntExtra("times", 0);
                            int intExtra14 = intent.getIntExtra("total_reward_amount", 0);
                            if (intExtra11 == 0) {
                                EmuBaseActivity.received_times++;
                                EmuBaseActivity.reward_left_count--;
                                EmuBaseActivity.reward_amount = 0;
                                EmuBaseActivity.reward_times = 0;
                                EmuBaseActivity.unique_id = "";
                                EmuBaseActivity.total_reward_amount += intExtra12;
                                DragProgressView dragProgressView = EmuBaseActivity.progressView;
                                if (dragProgressView != null) {
                                    dragProgressView.setSignal(dragProgressView.getSignal() - 1);
                                    if (EmuBaseActivity.left_play_reward_count - EmuBaseActivity.received_times < 1) {
                                        EmuBaseActivity.progressView.setVisibility(8);
                                    }
                                    if (EmuBaseActivity.reward_left_count < 1 && EmuBaseActivity.progressView.getSignal() < 1) {
                                        EmuBaseActivity.progressView.stop();
                                        return;
                                    } else {
                                        EmuBaseActivity.progressView.setSignalMax(EmuBaseActivity.reward_left_count);
                                        EmuBaseActivity.progressView.resume();
                                    }
                                }
                            }
                            try {
                                EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                                if (intExtra11 != 0) {
                                    i2 = 0;
                                }
                                emuBaseActivity.setRewardResult1(i2, intExtra12, intExtra13, intExtra14);
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                        }
                    } else {
                        EmuBaseActivity.runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.AdResultReceiver.2
                            @Override // java.lang.Runnable
                            public void run() {
                                MessageVipCommonDialog messageVipCommonDialog = EmuBaseActivity.this.messageDialog;
                                if (messageVipCommonDialog != null) {
                                    messageVipCommonDialog.dismiss();
                                    EmuBaseActivity.this.messageDialog = null;
                                }
                            }
                        });
                        EmuBaseActivity.setAdResult(1);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class GameReceiver extends BroadcastReceiver {
        GameReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                if (action.equals(EmuBaseActivity.actionShowInvite)) {
                    intent.getIntExtra("roomId", 0);
                    intent.getStringExtra("userId");
                    String stringExtra = intent.getStringExtra("userName");
                    String stringExtra2 = intent.getStringExtra("userAvatar");
                    long longExtra = intent.getLongExtra("gameId", 0L);
                    intent.getLongExtra("timestamp", 0L);
                    try {
                        EmuBaseActivity.this.showInvitePlayUi(stringExtra, intent.getStringExtra("gameName"), stringExtra2, longExtra);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } else if (action.equals(EmuBaseActivity.actionOnOnlineState)) {
                    EmuBaseActivity.this.setUserStateUi(intent.getIntExtra(NoticeTopAnimActivityDialog_.f34402n, 0));
                } else if (EmuBaseActivity.actionHandleMessage.equals(action)) {
                    Message message = (Message) intent.getParcelableExtra("_message");
                    if (message != null) {
                        EmuBaseActivity.this.handler.sendMessage(message);
                    }
                } else if (EmuBaseActivity.actionHandleEmptyMessage.equals(action)) {
                    EmuBaseActivity.this.handler.sendEmptyMessage(intent.getIntExtra("_what", 0));
                } else if (EmuBaseActivity.actionHandleExitGame.equals(action)) {
                    EmuBaseActivity.this.onHandleGameExit(intent);
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    /* loaded from: classes4.dex */
    public class IMReceive extends BroadcastReceiver {
        public IMReceive() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("type");
            final String stringExtra2 = intent.getStringExtra("msg");
            StringBuilder sb = new StringBuilder();
            sb.append("im-->");
            sb.append(stringExtra);
            sb.append("=>");
            sb.append(stringExtra2);
            final int intValue = Integer.valueOf(stringExtra).intValue();
            EmuBaseActivity.this.runOnGLThread(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.IMReceive.1
                @Override // java.lang.Runnable
                public void run() {
                    EmuBaseActivity.SendMessStatue(intValue, stringExtra2);
                }
            });
        }
    }

    /* loaded from: classes4.dex */
    enum MenuType {
        slot(1, "存档"),
        cheating(2, "金手指"),
        performance(3, "设置"),
        vip(4, "会员"),
        oneKey(5, "一键技能"),
        gate(6, "选关");
        
        private int mCode;
        private String mDesc;

        MenuType(int i2, String str) {
            this.mCode = i2;
            this.mDesc = str;
        }

        public int getCode() {
            return this.mCode;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class MenuViewReceiver extends BroadcastReceiver {
        MenuViewReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (EmuBaseActivity.actionShowMenuSlot.equals(intent.getAction())) {
                EmuBaseActivity.this.showMenuSlot();
            } else if (EmuBaseActivity.actionShowMenuCheat.equals(intent.getAction())) {
                EmuBaseActivity.this.showMenuCheating();
            } else if (EmuBaseActivity.actionShowMenuPerformance.equals(intent.getAction()) || "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success".equals(intent.getAction())) {
            } else {
                if (EmuBaseActivity.actionShowMenuOnekey.equals(intent.getAction())) {
                    EmuBaseActivity.this.showMenuOnekey();
                } else if (EmuBaseActivity.actionShowMenuGate.equals(intent.getAction())) {
                    EmuBaseActivity.this.showMenuGate();
                } else if (EmuBaseActivity.actionShowMenu.equals(intent.getAction())) {
                    EmuBaseActivity.this.showMenuView(true);
                } else if (EmuBaseActivity.actionHideMenu.equals(intent.getAction())) {
                    EmuBaseActivity.this.showMenuView(false);
                } else if (EmuBaseActivity.actionVipTip.equals(intent.getAction())) {
                    EmuBaseActivity.this.showVipTip(intent.getIntExtra("tipid", 0), intent.getIntExtra("charid", 0));
                } else if (EmuBaseActivity.actionShowMenuView.equals(intent.getAction())) {
                    EmuBaseActivity.this.showMenuView(true);
                } else if (EmuBaseActivity.actionShowShare.equals(intent.getAction())) {
                    EmuBaseActivity.this.showShare(intent.getStringExtra(CommonService_.b0.f51756b));
                } else if (EmuBaseActivity.actionLoadRomFinish.equals(intent.getAction())) {
                    EmuBaseActivity.this.loadRomFinish();
                } else if (EmuBaseActivity.actionLoadStageCompleted.equals(intent.getAction())) {
                    EmuBaseActivity.this.onLoadStageCompleted(intent.getIntExtra("status", 0), intent.getStringExtra("message"));
                } else if (EmuBaseActivity.actionRecordEnd.equals(intent.getAction())) {
                    EmuBaseActivity.this.rankPlayTime = intent.getIntExtra(IntentKeys.KEY_PARAMS_RANK_PLAY_TIME, 0);
                    EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                    emuBaseActivity.onRankRecordEnd(emuBaseActivity.rankPlayTime);
                } else if (BAction.ACTION_RANK_RECORD_UPLOAD_RESULT.equals(intent.getAction())) {
                    EmuBaseActivity.this.onRankUploadResult(intent.getIntExtra(IntentKeys.KEY_PARAMS_RANK_UPLOAD, 0));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class MyReceiver extends BroadcastReceiver {
        MyReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MessageVipCommonDialog messageVipCommonDialog;
            EmuBaseActivity.token = intent.getExtras().getString("token");
            EmuBaseActivity.this.m_VIP = intent.getExtras().getInt(BaseAppConfig.KEY_VIP_LEVEL);
            EmuBaseActivity.this.m_SVIP = intent.getExtras().getInt(BaseAppConfig.KEY_SVIP_LEVEL);
            EmuBaseActivity.UserID = intent.getExtras().getString("uid");
            EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
            EmuBaseActivity.setVipType(emuBaseActivity.m_VIP, emuBaseActivity.m_SVIP);
            try {
                String str = EmuBaseActivity.soPath;
                if (str != "" && !"".equals(str) && EmuBaseActivity.soPath.contains("/so")) {
                    String[] split = EmuBaseActivity.soPath.split("/so");
                    if (Integer.valueOf(split[0].substring(split[0].lastIndexOf(net.lingala.zip4j.util.e.F0) + 1).split("_")[0]).intValue() >= 430) {
                        EmuBaseActivity.setUserInfo(EmuBaseActivity.UserID, EmuBaseActivity.token);
                    }
                }
            } catch (Exception unused) {
            }
            EmuBaseActivity emuBaseActivity2 = EmuBaseActivity.this;
            if (emuBaseActivity2.m_VIP > 0 && (messageVipCommonDialog = emuBaseActivity2.messageDialog) != null && messageVipCommonDialog.isShowing()) {
                EmuBaseActivity.this.messageDialog.dismiss();
                EmuBaseActivity.this.messageDialog = null;
                EmuBaseActivity.setAdResult(1);
            }
            EmuBaseActivity.this.onVipChanged();
        }
    }

    /* loaded from: classes4.dex */
    public class NetWorkReceiver extends BroadcastReceiver {
        public NetWorkReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) EmuBaseActivity.this.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                try {
                    EmuBaseActivity.this.HttpPost_Memer();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            if (!EmuBaseActivity.canShowRewardMenu() || EmuBaseActivity.isRewardConfigInited()) {
                return;
            }
            EmuBaseActivity.this.getRewardConfig();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class PermissRecver extends BroadcastReceiver {
        PermissRecver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || EmuBaseActivity.this.isInBackground) {
                return;
            }
            EmuBaseActivity.this.getPermiss(intent.getStringExtra("permission"));
        }
    }

    /* loaded from: classes4.dex */
    public class PlayTimeReceiver extends BroadcastReceiver {
        public PlayTimeReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            EmuBaseActivity.this.m_SVIP = intent.getExtras().getInt(BaseAppConfig.KEY_SVIP_LEVEL);
            EmuBaseActivity.this.m_VIP = intent.getExtras().getInt(BaseAppConfig.KEY_VIP_LEVEL);
            EmuBaseActivity.UserID = intent.getExtras().getString("uid");
            EmuBaseActivity.token = intent.getExtras().getString("token");
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("uid", EmuBaseActivity.UserID);
            jsonObject.addProperty("token", EmuBaseActivity.token);
            jsonObject.addProperty(BaseAppConfig.KEY_SVIP_LEVEL, Integer.valueOf(EmuBaseActivity.this.m_SVIP));
            jsonObject.addProperty(BaseAppConfig.KEY_VIP_LEVEL, Integer.valueOf(EmuBaseActivity.this.m_VIP));
            EmuBaseActivity.tourist = intent.getExtras().getBoolean("tourist", true);
            EmuBaseActivity.this.loginFinish();
            EmuBaseActivity.this.needCheckRealName = true;
            EmuBaseActivity.this.checkRealNameType = 11;
            EmuBaseActivity.requestOnsign(jsonObject.toString());
            EmuBaseActivity.this.updateAutoSlotData();
            EmuBaseActivity.this.onVipChanged();
        }
    }

    /* loaded from: classes4.dex */
    public class RealNameResultReceiver extends BroadcastReceiver {
        public RealNameResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            EmuBaseActivity.this.checkRealName(10);
        }
    }

    /* loaded from: classes4.dex */
    public class ShareResultReceiver extends BroadcastReceiver {
        public ShareResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            EmuBaseActivity.setShareResult(intent.getIntExtra("shareResult", 1), intent.getIntExtra("from", 1));
        }
    }

    public static void FinishRecord() {
        send(in2);
    }

    public static void HideBottomMenu() {
        baseActivity.runOnUiThread(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.12
            @Override // java.lang.Runnable
            public void run() {
                if (EmuBaseActivity.hasNavBar(EmuBaseActivity.baseActivity)) {
                    EmuBaseActivity.hideBottomUIMenu();
                }
            }
        });
    }

    public static void LoginNim() {
        send(f56155in);
    }

    public static void OutChatRoom() {
        send(in5);
    }

    public static native int SendMessStatue(int i2, String str);

    public static void SendTextMessage(String str) {
        in3.putExtra("text", str);
        send(in3);
    }

    public static void ShowSetNetWorkDialog() {
        baseActivity.runOnUiThread(new AnonymousClass3());
    }

    public static void StartRecording() {
        send(in1);
    }

    public static void StartcomplainMsg(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        sb.append("StartcomplainMsg : ");
        sb.append(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("StartcomplainMsg : ");
        sb2.append(str2);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("StartcomplainMsg : ");
        sb3.append(str3);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("StartcomplainMsg : ");
        sb4.append(str4);
        StringBuilder sb5 = new StringBuilder();
        sb5.append("StartcomplainMsg : ");
        sb5.append(str5);
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("com.wufun.intent.activity.view.action.emuintent");
        intent.addCategory("android.intent.category.DEFAULT");
        MyJson myJson = new MyJson();
        try {
            if (str.equals("4") && str3 != null && str3.startsWith(com.facebook.common.util.f.f11765a)) {
                if (str3.contains("?")) {
                    str3 = str3 + "&game_id=" + GameID;
                } else {
                    str3 = str3 + "?game_id=" + GameID;
                }
            }
            myJson.put("link_type", str);
            myJson.put("jump_type", str2);
            myJson.put("link_type_val", str3);
            myJson.put("crc_link_type_val", str4);
            myJson.put("tpl_type", str5);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        intent.putExtra("intentDataJson", myJson.toString());
        try {
            intent.setAction("com.wufun.intent.activity.view.action.emuintent");
            baseActivity.startActivity(intent);
        } catch (Exception unused) {
            intent.setAction("com.papa.intent.activity.view.action.emuintent");
            baseActivity.startActivity(intent);
        }
    }

    public static void acceptInvitePlay(int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.acceptInvitePlay");
        intent.putExtra("accept", i2);
        send(intent);
    }

    public static native void addEditCheat(EditCheatInfo editCheatInfo);

    static boolean canShowRewardMenu() {
        return hasRewardBanana && startRewardCount && startMode == 0;
    }

    public static native void cheatEnable(int i2, int i4);

    public static native boolean checkCheatCode(String str, boolean z3);

    public static boolean clickAddCheatEvent(String str) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.click.addcheat");
        intent.putExtra("position", str);
        send(intent);
        return true;
    }

    public static boolean clickFreeCustomizeEvent(String str) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.click.freecustomize");
        intent.putExtra("position", str);
        send(intent);
        return true;
    }

    public static void complain(int i2, int i4) {
        Message message = new Message();
        message.what = 12;
        message.arg1 = i2;
        message.arg2 = i4;
        sendHandleMessage(message);
    }

    private static void copyFolderReserveTime(String str, String str2) {
        File file = new File(str);
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            for (int i2 = 0; i2 < listFiles.length; i2++) {
                long lastModified = listFiles[i2].lastModified();
                File file2 = new File(str2 + net.lingala.zip4j.util.e.F0 + listFiles[i2].getName());
                listFiles[i2].renameTo(file2);
                file2.setLastModified(lastModified);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x007a, code lost:
        if ((r0 + "").endsWith(".json") != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void copyStates(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa91.activity.EmuBaseActivity.copyStates(java.lang.String, java.lang.String):void");
    }

    private void creatFrameLayout() {
        if (this.adRoot == null) {
            this.adParent = new RelativeLayout(this);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((getResources().getDisplayMetrics().widthPixels * 3) / 4, 200);
            layoutParams.gravity = 1;
            this.adParent.setLayoutParams(layoutParams);
            RelativeLayout relativeLayout = new RelativeLayout(this);
            this.adRoot = relativeLayout;
            relativeLayout.setId(R.id.ad_root);
            this.adRoot.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            TextView textView = new TextView(this);
            textView.setText("VIP免广告");
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(11, this.adRoot.getId());
            textView.setPadding(20, 0, 20, 0);
            layoutParams2.setMargins(20, 10, 20, 0);
            textView.setLayoutParams(layoutParams2);
            textView.setBackgroundResource(R.drawable.baidu_ad_sponsor_back);
            textView.setTextColor(-3815995);
            textView.setTextSize(11.0f);
            this.adParent.addView(this.adRoot);
            this.adParent.addView(textView);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.activity.EmuBaseActivity.18
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    EmuBaseActivity.this.raseVipToMgsim(8);
                }
            });
            Cocos2dxActivity.mFrameLayout.addView(this.adParent);
        }
        this.adParent.setVisibility(8);
    }

    public static boolean createDir(String str) {
        File file = new File(str);
        if (file.exists()) {
            System.out.println("创建目录失败，目标目录已存在！");
            return false;
        }
        String str2 = File.separator;
        if (!str.endsWith(str2)) {
            str = str + str2;
        }
        if (file.mkdirs()) {
            System.out.println("创建目录成功！" + str);
            return true;
        }
        System.out.println("创建目录失败！");
        return false;
    }

    public static native void deleteEditCheat(int i2);

    public static int dip2px(Context context2, float f4) {
        return (int) ((f4 * context2.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void emuLogCat(String str, String str2, String str3, String str4, String str5) {
        Intent intent = new Intent(f1.a.V);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("packageName", str3);
        intent.putExtra("version", str4);
        intent.putExtra(CommonService_.i.f51819f, str5);
        send(intent);
    }

    public static void emuOnResume() {
        try {
            send(new Intent(f1.a.f65471d0));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static native void enableEidtCheat(int i2);

    public static void exitActivity(int i2) {
        sendGamePlay(2);
    }

    public static native void exitDlgBack(int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public static native int exitEmu();

    private boolean findAppVersionTo16() {
        int i2;
        PackageManager packageManager = getPackageManager();
        try {
            this.appInfo = packageManager.getPackageInfo(appPackName, 16384);
        } catch (PackageManager.NameNotFoundException unused) {
            this.appInfo = null;
        }
        PackageInfo packageInfo = this.appInfo;
        boolean z3 = true;
        if (packageInfo == null) {
            try {
                PackageInfo packageInfo2 = packageManager.getPackageInfo("com.join.android.app.mgsim.wufun.mha", 16384);
                this.appInfo = packageInfo2;
                if (packageInfo2 != null) {
                    i2 = packageInfo2.versionCode;
                    r5 = i2 >= 500;
                    try {
                        appPackName = "com.join.android.app.mgsim.wufun.mha";
                    } catch (PackageManager.NameNotFoundException unused2) {
                    }
                }
            } catch (PackageManager.NameNotFoundException unused3) {
            }
            i2 = 0;
        } else {
            i2 = packageInfo.versionCode;
            if (i2 >= 27) {
                r5 = true;
            }
        }
        if (!r5) {
            try {
                PackageInfo packageInfo3 = packageManager.getPackageInfo("com.papa91.fc.aso4", 16384);
                this.appInfo = packageInfo3;
                if (packageInfo3 != null) {
                    appPackName = "com.papa91.fc.aso4";
                    i2 = packageInfo3.versionCode;
                } else {
                    z3 = r5;
                }
                r5 = z3;
            } catch (PackageManager.NameNotFoundException unused4) {
            }
        }
        this.APP_Version = i2;
        return r5;
    }

    public static boolean firstLoadAutoSlot() {
        Context context2 = context;
        if (context2 == null) {
            return false;
        }
        return Boolean.valueOf(getDefaultSharedPreferences(context2).getBoolean("firstLoadAutoSlot", true)).booleanValue();
    }

    public static void firstLoadAutoSlotSet() {
        Context context2 = context;
        if (context2 == null) {
            return;
        }
        try {
            SharedPreferences.Editor edit = getDefaultSharedPreferences(context2).edit();
            edit.putBoolean("firstLoadAutoSlot", false);
            edit.commit();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static boolean freeLoadSlot() {
        Context context2 = context;
        return (context2 == null || getDefaultSharedPreferences(context2).getString("firstTimeFreeLoadSlot", "").contains(GameID)) ? false : true;
    }

    public static void freeLoadSlotSet() {
        Context context2 = context;
        if (context2 == null) {
            return;
        }
        try {
            SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(context2);
            String string = defaultSharedPreferences.getString("firstTimeFreeLoadSlot", "");
            SharedPreferences.Editor edit = defaultSharedPreferences.edit();
            edit.putString("firstTimeFreeLoadSlot", string + GameID + ",");
            edit.commit();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static native int gameCompleted();

    public static boolean gameEndLocalBattle(long j4, long j5, long j6, long j7) {
        Intent intent = new Intent(f1.a.R);
        intent.putExtra("gameId", "" + j4);
        intent.putExtra("uid", "" + j5);
        intent.putExtra("p2Uid", "" + j6);
        intent.putExtra("time", j7);
        send(intent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean gameOut(String str, int i2, String str2) {
        Intent intent = new Intent(f1.a.U);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("sec", i2);
        send(intent);
        return true;
    }

    public static boolean gameStart160(String str, String str2, int i2) {
        Intent intent = new Intent(f1.a.S);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("startMode", i2);
        send(intent);
        return true;
    }

    public static boolean gameStartLocalBattle(long j4, long j5, long j6, long j7) {
        Intent intent = new Intent(f1.a.Q);
        intent.putExtra("gameId", "" + j4);
        intent.putExtra("uid", "" + j5);
        intent.putExtra("p2Uid", "" + j6);
        intent.putExtra("time", j7);
        send(intent);
        return true;
    }

    public static String getAllDNSUrl() {
        return dnsJson;
    }

    public static native ArrayList<CheatInfo> getCheatList();

    public static native ArrayList<CheatInfo> getCheatList1(int i2);

    public static SharedPreferences getDefaultSharedPreferences(Context context2) {
        String str = appPackName;
        if (!context2.getPackageName().equals(str)) {
            return context2.getSharedPreferences(str + "_preferences", 4);
        }
        return PreferenceManager.getDefaultSharedPreferences(context2);
    }

    public static native ArrayList<EditCheatInfo> getEditCheatList();

    public static String getExitAdPath() {
        return hasAd ? ExitAdImageFilePath : "";
    }

    public static String getHostPackageName() {
        return appPackName;
    }

    static void getIsAdult() {
        baseActivity.sendBroadcast(new Intent("com.show.realname.check"));
    }

    private static String getNavBarOverride() {
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
                declaredMethod.setAccessible(true);
                return (String) declaredMethod.invoke(null, "qemu.hw.mainkeys");
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public static void getOnlineState() {
        send(new Intent("com.join.android.app.mgsim.wufun.broadcast.getOnlineState"));
    }

    @SuppressLint({"NewApi"})
    public static String getPaste() {
        sendHandleEmptyMessage(3);
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getPermiss(String str) {
        if (Build.VERSION.SDK_INT < 23 || ContextCompat.checkSelfPermission(this, str) == 0) {
            return;
        }
        ActivityCompat.requestPermissions(this, new String[]{str}, 0);
        Toast.makeText(this, "请授权 录音权限", 1).show();
    }

    public static String getPhoneInfo() {
        return "is_android";
    }

    public static String getRecordInfo(String str) {
        int i2;
        String str2 = "";
        if (str != null && str.length() > 0) {
            File file = new File(str.substring(0, str.lastIndexOf(net.lingala.zip4j.util.e.F0)));
            if (!file.isDirectory()) {
                return "";
            }
            File[] listFiles = file.listFiles();
            int i4 = 0;
            while (i4 < listFiles.length - 1) {
                int i5 = i4 + 1;
                for (int i6 = i5; i6 < listFiles.length; i6++) {
                    if (listFiles[i4].lastModified() > listFiles[i6].lastModified()) {
                        File file2 = listFiles[i6];
                        listFiles[i6] = listFiles[i4];
                        listFiles[i4] = file2;
                    }
                }
                i4 = i5;
            }
            for (int i7 = 0; i7 < listFiles.length; i7++) {
                if (listFiles[i7].isFile() && listFiles[i7].getName().contains(g0.f27568a)) {
                    String absolutePath = listFiles[i7].getAbsolutePath();
                    if (absolutePath.substring(0, absolutePath.lastIndexOf(g0.f27568a)).equals(str)) {
                        try {
                            i2 = Integer.parseInt(listFiles[i7].getName().substring(listFiles[i7].getName().lastIndexOf(g0.f27568a) + 1));
                        } catch (Exception unused) {
                            i2 = -1;
                        }
                        if (i2 != -1) {
                            String format = new SimpleDateFormat("yyyy-MM-dd HH:mm").format((Date) new java.sql.Date(listFiles[i7].lastModified()));
                            str2 = i2 == 0 ? (listFiles[i7].getAbsolutePath() + "," + listFiles[i7].getAbsolutePath() + ".png," + format + ";") + str2 : (str2 + listFiles[i7].getAbsolutePath() + "," + listFiles[i7].getAbsolutePath() + ".png," + format) + ";";
                        }
                    }
                }
            }
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getSystemPaste() {
        if (cmb == null) {
            cmb = (ClipboardManager) getSystemService("clipboard");
        }
        ClipData primaryClip = cmb.getPrimaryClip();
        if (primaryClip == null) {
            return;
        }
        int itemCount = primaryClip.getItemCount();
        String str = "";
        for (int i2 = 0; i2 < itemCount; i2++) {
            CharSequence coerceToText = primaryClip.getItemAt(i2).coerceToText(this);
            str = str + coerceToText.toString();
        }
        if (str.isEmpty() || str.equals("")) {
            return;
        }
        setPasteForCheat(str);
    }

    private void goWebView(Context context2, String str) {
        MarketUtil.intent(Cocos2dxActivity.getContext(), "4", "", str, "", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleButtonAction(final Dialog dialog, Dialog dialog2, final ButtonBean buttonBean, final int i2) {
        if (buttonBean != null) {
            if (buttonBean.getEventType().intValue() == 2) {
                if (1 == buttonBean.getPopUpWindow().getType()) {
                    showNativeRealName(buttonBean.getPopUpWindow(), i2);
                    return;
                }
                PerfectWarmDialog perfectWarmDialog = new PerfectWarmDialog(this);
                this.alertTipDialog = perfectWarmDialog;
                perfectWarmDialog.setData(buttonBean.getPopUpWindow());
                this.alertTipDialog.setListener(new DialogListenerWrap() { // from class: com.papa91.activity.EmuBaseActivity.42
                    @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                    public void onCenterClick(Dialog dialog3, ButtonBean buttonBean2) {
                        super.onCenterClick(dialog3, buttonBean2);
                        if (1 == buttonBean2.getEventType().intValue()) {
                            dialog3.dismiss();
                        }
                        EmuBaseActivity.this.handleButtonAction(dialog, dialog3, buttonBean2, i2);
                    }

                    @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                    public void onLeftClick(Dialog dialog3, ButtonBean buttonBean2) {
                        super.onLeftClick(dialog3, buttonBean2);
                        if (1 == buttonBean2.getEventType().intValue()) {
                            dialog3.dismiss();
                        }
                        EmuBaseActivity.this.handleButtonAction(dialog, dialog3, buttonBean2, i2);
                    }

                    @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                    public void onRightClick(Dialog dialog3, ButtonBean buttonBean2) {
                        super.onRightClick(dialog3, buttonBean2);
                        if (1 == buttonBean2.getEventType().intValue()) {
                            dialog3.dismiss();
                        }
                        EmuBaseActivity.this.handleButtonAction(dialog, dialog3, buttonBean2, i2);
                    }
                });
                this.alertTipDialog.show();
                return;
            } else if (4 == buttonBean.getEventType().intValue()) {
                dialog2.dismiss();
                if (dialog != null) {
                    dialog.dismiss();
                }
                exitEmu();
                return;
            } else if (1 == buttonBean.getEventType().intValue()) {
                this.handler.postDelayed(new Runnable() { // from class: com.papa91.activity.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        EmuBaseActivity.this.lambda$handleButtonAction$6(buttonBean);
                    }
                }, 100L);
                return;
            } else if (3 == buttonBean.getEventType().intValue()) {
                dialog2.dismiss();
                exitEmu();
                return;
            } else {
                dialog2.dismiss();
                return;
            }
        }
        dialog2.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCheckNameResult(final PopwindowBean popwindowBean, final int i2) {
        closeRealNameDialog();
        if (popwindowBean == null || !popwindowBean.getPopup().booleanValue()) {
            return;
        }
        if (1 == popwindowBean.getType()) {
            showNativeRealName(popwindowBean, i2);
            return;
        }
        if (popwindowBean.getButtonCenter() != null && popwindowBean.getButtonCenter().getEventType().intValue() == 4 && popwindowBean.isNoAge()) {
            senCommonEvent("antiAddtionWindowUp", "0");
        }
        PerfectWarmDialog perfectWarmDialog = new PerfectWarmDialog(this);
        this.perfectWarmDialog = perfectWarmDialog;
        perfectWarmDialog.setData(popwindowBean);
        this.perfectWarmDialog.setListener(new DialogListenerWrap() { // from class: com.papa91.activity.EmuBaseActivity.40
            @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
            public void onCenterClick(Dialog dialog, ButtonBean buttonBean) {
                super.onCenterClick(dialog, buttonBean);
                EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                emuBaseActivity.handleButtonAction(emuBaseActivity.perfectWarmDialog, dialog, buttonBean, i2);
            }

            @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
            public void onCloseClick(Dialog dialog, ButtonBean buttonBean) {
                super.onCloseClick(dialog, buttonBean);
                EmuBaseActivity.this.senCommonEvent("closedRealNameWindow", "0");
                EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                emuBaseActivity.handleButtonAction(emuBaseActivity.perfectWarmDialog, dialog, buttonBean, i2);
            }
        });
        this.perfectWarmDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.papa91.activity.a
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                EmuBaseActivity.this.lambda$handleCheckNameResult$5(popwindowBean, dialogInterface);
            }
        });
        this.perfectWarmDialog.show();
    }

    public static boolean hasNavBar(Context context2) {
        Resources resources = context2.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", q.a.f73954a);
        if (identifier != 0) {
            boolean z3 = resources.getBoolean(identifier);
            String navBarOverride = getNavBarOverride();
            if ("1".equals(navBarOverride)) {
                return false;
            }
            if ("0".equals(navBarOverride)) {
                return true;
            }
            return z3;
        }
        return !ViewConfiguration.get(context2).hasPermanentMenuKey();
    }

    public static void hideBottomUIMenu() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 > 11 && i2 < 19) {
            baseActivity.getWindow().getDecorView().setSystemUiVisibility(8);
        } else if (i2 >= 19) {
            baseActivity.getWindow().getDecorView().setSystemUiVisibility(n.a.f60842f);
        }
    }

    public static native void httpPostMemberInfo();

    /* JADX INFO: Access modifiers changed from: protected */
    public static native int initEmu();

    /* JADX INFO: Access modifiers changed from: protected */
    public static native int initLaunchConfig(String[] strArr, String[] strArr2);

    private void initSign() {
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(appPackName, 16384);
            this.appInfo = packageInfo;
            if (packageInfo != null) {
                DEVICE_VERSION = this.appInfo.versionCode + "";
            }
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
        }
        httpKeySign = getMD5(DEVICE_ID + "gzRN53VWRF9BYUXomg2014");
        MyJson myJson = new MyJson();
        try {
            myJson.put("version", DEVICE_VERSION);
            myJson.put("deviceid", DEVICE_ID);
            myJson.put(Constant.MD5, httpKeySign);
            MyJson myJson2 = new MyJson();
            myJson2.put("args", new JSONArray());
            myJson.put("messages", myJson2);
        } catch (JSONException e5) {
            e5.printStackTrace();
        }
        HttpUtils httpUtils = new HttpUtils();
        httpUtils.sendRequestWithHttpClient(HttpUtils.EXIT_AD_URL + "/advertisement/simulator_sign_out_ad", myJson.toString(), new HttpFinishInterface() { // from class: com.papa91.activity.EmuBaseActivity.19
            @Override // com.papa91.utils.HttpFinishInterface
            public void onRequestError(String str) {
            }

            @Override // com.papa91.utils.HttpFinishInterface
            public void onRequestSuccess(String str) {
                try {
                    EmuBaseActivity.this.messData = str;
                    JSONArray jSONArray = new MyJson(str).getJSONObject("messages").getJSONArray("data");
                    if (jSONArray == null || jSONArray.length() <= 0) {
                        return;
                    }
                    JSONObject jSONObject = (JSONObject) jSONArray.get(0);
                    String string = jSONObject.getString("pic_remote");
                    EmuBaseActivity.this.link_type = jSONObject.getString("link_type");
                    EmuBaseActivity.this.jump_type = jSONObject.getString("jump_type");
                    EmuBaseActivity.this.link_type_val = jSONObject.getString("link_type_val");
                    EmuBaseActivity.this.crc_link_type_val = jSONObject.getString("crc_link_type_val");
                    EmuBaseActivity.this.tpl_type = jSONObject.getString("tpl_type");
                    int i2 = jSONObject.getInt("ad_switch");
                    int i4 = jSONObject.getInt("quit_switch");
                    if (i2 != 0) {
                        EmuBaseActivity.hasAd = true;
                        if (i4 != 0) {
                            EmuBaseActivity.this.onAdShwoIsCloseMine = true;
                        }
                    }
                    DownLoadFile downLoadFile = new DownLoadFile();
                    String externalStorageDirectory = SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext());
                    EmuBaseActivity.ExitAdImageFilePath = downLoadFile.downLoad(externalStorageDirectory + "/papa91/images/", string);
                } catch (JSONException e6) {
                    e6.printStackTrace();
                }
            }
        });
    }

    private boolean isFirstReame(String str) {
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(this);
        try {
            return defaultSharedPreferences.getBoolean(str, true);
        } catch (ClassCastException unused) {
            try {
                return Boolean.parseBoolean(defaultSharedPreferences.getString(str, "true"));
            } catch (Exception e4) {
                e4.printStackTrace();
                return true;
            }
        }
    }

    public static boolean isLogined() {
        return (TextUtils.isEmpty(UserID) || TextUtils.isEmpty(token) || UserID.equals("0") || token.equals("0")) ? false : true;
    }

    public static boolean isNetworkConnected() {
        Context context2 = context;
        if (context2 != null) {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context2.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    return activeNetworkInfo.isAvailable();
                }
                return false;
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean isPathWriteable(String str) {
        File file = new File(new File(str), "test.txt");
        try {
            file.createNewFile();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        if (file.exists()) {
            file.delete();
            return true;
        }
        return false;
    }

    static boolean isRewardConfigInited() {
        return getRewardConfig == 2;
    }

    public static int isSettingSystemManage() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(baseActivity);
        int i2 = defaultSharedPreferences.getInt("BBK_GIONE_NUM_GUIDE", 0);
        SharedPreferences.Editor edit = defaultSharedPreferences.edit();
        int i4 = i2 + 1;
        edit.putInt("BBK_GIONE_NUM_GUIDE", i4);
        edit.commit();
        if (i4 > 7) {
            return 0;
        }
        String str = Build.MANUFACTURER;
        if (str.equals("BBK")) {
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            List<ResolveInfo> queryIntentActivities = baseActivity.getPackageManager().queryIntentActivities(intent, 0);
            for (int i5 = 0; i5 < queryIntentActivities.size(); i5++) {
                if (queryIntentActivities.get(i5).activityInfo.packageName.equals("com.iqoo.secure")) {
                    systemSettingType = 1;
                    BBK_GIONEE_MAIN_NAME = queryIntentActivities.get(i5).activityInfo.name;
                    return systemSettingType;
                }
            }
            return 0;
        } else if (!str.equals("GiONEE") && !str.equals("GIONEE")) {
            if (str.equals("OPPO")) {
                return 3;
            }
            return str.equals("vivo") ? 1 : 0;
        } else {
            Intent intent2 = new Intent("android.intent.action.MAIN", (Uri) null);
            intent2.addCategory("android.intent.category.LAUNCHER");
            List<ResolveInfo> queryIntentActivities2 = baseActivity.getPackageManager().queryIntentActivities(intent2, 0);
            for (int i6 = 0; i6 < queryIntentActivities2.size(); i6++) {
                if (queryIntentActivities2.get(i6).activityInfo.packageName.equals("com.gionee.softmanager")) {
                    systemSettingType = 2;
                    BBK_GIONEE_MAIN_NAME = queryIntentActivities2.get(i6).activityInfo.name;
                    return systemSettingType;
                }
            }
            return 0;
        }
    }

    public static native int jMenuSaveState(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkRealName$3(Response response, int i2) {
        if (response != null && response.getCode() == 200) {
            PopwindowBean popwindowBean = (PopwindowBean) response.getData();
            if (popwindowBean != null) {
                handleCheckNameResult(popwindowBean, i2);
                if (popwindowBean.getEndDuration().intValue() > 0) {
                    this.playTime = 0L;
                    playCountDown(popwindowBean.getEndDuration().intValue(), i2 == 10);
                }
                if (i2 == 10) {
                    showRealNameResult(popwindowBean);
                    return;
                }
                return;
            }
            return;
        }
        Toast.makeText(this, (response == null || TextUtils.isEmpty(response.getMessage())) ? "网络连接异常，请检查网络连接" : response.getMessage(), 0).show();
        this.loading_real_name = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkRealName$4(Request request, final int i2) {
        try {
            final Response<PopwindowBean> checkRealName = com.papa91.arc.http.HttpUtils.checkRealName(request);
            this.loading_real_name = false;
            ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.activity.g
                @Override // java.lang.Runnable
                public final void run() {
                    EmuBaseActivity.this.lambda$checkRealName$3(checkRealName, i2);
                }
            });
        } catch (Exception e4) {
            e4.printStackTrace();
            this.loading_real_name = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeRealNameDialog$7() {
        PerfectWarmDialog perfectWarmDialog = this.alertTipDialog;
        if (perfectWarmDialog != null) {
            perfectWarmDialog.dismiss();
        }
        PerfectWarmDialog perfectWarmDialog2 = this.perfectWarmDialog;
        if (perfectWarmDialog2 != null) {
            perfectWarmDialog2.dismiss();
        }
        RealNameDialog realNameDialog = this.realNameDialog;
        if (realNameDialog != null) {
            realNameDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleButtonAction$6(ButtonBean buttonBean) {
        goWebView(this, buttonBean.getJumpLink());
        senCommonEvent("clickKnowGoRealPage", "0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleCheckNameResult$5(PopwindowBean popwindowBean, DialogInterface dialogInterface) {
        if (popwindowBean.isNoAge() && popwindowBean.getStatus() == 0) {
            senCommonEvent("nonageAstrictHint", "0");
        } else if (popwindowBean.getPopup().booleanValue() && popwindowBean.getButtonCenter() != null && popwindowBean.getButtonCenter().getEventType().intValue() == 1) {
            senCommonEvent("realNameUpWindows", "0");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(String str, String str2, String str3) {
        try {
            if (((Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(getApplicationContext(), "android.permission.READ_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(getApplicationContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) || Environment.getExternalStorageState().equals("mounted")) && str.contains(SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext()))) {
                String replace = str.replace(SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext()), SDCardUtil.getExternalStorageDirectory());
                if (new File(replace).exists()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("async state(oldVersion) src=");
                    sb.append(replace);
                    sb.append(", dst=");
                    sb.append(str2);
                    copyStates(replace, str2);
                    FileUtils.deleteDirs(replace);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("async state src=");
            sb2.append(str);
            sb2.append(", dst=");
            sb2.append(str2);
            copyStates(BaseAppConfig.APP_PATH + str3, str2);
            copyStates(str2, BaseAppConfig.APP_PATH + str3);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInvitePlayUiJava$1(View view) {
        acceptInvitePlay(1);
        this.invitePop.dismiss();
        this.timer.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInvitePlayUiJava$2(View view) {
        acceptInvitePlay(0);
        this.invitePop.dismiss();
        this.timer.cancel();
    }

    public static void loadAutoSlot(String str, int i2) {
        loadState(str);
        sendEmuStat("readAutosave", Integer.valueOf(i2));
        AutoSaveSlot autoSaveSlot2 = autoSaveSlot;
        if (autoSaveSlot2 != null) {
            autoSaveSlot2.start();
        }
        if (firstLoadAutoSlot()) {
            firstLoadAutoSlotSet();
            autoSaveSlot.showQuickLoadTip();
            showAutoRecordTips();
        }
    }

    public static void loadRomCompleted() {
        send(new Intent(actionLoadRomFinish));
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.35
            @Override // java.lang.Runnable
            public void run() {
                if (EmuBaseActivity.autoSaveSlot != null && EmuBaseActivity.startMode == 0) {
                    EmuBaseActivity.autoSaveSlot.show();
                    EmuBaseActivity.autoSaveSlot.start();
                }
                EmuBaseActivity.showJavaShortCut(true);
            }
        });
    }

    public static void loadStageCompleted(int i2, String str) {
        Intent intent = new Intent(actionLoadStageCompleted);
        intent.putExtra("status", i2);
        intent.putExtra("message", str);
        send(intent);
    }

    public static native void loadStageData(int i2);

    public static native int loadState(String str);

    public static native void modifyEditCheat(int i2, EditCheatInfo editCheatInfo);

    public static String modifyRecordInfo(String str, boolean z3, boolean z4) {
        int i2;
        String str2;
        String str3;
        String str4;
        String str5;
        int i4;
        String str6 = str;
        String str7 = "";
        if (str6 != null && str.length() > 0) {
            String str8 = net.lingala.zip4j.util.e.F0;
            int i5 = 0;
            File file = new File(str6.substring(0, str6.lastIndexOf(net.lingala.zip4j.util.e.F0)));
            if (!file.isDirectory()) {
                return "";
            }
            File[] listFiles = file.listFiles();
            int i6 = 0;
            while (true) {
                i2 = 1;
                if (i6 >= listFiles.length - 1) {
                    break;
                }
                int i7 = i6 + 1;
                for (int i8 = i7; i8 < listFiles.length; i8++) {
                    if (listFiles[i6].lastModified() > listFiles[i8].lastModified()) {
                        File file2 = listFiles[i8];
                        listFiles[i8] = listFiles[i6];
                        listFiles[i6] = file2;
                    }
                }
                i6 = i7;
            }
            if (z3) {
                str2 = str6 + "vba";
                str6 = str6 + "vba";
            } else {
                str2 = str6;
            }
            if (z4) {
                str2 = str2 + "_v2";
                str6 = str6 + "_v2";
            }
            String str9 = null;
            String str10 = null;
            int i9 = 0;
            int i10 = 1;
            while (i9 < listFiles.length) {
                if (listFiles[i9].isFile() && listFiles[i9].getName().contains(g0.f27568a)) {
                    String absolutePath = listFiles[i9].getAbsolutePath();
                    String substring = absolutePath.substring(i5, absolutePath.lastIndexOf(g0.f27568a));
                    if (substring.equals(str6)) {
                        try {
                            i4 = Integer.parseInt(listFiles[i9].getName().substring(listFiles[i9].getName().lastIndexOf(g0.f27568a) + i2));
                        } catch (Exception unused) {
                            i4 = -1;
                        }
                        if (i4 != -1) {
                            String str11 = str10;
                            String format = new SimpleDateFormat("yyyy-MM-dd HH:mm").format((Date) new java.sql.Date(listFiles[i9].lastModified()));
                            if (i4 == 0) {
                                str7 = (listFiles[i9].getAbsolutePath() + "," + listFiles[i9].getAbsolutePath() + ".png," + format + ";") + str7;
                                str10 = str11;
                                str3 = str6;
                                str4 = str8;
                                str5 = str2;
                            } else {
                                int lastIndexOf = substring.lastIndexOf(47);
                                if (str9 == null) {
                                    str9 = new String(substring.substring(i5, lastIndexOf));
                                }
                                String str12 = str11 == null ? new String(substring + "TmpState") : str11;
                                str3 = str6;
                                File file3 = new File(substring + "TmpState");
                                if (!file3.exists()) {
                                    file3.mkdirs();
                                }
                                int lastIndexOf2 = substring.lastIndexOf(47);
                                String str13 = str12 + str8 + substring.substring(lastIndexOf2 + 1, str2.length()) + g0.f27568a + i10;
                                String str14 = str13 + ".png";
                                str4 = str8;
                                String str15 = substring + g0.f27568a + i10;
                                String str16 = str15 + ".png";
                                listFiles[i9].toString();
                                StringBuilder sb = new StringBuilder();
                                str5 = str2;
                                sb.append(listFiles[i9].toString());
                                sb.append(".png");
                                String sb2 = sb.toString();
                                String str17 = str12;
                                String str18 = str9;
                                long lastModified = listFiles[i9].lastModified();
                                File file4 = new File(str13);
                                if (listFiles[i9].exists()) {
                                    listFiles[i9].renameTo(file4);
                                    file4.setLastModified(lastModified);
                                }
                                File file5 = new File(sb2);
                                long lastModified2 = file5.lastModified();
                                File file6 = new File(str14);
                                if (file5.exists()) {
                                    file5.renameTo(file6);
                                    file6.setLastModified(lastModified2);
                                }
                                i10++;
                                str7 = (str7 + str15 + "," + str16 + "," + format) + ";";
                                str9 = str18;
                                str10 = str17;
                            }
                            i9++;
                            str2 = str5;
                            str6 = str3;
                            str8 = str4;
                            i5 = 0;
                            i2 = 1;
                        }
                    }
                }
                str3 = str6;
                str4 = str8;
                str5 = str2;
                str10 = str10;
                i9++;
                str2 = str5;
                str6 = str3;
                str8 = str4;
                i5 = 0;
                i2 = 1;
            }
            String str19 = str10;
            if (str9 != null && str19 != null) {
                copyFolderReserveTime(str19, str9);
            }
        }
        return str7;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean netBattleMatchEfficiency(String str, String str2, String str3) {
        Intent intent = new Intent(f1.a.T);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str3);
        intent.putExtra("jsonData", str2);
        send(intent);
        return true;
    }

    protected static native void netSitDown(boolean z3);

    public static void onAutoSaveClick() {
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.33
            @Override // java.lang.Runnable
            public void run() {
                if (EmuBaseActivity.autoSaveSlot == null || EmuBaseActivity.startMode != 0) {
                    return;
                }
                EmuBaseActivity.autoSaveSlot.showSlots();
                EmuBaseActivity.sendEmuStat("showAutosave", new Object[0]);
            }
        });
    }

    public static void onAutoSaveDoubleClick() {
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.34
            @Override // java.lang.Runnable
            public void run() {
                EmuBaseActivity.sendEmuStat("DoublereadAutosave", new Object[0]);
                if (EmuBaseActivity.autoSaveSlot == null || EmuBaseActivity.startMode != 0) {
                    return;
                }
                EmuBaseActivity.autoSaveSlot.quickLoadSlot();
            }
        });
    }

    public static void onLoadCheatListData() {
        List<CheatInfo> list = cheatInfos;
        if (list == null) {
            cheatInfos = new ArrayList();
        } else {
            list.clear();
        }
        while (true) {
            ArrayList<CheatInfo> cheatList1 = getCheatList1(cheatInfos.size());
            if (cheatList1 == null || cheatList1.size() <= 0) {
                return;
            }
            cheatInfos.addAll(cheatList1);
        }
    }

    public static native void onLoginFinish();

    public static void openJavaEmuMenu(int i2) {
        if (i2 == MenuType.slot.getCode()) {
            openMenu(Cocos2dxActivity.getContext(), actionShowMenuSlot);
        } else if (i2 == MenuType.cheating.getCode()) {
            openMenu(Cocos2dxActivity.getContext(), actionShowMenuCheat);
        } else if (i2 == MenuType.performance.getCode()) {
            openMenu(Cocos2dxActivity.getContext(), actionShowMenuPerformance);
        } else if (i2 == MenuType.vip.getCode()) {
            openMenu(Cocos2dxActivity.getContext(), "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        } else if (i2 == MenuType.oneKey.getCode()) {
            openMenu(Cocos2dxActivity.getContext(), actionShowMenuOnekey);
        } else if (i2 == MenuType.gate.getCode()) {
            openMenu(Cocos2dxActivity.getContext(), actionShowMenuGate);
        }
    }

    public static void openMenu(Context context2, String str) {
        send(new Intent(str));
    }

    public static void pauseGame(final int i2) {
        gameIsPause = i2 == 1;
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.30
            @Override // java.lang.Runnable
            public void run() {
                AutoSaveSlot autoSaveSlot2 = EmuBaseActivity.autoSaveSlot;
                if (autoSaveSlot2 != null) {
                    if (i2 == 1) {
                        autoSaveSlot2.pause();
                    } else {
                        autoSaveSlot2.resume();
                    }
                }
            }
        });
    }

    public static void payCondition(int i2) {
        payType = i2;
        sendHandleEmptyMessage(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playCountDown(long j4, boolean z3) {
        this.handler.removeCallbacks(this.limitTimeRunnable);
        this.limitTime = j4;
        this.isArenaCheck = z3;
        this.handler.postDelayed(this.limitTimeRunnable, 1000L);
    }

    static boolean playTime(long j4) {
        Intent intent = new Intent(f1.a.N);
        intent.putExtra("gameId", GameID);
        intent.putExtra("uid", UserID);
        intent.putExtra("sec", j4);
        send(intent);
        return true;
    }

    public static void raiseVip(int i2) {
        if (i2 == 8) {
            StartcomplainMsg("4", "0", "http://anv3cjapi.5fun.com/member/battle_kick/index", "", "");
            return;
        }
        Message message = new Message();
        message.what = 11;
        message.arg1 = i2;
        sendHandleMessage(message);
    }

    public static void recordEnd(int i2) {
        Intent intent = new Intent(actionRecordEnd);
        intent.putExtra(IntentKeys.KEY_PARAMS_RANK_PLAY_TIME, i2 / 60);
        send(intent);
    }

    protected static native void requestOnInquiry(String str);

    protected static native void requestOnPay(String str);

    protected static native void requestOnsign(String str);

    public static boolean rewardBananaEvent(String str, String str2, int i2, int i4, int i5) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.reward.analytics");
        intent.putExtra("action", str);
        intent.putExtra("uniqueId", "" + str2);
        intent.putExtra("gameId", "" + GameID);
        intent.putExtra("uid", "" + UserID);
        intent.putExtra("amount", i2);
        intent.putExtra("times", i4);
        intent.putExtra("type", i5);
        send(intent);
        return true;
    }

    static void runOnUiThread1(Runnable runnable) {
        ((Activity) Cocos2dxActivity.getContext()).runOnUiThread(runnable);
    }

    public static native void saveBindsFile();

    public static native void saveSnap();

    public static void selectCondition(int i2) {
        payType = i2;
        sendHandleEmptyMessage(1);
    }

    public static void send(Intent intent) {
        intent.putExtra("packageName", getHostPackageName());
        intent.putExtra("gameId", GameID);
        try {
            intent.addFlags(32);
            Cocos2dxActivity.getContext().sendBroadcast(intent);
            sendInBridge(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void sendAddFriends(int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.addFriends");
        intent.putExtra("from", i2);
        send(intent);
    }

    public static void sendEmuStat(String str, Object... objArr) {
        try {
            Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.stat");
            intent.putExtra(NotificationCompat.CATEGORY_EVENT, str);
            intent.putExtra("gameId", GameID);
            if (str.equals("readAutosave") || str.equals("onclickAutosave")) {
                intent.putExtra("pos", ((Integer) objArr[0]).intValue());
            }
            send(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void sendFriendsApplication(int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.friendsApplication");
        intent.putExtra("action", i2);
        send(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void sendGameExit() {
        Intent intent = new Intent(actionHandleExitGame);
        intent.setFlags(32);
        Cocos2dxActivity.getContext().sendBroadcast(intent);
    }

    static void sendGamePlay(int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.gamePlay");
        intent.putExtra("action", i2);
        intent.putExtra("startMode", startMode);
        intent.putExtra("gameId", GameID);
        intent.putExtra("roomId", GroupID);
        intent.putExtra("uid", UserID);
        send(intent);
    }

    public static void sendHandleEmptyMessage(int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.onHandleEmptyMessage");
        intent.putExtra("_what", i2);
        Cocos2dxActivity.getContext().sendBroadcast(intent);
    }

    public static void sendHandleMessage(Message message) {
        if (message != null) {
            Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.onHandleMessage");
            intent.putExtra("_message", message);
            Cocos2dxActivity.getContext().sendBroadcast(intent);
        }
    }

    static void sendInBridge(Intent intent) {
        if (useIndependentEmu && intent != null) {
            Message message = new Message();
            message.what = 11;
            message.setData(new Bundle(intent.getExtras()));
            Bundle bundle = new Bundle();
            bundle.putString("action", intent.getAction());
            bundle.putString("fromCls", className);
            message.obj = bundle;
            try {
                Messenger messenger = mMessenger;
                if (messenger != null) {
                    messenger.send(message);
                } else if (Cocos2dxActivity.getContext() instanceof EmuBaseActivity) {
                    ((EmuBaseActivity) Cocos2dxActivity.getContext()).bindBridge();
                }
            } catch (RemoteException e4) {
                e4.printStackTrace();
            }
        }
    }

    public static void sendReceiveInvitation() {
        send(new Intent("com.join.android.app.mgsim.wufun.broadcast.receiveInvitation"));
    }

    public static void sendStatEvent(String str, String str2) {
        if (TextUtils.isEmpty(str) || !str.equals("FCProduceBanner")) {
            return;
        }
        rewardBananaEvent("FCProduceBanner", "", 0, 0, 2);
    }

    public static void sendUmengEvent(String str, String str2) {
        Intent intent = new Intent("papa_broadcast_share_umengevent");
        intent.putExtra("umengEvent", str);
        intent.putExtra("eventData", str2);
        send(intent);
    }

    public static native void setAdResult(int i2);

    public static void setAdVisible(int i2, int i4) {
        if (i4 == 1) {
            Message message = new Message();
            message.what = 9;
            message.arg1 = i2;
            sendHandleMessage(message);
            return;
        }
        Message message2 = new Message();
        message2.what = 10;
        message2.arg1 = i2;
        sendHandleMessage(message2);
    }

    public static void setBBK_GOINEE_sysAPP() {
        sendHandleEmptyMessage(4);
    }

    public static void setBananaVisible(final boolean z3) {
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.31
            @Override // java.lang.Runnable
            public void run() {
                if (EmuBaseActivity.canShowRewardMenu() && EmuBaseActivity.progressView != null && EmuBaseActivity.startRewardCount) {
                    if (EmuBaseActivity.isRewardConfigInited() && EmuBaseActivity.left_play_reward_count - EmuBaseActivity.received_times < 1) {
                        EmuBaseActivity.progressView.setVisibility(8);
                    } else if (z3) {
                        EmuBaseActivity.progressView.setVisibility(0);
                        EmuBaseActivity.progressView.resume();
                    } else {
                        EmuBaseActivity.progressView.setVisibility(8);
                        EmuBaseActivity.progressView.pause();
                    }
                }
            }
        });
    }

    public static void setBannerType(int i2, int i4) {
    }

    public static void setEmuUIVisible(final int i2) {
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.36
            @Override // java.lang.Runnable
            public void run() {
                if (EmuBaseActivity.autoSaveSlot == null || EmuBaseActivity.startMode != 0) {
                    return;
                }
                if (i2 == 1) {
                    EmuBaseActivity.autoSaveSlot.show();
                } else {
                    EmuBaseActivity.autoSaveSlot.hide();
                }
            }
        });
    }

    private void setFirestReame(String str) {
        SharedPreferences.Editor edit = getDefaultSharedPreferences(this).edit();
        edit.putBoolean(str, false);
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static native void setJoyStickKey(int[] iArr);

    /* JADX INFO: Access modifiers changed from: protected */
    public static native int setJson(String str);

    public static void setOnlineState(int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.setOnlineState");
        intent.putExtra(NoticeTopAnimActivityDialog_.f34402n, i2);
        send(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static native int setPadVisible(int i2, int i4);

    /* JADX INFO: Access modifiers changed from: protected */
    public static void setPadVisible(int i2) {
        setPadVisible(i2, 1);
    }

    protected static native void setPasteForCheat(String str);

    public static native void setPause(int i2);

    public static native void setRewardResult(int i2, int i4);

    public static native void setSPBind(int i2, int i4, int i5);

    public static native void setSPVisible(boolean z3);

    public static native void setShareResult(int i2, int i4);

    protected static native void setUserInfo(String str, String str2);

    public static native void setUserState(int i2);

    protected static native void setVipType(int i2, int i4);

    public static native void showAutoRecordTips();

    /* JADX INFO: Access modifiers changed from: protected */
    public static native int showDailog(int i2);

    public static void showExitDlg(int i2, int i4, int i5, int i6, String str) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.putExtra("gameId", "" + GameID);
        intent.putExtra(SimulatorExitPlayActivity_.E, i2);
        intent.putExtra("progress", i4);
        intent.putExtra(SimulatorExitPlayActivity_.H, str);
        intent.putExtra("time", i6);
        intent.putExtra(SimulatorExitPlayActivity_.G, i5);
        intent.putExtra(SimulatorExitPlayActivity_.I, new int[0]);
        intent.setClassName(getHostPackageName(), "com.join.mgps.activity.SimulatorExitPlayActivity_");
        Cocos2dxActivity.getContext().startActivity(intent);
    }

    public static native void showInvitePlay(String str, String str2, String str3, long j4);

    public static void showJavaMembTips(int i2, int i4) {
        Intent intent = new Intent(actionVipTip);
        intent.putExtra("tipid", i2);
        intent.putExtra("charid", i4);
        send(intent);
    }

    public static void showJavaShortCut(boolean z3) {
        Intent intent;
        if (z3) {
            intent = new Intent(actionShowMenu);
        } else {
            intent = new Intent(actionHideMenu);
        }
        send(intent);
    }

    private void showNativeRealName(PopwindowBean popwindowBean, final int i2) {
        senCommonEvent("realNameDisplayWindow", "0");
        RealNameDialog realNameDialog = new RealNameDialog(this, popwindowBean, new RealNameCallBack() { // from class: com.papa91.activity.EmuBaseActivity.41
            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onCancel(Dialog dialog, ButtonBean buttonBean) {
                EmuBaseActivity.this.senCommonEvent("clickClosedRealNameWindow", "0");
                EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                emuBaseActivity.handleButtonAction(emuBaseActivity.realNameDialog, dialog, buttonBean, i2);
            }

            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onEvent(String str, String str2) {
                EmuBaseActivity.this.senCommonEvent(str, str2);
            }

            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onFail(int i4) {
            }

            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onSuccess(Dialog dialog, PopwindowBean popwindowBean2) {
                dialog.dismiss();
                EmuBaseActivity.this.handleCheckNameResult(popwindowBean2, i2);
                if (popwindowBean2.getEndDuration().intValue() > 0) {
                    EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                    emuBaseActivity.playTime = 0L;
                    emuBaseActivity.playCountDown(popwindowBean2.getEndDuration().intValue(), i2 == 10);
                }
            }
        });
        this.realNameDialog = realNameDialog;
        realNameDialog.show(UserID, Integer.valueOf(i2), 2);
    }

    public static void showNetExitDlg(int i2, int i4, int i5, int i6, String str, String str2) {
        String[] split;
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.putExtra("gameId", "" + GameID);
        intent.putExtra(SimulatorExitPlayActivity_.E, i2);
        intent.putExtra("progress", i4);
        intent.putExtra(SimulatorExitPlayActivity_.H, str);
        intent.putExtra("time", i6);
        intent.putExtra(SimulatorExitPlayActivity_.G, i5);
        try {
            if (!TextUtils.isEmpty(str2) && (split = str2.split(",")) != null && split.length != 0) {
                int[] iArr = new int[split.length];
                for (int i7 = 0; i7 < split.length; i7++) {
                    iArr[i7] = Integer.parseInt(split[i7]);
                }
                intent.putExtra(SimulatorExitPlayActivity_.I, iArr);
            }
        } catch (NumberFormatException e4) {
            e4.printStackTrace();
        }
        intent.setClassName(getHostPackageName(), "com.join.mgps.activity.SimulatorExitPlayActivity_");
        Cocos2dxActivity.getContext().startActivity(intent);
    }

    private void showRealNameResult(PopwindowBean popwindowBean) {
        long intValue = popwindowBean.getEndDuration().intValue();
        if (popwindowBean.isPopup()) {
            senCommonEvent("clickKnowGoRealPage", "0");
            netSitDown(false);
            if (intValue == -1) {
                finish();
                return;
            }
            return;
        }
        netSitDown(true);
    }

    public static void showRewardDialog(final String str, final int i2, int i4) {
        ((Activity) Cocos2dxActivity.getContext()).runOnUiThread(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.21
            @Override // java.lang.Runnable
            public void run() {
                if (!TextUtils.isEmpty(EmuBaseActivity.token) && !TextUtils.isEmpty(EmuBaseActivity.UserID)) {
                    boolean z3 = EmuBaseActivity.tourist;
                    int i5 = EmuBaseActivity.generate_times;
                    int i6 = i2;
                    if (i5 != i6) {
                        EmuBaseActivity.unique_id = "";
                        EmuBaseActivity.reward_amount = 0;
                        EmuBaseActivity.reward_times = 0;
                        EmuBaseActivity.reward_left_count = 0;
                    }
                    EmuBaseActivity.generate_times = i6;
                    EmuBaseActivity.showRewardDialog1(str);
                    return;
                }
                EmuBaseActivity.sign();
                EmuBaseActivity.setRewardResult(0, 0);
            }
        });
    }

    public static void showRewardDialog1(String str) {
        int i2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        RewardBananaDialog rewardBananaDialog2 = rewardBananaDialog;
        if (rewardBananaDialog2 != null) {
            if (rewardBananaDialog2.isShowing()) {
                rewardBananaDialog.dismiss();
            }
            rewardBananaDialog = null;
        }
        if (rewardBananaDialog == null) {
            RewardBananaDialog rewardBananaDialog3 = new RewardBananaDialog(Cocos2dxActivity.getContext(), R.style.Dialog) { // from class: com.papa91.activity.EmuBaseActivity.24
                @Override // com.papa91.view.RewardBananaDialog
                public void giveUpReceive(int i11) {
                    super.giveUpReceive(i11);
                    DragProgressView dragProgressView = EmuBaseActivity.progressView;
                    dragProgressView.setSignal(dragProgressView.getSignal() - 1);
                    EmuBaseActivity.progressView.resume();
                }
            };
            rewardBananaDialog = rewardBananaDialog3;
            rewardBananaDialog3.setListener(new RewardBananaDialog.OnRewardBananaListener() { // from class: com.papa91.activity.EmuBaseActivity.25
                @Override // com.papa91.view.RewardBananaDialog.OnRewardBananaListener
                public void onDoubleReward(String str2, int i11, int i12, int i13, String str3) {
                    Intent intent = new Intent("com.tools.AdBroadcast");
                    intent.putExtra("action", 5);
                    intent.putExtra("orientation", 1);
                    intent.putExtra("uniqueId", str2);
                    intent.putExtra("gameId", str3);
                    intent.putExtra("amount", i11);
                    intent.putExtra("times", i12);
                    intent.putExtra("type", i13);
                    intent.putExtra("uid", EmuBaseActivity.UserID);
                    EmuBaseActivity.send(intent);
                    EmuBaseActivity.rewardBananaEvent("FCDouble", str2, i11, i12, i13);
                }

                @Override // com.papa91.view.RewardBananaDialog.OnRewardBananaListener
                public void onReceiveReward(String str2, int i11, int i12, int i13, String str3) {
                    Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.reward.receive");
                    intent.putExtra("orientation", 1);
                    intent.putExtra("uniqueId", str2);
                    intent.putExtra("gameId", str3);
                    intent.putExtra("amount", i11);
                    intent.putExtra("times", 1);
                    intent.putExtra("type", i13);
                    intent.putExtra("uid", EmuBaseActivity.UserID);
                    EmuBaseActivity.send(intent);
                    EmuBaseActivity.rewardBananaEvent("FCReceiveBanner", str2, i11, i12, i13);
                }

                @Override // com.papa91.view.RewardBananaDialog.OnRewardBananaListener
                public void onRewardInfo(String str2, int i11, int i12, int i13, int i14) {
                    EmuBaseActivity.unique_id = str2;
                    EmuBaseActivity.reward_amount = i11;
                    EmuBaseActivity.reward_times = i12;
                    EmuBaseActivity.reward_left_count = i13;
                    EmuBaseActivity.total_reward_amount = i14;
                }
            });
            rewardBananaDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.papa91.activity.EmuBaseActivity.26
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    EmuBaseActivity.setRewardResult(0, 0);
                    EmuBaseActivity.setPause(0);
                }
            });
        }
        rewardBananaDialog.show();
        setPause(1);
        int i11 = 0;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new MyJson(str).getJSONObject("banana_reward_config", null);
                if (jSONObject != null) {
                    MyJson myJson = new MyJson(jSONObject.toString());
                    myJson.getInt("max_reward_amount", 0);
                    myJson.getInt("min_reward_amount", 0);
                    myJson.getInt("max_reward_times", 0);
                    myJson.getInt("min_reward_times", 0);
                    left_play_reward_count = myJson.getInt("left_play_reward_count", 0);
                    left_device_play_reward_count = myJson.getInt("left_device_play_reward_count", 0);
                    if (reward_left_count < 0) {
                        reward_left_count = 0;
                    }
                    int i12 = reward_left_count;
                    try {
                        i10 = reward_amount;
                    } catch (Exception e4) {
                        i4 = 0;
                        i2 = i12;
                        e = e4;
                    }
                    try {
                        i8 = i12;
                        i7 = reward_times;
                        i11 = i10;
                    } catch (Exception e5) {
                        i2 = i12;
                        e = e5;
                        i4 = i10;
                        e.printStackTrace();
                        i5 = i2;
                        i6 = i4;
                        i9 = 0;
                        rewardBananaDialog.setAccount(UserID, token, DEVICE_ID);
                        rewardBananaDialog.setData(i5, unique_id, i6, i9, 2, GameID, total_reward_amount);
                    }
                } else {
                    i7 = 0;
                    i8 = 0;
                }
                i9 = i7;
                i5 = i8;
                i6 = i11;
            } catch (Exception e6) {
                e = e6;
                i2 = 0;
                i4 = 0;
            }
            rewardBananaDialog.setAccount(UserID, token, DEVICE_ID);
            rewardBananaDialog.setData(i5, unique_id, i6, i9, 2, GameID, total_reward_amount);
        }
        i5 = 0;
        i6 = 0;
        i9 = 0;
        rewardBananaDialog.setAccount(UserID, token, DEVICE_ID);
        rewardBananaDialog.setData(i5, unique_id, i6, i9, 2, GameID, total_reward_amount);
    }

    static void showRewardMenu() {
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.29
            @Override // java.lang.Runnable
            public void run() {
                if (EmuBaseActivity.canShowRewardMenu() && EmuBaseActivity.progressView != null) {
                    if (EmuBaseActivity.isRewardConfigInited() && EmuBaseActivity.left_play_reward_count - EmuBaseActivity.received_times < 1) {
                        EmuBaseActivity.progressView.setVisibility(8);
                        return;
                    }
                    if (EmuBaseActivity.progressView.getVisibility() != 0) {
                        EmuBaseActivity.progressView.setVisibility(0);
                    }
                    if (TextUtils.isEmpty(EmuBaseActivity.rewardConfig)) {
                        return;
                    }
                    EmuBaseActivity.progressView.setSignalMax(EmuBaseActivity.reward_left_count);
                    EmuBaseActivity.progressView.setInterval(EmuBaseActivity.init_first_box_time, EmuBaseActivity.min_time_interval, EmuBaseActivity.max_time_interval);
                    if (EmuBaseActivity.progressView.isRunning()) {
                        return;
                    }
                    EmuBaseActivity.progressView.start();
                }
            }
        });
    }

    protected static void showRewardTipDialog() {
        RewardBananaTipDialog rewardBananaTipDialog = new RewardBananaTipDialog(Cocos2dxActivity.getContext(), R.style.Dialog);
        rewardBananaTipDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.papa91.activity.EmuBaseActivity.22
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                EmuBaseActivity.setPause(0);
            }
        });
        rewardBananaTipDialog.show();
        setPause(1);
    }

    static void showToast(final String str) {
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.32
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(Cocos2dxActivity.getContext(), str, 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showVideoPopWin(String str, int i2) {
        VideoStrategyPop videoStrategyPop = this.videoStrategyPop;
        if (videoStrategyPop == null || !videoStrategyPop.isShowing()) {
            VideoStrategyPop videoStrategyPop2 = new VideoStrategyPop(this, i2, str, new VideoStrategyPop.VideoPopListener() { // from class: com.papa91.activity.EmuBaseActivity.6
                @Override // com.papa91.VideoStrategyPop.VideoPopListener
                public void onClose() {
                    EmuBaseActivity.setAdResult(1);
                }
            });
            this.videoStrategyPop = videoStrategyPop2;
            videoStrategyPop2.showAtLocation(videoStrategyPop2.getContentView(), 17, 0, 0);
            this.videoStrategyPop.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.papa91.activity.EmuBaseActivity.7
                @Override // android.widget.PopupWindow.OnDismissListener
                public void onDismiss() {
                    EmuBaseActivity.this.videoStrategyPop.dismiss();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showVipDialog(String str, String str2, String str3, String str4, String str5, String str6, String str7, final int i2, final int i4, final int i5, final int i6) {
        if (this.messageDialog == null) {
            MessageVipCommonDialog messageVipCommonDialog = new MessageVipCommonDialog(context, str, str2, str3, str4, str5, str6, str7, i2) { // from class: com.papa91.activity.EmuBaseActivity.8
                @Override // com.papa91.MessageVipCommonDialog, android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (EmuBaseActivity.this.needResumeGame()) {
                        EmuBaseActivity.setPause(0);
                    }
                    super.onDismiss(dialogInterface);
                }

                @Override // com.papa91.MessageVipCommonDialog, android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    EmuBaseActivity.setPause(1);
                    super.onShow(dialogInterface);
                }
            };
            this.messageDialog = messageVipCommonDialog;
            messageVipCommonDialog.show();
            this.messageDialog.setCancelBtn(new View.OnClickListener() { // from class: com.papa91.activity.EmuBaseActivity.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (EmuBaseActivity.this.messageDialog.getBtn_url() == null || "".equals(EmuBaseActivity.this.messageDialog.getBtn_url())) {
                        return;
                    }
                    Intent intent = new Intent("com.tools.AdBroadcast");
                    intent.putExtra("action", 3);
                    intent.putExtra("url", EmuBaseActivity.this.messageDialog.getBtn_url());
                    intent.putExtra("from", 1);
                    EmuBaseActivity.send(intent);
                }
            });
            this.messageDialog.setImgListener(new View.OnClickListener() { // from class: com.papa91.activity.EmuBaseActivity.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (EmuBaseActivity.this.messageDialog.getUrl() == null || "".equals(EmuBaseActivity.this.messageDialog.getUrl())) {
                        return;
                    }
                    Intent intent = new Intent("com.tools.AdBroadcast");
                    intent.putExtra("action", 4);
                    intent.putExtra("url", EmuBaseActivity.this.messageDialog.getUrl());
                    EmuBaseActivity.send(intent);
                }
            });
            this.messageDialog.setOkBtn(new View.OnClickListener() { // from class: com.papa91.activity.EmuBaseActivity.11
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (EmuBaseActivity.this.adLoadError) {
                        Intent intent = new Intent();
                        intent.setAction("com.emu.ad.result");
                        intent.putExtra(DownloadHighSpeedingDialog_.a.f47372b, 7);
                        EmuBaseActivity.send(intent);
                        EmuBaseActivity.this.adLoadError = false;
                        return;
                    }
                    Intent intent2 = new Intent("com.tools.AdBroadcast");
                    intent2.putExtra("times", i2);
                    intent2.putExtra("howTimes", i4);
                    intent2.putExtra("adSdkType", i5);
                    intent2.putExtra("gameId", EmuBaseActivity.GameID);
                    intent2.putExtra("action", 0);
                    intent2.putExtra("adCount", i6);
                    EmuBaseActivity.send(intent2);
                }
            });
        }
    }

    public static void sign() {
        try {
            Intent intent = new Intent();
            intent.addFlags(268435456);
            intent.setClassName(getHostPackageName(), "com.join.mgps.activity.login.LoginSplashActivity_");
            Cocos2dxActivity.getContext().startActivity(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void snapFinished(String str) {
        Intent intent = new Intent(actionShowShare);
        intent.putExtra(CommonService_.b0.f51756b, str);
        send(intent);
    }

    public static boolean spVisibleState() {
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(Cocos2dxActivity.getContext());
        return defaultSharedPreferences.getBoolean(GameID + "_isSpVisible", true);
    }

    public static void startAPPActivity() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(appPackName, "com.join.mgps.activity.ForumActivity_"));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fid", fid);
            jSONObject.put("name", "");
            jSONObject.put("icon_src", "");
            jSONObject.put("users", 0);
            jSONObject.put("posts", 0);
            jSONObject.put("add_time", 0);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        intent.putExtra("key_forum_bean", jSONObject.toString());
        intent.setAction("com.wufun.intent.activity.view.action.emuintent");
        baseActivity.startActivity(intent);
    }

    public static void startForumsActivity() {
        sendHandleEmptyMessage(0);
    }

    public static void startForumsActivityForAd(int i2, int i4) {
        Message message = new Message();
        message.what = 101;
        message.arg1 = i2;
        message.arg2 = i4;
        sendHandleMessage(message);
    }

    public static void startRewardCount() {
        startRewardCount = true;
        showRewardMenu();
    }

    public static void startShare(final int i2, final String str) {
        baseActivity.runOnUiThread(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.2
            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent("papa_broadcast_share_message");
                intent.putExtra("shareJson", str);
                intent.putExtra("shareType", i2);
                EmuBaseActivity.send(intent);
            }
        });
    }

    public static void startShowAd(final int i2, int i4) {
        baseActivity.runOnUiThread(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.1
            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent("com.tools.AdBroadcast");
                intent.putExtra("action", 2);
                intent.putExtra("plugNum", i2);
                intent.putExtra("gameId", EmuBaseActivity.GameID);
                EmuBaseActivity.send(intent);
            }
        });
    }

    public static void startplayTime(int i2) {
        playTime(i2);
        StringBuilder sb = new StringBuilder();
        sb.append("startplayTime: ");
        sb.append(i2);
    }

    public static void toPrefecture(int i2) {
        Message message = new Message();
        message.what = 100;
        message.arg1 = i2;
        sendHandleMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean unLockSP(String str) {
        return true;
    }

    public static void uploadEfficiencyData() {
    }

    public void HttpPost_Memer() {
        Dialog dialog;
        if (!isNetworkConnected() || (dialog = mDialog) == null) {
            return;
        }
        dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void asyncConfig() {
        this.handler.post(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.38
            void doCopyCfg() {
                try {
                    String absolutePath = new File(BaseAppConfig.CONFIG_PATH).getAbsolutePath();
                    if (absolutePath.contains(SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext()))) {
                        String replace = absolutePath.replace(SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext()), SDCardUtil.getExternalStorageDirectory());
                        String unused = Cocos2dxActivity.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("async cfg(oldVersion) src=");
                        sb.append(replace);
                        sb.append(", dst=");
                        sb.append(absolutePath);
                        FileUtils.copyFolder(replace, absolutePath);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }

            void doCopySav() {
                try {
                    if (TextUtils.isEmpty(EmuBaseActivity.romPath)) {
                        return;
                    }
                    String str = EmuBaseActivity.romPath;
                    String substring = str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                    String absolutePath = new File(BaseAppConfig.APP_PATH + substring + net.lingala.zip4j.util.e.F0).getAbsolutePath();
                    if (absolutePath.contains(SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext()))) {
                        String replace = absolutePath.replace(SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext()), SDCardUtil.getExternalStorageDirectory());
                        String unused = Cocos2dxActivity.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("async sav(oldVersion) src=");
                        sb.append(replace);
                        sb.append(", dst=");
                        sb.append(absolutePath);
                        EmuBaseActivity.this.asyncFile(replace, absolutePath);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if ((Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(EmuBaseActivity.this.getApplicationContext(), "android.permission.READ_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(EmuBaseActivity.this.getApplicationContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) || Environment.getExternalStorageState().equals("mounted")) {
                        doCopyCfg();
                        doCopySav();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        });
    }

    protected void asyncFile(String str, String str2) {
        FileUtils.copyFolder(str, str2, new String[]{".sav", ".srm", ".mcr"});
    }

    void bindBridge() {
        if (useIndependentEmu) {
            try {
                Context context2 = Cocos2dxActivity.getContext();
                if (context2 == null) {
                    return;
                }
                mServiceConnection = new ServiceConnection() { // from class: com.papa91.activity.EmuBaseActivity.20
                    @Override // android.content.ServiceConnection
                    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                        EmuBaseActivity.mMessenger = new Messenger(iBinder);
                        String unused = Cocos2dxActivity.TAG;
                        EmuBaseActivity.this.onMessengerConnected(EmuBaseActivity.mMessenger);
                    }

                    @Override // android.content.ServiceConnection
                    public void onServiceDisconnected(ComponentName componentName) {
                    }
                };
                Intent intent = new Intent();
                intent.setComponent(new ComponentName(getHostPackageName(), "com.join.mgps.va.service.MessengerService"));
                context2.bindService(intent, mServiceConnection, 1);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void bindService() {
        gameStart();
        bindBridge();
    }

    public void buySp() {
        PayCenter.buySP(this, UserID, token, GameID, new PayListener() { // from class: com.papa91.activity.EmuBaseActivity.15
            @Override // com.papa91.paay.PayListener
            public void onResult(PayResponse payResponse) {
                PayResponseData data = payResponse.getData();
                String buy_error_message = data.getBuy_error_message();
                String result = data.getResult();
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("result", result);
                jsonObject.addProperty("data", buy_error_message);
            }
        });
    }

    protected void checkRealName(final int i2) {
        try {
            if (!isNetworkConnected()) {
                Toast.makeText(this, "请联网后重试！", 0).show();
                return;
            }
            com.papa91.arc.http.HttpUtils.init(context);
            if (this.loading_real_name) {
                return;
            }
            this.loading_real_name = true;
            ReqRealNameArgs reqRealNameArgs = new ReqRealNameArgs();
            reqRealNameArgs.setUid(Integer.valueOf(UserID));
            reqRealNameArgs.setUserToken(token);
            if ("".equals(this.gameType)) {
                if (i2 == 10) {
                    this.gameType = "FIGHT_LOBBY";
                } else {
                    this.gameType = "SO_SIMULATOR";
                }
            }
            reqRealNameArgs.setGameType(this.gameType);
            reqRealNameArgs.setType(Integer.valueOf(i2));
            reqRealNameArgs.setGameId(GameID);
            reqRealNameArgs.setAction(2);
            reqRealNameArgs.setPlatformType("ANDROID");
            final Request request = Request.getRequest(context, reqRealNameArgs);
            request.setSign(SignUtil.getSignForAPP(request));
            ThreadManager.runOnWriteThread(new Runnable() { // from class: com.papa91.activity.f
                @Override // java.lang.Runnable
                public final void run() {
                    EmuBaseActivity.this.lambda$checkRealName$4(request, i2);
                }
            });
        } catch (Exception e4) {
            e4.printStackTrace();
            this.loading_real_name = false;
        }
    }

    protected void closeRealNameDialog() {
        ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.activity.d
            @Override // java.lang.Runnable
            public final void run() {
                EmuBaseActivity.this.lambda$closeRealNameDialog$7();
            }
        });
    }

    public void complainMsg(int i2, int i4) {
        this.link_type = "4";
        this.link_type_val = "http://anv3frapi.5fun.com/lobby/report?report_uid=" + i4 + "&reported_uid=" + i2;
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("com.wufun.intent.activity.view.action.emuintent");
        intent.addCategory("android.intent.category.DEFAULT");
        MyJson myJson = new MyJson();
        try {
            myJson.put("link_type", this.link_type);
            myJson.put("jump_type", this.jump_type);
            myJson.put("link_type_val", this.link_type_val);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        intent.putExtra("intentDataJson", myJson.toString());
        intent.setAction("com.wufun.intent.activity.view.action.emuintent");
        startActivity(intent);
    }

    public String dealSDPath(String str, String str2) {
        MyJson myJson;
        try {
            this.appInfo = getPackageManager().getPackageInfo(appPackName, 16384);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        PackageInfo packageInfo = this.appInfo;
        int i2 = packageInfo != null ? packageInfo.versionCode : 0;
        MyJson myJson2 = null;
        try {
            myJson = new MyJson(str);
            try {
                String string = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "");
                romPath = string;
                try {
                    if (i2 < 41) {
                        myJson.put(BaseAppConfig.KEY_UGC_PATH, string);
                        ugcPath = new String(romPath);
                    } else {
                        int lastIndexOf = string.lastIndexOf(47);
                        String substring = romPath.substring(lastIndexOf + 1);
                        String str3 = new String(str2 + substring + net.lingala.zip4j.util.e.F0 + substring);
                        ugcPath = str3;
                        myJson.put(BaseAppConfig.KEY_UGC_PATH, str3);
                        File file = new File(ugcPath);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        File file2 = new File(romPath.substring(0, lastIndexOf) + "/PSP");
                        File file3 = new File(str2 + substring + "/PSP");
                        if (file2.exists()) {
                            file2.renameTo(file3);
                        }
                    }
                } catch (Exception e4) {
                    myJson.put(BaseAppConfig.KEY_UGC_PATH, romPath);
                    ugcPath = new String(romPath);
                    e4.printStackTrace();
                }
            } catch (JSONException e5) {
                e = e5;
                myJson2 = myJson;
                e.printStackTrace();
                myJson = myJson2;
                myJson.toString();
                return myJson.toString();
            }
        } catch (JSONException e6) {
            e = e6;
        }
        myJson.toString();
        return myJson.toString();
    }

    void destroyRewardInfo() {
        generatedTimes = 0;
        rewardConfig = "";
        startRewardCount = false;
        this.getRewardConfigCount = 3;
        getRewardConfig = 0;
        left_play_reward_count = 0;
        RewardBananaTipDialog rewardBananaTipDialog = this.rewardBananaTipDialog;
        if (rewardBananaTipDialog != null && rewardBananaTipDialog.isShowing()) {
            this.rewardBananaTipDialog.dismiss();
        }
        this.rewardBananaTipDialog = null;
        hasRewardBanana = false;
    }

    void gameStart() {
        try {
            startTIme = System.currentTimeMillis();
            int i2 = startMode;
            if (i2 == 0) {
                if (!gameStart15(GameID, UserID)) {
                    String externalStorageDirectory = SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext());
                    createDir(externalStorageDirectory + "mgpapa/aidlservice/Game_start15_" + GameID + "_" + UserID);
                }
            } else {
                if (i2 != 2 && i2 != 1) {
                    if (!gameStart160(GameID, UserID, i2)) {
                        String externalStorageDirectory2 = SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext());
                        createDir(externalStorageDirectory2 + "mgpapa/aidlservice/Game_start160_" + GameID + "_" + UserID + "_" + startMode);
                    }
                }
                if (!gameStartBattle15(GameID, UserID)) {
                    String externalStorageDirectory3 = SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext());
                    createDir(externalStorageDirectory3 + "mgpapa/aidlservice/Game_startBattle15_" + GameID + "_" + UserID);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    boolean gameStart15(String str, String str2) {
        Intent intent = new Intent(f1.a.O);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        send(intent);
        return true;
    }

    boolean gameStartBattle15(String str, String str2) {
        Intent intent = new Intent(f1.a.P);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        send(intent);
        return true;
    }

    public native int getCurChar();

    public String getMD5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i2 = 0; i2 < digest.length; i2++) {
                if (Integer.toHexString(digest[i2] & 255).length() == 1) {
                    stringBuffer.append("0");
                    stringBuffer.append(Integer.toHexString(digest[i2] & 255));
                } else {
                    stringBuffer.append(Integer.toHexString(digest[i2] & 255));
                }
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            return "";
        }
    }

    protected void getRewardConfig() {
        if (isNetworkConnected() && getRewardConfig != 1) {
            getRewardConfig = 1;
            this.getRewardConfigCount--;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleAdError(Context context2, Intent intent) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleAdResult(Context context2, Intent intent) {
    }

    public native boolean hasLifeCheck(long j4);

    public void hideMenuDialog() {
    }

    public void initBanner(JSONArray jSONArray, String str) {
    }

    void initReceiver() {
        this.paayReceiver = new PaayReceiver() { // from class: com.papa91.activity.EmuBaseActivity.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                EmuBaseActivity.UserID = intent.getExtras().getString("uid");
                EmuBaseActivity.token = intent.getExtras().getString("token");
                if (intent.getExtras().getInt("sp") != 2) {
                    EmuBaseActivity.selectCondition(EmuBaseActivity.payType);
                    return;
                }
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("isbuy", Boolean.TRUE);
                jsonObject.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                jsonObject.addProperty("data", "already");
                EmuBaseActivity.requestOnInquiry(jsonObject.toString());
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        this.intentFilter = intentFilter;
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        NetWorkReceiver netWorkReceiver = new NetWorkReceiver();
        this.netWorkReceiver = netWorkReceiver;
        registerReceiver(netWorkReceiver, this.intentFilter);
        this.iMReceive = new IMReceive();
        registerReceiver(this.iMReceive, new IntentFilter("com.join.mgps.activity.sendUI"));
        this.playTimeReceiver = new PlayTimeReceiver();
        IntentFilter intentFilter2 = new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        intentFilter2.addAction("com.join.android.app.mgsim.wufan.mha.broadcast.action_login_success");
        intentFilter2.addAction("com.join.android.app.mgsim.wufun.mha.broadcast.action_login_success");
        registerReceiver(this.playTimeReceiver, intentFilter2);
        registerReceiver(this.paayReceiver, new IntentFilter(PayCenter.ACTION_LOGIN_SUCCESS));
        BroadcastReceiver myReceiver = new MyReceiver();
        IntentFilter intentFilter3 = new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        intentFilter3.addAction("com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success");
        registerReceiver(myReceiver, intentFilter3);
        this.shareResultReceiver = new ShareResultReceiver();
        registerReceiver(this.shareResultReceiver, new IntentFilter("com.emu.share.result"));
        this.realnameResultReceiver = new RealNameResultReceiver();
        registerReceiver(this.realnameResultReceiver, new IntentFilter("com.show.realname.check"));
        this.adResultReceiver = new AdResultReceiver();
        registerReceiver(this.adResultReceiver, new IntentFilter("com.emu.ad.result"));
        this.gameReceiver = new GameReceiver();
        IntentFilter intentFilter4 = new IntentFilter();
        intentFilter4.addAction(actionShowInvite);
        intentFilter4.addAction(actionOnOnlineState);
        intentFilter4.addAction(actionHandleMessage);
        intentFilter4.addAction(actionHandleEmptyMessage);
        intentFilter4.addAction(actionHandleExitGame);
        registerReceiver(this.gameReceiver, intentFilter4);
        this.menuViewReceiver = new MenuViewReceiver();
        IntentFilter intentFilter5 = new IntentFilter();
        intentFilter5.addAction(actionShowMenuSlot);
        intentFilter5.addAction(actionShowMenuSlot);
        intentFilter5.addAction(actionShowMenuCheat);
        intentFilter5.addAction(actionShowMenuPerformance);
        intentFilter5.addAction(actionShowMenuGate);
        intentFilter5.addAction(actionShowMenuOnekey);
        intentFilter5.addAction(actionShowMenu);
        intentFilter5.addAction(actionHideMenu);
        intentFilter5.addAction(actionVipTip);
        intentFilter5.addAction(actionShowMenuView);
        intentFilter5.addAction(actionShowShare);
        intentFilter5.addAction(actionLoadRomFinish);
        intentFilter5.addAction(actionLoadStageCompleted);
        intentFilter5.addAction(actionRecordEnd);
        intentFilter5.addAction(BAction.ACTION_RANK_RECORD_UPLOAD_RESULT);
        registerReceiver(this.menuViewReceiver, intentFilter5);
        this.recver = new PermissRecver();
        IntentFilter intentFilter6 = new IntentFilter();
        intentFilter6.addAction("com.wufun.get.permission.EMU");
        registerReceiver(this.recver, intentFilter6);
        if (this.actionReceiver == null) {
            this.actionReceiver = new ActionReceiver();
            registerReceiver(this.actionReceiver, new IntentFilter(BAction.ACTION_REAL_NAME_RESULT));
        }
    }

    public void loadRomFinish() {
    }

    protected void loginFinish() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean needResumeGame() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAfterActivityCreated(Bundle bundle) {
        int i2;
        if (this.hasCheckRealName || (i2 = startMode) == 8 || i2 == 15 || i2 == 7 || i2 == 9 || i2 == 10) {
            return;
        }
        checkRealName(11);
        this.hasCheckRealName = true;
        this.needCheckRealName = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    @SuppressLint({"NewApi"})
    public void onCreate(Bundle bundle) {
        baseActivity = this;
        context = this;
        initSign();
        getWindow().setFlags(128, 128);
        super.onCreate(bundle);
        this.adExitRootView = new FrameLayout(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        Cocos2dxActivity.mFrameLayout.addView(this.adExitRootView, layoutParams);
        this.appCodeIsBigger160 = findAppVersionTo16();
        bindService();
        final String name = new File(BaseAppConfig.ROM_PATH).getName();
        String str = BaseAppConfig.APK_PATH;
        final String substring = str.substring(0, str.lastIndexOf(net.lingala.zip4j.util.e.F0));
        final String str2 = BaseAppConfig.APP_PATH + name;
        this.handler.post(new Runnable() { // from class: com.papa91.activity.h
            @Override // java.lang.Runnable
            public final void run() {
                EmuBaseActivity.this.lambda$onCreate$0(str2, substring, name);
            }
        });
        initReceiver();
        if (hasRewardBanana) {
            setDefaultRewardConfig();
            getRewardConfig();
        }
        updateAutoSlotData();
        try {
            String stringExtra = getIntent().getStringExtra("jsonData");
            if (stringExtra != null) {
                try {
                    String string = new MyJson(stringExtra).getString("dnsJson", "");
                    if (string != null && !"".equals(string)) {
                        dnsJson = string;
                        DNSDataResult dNSDataResult = (DNSDataResult) new Gson().fromJson(string, (Class<Object>) DNSDataResult.class);
                        if (dNSDataResult.getAppContent() != null && !"".equals(dNSDataResult.getAppContent())) {
                            HttpUtils.EXIT_AD_URL = dNSDataResult.getAppContent();
                        }
                        if (dNSDataResult.getFightV3() != null && !"".equals(dNSDataResult.getFightV3())) {
                            HttpUtils.REWARD_CONFIG_URL = dNSDataResult.getFightV3();
                        }
                        if (!TextUtils.isEmpty(dNSDataResult.getGameUrl())) {
                            HttpUtils.GAME_URL = dNSDataResult.getGameUrl();
                        }
                        if (!TextUtils.isEmpty(dNSDataResult.getAccountCertification())) {
                            HttpUtils.RealName_URL = dNSDataResult.getAccountCertification();
                        }
                    }
                } catch (JSONException e4) {
                    e4.printStackTrace();
                }
            }
        } catch (JsonSyntaxException e5) {
            e5.printStackTrace();
        }
        sendGamePlay(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.gameReceiver);
        unregisterReceiver(this.paayReceiver);
        unregisterReceiver(this.playTimeReceiver);
        unregisterReceiver(this.netWorkReceiver);
        unregisterReceiver(this.recver);
        unregisterReceiver(this.menuViewReceiver);
        ShareResultReceiver shareResultReceiver = this.shareResultReceiver;
        if (shareResultReceiver != null) {
            unregisterReceiver(shareResultReceiver);
        }
        RealNameResultReceiver realNameResultReceiver = this.realnameResultReceiver;
        if (realNameResultReceiver != null) {
            unregisterReceiver(realNameResultReceiver);
        }
        AdResultReceiver adResultReceiver = this.adResultReceiver;
        if (adResultReceiver != null) {
            unregisterReceiver(adResultReceiver);
        }
        RewardBananaDialog rewardBananaDialog2 = rewardBananaDialog;
        if (rewardBananaDialog2 != null) {
            if (rewardBananaDialog2.isShowing()) {
                rewardBananaDialog.dismiss();
            }
            rewardBananaDialog = null;
        }
        ActionReceiver actionReceiver = this.actionReceiver;
        if (actionReceiver != null) {
            unregisterReceiver(actionReceiver);
        }
        left_play_reward_count = 0;
        generate_times = -1;
        received_times = 0;
        unique_id = "";
        destroyRewardInfo();
        autoSaveSlot = null;
        sendGamePlay(2);
        unbindBridge();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onHandleEmuExit() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onHandleGameExit(Intent intent) {
    }

    public void onHandleMessage(Message message) {
    }

    protected void onHandleRealName(int i2, boolean z3) {
        this.playTime = 0L;
        closeRealNameDialog();
        this.hasCheckRealName = false;
        int i4 = startMode;
        if (i4 != 8 && i4 != 15 && i4 != 7 && i4 != 9 && i4 != 10) {
            checkRealName(i2);
            this.hasCheckRealName = true;
        } else if (z3) {
            checkRealName(i2);
            this.hasCheckRealName = true;
        }
    }

    protected void onHandlerResultNameResult(Intent intent) {
        onHandleRealName(11, false);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        VideoStrategyPop videoStrategyPop;
        if (i2 == 4 && (videoStrategyPop = this.videoStrategyPop) != null && videoStrategyPop.isShowing()) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public void onLoadStageCompleted(int i2, String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onMessengerConnected(Messenger messenger) {
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        try {
            MyJson myJson = new MyJson(intent.getStringExtra("jsonData"));
            int i2 = myJson.getInt("intentFrom", 0);
            String string = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "");
            romPath = string;
            if (!TextUtils.isEmpty(string)) {
                String str = romPath;
                romName = str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0));
            }
            if (i2 != 1) {
                return;
            }
            String string2 = myJson.getString(BaseAppConfig.KEY_NET_STATE, "");
            if (string2.equals("")) {
                return;
            }
            loadState(string2);
            setPause(1);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onPause() {
        DragProgressView dragProgressView;
        super.onPause();
        this.isInBackground = true;
        if (!canShowRewardMenu() || (dragProgressView = progressView) == null) {
            return;
        }
        dragProgressView.pause();
    }

    protected void onRankRecordEnd(int i2) {
    }

    protected void onRankUploadResult(int i2) {
        exitEmu();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onResume() {
        DragProgressView dragProgressView;
        super.onResume();
        try {
            HttpPost_Memer();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.isInBackground = false;
        if (canShowRewardMenu() && (dragProgressView = progressView) != null) {
            dragProgressView.resume();
        }
        emuOnResume();
        if (this.needCheckRealName) {
            onHandleRealName(this.checkRealNameType, false);
            this.needCheckRealName = false;
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        if (isFirstReame(GameID)) {
            modifyRecordInfo(ugcPath, false, false);
            modifyRecordInfo(ugcPath, true, false);
            modifyRecordInfo(ugcPath, false, true);
            setFirestReame(GameID);
        }
        super.onStart();
    }

    public void onVipChanged() {
    }

    public void raseVipToMgsim(int i2) {
        ComponentName componentName = new ComponentName(appPackName, "com.join.mgps.activity.ShareWebActivity_");
        Intent intent = new Intent();
        intent.setComponent(componentName);
        intent.setAction("android.intent.action.VIEW");
        intent.putExtra(PAPA_EMU_INTENT_EXTRA_ACTION_FROM, i2 + "");
        intent.putExtra("gameId", GameID + "");
        intent.setAction("com.join.mgps.papa.share_webview_raiseVip");
        startActivity(intent);
    }

    public void selectSpAndCheat(int i2) {
        if (!this.appCodeIsBigger160) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("type", Integer.valueOf(payType));
            jsonObject.addProperty("data", UPDATA_APP_TOAST);
            jsonObject.addProperty("isbuy", Boolean.FALSE);
            jsonObject.addProperty("errorMsg", UPDATA_APP_TOAST);
            requestOnInquiry(jsonObject.toString());
            return;
        }
        switch (i2) {
            case 1:
                PayCenter.inquirySP(this, UserID, token, GameID, this.selectListener);
                return;
            case 2:
                PayCenter.inquiryCoinInfo(this, UserID, token, GameID, this.selectListener);
                return;
            case 3:
                PayCenter.buySP(this, UserID, token, GameID, this.payListener);
                return;
            case 4:
                PayCenter.buyCoin(this, UserID, token, GameID, this.payListener);
                return;
            case 5:
                PayCenter.inquiryCheat(this, UserID, token, GameID, this.selectListener);
                return;
            case 6:
                PayCenter.buyCheat(this, UserID, token, GameID, this.payListener);
                return;
            case 7:
                PayCenter.startLobby(this, UserID, token, GameID, "client", RoomID, new PayListener() { // from class: com.papa91.activity.EmuBaseActivity.16
                    @Override // com.papa91.paay.PayListener
                    public void onResult(PayResponse payResponse) {
                        JsonObject jsonObject2 = new JsonObject();
                        if (payResponse == null) {
                            jsonObject2.addProperty("isbuy", Boolean.FALSE);
                            EmuBaseActivity.requestOnInquiry(jsonObject2.toString());
                        } else if (payResponse.getError() == -1) {
                            jsonObject2.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                            jsonObject2.addProperty("data", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                            jsonObject2.addProperty("isbuy", Boolean.FALSE);
                            jsonObject2.addProperty("errorMsg", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                            EmuBaseActivity.requestOnPay(jsonObject2.toString());
                        } else {
                            PayResponseData data = payResponse.getData();
                            if (payResponse.getError() == 701 || data == null) {
                                jsonObject2.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                                jsonObject2.addProperty("data", "");
                                jsonObject2.addProperty("isbuy", Boolean.FALSE);
                                EmuBaseActivity.requestOnInquiry(jsonObject2.toString());
                                return;
                            }
                            boolean equals = data.getStatus().equals("ok");
                            JsonObject jsonObject3 = new JsonObject();
                            String price_message = data.getPrice_message();
                            String error = data.getError();
                            jsonObject3.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                            if (price_message != null && !price_message.equals("")) {
                                jsonObject3.addProperty("data", price_message);
                            }
                            jsonObject3.addProperty("isbuy", Boolean.valueOf(equals));
                            if (error != null && !error.equals("")) {
                                jsonObject3.addProperty("errorMsg", error);
                            }
                            EmuBaseActivity.requestOnPay(jsonObject3.toString());
                        }
                    }
                });
                return;
            case 8:
                PayCenter.lobbyPlayCheck(this, UserID, token, GameID, "", "", new PayListener() { // from class: com.papa91.activity.EmuBaseActivity.17
                    @Override // com.papa91.paay.PayListener
                    public void onResult(PayResponse payResponse) {
                        JsonObject jsonObject2 = new JsonObject();
                        if (payResponse == null) {
                            jsonObject2.addProperty("isbuy", Boolean.FALSE);
                            EmuBaseActivity.requestOnInquiry(jsonObject2.toString());
                        } else if (payResponse.getError() == -1) {
                            jsonObject2.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                            jsonObject2.addProperty("data", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                            jsonObject2.addProperty("isbuy", Boolean.FALSE);
                            jsonObject2.addProperty("errorMsg", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                            EmuBaseActivity.requestOnInquiry(jsonObject2.toString());
                        } else {
                            PayResponseData data = payResponse.getData();
                            if (payResponse.getError() == 701 || data == null) {
                                jsonObject2.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                                jsonObject2.addProperty("data", "");
                                jsonObject2.addProperty("isbuy", Boolean.FALSE);
                                EmuBaseActivity.requestOnInquiry(jsonObject2.toString());
                                return;
                            }
                            JsonObject jsonObject3 = new JsonObject();
                            String join_message = data.getJoin_message();
                            String error = data.getError();
                            jsonObject3.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                            if (join_message != null && !join_message.equals("")) {
                                jsonObject3.addProperty("data", join_message);
                            }
                            jsonObject3.addProperty("isbuy", Boolean.TRUE);
                            if (error != null && !error.equals("")) {
                                jsonObject3.addProperty("errorMsg", error);
                            }
                            EmuBaseActivity.requestOnInquiry(jsonObject3.toString());
                        }
                    }
                });
                return;
            default:
                return;
        }
    }

    public void senCommonEvent(String str, String str2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        intent.putExtra("gameId", GameID);
        intent.putExtra("uid", UserID);
        intent.putExtra("position", str2);
        intent.putExtra(CommonService_.a0.f51746b, str);
        sendBroadcast(intent);
    }

    void sendEmuExitBroadcast(int i2) {
        Intent intent = new Intent();
        intent.setAction("com.emu.ad.result");
        intent.putExtra(DownloadHighSpeedingDialog_.a.f47372b, 100);
        intent.putExtra("exit", i2);
        sendBroadcast(intent);
    }

    public native void setAutoSave(int i2);

    @Override // android.app.Activity
    public void setContentView(View view) {
        try {
            AutoSaveSlot autoSaveSlot2 = new AutoSaveSlot(this, view);
            autoSaveSlot = autoSaveSlot2;
            View view2 = autoSaveSlot2.getView();
            com.yatoooon.screenadaptation.e.a().f(view2);
            if (hasRewardBanana) {
                DragProgressView dragProgressView = new DragProgressView(Cocos2dxActivity.getContext());
                progressView = dragProgressView;
                dragProgressView.setVisibility(8);
                progressView.setOnProduceListener(new DragProgressView.OnProduceListener() { // from class: com.papa91.activity.EmuBaseActivity.27
                    @Override // com.papa91.view.DragProgressView.OnProduceListener
                    public void onProduce() {
                        EmuBaseActivity.sendStatEvent("FCProduceBanner", "");
                    }
                });
                progressView.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.activity.EmuBaseActivity.28
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        EmuBaseActivity.rewardBananaEvent("FCAchieveBanner", "", 0, 0, 2);
                        if (!EmuBaseActivity.isRewardConfigInited()) {
                            if (!EmuBaseActivity.isNetworkConnected()) {
                                EmuBaseActivity.showToast("请联网后重试");
                                return;
                            }
                            EmuBaseActivity.showToast("正在获取奖励信息，请稍后重试");
                            EmuBaseActivity.this.getRewardConfig();
                            return;
                        }
                        reward();
                    }

                    void reward() {
                        if (EmuBaseActivity.progressView == null || TextUtils.isEmpty(EmuBaseActivity.rewardConfig)) {
                            return;
                        }
                        if (EmuBaseActivity.progressView.getSignal() > 0) {
                            EmuBaseActivity.showRewardDialog(EmuBaseActivity.rewardConfig, EmuBaseActivity.generatedTimes, 0);
                        } else if (EmuBaseActivity.reward_left_count > 0) {
                            EmuBaseActivity.showRewardTipDialog();
                        } else {
                            EmuBaseActivity.showToast("今日奖励已全部领取，请明天再来");
                        }
                    }
                });
                com.yatoooon.screenadaptation.e.a().f(progressView);
                super.setContentView(new FloatingDragger(this, view2, progressView).getView());
            } else {
                super.setContentView(view2);
            }
        } catch (Exception unused) {
            if (view.getParent() == null) {
                super.setContentView(view);
            }
        }
    }

    void setDefaultRewardConfig() {
        try {
            MyJson myJson = new MyJson("{    \"error\": 0,    \"msg\": \"success\",    \"data\": {        \"max_reward_amount\": 300,        \"min_reward_amount\": 100,        \"min_reward_times\": 2,        \"max_reward_times\": 8,        \"max_play_reward_count\": 30,        \"max_start_reward_count\": 10,        \"max_time_interval\": 90,        \"min_time_interval\": 30,        \"init_first_box_time\": 15,        \"reward_count\": 4,        \"left_reward_count\": 36,        \"start_reward_count\": 4,        \"left_start_reward_count\": 6,        \"play_reward_count\": 0,        \"left_play_reward_count\": 30,        \"left_game_start_reward_count\": 1,        \"left_device_start_reward_count\": 10,        \"left_device_play_reward_count\": 30,        \"total_reward_amount\": 0    }}");
            int i2 = myJson.getInt("error", -1);
            myJson.getString("msg");
            JSONObject jSONObject = myJson.getJSONObject("data", null);
            if (i2 != 0 || jSONObject == null) {
                return;
            }
            int i4 = jSONObject.has("max_reward_amount") ? jSONObject.getInt("max_reward_amount") : 0;
            int i5 = jSONObject.has("min_reward_amount") ? jSONObject.getInt("min_reward_amount") : 0;
            int i6 = jSONObject.has("max_reward_times") ? jSONObject.getInt("max_reward_times") : 0;
            int i7 = jSONObject.has("min_reward_times") ? jSONObject.getInt("min_reward_times") : 0;
            int i8 = jSONObject.has("left_play_reward_count") ? jSONObject.getInt("left_play_reward_count") : 0;
            if (jSONObject.has("max_time_interval")) {
                max_time_interval = jSONObject.getInt("max_time_interval");
            }
            if (jSONObject.has("min_time_interval")) {
                min_time_interval = jSONObject.getInt("min_time_interval");
            }
            if (jSONObject.has("init_first_box_time")) {
                init_first_box_time = jSONObject.getInt("init_first_box_time");
            }
            if (jSONObject.has("left_device_play_reward_count")) {
                left_device_play_reward_count = jSONObject.getInt("left_device_play_reward_count");
            }
            left_play_reward_count = i8;
            reward_left_count = Math.min(i8, left_device_play_reward_count);
            total_reward_amount = total_reward_amount;
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("max_reward_amount", i4);
            jSONObject3.put("min_reward_amount", i5);
            jSONObject3.put("max_reward_times", i6);
            jSONObject3.put("min_reward_times", i7);
            jSONObject3.put("left_play_reward_count", i8);
            jSONObject3.put("left_device_play_reward_count", left_device_play_reward_count);
            jSONObject2.put("banana_reward_config", jSONObject3);
            rewardConfig = jSONObject2.toString();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void setRewardResult1(int i2, int i4, int i5, int i6) {
        if (i2 != 1 || i5 <= 1) {
            return;
        }
        if (i6 == 0) {
            i6 = total_reward_amount;
        }
        RewardBananaResultDialog rewardBananaResultDialog = new RewardBananaResultDialog(Cocos2dxActivity.getContext(), R.style.Dialog);
        rewardBananaResultDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.papa91.activity.EmuBaseActivity.23
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                EmuBaseActivity.setPause(0);
            }
        });
        rewardBananaResultDialog.show(i4, i6);
        setPause(1);
    }

    public void setRootAdViewParentVisible(boolean z3) {
        RelativeLayout relativeLayout = this.adParent;
        if (relativeLayout != null) {
            if (z3) {
                relativeLayout.setVisibility(0);
            } else {
                relativeLayout.setVisibility(8);
            }
        }
    }

    protected void setUserStateUi(int i2) {
    }

    protected void showInvitePlayUi(String str, String str2, String str3, long j4) {
    }

    void showInvitePlayUiJava(String str, String str2, String str3) {
        SmartPopupWindow smartPopupWindow = this.invitePop;
        if (smartPopupWindow != null && smartPopupWindow.isShowing()) {
            this.timer.cancel();
            this.invitePop.dismiss();
        }
        SystemInfoUtils.getInstance(this);
        Activity topActivity = SystemInfoUtils.getTopActivity();
        if (topActivity == null) {
            return;
        }
        if (this.invitePop == null) {
            View inflate = LayoutInflater.from(this).inflate(R.layout.pop_friend_invite_emu, (ViewGroup) null);
            SmartPopupWindow createPopupWindow = SmartPopupWindow.Builder.build(topActivity, inflate).setOutsideTouchDismiss(false).setAnimationStyle(R.style.animationFromRight).createPopupWindow();
            this.invitePop = createPopupWindow;
            createPopupWindow.setWidth(getResources().getDimensionPixelOffset(R.dimen.wdp560));
            this.invitePop.setHeight(getResources().getDimensionPixelOffset(R.dimen.wdp136));
            TextView textView = (TextView) inflate.findViewById(R.id.accept);
            this.accept = textView;
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.activity.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EmuBaseActivity.this.lambda$showInvitePlayUiJava$1(view);
                }
            });
            inflate.findViewById(R.id.decline).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.activity.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EmuBaseActivity.this.lambda$showInvitePlayUiJava$2(view);
                }
            });
            this.avatar = (SimpleDraweeView) inflate.findViewById(R.id.avatar);
            this.name = (TextView) inflate.findViewById(R.id.name);
            this.gameName = (TextView) inflate.findViewById(R.id.gameName);
        }
        this.name.setText(str);
        this.gameName.setText(str2);
        this.avatar.setImageURI(Uri.parse(str3));
        this.invitePop.showAtAnchorView(topActivity.getWindow().getDecorView(), 3, 4, 0, getResources().getDimensionPixelOffset(R.dimen.wdp40));
        this.timer.start();
    }

    public void showMenuCheating() {
    }

    public void showMenuGate() {
    }

    public void showMenuOnekey() {
    }

    public void showMenuPerformance() {
    }

    public void showMenuSlot() {
    }

    public void showMenuView(boolean z3) {
    }

    public void showShare(String str) {
    }

    public void showVipTip(int i2, int i4) {
    }

    public void startAdActivity(int i2, int i4) {
        if (i2 != 0 && i4 != 0) {
            this.link_type = i2 + "";
            this.link_type_val = i4 + "";
        }
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("com.wufun.intent.activity.view.action.emuintent");
        intent.addCategory("android.intent.category.DEFAULT");
        MyJson myJson = new MyJson();
        try {
            myJson.put("link_type", this.link_type);
            myJson.put("jump_type", this.jump_type);
            myJson.put("link_type_val", this.link_type_val);
            myJson.put("crc_link_type_val", this.crc_link_type_val);
            myJson.put("tpl_type", this.tpl_type);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        intent.putExtra("intentDataJson", myJson.toString());
        try {
            intent.setAction("com.wufun.intent.activity.view.action.emuintent");
            startActivity(intent);
        } catch (Exception unused) {
            intent.setAction("com.papa.intent.activity.view.action.emuintent");
            startActivity(intent);
        }
        if (this.onAdShwoIsCloseMine) {
            finish();
        }
    }

    public void startBBK_GOINEE_sysAPP() {
        int i2 = systemSettingType;
        if (i2 == 1) {
            ComponentName componentName = new ComponentName("com.iqoo.secure", BBK_GIONEE_MAIN_NAME);
            Intent intent = new Intent();
            intent.setComponent(componentName);
            startActivity(intent);
        } else if (i2 != 2) {
        } else {
            ComponentName componentName2 = new ComponentName("com.gionee.softmanager", BBK_GIONEE_MAIN_NAME);
            Intent intent2 = new Intent();
            intent2.setComponent(componentName2);
            startActivity(intent2);
        }
    }

    void startPrefecture(int i2) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(appPackName, "com.join.mgps.activity.ForumActivity_"));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fid", i2);
            jSONObject.put("name", "");
            jSONObject.put("icon_src", "");
            jSONObject.put("users", 0);
            jSONObject.put("posts", 0);
            jSONObject.put("add_time", 0);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        intent.putExtra("key_forum_bean", jSONObject.toString());
        Message message = new Message();
        message.what = 0;
        message.obj = intent;
        startActivity(intent);
    }

    void unbindBridge() {
        Context context2;
        if (useIndependentEmu && (context2 = Cocos2dxActivity.getContext()) != null) {
            try {
                ServiceConnection serviceConnection = mServiceConnection;
                if (serviceConnection != null) {
                    context2.unbindService(serviceConnection);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    void updateAutoSlotData() {
        if (autoSaveSlot == null) {
            return;
        }
        String str = ugcPath;
        if (!TextUtils.isEmpty(str)) {
            str = str.substring(0, str.lastIndexOf(net.lingala.zip4j.util.e.F0));
        }
        autoSaveSlot.setUgcPath(str);
        autoSaveSlot.setVipLevel(this.m_VIP);
    }

    public static void startplayTime(long j4) {
        playTime(j4);
        StringBuilder sb = new StringBuilder();
        sb.append("startplayTime: ");
        sb.append(j4);
    }
}
