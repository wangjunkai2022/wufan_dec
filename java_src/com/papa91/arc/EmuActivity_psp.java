package com.papa91.arc;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.google.gson.Gson;
import com.join.mgps.Util.g0;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.SimulatorAreaActivity_;
import com.join.mgps.dialog.DownloadHighSpeedingDialog_;
import com.join.mgps.dto.Constant;
import com.join.mgps.service.CommonService_;
import com.papa91.arc.CContext;
import com.papa91.arc.EmuActivity_psp;
import com.papa91.arc.bean.AdInfoBean;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.bean.GateBean;
import com.papa91.arc.bean.MainBean;
import com.papa91.arc.bean.PopwindowBean;
import com.papa91.arc.bean.ReqRealNameArgs;
import com.papa91.arc.bean.Request;
import com.papa91.arc.bean.Response;
import com.papa91.arc.bean.SkillConfigBean;
import com.papa91.arc.bean.SkillTableDataBean;
import com.papa91.arc.bean.SpBindsDataBean;
import com.papa91.arc.bean.SubBean;
import com.papa91.arc.bean.TypeBean;
import com.papa91.arc.bean.VipBean;
import com.papa91.arc.common.constants.BAction;
import com.papa91.arc.common.constants.StatIntents;
import com.papa91.arc.dialog.PerfectWarmDialog;
import com.papa91.arc.dialog.RealNameDialog;
import com.papa91.arc.dialog.SettingCheatDialog;
import com.papa91.arc.dialog.SettingDialog;
import com.papa91.arc.dialog.SettingGateDialog;
import com.papa91.arc.dialog.SettingPerformanceDialog;
import com.papa91.arc.dialog.SettingShareDialog;
import com.papa91.arc.dialog.SettingSlotDialog;
import com.papa91.arc.dialog.SettingVipDialog;
import com.papa91.arc.dialog.SettingVipTipDialog;
import com.papa91.arc.dialog.TipTwoDialog;
import com.papa91.arc.ext.ThreadManager;
import com.papa91.arc.http.HttpUtils;
import com.papa91.arc.interfaces.DialogListenerWrap;
import com.papa91.arc.interfaces.RealNameCallBack;
import com.papa91.arc.util.FileUtils;
import com.papa91.arc.util.GameSettings;
import com.papa91.arc.util.SDCardUtil;
import com.papa91.arc.util.SignUtil;
import com.papa91.arc.util.StringUtils;
import com.papa91.arc.view.GameTimeLimitedDialog;
import com.papa91.arc.view.GameTimeLimitedNetworkFailedDialog;
import com.papa91.arc.view.IEmulator;
import com.papa91.arc.view.MenuView;
import com.papa91.arc.view.ToastUtil;
import com.papa91.common.BaseAppConfig;
import com.papa91.wrapper.UserPrefs;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.ppsspp.ppsspp.CheatInfo;
import org.ppsspp.ppsspp.EditCheatInfo;
import org.ppsspp.ppsspp.NativeActivity;
import org.ppsspp.ppsspp.NativeApp;
import org.ppsspp.ppsspp.PpssppActivity;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class EmuActivity_psp extends PpssppActivity implements IEmulator {
    private static final String TAG = "Ppsspp";
    static boolean isNet = true;
    public static int lastWindow;
    private static boolean loadingFinished;
    public static Dialog mDialog;
    static Messenger mMessenger;
    static ServiceConnection mServiceConnection;
    private static Context sContext;
    private ActionReceiver actionReceiver;
    AdInfoBean adInfoBean;
    AdResultReceiver adResultReceiver;
    PerfectWarmDialog alertTipDialog;
    SettingCheatDialog cheatDialog;
    TipTwoDialog dialogExit;
    String diskPath;
    SettingGateDialog gateDialog;
    private IntentFilter intentFilter;
    private boolean isDestroyed;
    private boolean isRecreate;
    private boolean loading_real_name;
    LoginReceiver loginReceiver;
    MyReceiver myReceiver;
    NetWorkReceiver netWorkReceiver;
    PerfectWarmDialog perfectWarmDialog;
    SettingPerformanceDialog performanceDialog;
    UserPrefs pref;
    RealNameDialog realNameDialog;
    private EmuReceiveReceiver receveReceiver;
    SettingShareDialog shareDialog;
    String shareImagePath;
    boolean showTimeLimitedDialog2;
    SettingSlotDialog slotDialog;
    SharedPreferences sp;
    GameTimeLimitedDialog timeLimitedDialog;
    GameTimeLimitedNetworkFailedDialog timeLimitedNetworkFailedDialog;
    Timer timer;
    TimerTask timerTask;
    String url;
    SettingVipDialog vipDialog;
    SettingVipTipDialog vipTipDialog;
    private int EXIT_CODE = 0;
    int START_MODE_NETWORK = 7;
    int START_MODE_RESTART = 0;
    int START_MODE_NETCLIENT = 1;
    int START_MODE_NETSERVER = 2;
    protected int autoSlotTime = 20;
    boolean gameIsPause = false;
    Handler mHandler = new Handler();
    private boolean hasCheckRealName = false;
    private boolean needCheckRealName = true;
    private int checkRealNameType = 11;
    boolean isHideAdTimeView = false;
    private String appContent = "http://anv9.ctapi.5fun.com";
    private PackageInfo appInfo = null;
    List<VipBean> vipBeans = new ArrayList();
    String ad_host_url = "http://anctapi.5fun.com";
    protected ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.papa91.arc.EmuActivity_psp.15
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            EmuActivity_psp.this.gameStart();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };
    boolean adToastShowing = false;
    Runnable hideTimeRunner = new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.18
        @Override // java.lang.Runnable
        public void run() {
            if (((NativeActivity) EmuActivity_psp.this).menuView != null) {
                ((NativeActivity) EmuActivity_psp.this).menuView.hideTimer();
                ((NativeActivity) EmuActivity_psp.this).menuView.releaseTimer();
            }
        }
    };
    long playTime = 0;
    long limitTime = 0;
    Runnable limitTimeRunnable = new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.24
        @Override // java.lang.Runnable
        public void run() {
            if (EmuActivity_psp.this.isFinishing() || EmuActivity_psp.this.isDestroyed || ((NativeActivity) EmuActivity_psp.this).shuttingDown) {
                return;
            }
            EmuActivity_psp emuActivity_psp = EmuActivity_psp.this;
            long j4 = emuActivity_psp.playTime + 1;
            emuActivity_psp.playTime = j4;
            if (j4 >= emuActivity_psp.limitTime) {
                emuActivity_psp.onHandleRealName(3);
            } else {
                emuActivity_psp.mHandler.postDelayed(this, 1000L);
            }
        }
    };
    long liveTime = 0;
    LinkedHashMap<String, Long> activityQueue = new LinkedHashMap<>();

    /* renamed from: com.papa91.arc.EmuActivity_psp$17  reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass17 implements Runnable {
        AnonymousClass17() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$run$0(View view) {
            EmuActivity_psp.mDialog.dismiss();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (EmuActivity_psp.mDialog == null) {
                Dialog dialog = new Dialog(EmuActivity_psp.getContext(), R.style.MyDialog);
                EmuActivity_psp.mDialog = dialog;
                dialog.setContentView(R.layout.bind_dialog2);
                Button button = (Button) EmuActivity_psp.mDialog.findViewById(R.id.dialog_button_ok);
                EmuActivity_psp.mDialog.setCancelable(false);
                EmuActivity_psp.mDialog.setCanceledOnTouchOutside(false);
                ((TextView) EmuActivity_psp.mDialog.findViewById(R.id.tip_title)).setText("提示");
                ((TextView) EmuActivity_psp.mDialog.findViewById(R.id.dialog_content)).setText("请校验会员身份\n联网校验后，你在一段时间内可离线使用。");
                ((TextView) EmuActivity_psp.mDialog.findViewById(R.id.dialog_desci)).setVisibility(8);
                button.setText("开启网络");
                EmuActivity_psp.mDialog.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.g
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        EmuActivity_psp.AnonymousClass17.lambda$run$0(view);
                    }
                });
                button.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.EmuActivity_psp.17.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        EmuActivity_psp.getContext().startActivity(new Intent("android.settings.SETTINGS"));
                    }
                });
            }
            EmuActivity_psp.isNet = false;
            EmuActivity_psp.mDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.papa91.arc.EmuActivity_psp$25  reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass25 implements Runnable {
        final /* synthetic */ PopwindowBean val$result;
        final /* synthetic */ int val$type;

        AnonymousClass25(PopwindowBean popwindowBean, int i2) {
            this.val$result = popwindowBean;
            this.val$type = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(PopwindowBean popwindowBean, DialogInterface dialogInterface) {
            if (popwindowBean.isNoAge() && popwindowBean.getStatus() == 0) {
                EmuActivity_psp.this.senCommonEvent("nonageAstrictHint", "0");
            } else if (popwindowBean.getPopup().booleanValue() && popwindowBean.getButtonCenter() != null && popwindowBean.getButtonCenter().getEventType().intValue() == 1) {
                EmuActivity_psp.this.senCommonEvent("realNameUpWindows", "0");
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            EmuActivity_psp.this.closeRealNameDialog();
            PopwindowBean popwindowBean = this.val$result;
            if (popwindowBean == null || !popwindowBean.getPopup().booleanValue()) {
                return;
            }
            if (1 == this.val$result.getType()) {
                EmuActivity_psp.this.showNativeRealName(this.val$result, this.val$type);
                return;
            }
            if (this.val$result.getButtonCenter() != null && this.val$result.getButtonCenter().getEventType().intValue() == 4 && this.val$result.isNoAge()) {
                EmuActivity_psp.this.senCommonEvent("antiAddtionWindowUp", "0");
            }
            EmuActivity_psp.this.perfectWarmDialog = new PerfectWarmDialog(EmuActivity_psp.this);
            EmuActivity_psp.this.perfectWarmDialog.setData(this.val$result);
            EmuActivity_psp.this.perfectWarmDialog.setListener(new DialogListenerWrap() { // from class: com.papa91.arc.EmuActivity_psp.25.1
                @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                public void onCenterClick(Dialog dialog, ButtonBean buttonBean) {
                    super.onCenterClick(dialog, buttonBean);
                    AnonymousClass25 anonymousClass25 = AnonymousClass25.this;
                    EmuActivity_psp emuActivity_psp = EmuActivity_psp.this;
                    emuActivity_psp.handleButtonAction(emuActivity_psp.perfectWarmDialog, dialog, buttonBean, anonymousClass25.val$type);
                }

                @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                public void onCloseClick(Dialog dialog, ButtonBean buttonBean) {
                    super.onCloseClick(dialog, buttonBean);
                    EmuActivity_psp.this.senCommonEvent("closedRealNameWindow", "0");
                    AnonymousClass25 anonymousClass25 = AnonymousClass25.this;
                    EmuActivity_psp emuActivity_psp = EmuActivity_psp.this;
                    emuActivity_psp.handleButtonAction(emuActivity_psp.perfectWarmDialog, dialog, buttonBean, anonymousClass25.val$type);
                }
            });
            PerfectWarmDialog perfectWarmDialog = EmuActivity_psp.this.perfectWarmDialog;
            final PopwindowBean popwindowBean2 = this.val$result;
            perfectWarmDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.papa91.arc.h
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    EmuActivity_psp.AnonymousClass25.this.lambda$run$0(popwindowBean2, dialogInterface);
                }
            });
            EmuActivity_psp.this.perfectWarmDialog.show();
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
            EmuActivity_psp.this.onHandlerResultNameResult(intent);
        }
    }

    /* loaded from: classes4.dex */
    public class AdResultReceiver extends BroadcastReceiver {
        public AdResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int intExtra = intent.getIntExtra(DownloadHighSpeedingDialog_.a.f47372b, 1);
            if (intExtra != 18 && intExtra != 20) {
                if (intExtra == 5) {
                    if (StringUtils.isNotEmpty(intent.getStringExtra(MGMainActivity.KEY_EXTRAS))) {
                        EmuActivity_psp.this.handleAdError(context, intent);
                        return;
                    }
                    GameTimeLimitedDialog gameTimeLimitedDialog = EmuActivity_psp.this.timeLimitedDialog;
                    if (gameTimeLimitedDialog != null && gameTimeLimitedDialog.isShowing()) {
                        EmuActivity_psp.this.timeLimitedDialog.dismiss();
                    }
                    EmuActivity_psp.this.hideAdCountDown();
                    return;
                }
                EmuActivity_psp.this.handleAdResult(context, intent);
                return;
            }
            String adGamesConfig = EmuActivity_psp.this.pref.getAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID);
            long remainTime = TextUtils.isEmpty(adGamesConfig) ? 0L : EmuActivity_psp.this.pref.getRemainTime(adGamesConfig);
            UserPrefs userPrefs = EmuActivity_psp.this.pref;
            if (userPrefs != null) {
                userPrefs.setAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID, remainTime, true);
            }
            GameTimeLimitedDialog gameTimeLimitedDialog2 = EmuActivity_psp.this.timeLimitedDialog;
            if (gameTimeLimitedDialog2 != null && gameTimeLimitedDialog2.isShowing()) {
                EmuActivity_psp.this.timeLimitedDialog.dismiss();
            }
            GameTimeLimitedNetworkFailedDialog gameTimeLimitedNetworkFailedDialog = EmuActivity_psp.this.timeLimitedNetworkFailedDialog;
            if (gameTimeLimitedNetworkFailedDialog != null && gameTimeLimitedNetworkFailedDialog.isShowing()) {
                EmuActivity_psp.this.timeLimitedNetworkFailedDialog.dismiss();
            }
            EmuActivity_psp.this.hideAdCountDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class EmuReceiveReceiver extends BroadcastReceiver {
        EmuReceiveReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.emu.ad.result") && intent.getIntExtra(DownloadHighSpeedingDialog_.a.f47372b, 0) == 100) {
                if (intent.getIntExtra("exit", 0) == 1) {
                    ((NativeActivity) EmuActivity_psp.this).shuttingDown = true;
                    EmuActivity_psp.this.finish();
                    EmuActivity_psp.this.EXIT_CODE = 1;
                } else if ((((NativeActivity) EmuActivity_psp.this).menuView == null || !((NativeActivity) EmuActivity_psp.this).menuView.menuShowing()) && !EmuActivity_psp.this.isFinishing()) {
                    EmuActivity_psp.this.gameOnResume();
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public class LoginReceiver extends BroadcastReceiver {
        public LoginReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ((NativeActivity) EmuActivity_psp.this).m_SVIP = intent.getExtras().getInt(BaseAppConfig.KEY_SVIP_LEVEL);
            NativeActivity.m_VIP = intent.getExtras().getInt(BaseAppConfig.KEY_VIP_LEVEL);
            NativeActivity.UserID = intent.getExtras().getString("uid");
            NativeActivity.token = intent.getExtras().getString("token");
            NativeActivity.tourist = intent.getExtras().getBoolean("tourist", true);
            EmuActivity_psp.this.loginFinish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class MyReceiver extends BroadcastReceiver {
        MyReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NativeActivity.token = intent.getExtras().getString("token");
            int i2 = intent.getExtras().getInt(BaseAppConfig.KEY_VIP_LEVEL);
            int i4 = intent.getExtras().getInt(BaseAppConfig.KEY_SVIP_LEVEL);
            NativeActivity.UserID = intent.getExtras().getString("uid");
            NativeActivity.m_VIP = i2;
            ((NativeActivity) EmuActivity_psp.this).m_SVIP = i4;
            EmuActivity_psp.this.restoreVipData();
            EmuActivity_psp.this.onVipChanged();
        }
    }

    /* loaded from: classes4.dex */
    public class NetWorkReceiver extends BroadcastReceiver {
        public NetWorkReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) EmuActivity_psp.this.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                return;
            }
            EmuActivity_psp.this.HttpPost_Memer();
        }
    }

    public static void ShowSetNetWorkDialog() {
        ((EmuActivity_psp) getContext()).runOnUiThread(new AnonymousClass17());
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0212, code lost:
        if (r16 == null) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0214, code lost:
        r16.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0217, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0201, code lost:
        if (r16 == null) goto L79;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x020d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x021b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void convert(java.lang.String r22, java.lang.String r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa91.arc.EmuActivity_psp.convert(java.lang.String, java.lang.String, java.lang.String):void");
    }

    public static boolean createDir(String str) {
        File file = new File(str);
        if (file.exists()) {
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

    static void createResFile(Context context, String str, String[] strArr, boolean z3) {
        int i2;
        File file;
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        File file3 = new File(str + "bios");
        if (!file3.exists()) {
            file3.mkdir();
        }
        AssetManager assets = context.getAssets();
        while (i2 < strArr.length) {
            if (!z3) {
                try {
                    file = new File(str + strArr[i2]);
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                if (file.exists()) {
                    long length = file.length();
                    InputStream open = assets.open(strArr[i2]);
                    int available = open.available();
                    open.close();
                    i2 = length == ((long) available) ? i2 + 1 : 0;
                }
                file2 = file.getParentFile();
            }
            if (!file2.exists()) {
                file2.mkdirs();
            }
            InputStream open2 = assets.open(strArr[i2], 3);
            if (open2 != null) {
                FileOutputStream fileOutputStream = new FileOutputStream(str + strArr[i2]);
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = open2.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.flush();
                fileOutputStream.close();
                open2.close();
            }
        }
    }

    public static void delayStatistics(String str) {
        try {
            netBattleMatchEfficiency(NativeActivity.GameID, str, NativeActivity.UserID);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void download(Context context, String str) {
        Fresco.getImagePipeline().L(ImageRequestBuilder.u(Uri.parse(str)).v(true).A(ImageRequest.RequestLevel.FULL_FETCH).C(false).a(), context);
    }

    public static void exitActivity(int i2) {
        sendGamePlay(2);
    }

    protected static boolean gameOut(String str, int i2, String str2) {
        Intent intent = new Intent(f1.a.U);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("sec", i2);
        send(intent);
        return true;
    }

    public static Context getContext() {
        return sContext;
    }

    public static String getHostPackageName() {
        return NativeActivity.appPackName;
    }

    private int getNextTip(HashMap<Integer, Boolean> hashMap, int i2) {
        if (hashMap.get(Integer.valueOf(i2)).booleanValue()) {
            return i2;
        }
        int i4 = i2 + 1;
        int i5 = 0;
        while (i5 < 2) {
            if (i4 > hashMap.size() - 1) {
                i5++;
                i4 = 0;
            }
            if (hashMap.get(Integer.valueOf(i4)).booleanValue()) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    static String getSDPath() {
        return SDCardUtil.getExternalStorageDirectory(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUgcPath() {
        String str = NativeActivity.ugcPath;
        if (TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(NativeActivity.romPath)) {
                String str2 = NativeActivity.romPath;
                String substring = str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                str = getSDPath() + "/papa91/psp/" + substring + net.lingala.zip4j.util.e.F0 + substring;
            }
        } else if (!TextUtils.isEmpty(NativeActivity.romPath)) {
            String str3 = NativeActivity.romPath;
            str = NativeActivity.ugcPath + net.lingala.zip4j.util.e.F0 + str3.substring(str3.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
        }
        if (!TextUtils.isEmpty(str)) {
            new File(str).getParentFile().mkdirs();
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUgcPathInternal() {
        String str = NativeActivity.ugcPath;
        if (TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(NativeActivity.romPath)) {
                String str2 = NativeActivity.romPath;
                String substring = str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                str = getFilesDir() + "/emus/" + substring + net.lingala.zip4j.util.e.F0 + substring;
            }
        } else if (!TextUtils.isEmpty(NativeActivity.romPath)) {
            String str3 = NativeActivity.romPath;
            String substring2 = str3.substring(str3.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
            str = getFilesDir() + "/emus/" + substring2 + net.lingala.zip4j.util.e.F0 + substring2;
        }
        if (!TextUtils.isEmpty(str)) {
            new File(str).getParentFile().mkdirs();
        }
        return str;
    }

    private void goWebView(Context context, String str) {
        MarketUtil.intent(getContext(), "4", "", str, "", "");
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
                this.alertTipDialog.setListener(new DialogListenerWrap() { // from class: com.papa91.arc.EmuActivity_psp.27
                    @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                    public void onCenterClick(Dialog dialog3, ButtonBean buttonBean2) {
                        super.onCenterClick(dialog3, buttonBean2);
                        if (1 == buttonBean2.getEventType().intValue()) {
                            dialog3.dismiss();
                        }
                        EmuActivity_psp.this.handleButtonAction(dialog, dialog3, buttonBean2, i2);
                    }

                    @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                    public void onLeftClick(Dialog dialog3, ButtonBean buttonBean2) {
                        super.onLeftClick(dialog3, buttonBean2);
                        if (1 == buttonBean2.getEventType().intValue()) {
                            dialog3.dismiss();
                        }
                        EmuActivity_psp.this.handleButtonAction(dialog, dialog3, buttonBean2, i2);
                    }

                    @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                    public void onRightClick(Dialog dialog3, ButtonBean buttonBean2) {
                        super.onRightClick(dialog3, buttonBean2);
                        if (1 == buttonBean2.getEventType().intValue()) {
                            dialog3.dismiss();
                        }
                        EmuActivity_psp.this.handleButtonAction(dialog, dialog3, buttonBean2, i2);
                    }
                });
                this.alertTipDialog.show();
                return;
            } else if (4 == buttonBean.getEventType().intValue()) {
                dialog2.dismiss();
                if (dialog != null) {
                    dialog.dismiss();
                }
                senCommonEvent("antiAddtionWindowUp", "0");
                this.shuttingDown = true;
                finish();
                this.EXIT_CODE = 1;
                return;
            } else if (1 == buttonBean.getEventType().intValue()) {
                this.mHandler.postDelayed(new Runnable() { // from class: com.papa91.arc.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        EmuActivity_psp.this.lambda$handleButtonAction$4(buttonBean);
                    }
                }, 100L);
                return;
            } else if (3 == buttonBean.getEventType().intValue()) {
                dialog2.dismiss();
                senCommonEvent("antiAddtionWindowUp", "0");
                this.shuttingDown = true;
                finish();
                this.EXIT_CODE = 1;
                return;
            } else {
                dialog2.dismiss();
                return;
            }
        }
        dialog2.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCheckNameResult(PopwindowBean popwindowBean, int i2) {
        ThreadManager.runOnUiThread(new AnonymousClass25(popwindowBean, i2));
    }

    public static boolean isNetworkConnected() {
        if (getContext() != null) {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkRealName$3(Request request, int i2) {
        try {
            Response<PopwindowBean> checkRealName = HttpUtils.checkRealName(request);
            this.loading_real_name = false;
            if (checkRealName != null && checkRealName.getCode() == 200) {
                PopwindowBean data = checkRealName.getData();
                if (data != null) {
                    if (data.getPopup().booleanValue()) {
                        handleCheckNameResult(data, i2);
                    }
                    this.playTime = 0L;
                    if (data.getEndDuration().intValue() > 0) {
                        playCountDown(data.getEndDuration().intValue());
                        return;
                    }
                    return;
                }
                return;
            }
            String str = "网络连接异常，请检查网络连接";
            if (checkRealName != null && !TextUtils.isEmpty(checkRealName.getMessage())) {
                str = checkRealName.getMessage();
            }
            Toast.makeText(this, str, 0).show();
            this.loading_real_name = false;
        } catch (Exception e4) {
            e4.printStackTrace();
            this.loading_real_name = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeRealNameDialog$5() {
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
    public static /* synthetic */ boolean lambda$getDiskPaths$1(File file) {
        return file.getName().endsWith(".iso");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getDiskPaths$2(File file, File file2) {
        if (file.getName().compareTo(file2.getName()) > 0) {
            return -1;
        }
        return file.getName().compareTo(file2.getName()) == 0 ? 0 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleButtonAction$4(ButtonBean buttonBean) {
        goWebView(this, buttonBean.getJumpLink());
        senCommonEvent("clickKnowGoRealPage", "0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAdView$0() {
        CContext.ISharePrefrence iSharePrefrence;
        if (this.adInfoBean == null || this.menuView == null || (iSharePrefrence = CContext.mShareLitener) == null) {
            return;
        }
        String hasShowAdInfo = iSharePrefrence.getHasShowAdInfo();
        String md5 = getMD5(new Gson().toJson(this.adInfoBean));
        if (TextUtils.isEmpty(hasShowAdInfo) || !md5.equals(hasShowAdInfo)) {
            this.menuView.showAdImage(true, this.adInfoBean.getMain().getPic_remote());
        }
    }

    private void loadDNSURL() {
        String string;
        String stringExtra = getIntent().getStringExtra("jsonData");
        if (stringExtra != null) {
            try {
                String string2 = new MyJson(stringExtra).getString("dnsJson", "");
                if (string2 == null || "".equals(string2) || (string = new JSONObject(string2).getString("appContent")) == null || "".equals(string)) {
                    return;
                }
                this.appContent = string;
                this.url = string + "/simulator/simulator_member_fun_type";
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }
    }

    public static void login() {
        try {
            try {
                try {
                    Intent intent = new Intent();
                    intent.putExtra("intentFrom", 5);
                    intent.setComponent(new ComponentName(NativeActivity.appPackName_mgsim, "com.join.mgps.activity.login.LoginSplashActivity_"));
                    intent.setAction("android.intent.action.VIEW");
                    intent.setAction("android.intent.action.VIEW");
                    getContext().startActivity(intent);
                } catch (Exception unused) {
                    Intent intent2 = new Intent();
                    intent2.putExtra("intentFrom", 5);
                    intent2.setComponent(new ComponentName("com.join.android.app.mgsim.wufan.mha", "com.join.mgps.activity.login.LoginSplashActivity_"));
                    intent2.setAction("android.intent.action.VIEW");
                    intent2.setAction("android.intent.action.VIEW");
                    getContext().startActivity(intent2);
                }
            } catch (Exception unused2) {
                Intent intent3 = new Intent();
                intent3.putExtra("intentFrom", 5);
                intent3.setComponent(new ComponentName(NativeActivity.appPackName, "com.join.mgps.activity.login.LoginSplashActivity_"));
                intent3.setAction("android.intent.action.VIEW");
                intent3.setAction("android.intent.action.VIEW");
                getContext().startActivity(intent3);
            }
        } catch (Exception unused3) {
        }
    }

    protected static boolean netBattleMatchEfficiency(String str, String str2, String str3) {
        Intent intent = new Intent(f1.a.T);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str3);
        intent.putExtra("jsonData", str2);
        send(intent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playCountDown(long j4) {
        this.mHandler.removeCallbacks(this.limitTimeRunnable);
        this.limitTime = j4;
        this.mHandler.postDelayed(this.limitTimeRunnable, 1000L);
    }

    static boolean playTime(long j4) {
        Intent intent = new Intent(f1.a.N);
        intent.putExtra("gameId", NativeActivity.GameID);
        intent.putExtra("uid", NativeActivity.UserID);
        intent.putExtra("sec", j4);
        send(intent);
        return true;
    }

    static void send(Intent intent) {
        intent.putExtra("packageName", getHostPackageName());
        try {
            intent.addFlags(32);
            if (getContext().getPackageName().equals(getHostPackageName())) {
                getContext().sendBroadcast(intent);
            } else {
                sendInBridge(intent);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    static void sendGamePlay(int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.gamePlay");
        intent.putExtra("action", i2);
        intent.putExtra("startMode", NativeActivity.startMode);
        intent.putExtra("gameId", NativeActivity.GameID);
        intent.putExtra("uid", NativeActivity.UserID);
        send(intent);
    }

    static void sendInBridge(Intent intent) {
        if (intent == null) {
            return;
        }
        Message message = new Message();
        message.what = 11;
        message.setData(new Bundle(intent.getExtras()));
        Bundle bundle = new Bundle();
        bundle.putString("action", intent.getAction());
        bundle.putString("fromCls", NativeActivity.className);
        message.obj = bundle;
        try {
            Messenger messenger = mMessenger;
            if (messenger != null) {
                messenger.send(message);
            }
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public static void sendLimitStat(String str) {
        String str2;
        if (str.equals("OnClickPSPCutDown")) {
            str2 = f1.a.W;
        } else if (str.equals("PSPLimitPopup")) {
            str2 = f1.a.X;
        } else if (str.equals("PSPLimitPlay")) {
            str2 = f1.a.Y;
        } else if (str.equals("PSPLimitMember")) {
            str2 = f1.a.Z;
        } else {
            str2 = str.equals("PSPLimitQuit") ? f1.a.f65465a0 : "";
        }
        Intent intent = new Intent(str2);
        intent.putExtra("gameId", NativeActivity.GameID);
        intent.putExtra("uid", NativeActivity.UserID);
        send(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNativeRealName(PopwindowBean popwindowBean, final int i2) {
        senCommonEvent("realNameDisplayWindow", "0");
        RealNameDialog realNameDialog = new RealNameDialog(this, popwindowBean, new RealNameCallBack() { // from class: com.papa91.arc.EmuActivity_psp.26
            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onCancel(Dialog dialog, ButtonBean buttonBean) {
                EmuActivity_psp.this.senCommonEvent("clickClosedRealNameWindow", "0");
                EmuActivity_psp emuActivity_psp = EmuActivity_psp.this;
                emuActivity_psp.handleButtonAction(emuActivity_psp.realNameDialog, dialog, buttonBean, i2);
            }

            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onEvent(String str, String str2) {
                EmuActivity_psp.this.senCommonEvent(str, str2);
            }

            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onFail(int i4) {
            }

            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onSuccess(Dialog dialog, PopwindowBean popwindowBean2) {
                dialog.dismiss();
                EmuActivity_psp.this.handleCheckNameResult(popwindowBean2, i2);
                if (popwindowBean2.getEndDuration().intValue() > 0) {
                    EmuActivity_psp emuActivity_psp = EmuActivity_psp.this;
                    emuActivity_psp.playTime = 0L;
                    emuActivity_psp.playCountDown(popwindowBean2.getEndDuration().intValue());
                }
            }
        });
        this.realNameDialog = realNameDialog;
        realNameDialog.show(NativeActivity.UserID, Integer.valueOf(i2), 2);
    }

    public static void startVideo() {
        Intent intent = new Intent("com.tools.AdBroadcast");
        intent.putExtra("action", 7);
        send(intent);
    }

    public static void startplayTime(int i2) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("startplayTime1abc ");
            sb.append(i2);
            playTime(i2);
        } catch (Exception e4) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("startplayTime3 ");
            sb2.append(i2);
            e4.printStackTrace();
        }
    }

    protected static boolean unLockSP(String str) {
        return true;
    }

    public void HttpPost_Memer() {
        if (isNetworkConnected()) {
            try {
                NativeApp.httpPostMemberInfo();
            } catch (UnsatisfiedLinkError e4) {
                e4.printStackTrace();
            }
            Dialog dialog = mDialog;
            if (dialog != null) {
                dialog.dismiss();
            }
        }
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean IsHapticFeedbackEnable() {
        return NativeApp.IsHapticFeedbackEnable();
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean IsSoundEnable() {
        return NativeApp.IsSoundEnable();
    }

    @Override // com.papa91.arc.view.IEmulator
    public void addEditCheatInfo(EditCheatInfo editCheatInfo) {
        NativeApp.addEditCheat(editCheatInfo);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.ppsspp.ppsspp.NativeActivity
    public void attachMenu() {
        super.attachMenu();
        showAdView();
    }

    void bakState() {
        File[] listFiles = new File(getUgcPath()).getParentFile().listFiles(FileUtils.getSlotFilter());
        if (listFiles == null || listFiles.length == 0) {
            return;
        }
        List asList = Arrays.asList(listFiles);
        Collections.sort(asList, new Comparator<File>() { // from class: com.papa91.arc.EmuActivity_psp.13
            @Override // java.util.Comparator
            public int compare(File file, File file2) {
                if (file.lastModified() < file2.lastModified()) {
                    return 1;
                }
                return file.lastModified() == file2.lastModified() ? 0 : -1;
            }
        });
        File file = (File) asList.get(0);
        String substring = file.getAbsolutePath().substring(file.getAbsolutePath().lastIndexOf(g0.f27568a) + 1);
        String absolutePath = file.getAbsolutePath();
        FileUtils.copyFile(absolutePath, getUgcPathInternal() + g0.f27568a + substring);
        StringBuilder sb = new StringBuilder();
        sb.append(file.getAbsolutePath());
        sb.append(".png");
        String sb2 = sb.toString();
        FileUtils.copyFile(sb2, getUgcPathInternal() + g0.f27568a + substring + ".png");
    }

    void bindBridge() {
        try {
            Context context = getContext();
            if (context == null) {
                return;
            }
            mServiceConnection = new ServiceConnection() { // from class: com.papa91.arc.EmuActivity_psp.16
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    Messenger messenger = new Messenger(iBinder);
                    EmuActivity_psp.mMessenger = messenger;
                    EmuActivity_psp.this.onMessengerConnected(messenger);
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName componentName) {
                }
            };
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(getHostPackageName(), "com.join.mgps.va.service.MessengerService"));
            context.bindService(intent, mServiceConnection, 1);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void bindService() {
        gameStart();
        bindBridge();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0087 -> B:29:0x008f). Please submit an issue!!! */
    void changeCfgPath() {
        try {
            String str = SDCardUtil.getExternalStorageDirectory(this) + "/PSP";
            String str2 = SDCardUtil.getExternalStorageDirectory() + "/PSP";
            try {
                if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(getApplicationContext(), "android.permission.READ_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(getApplicationContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                    if (!new File(str).exists() && new File(str2).exists()) {
                        FileUtils.copyFolder(str2, str);
                    }
                } else if (Environment.getExternalStorageState().equals("mounted") && !new File(str).exists() && new File(str2).exists()) {
                    FileUtils.copyFolder(str2, str);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void cheatInfoEnable(int i2, int i4) {
        NativeApp.cheatEnable(i2, i4);
        StatIntents.getInstance(getContext()).statOpenGoldfinger(NativeActivity.GameID, NativeActivity.UserID);
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean checkCheatCodeInfo(String str, boolean z3) {
        if (TextUtils.isEmpty(str)) {
            ToastUtil.show(getContext(), "作弊码名称不能为空！");
            return false;
        } else if (TextUtils.isEmpty(str)) {
            ToastUtil.show(getContext(), "作弊码不能为空！");
            return false;
        } else if (NativeApp.checkCheatCode(str)) {
            return true;
        } else {
            ToastUtil.show(getContext(), "作弊码格式有误！");
            return false;
        }
    }

    void checkRealName(final int i2) {
        try {
            if (!isNetworkConnected()) {
                Toast.makeText(this, "请联网后重试！", 0).show();
                return;
            }
            HttpUtils.init(this);
            if (this.loading_real_name) {
                return;
            }
            this.loading_real_name = true;
            ReqRealNameArgs reqRealNameArgs = new ReqRealNameArgs();
            reqRealNameArgs.setUid(Integer.valueOf(NativeActivity.UserID));
            reqRealNameArgs.setUserToken(NativeActivity.token);
            reqRealNameArgs.setGameType("SO_SIMULATOR");
            reqRealNameArgs.setType(Integer.valueOf(i2));
            reqRealNameArgs.setGameId(NativeActivity.GameID);
            reqRealNameArgs.setAction(2);
            reqRealNameArgs.setPlatformType("ANDROID");
            final Request request = Request.getRequest(this, reqRealNameArgs);
            request.setSign(SignUtil.getSignForAPP(request));
            ThreadManager.runOnWriteThread(new Runnable() { // from class: com.papa91.arc.e
                @Override // java.lang.Runnable
                public final void run() {
                    EmuActivity_psp.this.lambda$checkRealName$3(request, i2);
                }
            });
        } catch (Exception e4) {
            e4.printStackTrace();
            this.loading_real_name = false;
        }
    }

    public void closeDialogWithOut(SettingDialog settingDialog) {
        SettingCheatDialog settingCheatDialog = this.cheatDialog;
        if (settingCheatDialog != null && settingCheatDialog != settingDialog) {
            if (settingCheatDialog.isShowing()) {
                this.cheatDialog.dismiss();
            }
            this.cheatDialog = null;
        }
        SettingGateDialog settingGateDialog = this.gateDialog;
        if (settingGateDialog != null && settingGateDialog != settingDialog) {
            if (settingGateDialog.isShowing()) {
                this.gateDialog.dismiss();
            }
            this.gateDialog = null;
        }
        SettingSlotDialog settingSlotDialog = this.slotDialog;
        if (settingSlotDialog != null && settingSlotDialog != settingDialog) {
            if (settingSlotDialog.isShowing()) {
                this.slotDialog.dismiss();
            }
            this.slotDialog = null;
        }
        SettingVipDialog settingVipDialog = this.vipDialog;
        if (settingVipDialog == null || settingVipDialog == settingDialog) {
            return;
        }
        if (settingVipDialog.isShowing()) {
            this.vipDialog.dismissOnly();
        }
        this.vipDialog = null;
    }

    protected void closeRealNameDialog() {
        ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.arc.b
            @Override // java.lang.Runnable
            public final void run() {
                EmuActivity_psp.this.lambda$closeRealNameDialog$5();
            }
        });
    }

    @Override // com.papa91.arc.view.IEmulator
    public void deleteEditCheatInfo(int i2) {
        NativeApp.deleteEditCheat(i2);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void enableEidtCheat(int i2, int i4) {
        if (getVip() > 0) {
            NativeApp.enableEidtCheat(i2);
            senCommonEvent("Custom_openGoldfinger", "");
        } else if (i4 != 1 && i4 != -1) {
            NativeApp.enableEidtCheat(i2);
            senCommonEvent("Custom_closeGoldfinger", "");
        } else {
            CContext.IVideoAdListener iVideoAdListener = CContext.mVideoAdListener;
            if (iVideoAdListener != null && i4 == 1) {
                iVideoAdListener.showGoldAdDialog(this, NativeActivity.GameID, i2);
                return;
            }
            NativeApp.enableEidtCheat(i2);
            senCommonEvent("Custom_openGoldfinger", "");
        }
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void exit() {
        exit1();
    }

    public void exit1() {
        if (this.dialogExit == null) {
            TipTwoDialog tipTwoDialog = new TipTwoDialog(this);
            this.dialogExit = tipTwoDialog;
            tipTwoDialog.setListener(new TipTwoDialog.OnOptionsListener() { // from class: com.papa91.arc.EmuActivity_psp.4
                @Override // com.papa91.arc.dialog.TipTwoDialog.OnOptionsListener
                public void onCancel() {
                }

                @Override // com.papa91.arc.dialog.TipTwoDialog.OnOptionsListener
                public void onClose() {
                }

                @Override // com.papa91.arc.dialog.TipTwoDialog.OnOptionsListener
                public void onConfirm() {
                    ((NativeActivity) EmuActivity_psp.this).shuttingDown = true;
                    EmuActivity_psp.this.finish();
                    EmuActivity_psp.this.EXIT_CODE = 1;
                }
            });
        }
        this.dialogExit.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.papa91.arc.EmuActivity_psp.5
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if ((((NativeActivity) EmuActivity_psp.this).menuView == null || !((NativeActivity) EmuActivity_psp.this).menuView.menuShowing()) && !EmuActivity_psp.this.isFinishing()) {
                    EmuActivity_psp.this.gameOnResume();
                }
            }
        });
        this.dialogExit.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.papa91.arc.EmuActivity_psp.6
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                EmuActivity_psp.this.gameOnPause();
            }
        });
        if (this.dialogExit.isShowing()) {
            return;
        }
        this.dialogExit.show();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c6, code lost:
        createDir(getSDPath() + "/mgpapa/aidlservice/Game_startBattle15_" + org.ppsspp.ppsspp.NativeActivity.GameID + "_" + org.ppsspp.ppsspp.NativeActivity.UserID);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void exitActivty(int r6) {
        /*
            r5 = this;
            int r0 = org.ppsspp.ppsspp.NativeActivity.startMode
            int r1 = r5.START_MODE_NETWORK
            if (r0 != r1) goto L15
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r1 = "papa_broadcast_continue_match_fight"
            r0.<init>(r1)
            java.lang.String r1 = "game_end_state"
            r0.putExtra(r1, r6)
            r5.sendBroadcast(r0)
        L15:
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> Lec
            long r2 = org.ppsspp.ppsspp.NativeActivity.startTIme     // Catch: java.lang.Exception -> Lec
            long r0 = r0 - r2
            int r1 = (int) r0     // Catch: java.lang.Exception -> Lec
            java.lang.String r0 = org.ppsspp.ppsspp.NativeActivity.GameID     // Catch: java.lang.Exception -> Lec
            java.lang.String r2 = org.ppsspp.ppsspp.NativeActivity.UserID     // Catch: java.lang.Exception -> Lec
            boolean r0 = gameOut(r0, r1, r2)     // Catch: java.lang.Exception -> Lec
            r5.gameDestroy(r5)     // Catch: java.lang.Exception -> Lec
            java.lang.String r2 = "_"
            if (r0 != 0) goto L57
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lec
            r3.<init>()     // Catch: java.lang.Exception -> Lec
            java.lang.String r4 = getSDPath()     // Catch: java.lang.Exception -> Lec
            r3.append(r4)     // Catch: java.lang.Exception -> Lec
            java.lang.String r4 = "/mgpapa/aidlservice/Game_out_"
            r3.append(r4)     // Catch: java.lang.Exception -> Lec
            java.lang.String r4 = org.ppsspp.ppsspp.NativeActivity.GameID     // Catch: java.lang.Exception -> Lec
            r3.append(r4)     // Catch: java.lang.Exception -> Lec
            r3.append(r2)     // Catch: java.lang.Exception -> Lec
            r3.append(r1)     // Catch: java.lang.Exception -> Lec
            r3.append(r2)     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = org.ppsspp.ppsspp.NativeActivity.UserID     // Catch: java.lang.Exception -> Lec
            r3.append(r1)     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = r3.toString()     // Catch: java.lang.Exception -> Lec
            createDir(r1)     // Catch: java.lang.Exception -> Lec
        L57:
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> Lec
            org.ppsspp.ppsspp.NativeActivity.startTIme = r3     // Catch: java.lang.Exception -> Lec
            int r1 = org.ppsspp.ppsspp.NativeActivity.startMode     // Catch: java.lang.Exception -> Lec
            int r3 = r5.START_MODE_RESTART     // Catch: java.lang.Exception -> Lec
            if (r1 != r3) goto L8b
            if (r0 != 0) goto Lf0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lec
            r0.<init>()     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = getSDPath()     // Catch: java.lang.Exception -> Lec
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = "/mgpapa/aidlservice/Game_start15_"
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = org.ppsspp.ppsspp.NativeActivity.GameID     // Catch: java.lang.Exception -> Lec
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            r0.append(r2)     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = org.ppsspp.ppsspp.NativeActivity.UserID     // Catch: java.lang.Exception -> Lec
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> Lec
            createDir(r0)     // Catch: java.lang.Exception -> Lec
            goto Lf0
        L8b:
            int r3 = r5.START_MODE_NETCLIENT     // Catch: java.lang.Exception -> Lec
            if (r1 == r3) goto Lc4
            int r3 = r5.START_MODE_NETSERVER     // Catch: java.lang.Exception -> Lec
            if (r1 != r3) goto L94
            goto Lc4
        L94:
            if (r0 != 0) goto Lf0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lec
            r0.<init>()     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = getSDPath()     // Catch: java.lang.Exception -> Lec
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = "/mgpapa/aidlservice/Game_start160_"
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = org.ppsspp.ppsspp.NativeActivity.GameID     // Catch: java.lang.Exception -> Lec
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            r0.append(r2)     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = org.ppsspp.ppsspp.NativeActivity.UserID     // Catch: java.lang.Exception -> Lec
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            r0.append(r2)     // Catch: java.lang.Exception -> Lec
            int r1 = org.ppsspp.ppsspp.NativeActivity.startMode     // Catch: java.lang.Exception -> Lec
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> Lec
            createDir(r0)     // Catch: java.lang.Exception -> Lec
            goto Lf0
        Lc4:
            if (r0 != 0) goto Lf0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lec
            r0.<init>()     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = getSDPath()     // Catch: java.lang.Exception -> Lec
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = "/mgpapa/aidlservice/Game_startBattle15_"
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = org.ppsspp.ppsspp.NativeActivity.GameID     // Catch: java.lang.Exception -> Lec
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            r0.append(r2)     // Catch: java.lang.Exception -> Lec
            java.lang.String r1 = org.ppsspp.ppsspp.NativeActivity.UserID     // Catch: java.lang.Exception -> Lec
            r0.append(r1)     // Catch: java.lang.Exception -> Lec
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> Lec
            createDir(r0)     // Catch: java.lang.Exception -> Lec
            goto Lf0
        Lec:
            r0 = move-exception
            r0.printStackTrace()
        Lf0:
            exitActivity(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa91.arc.EmuActivity_psp.exitActivty(int):void");
    }

    public void forceExit() {
        for (long j4 = 0; j4 <= 4; j4++) {
            try {
                if (!NativeApp.IsEmuExitFinish()) {
                    Thread.sleep(200L);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void forum() {
        String str = NativeActivity.appPackName;
        goForum(str, NativeActivity.fid + "");
    }

    protected void gameDestroy(Activity activity) {
        if (activity == null) {
            return;
        }
        String name = activity.getClass().getName();
        synchronized (this) {
            if (this.activityQueue.containsKey(name)) {
                Long l4 = this.activityQueue.get(name);
                if (l4 == null) {
                    l4 = 0L;
                }
                if (l4.longValue() > 0) {
                    long currentTimeMillis = System.currentTimeMillis() - l4.longValue();
                    this.activityQueue.remove(name);
                    this.liveTime += currentTimeMillis;
                }
            }
            if (this.activityQueue.isEmpty() && this.liveTime > 0) {
                Intent intent = new Intent(BAction.ACTION_EMU_GAME_PLAY_TIMES);
                intent.putExtra("gameId", NativeActivity.GameID);
                intent.putExtra(CommonService_.d0.f51773c, this.liveTime / 1000);
                sendBroadcast(intent);
            }
        }
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void gameOnPause() {
        NativeApp.pauseGame();
        this.gameIsPause = true;
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void gameOnResume() {
        NativeApp.resumeGame();
        this.gameIsPause = false;
    }

    protected void gamePause(Activity activity) {
        if (activity == null) {
            return;
        }
        String name = activity.getClass().getName();
        synchronized (this) {
            if (this.activityQueue.containsKey(name)) {
                Long l4 = this.activityQueue.get(name);
                if (l4 == null) {
                    l4 = 0L;
                }
                long currentTimeMillis = System.currentTimeMillis() - l4.longValue();
                this.activityQueue.remove(name);
                if (this.activityQueue.isEmpty()) {
                    this.liveTime += currentTimeMillis;
                }
            }
        }
    }

    protected void gameResume(Activity activity) {
        if (activity == null) {
            return;
        }
        this.activityQueue.put(activity.getClass().getName(), Long.valueOf(System.currentTimeMillis()));
    }

    void gameStart() {
        try {
            NativeActivity.startTIme = System.currentTimeMillis();
            int i2 = NativeActivity.startMode;
            if (i2 == this.START_MODE_RESTART) {
                if (!gameStart15(NativeActivity.GameID, NativeActivity.UserID)) {
                    createDir(getSDPath() + "mgpapa/aidlservice/Game_start15_" + NativeActivity.GameID + "_" + NativeActivity.UserID);
                }
            } else {
                if (i2 != this.START_MODE_NETCLIENT && i2 != this.START_MODE_NETSERVER) {
                    if (!gameStart160(NativeActivity.GameID, NativeActivity.UserID, i2)) {
                        createDir(getSDPath() + "mgpapa/aidlservice/Game_start160_" + NativeActivity.GameID + "_" + NativeActivity.UserID + "_" + NativeActivity.startMode);
                    }
                }
                if (!gameStartBattle15(NativeActivity.GameID, NativeActivity.UserID)) {
                    createDir(getSDPath() + "mgpapa/aidlservice/Game_startBattle15_" + NativeActivity.GameID + "_" + NativeActivity.UserID);
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

    boolean gameStart160(String str, String str2, int i2) {
        Intent intent = new Intent(f1.a.S);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("startMode", i2);
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

    public String getAdRequestParam() {
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(NativeActivity.appPackName, 16384);
            this.appInfo = packageInfo;
            if (packageInfo != null) {
                NativeActivity.DEVICE_VERSION = this.appInfo.versionCode + "_" + this.appInfo.versionName.replace("'", "");
            }
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
        }
        NativeActivity.httpKeySign = getMD5(NativeActivity.DEVICE_ID + "gzRN53VWRF9BYUXomg2014");
        MyJson myJson = new MyJson();
        try {
            myJson.put("version", NativeActivity.DEVICE_VERSION);
            myJson.put("deviceid", NativeActivity.DEVICE_ID);
            myJson.put(Constant.MD5, NativeActivity.httpKeySign);
            myJson.put("platform", this.sp.getString("platform", ""));
            myJson.put("channelNum", NativeActivity.channelId);
            MyJson myJson2 = new MyJson();
            myJson2.put(SimulatorAreaActivity_.D, getSimulatorType());
            myJson.put("args", myJson2);
        } catch (JSONException e5) {
            e5.printStackTrace();
        }
        return myJson.toString();
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean getAutoSlotStatus() {
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateMax() {
        return 5;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateTimeCount() {
        int i2 = this.autoSlotTime;
        if (i2 <= 0) {
            this.autoSlotTime = 20;
        } else if (!this.gameIsPause) {
            this.autoSlotTime = i2 - 1;
        }
        return this.autoSlotTime;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateTimeGap() {
        return 1000;
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public boolean getChangeDiskState() {
        return NativeApp.NeedChangeDisk();
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<CheatInfo> getCheatListData() {
        NativeApp.loadPspDBCheat();
        return NativeApp.getCheatList();
    }

    public int getCurChar() {
        return 0;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getCurrentChar() {
        return getCurChar();
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getCustomCheatTip(boolean z3) {
        return "金手指码每行分为两部分:\n第一部分：0x+8位数字、字母\n第二部分：0x+8位数字、字母\n两部分中间请用【空格】分割，例：0x12345678 0x1234ABCD";
    }

    public String getDiskPaths() {
        if (StringUtils.isNotEmpty(NativeActivity.romPath)) {
            File file = new File(NativeActivity.romPath);
            if (file.exists()) {
                File[] listFiles = file.getParentFile().listFiles(new FileFilter() { // from class: com.papa91.arc.a
                    @Override // java.io.FileFilter
                    public final boolean accept(File file2) {
                        boolean lambda$getDiskPaths$1;
                        lambda$getDiskPaths$1 = EmuActivity_psp.lambda$getDiskPaths$1(file2);
                        return lambda$getDiskPaths$1;
                    }
                });
                Arrays.sort(listFiles, new Comparator() { // from class: com.papa91.arc.f
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int lambda$getDiskPaths$2;
                        lambda$getDiskPaths$2 = EmuActivity_psp.lambda$getDiskPaths$2((File) obj, (File) obj2);
                        return lambda$getDiskPaths$2;
                    }
                });
                int length = listFiles.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    File file2 = listFiles[i2];
                    if (StringUtils.isEmpty(this.diskPath)) {
                        this.diskPath = file2.getAbsolutePath();
                    } else if (!file2.getAbsolutePath().equals(this.diskPath)) {
                        this.diskPath = file2.getAbsolutePath();
                        break;
                    }
                    i2++;
                }
            }
        }
        return this.diskPath;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<EditCheatInfo> getEditCheatListData() {
        return NativeApp.getEditCheatList();
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getGameId() {
        return NativeActivity.GameID;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<GateBean> getGateData() {
        return null;
    }

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

    @Override // com.papa91.arc.view.IEmulator
    public List<TypeBean> getMenuTypes(int i2) {
        ArrayList arrayList = new ArrayList();
        if (i2 == 0) {
            int i4 = R.drawable.ic_cheat_vip;
            arrayList.add(new TypeBean(0, "悟饭定制", true, i4, i4));
            arrayList.add(new TypeBean(1, "自定义", false, -1, -1));
        } else if (i2 == 1) {
            arrayList.add(new TypeBean(0, "我的存档", true, -1, -1));
        }
        return arrayList;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getModSubfix() {
        return "";
    }

    FilenameFilter getOStateFilter(final String str) {
        return new FilenameFilter() { // from class: com.papa91.arc.EmuActivity_psp.14
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str2) {
                return str2.contains(g0.f27568a) && str2.lastIndexOf(g0.f27568a) != str2.length() && str2.substring(str2.lastIndexOf(g0.f27568a) + 1).equals("ppst") && !TextUtils.isEmpty(str) && str2.startsWith(str);
            }
        };
    }

    public String getRequestParam() {
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(NativeActivity.appPackName, 16384);
            this.appInfo = packageInfo;
            if (packageInfo != null) {
                NativeActivity.DEVICE_VERSION = this.appInfo.versionCode + "_" + this.appInfo.versionName.replace("'", "");
            }
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
        }
        NativeActivity.httpKeySign = getMD5(NativeActivity.DEVICE_ID + "gzRN53VWRF9BYUXomg2014");
        MyJson myJson = new MyJson();
        try {
            myJson.put("version", NativeActivity.DEVICE_VERSION);
            myJson.put("deviceid", NativeActivity.DEVICE_ID);
            myJson.put(Constant.MD5, NativeActivity.httpKeySign);
            MyJson myJson2 = new MyJson();
            myJson2.put("args", new JSONArray());
            myJson.put("messages", myJson2);
        } catch (JSONException e5) {
            e5.printStackTrace();
        }
        return myJson.toString();
    }

    public String getSimulatorType() {
        return "psp";
    }

    @Override // com.papa91.arc.view.IEmulator
    public SkillConfigBean getSkillConfigData() {
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public SkillTableDataBean getSkillTableData() {
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int[] getSpBindImages(int i2) {
        return new int[0];
    }

    @Override // com.papa91.arc.view.IEmulator
    public SpBindsDataBean getSpBindsData() {
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getUserId() {
        return NativeActivity.UserID;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getVip() {
        if (SnkConfig.isSnkGame(NativeActivity.GameID)) {
            return 10;
        }
        return NativeActivity.m_VIP;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<VipBean> getVipData() {
        return this.vipBeans;
    }

    public void goForum(String str, String str2) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(str, "com.join.mgps.activity.ForumActivity_"));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fid", str2);
            jSONObject.put("name", "");
            jSONObject.put("icon_src", "");
            jSONObject.put("users", 0);
            jSONObject.put("posts", 0);
            jSONObject.put("add_time", 0);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        intent.putExtra("key_forum_bean", jSONObject.toString());
        try {
            intent.setAction("com.wufun.intent.activity.view.action.emuintent");
            startActivity(intent);
        } catch (Exception unused) {
            intent.setAction("com.papa.intent.activity.view.action.emuintent");
            startActivity(intent);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void goSlotShop() {
        MarketUtil.intent(getContext(), "4", "", "https://anv3cjapi.5fun.com/member/vip_view/welfare/psp_ad", "", "");
    }

    @Override // com.papa91.arc.view.IEmulator
    public void goVipShop(int i2, boolean z3) {
        if (!z3) {
            goVipShop(i2);
        } else if (i2 == 0) {
            if (StringUtils.isEmpty(CContext.mShareLitener.getEmulatorOneSkillUrl())) {
                goVipShop(i2);
                return;
            }
            Context context = getContext();
            MarketUtil.intent(context, "4", "0", CContext.mShareLitener.getEmulatorOneSkillUrl() + "&gameId=" + NativeActivity.GameID, "", "");
        } else if (i2 == 1) {
            if (StringUtils.isEmpty(CContext.mShareLitener.getEmulatorGoldenFingerUrl())) {
                goVipShop(i2);
                return;
            }
            Context context2 = getContext();
            MarketUtil.intent(context2, "4", "0", CContext.mShareLitener.getEmulatorGoldenFingerUrl() + "&gameId=" + NativeActivity.GameID, "", "");
        } else if (i2 != 3) {
        } else {
            if (StringUtils.isEmpty(CContext.mShareLitener.getEmulatorCheckpointUrl())) {
                goVipShop(i2);
                return;
            }
            Context context3 = getContext();
            MarketUtil.intent(context3, "4", "0", CContext.mShareLitener.getEmulatorCheckpointUrl() + "&gameId=" + NativeActivity.GameID, "", "");
        }
    }

    protected void handleAdError(Context context, Intent intent) {
        int optInt;
        SettingCheatDialog settingCheatDialog;
        if (intent.getIntExtra(DownloadHighSpeedingDialog_.a.f47372b, 5) == 5) {
            String stringExtra = intent.getStringExtra(MGMainActivity.KEY_EXTRAS);
            if (StringUtils.isNotEmpty(stringExtra)) {
                try {
                    optInt = new JSONObject(stringExtra).optInt(NoticeTopAnimActivityDialog_.f34402n, -1);
                } catch (JSONException e4) {
                    e4.printStackTrace();
                }
                settingCheatDialog = this.cheatDialog;
                if (settingCheatDialog != null || optInt == -1) {
                }
                settingCheatDialog.updateSwitchState(optInt);
                return;
            }
            optInt = -1;
            settingCheatDialog = this.cheatDialog;
            if (settingCheatDialog != null) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void handleAdResult(android.content.Context r5, android.content.Intent r6) {
        /*
            r4 = this;
            java.lang.String r5 = "adAction"
            r0 = 1008(0x3f0, float:1.413E-42)
            int r5 = r6.getIntExtra(r5, r0)
            java.lang.String r1 = "extras"
            java.lang.String r6 = r6.getStringExtra(r1)
            boolean r1 = com.papa91.arc.util.StringUtils.isNotEmpty(r6)
            r2 = 1
            r3 = -1
            if (r1 == 0) goto L2c
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L28
            r1.<init>(r6)     // Catch: org.json.JSONException -> L28
            java.lang.String r6 = "close"
            boolean r2 = r1.optBoolean(r6, r2)     // Catch: org.json.JSONException -> L28
            java.lang.String r6 = "state"
            int r6 = r1.optInt(r6, r3)     // Catch: org.json.JSONException -> L28
            goto L2d
        L28:
            r6 = move-exception
            r6.printStackTrace()
        L2c:
            r6 = -1
        L2d:
            if (r5 != r0) goto L3b
            com.papa91.arc.dialog.SettingCheatDialog r5 = r4.cheatDialog
            if (r5 == 0) goto L48
            if (r2 == 0) goto L48
            if (r6 == r3) goto L48
            r5.updateSwitchState(r6)
            goto L48
        L3b:
            r0 = 1007(0x3ef, float:1.411E-42)
            if (r5 != r0) goto L48
            com.papa91.arc.dialog.SettingCheatDialog r5 = r4.cheatDialog
            if (r5 == 0) goto L48
            if (r6 == r3) goto L48
            r5.updateSwitchState(r6)
        L48:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa91.arc.EmuActivity_psp.handleAdResult(android.content.Context, android.content.Intent):void");
    }

    boolean hasExternalPermission() {
        return (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(getApplicationContext(), "android.permission.READ_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(getApplicationContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) || Environment.getExternalStorageState().equals("mounted");
    }

    void hideAdCountDown() {
        this.isHideAdTimeView = true;
        this.mHandler.removeCallbacks(this.hideTimeRunner);
        this.mHandler.postDelayed(this.hideTimeRunner, 500L);
    }

    void initArgs() {
        String str;
        sContext = this;
        GameSettings.init(this);
        if (!TextUtils.isEmpty(this.jstring)) {
            MyJson myJson = null;
            try {
                myJson = new MyJson(this.jstring);
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
            if (myJson != null) {
                NativeActivity.appPackName = myJson.getString(BaseAppConfig.PA_PACKAGE_NAME, NativeActivity.appPackName);
                NativeActivity.startMode = myJson.getInt("startMode", 0);
                NativeActivity.romPath = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "");
                NativeActivity.ugcPath = myJson.getString(BaseAppConfig.KEY_UGC_PATH, "");
                NativeActivity.assetsPath = myJson.getString(BaseAppConfig.KEY_ASSETS_PATH, "");
                new File(NativeActivity.romPath).getName();
                NativeActivity.soPath = myJson.getString(BaseAppConfig.KEY_SO_PATH, "");
                NativeActivity.assetsPath = myJson.getString(BaseAppConfig.KEY_ASSETS_PATH, "");
                String string = myJson.getString(BaseAppConfig.KEY_ACTIVITY_NAME, "");
                NativeActivity.className = string;
                NativeActivity.className = string.replace(g0.f27568a, net.lingala.zip4j.util.e.F0);
                NativeActivity.UserID = myJson.getString(BaseAppConfig.KEY_START_USERID, "");
                NativeActivity.GameID = myJson.getString(BaseAppConfig.KEY_START_GAMEID, "");
                NativeActivity.fid = myJson.getInt(BaseAppConfig.KEY_START_FID, 0);
                NativeActivity.RoomID = myJson.getString(BaseAppConfig.KEY_START_ROOMID, "");
                NativeActivity.Version = myJson.getString("version", "");
                NativeActivity.server_ip = myJson.getString(BaseAppConfig.KEY_SERVER_IP, "");
                NativeActivity.server_port = myJson.getString(BaseAppConfig.KEY_SERVER_PORT, "");
                NativeActivity.token = myJson.getString("token", "0");
                NativeActivity.spLock = myJson.getInt(BaseAppConfig.KEY_SP_LOCK, 0);
                this.m_SVIP = myJson.getInt(BaseAppConfig.KEY_SVIP_LEVEL, 0);
                NativeActivity.m_VIP = myJson.getInt(BaseAppConfig.KEY_VIP_LEVEL, 0);
                NativeActivity.pspAdShowTime = myJson.getInt("pspAdShowTime", 0);
                NativeActivity.pspAdShowTimeSwitch = myJson.getInt("pspAdShowTimeSwitch", 0);
                Boolean bool = Boolean.TRUE;
                this.allowPeripheralJoin = myJson.getBoolean("allowPeripheralJoin", bool).booleanValue();
                NativeActivity.tourist = myJson.getBoolean("tourist", bool).booleanValue();
                NativeActivity.channelId = myJson.getString("channelId", "");
                if (!TextUtils.isEmpty(NativeActivity.romPath)) {
                    if (TextUtils.isEmpty(NativeActivity.ugcPath)) {
                        String str2 = NativeActivity.romPath;
                        String str3 = getSDPath() + "/papa91/psp/" + str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                        NativeActivity.ugcPath = str3;
                        if (!TextUtils.isEmpty(str3)) {
                            new File(NativeActivity.ugcPath).getParentFile().mkdirs();
                        }
                        try {
                            myJson.put(BaseAppConfig.KEY_UGC_PATH, NativeActivity.ugcPath);
                        } catch (JSONException e5) {
                            e5.printStackTrace();
                        }
                    }
                    try {
                        initTotalLevel();
                        if (GameSettings.getCustomSettingEnable()) {
                            str = "5";
                        } else {
                            str = GameSettings.getGameSettingLevel() + "";
                        }
                        myJson.put("gameSettingLevel", str);
                    } catch (JSONException e6) {
                        e6.printStackTrace();
                    }
                }
            }
            this.jstring = myJson.toString();
        } else {
            initArgsDefault();
        }
        if (!NativeActivity.appPackName.equals(getPackageName())) {
            this.sp = getSharedPreferences(NativeActivity.appPackName + "_preferences", 4);
        } else {
            this.sp = PreferenceManager.getDefaultSharedPreferences(this);
        }
        this.pref = new UserPrefs(this, this.sp);
    }

    void initArgsDefault() {
        String sDPath = getSDPath();
        StringBuilder sb = new StringBuilder();
        sb.append(sDPath);
        sb.append("/1");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(sDPath);
        sb2.append("/1/lzzzwddh2");
    }

    void initReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        this.intentFilter = intentFilter;
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        NetWorkReceiver netWorkReceiver = new NetWorkReceiver();
        this.netWorkReceiver = netWorkReceiver;
        registerReceiver(netWorkReceiver, this.intentFilter);
        registerLogin();
        registerAdReceiver();
        this.receveReceiver = new EmuReceiveReceiver();
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.emu.ad.result");
        registerReceiver(this.receveReceiver, intentFilter2);
        registerMyReceiver();
        if (this.actionReceiver == null) {
            this.actionReceiver = new ActionReceiver();
            registerReceiver(this.actionReceiver, new IntentFilter(BAction.ACTION_REAL_NAME_RESULT));
        }
    }

    void initTimeLimitedDialog() {
        if (this.timeLimitedDialog == null) {
            this.timeLimitedDialog = new GameTimeLimitedDialog(getContext());
            this.timeLimitedDialog.setAdConfig(CContext.mShareLitener.getPspGameAdCfg());
            this.timeLimitedDialog.setOnTimeLimitedListener(new GameTimeLimitedDialog.OnTimeLimitedListener() { // from class: com.papa91.arc.EmuActivity_psp.19
                @Override // com.papa91.arc.view.GameTimeLimitedDialog.OnTimeLimitedListener
                public void onBuyVip(String str) {
                    if (!EmuActivity_psp.this.isLogined()) {
                        EmuActivity_psp.login();
                    } else {
                        MarketUtil.intent(EmuActivity_psp.getContext(), "4", "", str, "", "");
                    }
                }

                @Override // com.papa91.arc.view.GameTimeLimitedDialog.OnTimeLimitedListener
                public void onExit() {
                    EmuActivity_psp.this.finish();
                }
            });
        }
    }

    void initTotalLevel() {
        int i2;
        if (!TextUtils.isEmpty(NativeActivity.romPath)) {
            File parentFile = new File(NativeActivity.romPath).getParentFile();
            if (parentFile.exists()) {
                if (!new File(parentFile, "psp_gamesetting5.ini").exists()) {
                    new File(parentFile, "psp_gamesetting5.xml").exists();
                } else {
                    i2 = 5;
                    GameSettings.setGameSettingTotalLevel(i2);
                }
            }
        }
        i2 = 4;
        GameSettings.setGameSettingTotalLevel(i2);
    }

    boolean isHideAdToday() {
        String adGamesConfig = this.pref.getAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID);
        if (TextUtils.isEmpty(adGamesConfig)) {
            return false;
        }
        long lastTime = this.pref.getLastTime(adGamesConfig);
        boolean skipAd = this.pref.getSkipAd(adGamesConfig);
        try {
            new JSONObject(adGamesConfig);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (skipAd && DateUtils.isToday(lastTime)) {
            hideAdCountDown();
            return true;
        }
        return false;
    }

    boolean isLogined() {
        return (TextUtils.isEmpty(NativeActivity.token) || TextUtils.isEmpty(NativeActivity.UserID) || NativeActivity.tourist) ? false : true;
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean isRankAutoUpload() {
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean isSPVisible() {
        return false;
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean isShowCheating() {
        return true;
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean isShowGate() {
        return false;
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean isShowQuickSlot() {
        return true;
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void keysSetting() {
        NativeApp.enterGameSettings(2);
        this.menuView.hide();
        lastWindow = 1;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadAdVideo() {
        CContext.IVideoAdListener iVideoAdListener;
        if (getVip() > 0 || (iVideoAdListener = CContext.mVideoAdListener) == null) {
            return;
        }
        iVideoAdListener.loadAd(this, CContext.SCENE_PSP);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadGateStage(int i2) {
    }

    @Override // org.ppsspp.ppsspp.NativeActivity
    public void loadRom() {
        if (!TextUtils.isEmpty(this.jstring)) {
            NativeApp.setJson(this.jstring);
            NativeApp.emuRestart();
        } else if (getIntent() != null) {
            String stringExtra = getIntent().getStringExtra("jsonData");
            if (TextUtils.isEmpty(stringExtra)) {
                return;
            }
            NativeApp.setJson(stringExtra);
            NativeApp.emuRestart();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadSlotState(String str) {
        NativeApp.loadState(str);
    }

    protected void loginFinish() {
        this.needCheckRealName = true;
        this.checkRealNameType = 11;
    }

    void migrate() {
        String str;
        try {
            File file = new File(getSDPath() + "/PSP");
            File file2 = new File(getSDPath() + "/papa91/psp/PSP");
            long lastModified = file2.lastModified();
            if (file2.exists()) {
                boolean renameTo = file2.renameTo(file);
                file.setLastModified(lastModified);
                if (renameTo) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("renameTo suc : ");
                    sb.append(file);
                    sb.append("--- ");
                    sb.append(file2);
                    sb.append(" time :");
                    sb.append(lastModified);
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("renameTo fail : ");
                    sb2.append(file);
                    sb2.append("--- ");
                    sb2.append(file2);
                    sb2.append(" time :");
                    sb2.append(lastModified);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        changeCfgPath();
        saveDataTransfer();
        stateTransfer();
        syncState();
        createDir(getSDPath() + "/PSP/Cheats/");
        String str2 = NativeActivity.romPath + ".ini";
        if (TextUtils.isEmpty(NativeActivity.romPath) || !NativeActivity.romPath.contains(net.lingala.zip4j.util.e.F0)) {
            str = "";
        } else {
            String str3 = NativeActivity.romPath;
            str = str3.substring(str3.lastIndexOf(net.lingala.zip4j.util.e.F0));
        }
        String str4 = getSDPath() + "/papa91/psp" + str + "/editCheat.json";
        String str5 = getSDPath() + "/PSP/Cheats" + str + ".ini";
        if (new File(str5).exists()) {
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("s1 : ");
        sb3.append(str2);
        sb3.append(" s2 : ");
        sb3.append(str4);
        sb3.append(" s3 : ");
        sb3.append(str5);
        convert(str2, str4, str5);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void modifyEditCheatInfo(int i2, EditCheatInfo editCheatInfo) {
        NativeApp.modifyEditCheat(i2, editCheatInfo);
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean needShowTimer() {
        return true;
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public void onAdImageClick() {
        super.onAdImageClick();
        if (this.adInfoBean != null) {
            CContext.mShareLitener.saveHasShowAdInfo(getMD5(new Gson().toJson(this.adInfoBean)));
            SubBean sub = this.adInfoBean.getSub();
            if (sub != null) {
                MarketUtil.intent(getContext(), sub.getLink_type(), sub.getJump_type(), sub.getLink_type_val(), sub.getCrc_link_type_val(), sub.getTpl_type());
            }
            MenuView menuView = this.menuView;
            if (menuView != null) {
                menuView.showAdImage(false, "");
            }
        }
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public void onChangeDisk() {
        NativeApp.ChangeDisk(getDiskPaths());
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, org.ppsspp.ppsspp.NativeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        MenuView menuView;
        MenuView menuView2;
        loadDNSURL();
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("jsonData");
            this.jstring = stringExtra;
            if (bundle != null && TextUtils.isEmpty(stringExtra)) {
                this.jstring = bundle.getString("jsonData");
            }
        }
        initArgs();
        initReceiver();
        super.onCreate(bundle);
        if (TextUtils.isEmpty(NativeActivity.romPath)) {
            if (loadingFinished || (menuView2 = this.menuView) == null) {
                return;
            }
            menuView2.hide();
            return;
        }
        migrate();
        this.pref.setSlotTipShow(true);
        if (!loadingFinished && (menuView = this.menuView) != null) {
            menuView.hide();
        }
        bindService();
        NativeActivity.DEVICE_ID = "";
        restoreVipData();
        restoreAdData();
        startTimer();
        sendGamePlay(0);
        if (this.hasCheckRealName) {
            return;
        }
        checkRealName(11);
        this.hasCheckRealName = true;
        this.needCheckRealName = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.ppsspp.ppsspp.NativeActivity, android.app.Activity
    public void onDestroy() {
        this.isDestroyed = true;
        stopTimer();
        unregisterReceiver(this.receveReceiver);
        unregisterLogin();
        unregisterAdReceiver();
        ActionReceiver actionReceiver = this.actionReceiver;
        if (actionReceiver != null) {
            unregisterReceiver(actionReceiver);
        }
        try {
            if (!this.isRecreate) {
                exitActivty(0);
                unbindService(this.serviceConnection);
            }
            unregisterMyReceiver();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        closeDialogWithOut(null);
        TipTwoDialog tipTwoDialog = this.dialogExit;
        if (tipTwoDialog != null) {
            if (tipTwoDialog.isShowing()) {
                this.dialogExit.dismiss();
            }
            this.dialogExit = null;
        }
        GameTimeLimitedNetworkFailedDialog gameTimeLimitedNetworkFailedDialog = this.timeLimitedNetworkFailedDialog;
        if (gameTimeLimitedNetworkFailedDialog != null) {
            if (gameTimeLimitedNetworkFailedDialog.isShowing()) {
                this.timeLimitedNetworkFailedDialog.dismiss();
            }
            this.timeLimitedNetworkFailedDialog = null;
        }
        GameTimeLimitedDialog gameTimeLimitedDialog = this.timeLimitedDialog;
        if (gameTimeLimitedDialog != null) {
            if (gameTimeLimitedDialog.isShowing()) {
                this.timeLimitedDialog.dismiss();
            }
            this.timeLimitedDialog = null;
        }
        if (!this.isRecreate) {
            loadingFinished = false;
            SettingCheatDialog settingCheatDialog = this.cheatDialog;
            if (settingCheatDialog != null) {
                settingCheatDialog.cheatReset();
            }
            unregisterMyReceiver();
        }
        unbindBridge();
        super.onDestroy();
        sendGamePlay(2);
        if (this.EXIT_CODE == 1) {
            forceExit();
        }
    }

    protected void onHandleRealName(int i2) {
        this.playTime = 0L;
        closeRealNameDialog();
        this.hasCheckRealName = false;
        checkRealName(i2);
        this.hasCheckRealName = true;
    }

    protected void onHandlerResultNameResult(Intent intent) {
        loginFinish();
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public void onHideMenu() {
        StatIntents.getInstance(getContext()).statOnclickFunction(NativeActivity.GameID, NativeActivity.UserID, 2);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            if (!loadingFinished) {
                return true;
            }
            MenuView menuView = this.menuView;
            if (menuView != null && menuView.menuShowing()) {
                this.menuView.dismissMenu();
                gameOnResume();
                return true;
            }
        }
        return super.onKeyDown(i2, keyEvent);
    }

    void onMessengerConnected(Messenger messenger) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.ppsspp.ppsspp.NativeActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MenuView menuView = this.menuView;
        if (menuView != null && menuView.isTimerShowing()) {
            this.menuView.pauseTimer();
        }
        gamePause(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.ppsspp.ppsspp.NativeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            HttpPost_Memer();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (this.menuView != null) {
            if (!isHideAdToday() && this.menuView.isTimerShowing() && !this.isHideAdTimeView) {
                this.menuView.resumeTimer();
            } else {
                hideAdCountDown();
            }
        }
        if (this.needCheckRealName) {
            onHandleRealName(this.checkRealNameType);
            this.needCheckRealName = false;
        }
        gameResume(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putString("jsonData", this.jstring);
        super.onSaveInstanceState(bundle);
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public void onScreenShot() {
        StatIntents.getInstance(getContext()).statOnclickFunction(NativeActivity.GameID, NativeActivity.UserID, 1);
        File file = new File(getSDPath() + "/papa91/img/");
        if (!file.exists()) {
            file.mkdirs();
        }
        String str = getSDPath() + "/papa91/img/" + System.currentTimeMillis() + ".png";
        this.shareImagePath = str;
        NativeApp.saveScreenShot(str);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void onTimerTick(long j4) {
        this.pref.setAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID, j4, this.pref.getSkipAd(this.pref.getAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID)));
        GameTimeLimitedDialog gameTimeLimitedDialog = this.timeLimitedDialog;
        if (gameTimeLimitedDialog != null && gameTimeLimitedDialog.isShowing()) {
            this.timeLimitedDialog.updateTickTime(j4);
        }
        if (j4 >= 3000 || this.adToastShowing) {
            return;
        }
        this.adToastShowing = true;
        ToastUtil.show(this, "即将进入广告，游戏将自动暂停");
        this.mHandler.postDelayed(new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.21
            @Override // java.lang.Runnable
            public void run() {
                EmuActivity_psp.this.adToastShowing = false;
            }
        }, 3500L);
    }

    void onVipChanged() {
        if (NativeActivity.m_VIP > 0) {
            hideAdCountDown();
            GameTimeLimitedDialog gameTimeLimitedDialog = this.timeLimitedDialog;
            if (gameTimeLimitedDialog != null && gameTimeLimitedDialog.isShowing()) {
                this.timeLimitedDialog.dismiss();
            }
        }
        SettingVipDialog settingVipDialog = this.vipDialog;
        if (settingVipDialog != null && settingVipDialog.isShowing()) {
            this.vipDialog.dismiss();
        }
        SettingVipTipDialog settingVipTipDialog = this.vipTipDialog;
        if (settingVipTipDialog != null && settingVipTipDialog.isShowing()) {
            this.vipTipDialog.dismiss();
        }
        SettingSlotDialog settingSlotDialog = this.slotDialog;
        if (settingSlotDialog != null) {
            settingSlotDialog.onVipChanged();
        }
        SettingCheatDialog settingCheatDialog = this.cheatDialog;
        if (settingCheatDialog != null) {
            settingCheatDialog.onVipChanged();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void pauseGame() {
        NativeApp.pauseGame();
        this.gameIsPause = true;
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity
    public void postCommand(final String str, final String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.2
            @Override // java.lang.Runnable
            public void run() {
                EmuActivity_psp.this.processCommand(str, str2);
            }
        });
    }

    @Override // org.ppsspp.ppsspp.NativeActivity
    public boolean processCommand(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("cmd=");
        sb.append(str);
        sb.append(", param=");
        sb.append(str2);
        if (str.equals("SaveState::SUCCESS")) {
            bakState();
            ToastUtil.show(getApplicationContext(), "存档保存成功！");
        } else if (str.equals("SaveState::FAILURE")) {
            ToastUtil.show(this, "存档保存失败！");
        } else if (str.equals("loadingFinished")) {
            loadingFinished = true;
            attachMenu();
            MenuView menuView = this.menuView;
            if (menuView != null) {
                menuView.requestFocus();
                this.menuView.requestLayout();
                this.menuView.show();
                showAdCountDown();
            }
            this.mHandler.postDelayed(new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.3
                @Override // java.lang.Runnable
                public void run() {
                    EmuActivity_psp.this.showVipTip();
                }
            }, 500L);
        } else if (str.equals("showLastWindow")) {
            int i2 = lastWindow;
            if (i2 == 1) {
                MenuView menuView2 = this.menuView;
                if (menuView2 != null) {
                    menuView2.show();
                    this.menuView.popupMenu();
                }
            } else if (i2 == 2) {
                MenuView menuView3 = this.menuView;
                if (menuView3 != null) {
                    menuView3.show();
                }
                showMenuPerformance();
            }
            lastWindow = 0;
        } else if (!str.equals("uistate") || !str2.equals("ingame")) {
            if (str.equals("wufan_reset")) {
                SettingCheatDialog settingCheatDialog = this.cheatDialog;
                if (settingCheatDialog != null) {
                    settingCheatDialog.cheatReset();
                }
            } else if (str.equals("graphics_restart")) {
                NativeApp.resumeGame();
            } else if (str.equals("ScreenShot::SUCCESS")) {
                showShare(this.shareImagePath);
            } else if (str.equals("ScreenShot::FAILURE")) {
                ToastUtil.show(getContext(), "图片保存失败");
            }
        }
        return super.processCommand(str, str2);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void quickSlot() {
        MenuView menuView = this.menuView;
        if (menuView != null) {
            menuView.dismissMenu();
        }
        gameOnResume();
        this.mHandler.postDelayed(new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.8
            @Override // java.lang.Runnable
            public void run() {
                String ugcPath = EmuActivity_psp.this.getUgcPath();
                if (TextUtils.isEmpty(ugcPath)) {
                    return;
                }
                NativeApp.saveState(ugcPath + g0.f27568a + 0);
            }
        }, 80L);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, android.app.Activity
    public void recreate() {
        super.recreate();
        this.isRecreate = true;
        SettingCheatDialog settingCheatDialog = this.cheatDialog;
        if (settingCheatDialog != null) {
            settingCheatDialog.cheatReset();
        }
    }

    void registerAdReceiver() {
        this.adResultReceiver = new AdResultReceiver();
        registerReceiver(this.adResultReceiver, new IntentFilter("com.emu.ad.result"));
    }

    void registerLogin() {
        this.loginReceiver = new LoginReceiver();
        IntentFilter intentFilter = new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        intentFilter.addAction("com.join.android.app.mgsim.wufan.mha.broadcast.action_login_success");
        intentFilter.addAction("com.join.android.app.mgsim.wufun.mha.broadcast.action_login_success");
        registerReceiver(this.loginReceiver, intentFilter);
    }

    void registerMyReceiver() {
        this.myReceiver = new MyReceiver();
        IntentFilter intentFilter = new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        intentFilter.addAction("com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success");
        registerReceiver(this.myReceiver, intentFilter);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void reload() {
        gameOnResume();
        MenuView menuView = this.menuView;
        if (menuView != null) {
            menuView.dismissMenu();
            this.mHandler.postDelayed(new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.9
                @Override // java.lang.Runnable
                public void run() {
                    ((NativeActivity) EmuActivity_psp.this).menuView.hide();
                }
            }, 180L);
            SettingCheatDialog settingCheatDialog = this.cheatDialog;
            if (settingCheatDialog != null) {
                settingCheatDialog.cheatReset();
            }
            loadingFinished = false;
            NativeApp.emuRestart();
        }
        this.diskPath = "";
    }

    void renameFile(String str, String str2) {
        File file = new File(str2);
        File file2 = new File(str);
        long lastModified = file2.lastModified();
        file2.renameTo(file);
        file.setLastModified(lastModified);
    }

    public void restoreAdData() {
        try {
            String stringExtra = getIntent().getStringExtra("jsonData");
            if (stringExtra != null) {
                try {
                    String string = new MyJson(stringExtra).getString("dnsJson", "");
                    if (string != null && !"".equals(string)) {
                        JSONObject jSONObject = new JSONObject(string);
                        if (jSONObject.has("gameUrl")) {
                            String string2 = jSONObject.getString("gameUrl");
                            if (!TextUtils.isEmpty(string2)) {
                                this.ad_host_url = string2;
                            }
                        }
                    }
                } catch (JSONException e4) {
                    e4.printStackTrace();
                }
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        final String adRequestParam = getAdRequestParam();
        new AsyncTask<String, Void, String>() { // from class: com.papa91.arc.EmuActivity_psp.11
            void onRequestError(String str) {
            }

            void onRequestSuccess(String str) {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public String doInBackground(String... strArr) {
                DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                HttpPost httpPost = new HttpPost(EmuActivity_psp.this.ad_host_url + "/v5/game/simulatorGameInterfaceAd");
                httpPost.addHeader("Content-Type", "application/json;charset=utf-8");
                try {
                    httpPost.setEntity(new StringEntity(adRequestParam));
                } catch (UnsupportedEncodingException e6) {
                    e6.printStackTrace();
                }
                try {
                    HttpResponse execute = defaultHttpClient.execute(httpPost);
                    if (execute.getStatusLine().getStatusCode() == 200) {
                        String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
                        onRequestSuccess(entityUtils);
                        return entityUtils;
                    }
                    onRequestError("");
                    return "";
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return "";
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(String str) {
                try {
                    if (!TextUtils.isEmpty(str)) {
                        EmuActivity_psp.this.adInfoBean = null;
                    }
                    JSONObject jSONObject2 = new MyJson(str).getJSONObject("data");
                    if (jSONObject2 != null) {
                        EmuActivity_psp.this.adInfoBean = new AdInfoBean();
                        JSONObject jSONObject3 = (JSONObject) jSONObject2.get("main");
                        EmuActivity_psp.this.adInfoBean.setMain(new MainBean(jSONObject3.getString("title"), jSONObject3.getString("label"), jSONObject3.getString("pic_remote"), jSONObject3.getString("title_type"), jSONObject3.getString("sub_title"), jSONObject3.getInt("ad_switch")));
                        JSONObject jSONObject4 = (JSONObject) ((JSONArray) jSONObject2.get("sub")).get(0);
                        EmuActivity_psp.this.adInfoBean.setSub(new SubBean(jSONObject4.getString("link_type"), jSONObject4.getString("link_type_val"), jSONObject4.getString("crc_link_type_val"), jSONObject4.getString("jump_type"), jSONObject4.getString("is_more"), jSONObject4.getString("tpl_type")));
                    }
                    EmuActivity_psp.this.showAdView();
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
            }
        }.execute(new String[0]);
    }

    public void restoreVipData() {
        this.url = "http://anv9.ctapi.5fun.com/simulator/simulator_member_fun_type";
        try {
            this.url = this.appContent + "/simulator/simulator_member_fun_type";
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        final String requestParam = getRequestParam();
        new AsyncTask<String, Void, String>() { // from class: com.papa91.arc.EmuActivity_psp.10
            void onRequestError(String str) {
            }

            void onRequestSuccess(String str) {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public String doInBackground(String... strArr) {
                DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                HttpPost httpPost = new HttpPost(EmuActivity_psp.this.url);
                httpPost.addHeader("Content-Type", "application/json;charset=utf-8");
                try {
                    httpPost.setEntity(new StringEntity(requestParam));
                } catch (UnsupportedEncodingException e5) {
                    e5.printStackTrace();
                }
                try {
                    HttpResponse execute = defaultHttpClient.execute(httpPost);
                    if (execute.getStatusLine().getStatusCode() == 200) {
                        String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
                        onRequestSuccess(entityUtils);
                        return entityUtils;
                    }
                    onRequestError("");
                    return "";
                } catch (Exception e6) {
                    e6.printStackTrace();
                    return "";
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(String str) {
                try {
                    if (!TextUtils.isEmpty(str)) {
                        EmuActivity_psp.this.vipBeans.clear();
                    }
                    JSONArray jSONArray = new MyJson(str).getJSONObject("messages").getJSONArray("data");
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject = (JSONObject) jSONArray.get(i2);
                        VipBean vipBean = new VipBean();
                        JSONObject jSONObject2 = (JSONObject) jSONObject.get("main");
                        vipBean.setMain(new MainBean(jSONObject2.getString("title"), jSONObject2.getString("label"), jSONObject2.getString("pic_remote"), jSONObject2.getString("title_type"), jSONObject2.getString("sub_title"), jSONObject2.getInt("ad_switch")));
                        JSONObject jSONObject3 = (JSONObject) ((JSONArray) jSONObject.get("sub")).get(0);
                        vipBean.setSub(new SubBean(jSONObject3.getString("link_type"), jSONObject3.getString("link_type_val"), jSONObject3.getString("crc_link_type_val"), jSONObject3.getString("jump_type"), jSONObject3.getString("is_more"), jSONObject3.getString("tpl_type")));
                        EmuActivity_psp.this.vipBeans.add(vipBean);
                    }
                } catch (JSONException e5) {
                    e5.printStackTrace();
                }
                try {
                    if (EmuActivity_psp.this.isDestroyed) {
                        return;
                    }
                    for (int i4 = 0; i4 < EmuActivity_psp.this.vipBeans.size(); i4++) {
                        EmuActivity_psp emuActivity_psp = EmuActivity_psp.this;
                        EmuActivity_psp.download(emuActivity_psp, emuActivity_psp.vipBeans.get(i4).getMain().getPic_remote());
                    }
                    EmuActivity_psp emuActivity_psp2 = EmuActivity_psp.this;
                    SettingVipDialog settingVipDialog = emuActivity_psp2.vipDialog;
                    if (settingVipDialog != null) {
                        settingVipDialog.updateVipDatas(emuActivity_psp2.vipBeans);
                    }
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
            }
        }.execute(new String[0]);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void resumeGame() {
        NativeApp.resumeGame();
        this.gameIsPause = false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String romPath() {
        return NativeActivity.romPath;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void saveBindsFileData() {
    }

    void saveDataTransfer() {
        FileUtils.copyFolder(getSDPath() + "/papa91/psp/PSP/SAVEDATA", getSDPath() + "/PSP/SAVEDATA");
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public void saveGameConfig() {
        NativeApp.saveGameConfig();
    }

    @Override // com.papa91.arc.view.IEmulator
    public void saveSlotState(String str) {
        SettingSlotDialog settingSlotDialog = this.slotDialog;
        if (settingSlotDialog != null) {
            settingSlotDialog.dismiss();
        }
        NativeApp.saveState(str);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void screenMode(int i2) {
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setAutoSlotStatus(int i2) {
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setSPBindData(int i2, int i4, int i5) {
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setSPMenuVisible(boolean z3) {
    }

    void showAdCountDown() {
        if (NativeActivity.m_VIP <= 0 && NativeActivity.pspAdShowTimeSwitch != 0) {
            this.menuView.setTime(0L);
            long j4 = (NativeActivity.pspAdShowTime * 1000) + 1000;
            String adGamesConfig = this.pref.getAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID);
            if (!TextUtils.isEmpty(adGamesConfig)) {
                long lastTime = this.pref.getLastTime(adGamesConfig);
                boolean skipAd = this.pref.getSkipAd(adGamesConfig);
                try {
                    if (new JSONObject(adGamesConfig).has("remainTime") && DateUtils.isToday(lastTime)) {
                        j4 = this.pref.getRemainTime(adGamesConfig);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                if (skipAd && DateUtils.isToday(lastTime)) {
                    hideAdCountDown();
                    return;
                }
                this.pref.setAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID, j4, false);
            }
            if (j4 / 1000 <= 1) {
                hideAdCountDown();
                showTimeLimitedDialog2();
                return;
            }
            this.isHideAdTimeView = false;
            this.menuView.showTimer();
            this.menuView.startTimer(j4);
            return;
        }
        hideAdCountDown();
    }

    @Override // com.papa91.arc.view.IEmulator
    public void showAdVideo() {
        CContext.IVideoAdListener iVideoAdListener;
        if (getVip() > 0 || (iVideoAdListener = CContext.mVideoAdListener) == null) {
            return;
        }
        iVideoAdListener.showAd(this, NativeActivity.GameID, CContext.SCENE_PSP);
    }

    public void showAdView() {
        runOnUiThread(new Runnable() { // from class: com.papa91.arc.c
            @Override // java.lang.Runnable
            public final void run() {
                EmuActivity_psp.this.lambda$showAdView$0();
            }
        });
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean showGGCodeButton() {
        return false;
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuCheating() {
        StatIntents.getInstance(getContext()).statOnclickFunction(NativeActivity.GameID, NativeActivity.UserID, 0);
        NativeApp.loadPspDBCheat();
        if (this.cheatDialog == null) {
            this.cheatDialog = new SettingCheatDialog(this);
        }
        this.cheatDialog.setOnEmulatorListener(this);
        if (!this.cheatDialog.isShowing()) {
            this.cheatDialog.show();
        }
        if (this.vipBeans.size() == 0) {
            restoreVipData();
            return;
        }
        for (int i2 = 0; i2 < this.vipBeans.size(); i2++) {
            if (TextUtils.isEmpty(this.vipBeans.get(i2).getMain().getPic_remote())) {
                restoreVipData();
                return;
            }
        }
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuGate() {
        StatIntents.getInstance(getContext()).statOnclickFunction(NativeActivity.GameID, NativeActivity.UserID, 4);
        if (this.gateDialog == null) {
            this.gateDialog = new SettingGateDialog(this);
        }
        this.gateDialog.setOnEmulatorListener(this);
        if (this.gateDialog.isShowing()) {
            return;
        }
        this.gateDialog.show();
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuPerformance() {
        initTotalLevel();
        if (this.performanceDialog == null) {
            this.performanceDialog = new SettingPerformanceDialog(this);
        }
        this.performanceDialog.setOnEmulatorListener(this);
        SettingPerformanceDialog settingPerformanceDialog = this.performanceDialog;
        String[] strArr = new String[2];
        strArr[0] = GameSettings.getGameSettingTotalLevel() + "";
        StringBuilder sb = new StringBuilder();
        sb.append(lastWindow == 2 ? 1 : 0);
        sb.append("");
        strArr[1] = sb.toString();
        settingPerformanceDialog.show(strArr);
        this.performanceDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.papa91.arc.EmuActivity_psp.7
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (EmuActivity_psp.lastWindow != 2 || ((NativeActivity) EmuActivity_psp.this).menuView == null) {
                    return;
                }
                ((NativeActivity) EmuActivity_psp.this).menuView.hide();
            }
        });
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuSlot() {
        StatIntents.getInstance(getContext()).statOnclickFunction(NativeActivity.GameID, NativeActivity.UserID, 5);
        if (this.slotDialog == null) {
            this.slotDialog = new SettingSlotDialog(this);
        }
        this.slotDialog.setappContentUrl(this.appContent);
        this.slotDialog.setOnEmulatorListener(this);
        if (!this.slotDialog.isShowing()) {
            this.slotDialog.show();
        }
        if (this.vipBeans.size() == 0) {
            restoreVipData();
            return;
        }
        for (int i2 = 0; i2 < this.vipBeans.size(); i2++) {
            if (TextUtils.isEmpty(this.vipBeans.get(i2).getMain().getPic_remote())) {
                restoreVipData();
                return;
            }
        }
    }

    void showNetworkFailed() {
        if (this.timeLimitedNetworkFailedDialog == null) {
            GameTimeLimitedNetworkFailedDialog gameTimeLimitedNetworkFailedDialog = new GameTimeLimitedNetworkFailedDialog(this);
            this.timeLimitedNetworkFailedDialog = gameTimeLimitedNetworkFailedDialog;
            gameTimeLimitedNetworkFailedDialog.setOnTimeLimitedListener(new GameTimeLimitedNetworkFailedDialog.OnTimeLimitedListener() { // from class: com.papa91.arc.EmuActivity_psp.20
                @Override // com.papa91.arc.view.GameTimeLimitedNetworkFailedDialog.OnTimeLimitedListener
                public void onBuyVip() {
                }

                @Override // com.papa91.arc.view.GameTimeLimitedNetworkFailedDialog.OnTimeLimitedListener
                public void onExit() {
                    EmuActivity_psp.this.finish();
                }
            });
        }
        if (this.timeLimitedNetworkFailedDialog.isShowing()) {
            return;
        }
        this.timeLimitedNetworkFailedDialog.show();
        ToastUtil.show(this, "请联网继续游戏！");
    }

    public void showShare(final String str) {
        if (this.shareDialog == null) {
            this.shareDialog = new SettingShareDialog(this);
        }
        this.shareDialog.setOnEmulatorListener(this);
        this.shareDialog.setIamge(str);
        this.shareDialog.setShareListener(new SettingShareDialog.IShareListener() { // from class: com.papa91.arc.EmuActivity_psp.22
            @Override // com.papa91.arc.dialog.SettingShareDialog.IShareListener
            public void onShare(int i2) {
                Intent intent = new Intent(f1.a.f65487l0);
                intent.putExtra(CommonService_.b0.f51756b, str);
                intent.putExtra("from", i2);
                EmuActivity_psp.send(intent);
                EmuActivity_psp.this.shareDialog.dismiss();
            }
        });
        if (this.shareDialog.isShowing()) {
            return;
        }
        this.shareDialog.show();
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void showTimeLimitedDialog1() {
        initTimeLimitedDialog();
        String adGamesConfig = this.pref.getAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID);
        if (TextUtils.isEmpty(adGamesConfig)) {
            return;
        }
        if (this.pref.getRemainTime(adGamesConfig) > 0) {
            this.timeLimitedDialog.show1();
        } else {
            this.timeLimitedDialog.show2();
        }
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void showTimeLimitedDialog2() {
        this.showTimeLimitedDialog2 = true;
        GameTimeLimitedDialog gameTimeLimitedDialog = this.timeLimitedDialog;
        if (gameTimeLimitedDialog != null && gameTimeLimitedDialog.isShowing()) {
            this.timeLimitedDialog.dismiss();
        }
        if (!isNetworkConnected()) {
            showNetworkFailed();
        } else {
            startVideo();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void showVip(String... strArr) {
        if (this.vipDialog == null) {
            this.vipDialog = new SettingVipDialog(this);
        }
        if (this.vipBeans.size() > 0) {
            this.vipDialog.updateVipDatas(this.vipBeans);
        } else {
            restoreVipData();
        }
        this.vipDialog.show(strArr);
    }

    public void showVipTip(int i2, int i4) {
        SharedPreferences sharedPreferences = this.sp;
        if (sharedPreferences.getBoolean(NativeActivity.GameID + "_" + i2 + "_" + i4, true)) {
            StatIntents.getInstance(getContext()).statShowVippopup(NativeActivity.GameID, NativeActivity.UserID, i2);
            if (this.vipTipDialog == null) {
                this.vipTipDialog = new SettingVipTipDialog(this);
            }
            this.vipTipDialog.setOnEmulatorListener(this);
            this.vipTipDialog.setNoTipListener(new SettingVipTipDialog.INoTipListener() { // from class: com.papa91.arc.EmuActivity_psp.23
                @Override // com.papa91.arc.dialog.SettingVipTipDialog.INoTipListener
                public void onNoTipClick(int i5, int i6) {
                    SharedPreferences.Editor edit = EmuActivity_psp.this.sp.edit();
                    edit.putBoolean(NativeActivity.GameID + "_" + i5, false).commit();
                }
            });
            this.vipTipDialog.show(i2, i4);
        }
    }

    public void startTimer() {
        TimerTask timerTask;
        if (this.timer == null) {
            this.timer = new Timer();
        }
        if (this.timerTask == null) {
            this.timerTask = new TimerTask() { // from class: com.papa91.arc.EmuActivity_psp.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (EmuActivity_psp.this.isDestroyed) {
                        return;
                    }
                    EmuActivity_psp.this.getAutoStateTimeCount();
                }
            };
        }
        Timer timer = this.timer;
        if (timer == null || (timerTask = this.timerTask) == null) {
            return;
        }
        timer.schedule(timerTask, 0L, 1000L);
    }

    void stateTransfer() {
        String ugcPath = getUgcPath();
        String substring = ugcPath.substring(ugcPath.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
        stateTransfer(ugcPath.substring(0, ugcPath.lastIndexOf(net.lingala.zip4j.util.e.F0)), substring);
        if (hasExternalPermission()) {
            StringBuilder sb = new StringBuilder();
            sb.append("async cfg(oldVersion) src=");
            sb.append(SDCardUtil.getExternalStorageDirectory());
            sb.append("/papa91/psp/");
            sb.append(substring);
            sb.append(", dst=");
            sb.append(SDCardUtil.getExternalStorageDirectory(this));
            sb.append("/papa91/psp/");
            sb.append(substring);
            FileUtils.copyFolder(SDCardUtil.getExternalStorageDirectory() + "/papa91/psp/" + substring, SDCardUtil.getExternalStorageDirectory(this) + "/papa91/psp/" + substring);
        }
    }

    public void stopTimer() {
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
            this.timer = null;
        }
        TimerTask timerTask = this.timerTask;
        if (timerTask != null) {
            timerTask.cancel();
            this.timerTask = null;
        }
    }

    void syncState() {
        new AsyncTask() { // from class: com.papa91.arc.EmuActivity_psp.12
            @Override // android.os.AsyncTask
            protected Object doInBackground(Object[] objArr) {
                try {
                    if (!new File(EmuActivity_psp.this.getUgcPath()).getParentFile().exists()) {
                        String str = "";
                        if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(EmuActivity_psp.this.getApplicationContext(), "android.permission.READ_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(EmuActivity_psp.this.getApplicationContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                            if (!TextUtils.isEmpty(NativeActivity.romPath)) {
                                String str2 = NativeActivity.romPath;
                                str = SDCardUtil.getExternalStorageDirectory() + "/papa91/psp/" + str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                            }
                            FileUtils.copyFolder(str, new File(EmuActivity_psp.this.getUgcPath()).getParentFile().getAbsolutePath());
                        } else if (Environment.getExternalStorageState().equals("mounted")) {
                            if (!TextUtils.isEmpty(NativeActivity.romPath)) {
                                String str3 = NativeActivity.romPath;
                                str = SDCardUtil.getExternalStorageDirectory() + "/papa91/psp/" + str3.substring(str3.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                            }
                            FileUtils.copyFolder(str, new File(EmuActivity_psp.this.getUgcPath()).getParentFile().getAbsolutePath());
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                FileUtils.copyFolder(new File(EmuActivity_psp.this.getUgcPath()).getParentFile().getAbsolutePath(), new File(EmuActivity_psp.this.getUgcPathInternal()).getParentFile().getAbsolutePath());
                FileUtils.copyFolder(new File(EmuActivity_psp.this.getUgcPathInternal()).getParentFile().getAbsolutePath(), new File(EmuActivity_psp.this.getUgcPath()).getParentFile().getAbsolutePath());
                return null;
            }
        }.execute(new Object[0]);
    }

    @Override // com.papa91.arc.view.IEmulator
    public String ugcPath() {
        return getUgcPath();
    }

    void unbindBridge() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        try {
            ServiceConnection serviceConnection = mServiceConnection;
            if (serviceConnection != null) {
                context.unbindService(serviceConnection);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void unregisterAdReceiver() {
        unregisterReceiver(this.adResultReceiver);
    }

    void unregisterLogin() {
        unregisterReceiver(this.loginReceiver);
    }

    void unregisterMyReceiver() {
        try {
            MyReceiver myReceiver = this.myReceiver;
            if (myReceiver != null) {
                unregisterReceiver(myReceiver);
            }
            NetWorkReceiver netWorkReceiver = this.netWorkReceiver;
            if (netWorkReceiver != null) {
                unregisterReceiver(netWorkReceiver);
            }
        } catch (Exception unused) {
        }
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void vibrate(boolean z3) {
        NativeApp.enableHapticFeedback(z3);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void voice(boolean z3) {
        NativeApp.enableSound(z3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x012f, code lost:
        if (r1.getInt(org.ppsspp.ppsspp.NativeActivity.GameID + "_start_time", new java.util.Date().getDay()) != new java.util.Date().getDay()) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void showVipTip() {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa91.arc.EmuActivity_psp.showVipTip():void");
    }

    void stateTransfer(String str, String str2) {
        String str3 = getSDPath() + "/PSP/PPSSPP_STATE/";
        File file = new File(str3);
        if (file.exists()) {
            List<File> asList = Arrays.asList(file.listFiles(getOStateFilter(str2)));
            Pattern compile = Pattern.compile(".+_([0-9]+)\\.ppst$");
            for (File file2 : asList) {
                Matcher matcher = compile.matcher(file2.getAbsolutePath());
                if (matcher.find()) {
                    String group = matcher.group(1);
                    StringBuilder sb = new StringBuilder();
                    sb.append("state index is: ");
                    sb.append(group);
                    try {
                        if (!TextUtils.isEmpty(group)) {
                            int parseInt = Integer.parseInt(group);
                            String str4 = str3 + str2 + "_" + parseInt + ".ppst";
                            String str5 = str + net.lingala.zip4j.util.e.F0 + str2 + g0.f27568a + parseInt;
                            if (new File(str5).lastModified() != new File(str4).lastModified()) {
                                renameFile(str4, str5);
                                renameFile(str3 + str2 + "_" + parseInt + ".jpg", str + net.lingala.zip4j.util.e.F0 + str2 + g0.f27568a + parseInt + ".png");
                            }
                        }
                    } catch (NumberFormatException e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    private void goVipShop(int i2) {
        SubBean sub;
        if (this.vipBeans.size() > 0) {
            if (i2 >= this.vipBeans.size() || (sub = this.vipBeans.get(i2).getSub()) == null) {
                return;
            }
            Context context = getContext();
            String link_type = sub.getLink_type();
            String jump_type = sub.getJump_type();
            MarketUtil.intent(context, link_type, jump_type, sub.getLink_type_val() + "&gameId=" + NativeActivity.GameID, sub.getCrc_link_type_val(), sub.getTpl_type());
        } else if (i2 == 0) {
            Context context2 = getContext();
            MarketUtil.intent(context2, "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=2&gameName=一键技能&returnStatus=1&gameId=" + NativeActivity.GameID, "2489914047", "");
        } else if (i2 == 1) {
            Context context3 = getContext();
            MarketUtil.intent(context3, "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=1&gameName=金手指&returnStatus=1&gameId=" + NativeActivity.GameID, "1778130821", "");
        } else if (i2 == 2) {
            Context context4 = getContext();
            MarketUtil.intent(context4, "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=3&gameName=更多存档&returnStatus=1&gameId=" + NativeActivity.GameID, "3505974813", "");
        } else if (i2 == 3) {
            Context context5 = getContext();
            MarketUtil.intent(context5, "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=5&gameName=快速选关&returnStatus=1&gameId=" + NativeActivity.GameID, "461784020", "");
        } else if (i2 != 4) {
        } else {
            Context context6 = getContext();
            MarketUtil.intent(context6, "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=4&gameName=对战畅玩&returnStatus=1&gameId=" + NativeActivity.GameID, "685248020", "");
        }
    }
}
