package com.papa91.arc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.Toast;
import androidx.core.view.MotionEventCompat;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.join.mgps.Util.g0;
import com.join.mgps.activity.GamePaiWeiActivty_;
import com.join.mgps.dialog.DownloadHighSpeedingDialog_;
import com.join.mgps.joystick.a;
import com.join.mgps.joystick.map.KeyMap;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.activity.EmuMenuBaseActivity;
import com.papa91.arc.CContext;
import com.papa91.arc.bean.GateBean;
import com.papa91.arc.bean.PaiWeiDataBean;
import com.papa91.arc.bean.TypeBean;
import com.papa91.arc.util.SDCardUtil;
import com.papa91.arc.util.XZip;
import com.papa91.arcapp.AppConfig_fba;
import com.papa91.common.BaseAppConfig;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONArray;
import org.json.JSONException;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class EmuActivity_fba extends EmuMenuBaseActivity implements a.d, Runnable {
    public static String AD_APP_KEY = "1105599035";
    public static String APP_KEY = "CvjvU1occ4UCTVEe";
    public static String BUGLY_ID = "900009495";
    private static final boolean IS_USER_V1 = false;
    public static final boolean SINGLE_MODE = false;
    private static EmuActivity_fba emuActivity;
    private static Vibrator vibrtor;
    private String core;
    private String jsonData;
    private int roomSilent;
    ShareResultReceiver shareResultReceiver;
    private Socket socket;
    public static String cpuFreq = getCurCpuFreq(1);
    public static String cpuNum = "" + Runtime.getRuntime().availableProcessors();
    private static String recordfn = "";
    public static String coreName = "FBA_V2";
    int firstKey = 0;
    private Thread thread = null;

    /* loaded from: classes4.dex */
    public class ShareResultReceiver extends BroadcastReceiver {
        public ShareResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            intent.getIntExtra("shareResult", 1);
        }
    }

    public static void complainPlayer(String str, int i2, int i4) {
        EmuBaseActivity.complain(i2, i4);
    }

    public static void copyFolder(String str, String str2) {
        File file;
        try {
            new File(str2).mkdirs();
            File file2 = new File(str);
            File file3 = new File(str2);
            if (file2.isDirectory() && !file3.exists()) {
                file3.mkdirs();
            }
            String[] list = file2.list();
            for (int i2 = 0; i2 < list.length; i2++) {
                String str3 = File.separator;
                if (str.endsWith(str3)) {
                    file = new File(str + list[i2]);
                } else {
                    file = new File(str + str3 + list[i2]);
                }
                if (file.isFile()) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    FileOutputStream fileOutputStream = new FileOutputStream(str2 + net.lingala.zip4j.util.e.F0 + file.getName().toString());
                    byte[] bArr = new byte[5120];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    fileInputStream.close();
                }
                if (file.isDirectory()) {
                    copyFolder(str + net.lingala.zip4j.util.e.F0 + list[i2], str2);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void delayStatistics(String str) {
        try {
            AppConfig_fba.logD(str);
            EmuBaseActivity.netBattleMatchEfficiency(EmuBaseActivity.GameID, str, EmuBaseActivity.UserID);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ba, code lost:
        com.papa91.activity.EmuBaseActivity.createDir(r0 + "/mgpapa/aidlservice/Game_startBattle15_" + com.papa91.activity.EmuBaseActivity.GameID + "_" + com.papa91.activity.EmuBaseActivity.UserID);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void exitActivty(int r6) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa91.arc.EmuActivity_fba.exitActivty(int):void");
    }

    public static String getCurCpuFreq(int i2) {
        String str;
        byte[] bArr;
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            str = "";
            while (inputStream.read(new byte[24]) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
        } catch (IOException e4) {
            e4.printStackTrace();
            str = "N/A";
        }
        return str.trim();
    }

    private String getGateZipPath(String str) {
        if (TextUtils.isEmpty(getModSubfix())) {
            return romPath().substring(0, romPath().lastIndexOf(net.lingala.zip4j.util.e.F0)) + "/combine_stage" + str;
        }
        return romPath().substring(0, romPath().lastIndexOf(net.lingala.zip4j.util.e.F0)) + "/combine_stage" + getModSubfix() + str;
    }

    public static String getRecordInfo(String str) {
        String str2;
        if (coreName.equals("FBA_V2")) {
            str2 = "_v2";
        } else {
            str2 = coreName.equals("FBA_V3") ? "_v3" : "";
        }
        return EmuBaseActivity.getRecordInfo(str + str2);
    }

    private static void openUrl() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://h5.5fun.com/sp_jiesuo.html"));
        emuActivity.startActivity(intent);
    }

    public static void playerVibrtor() {
        vibrtor.vibrate(50L);
    }

    public static void saveConfig(String str, String str2) {
        SharedPreferences.Editor edit = Cocos2dxActivity.getContext().getSharedPreferences("core", 4).edit();
        edit.putString(str, String.valueOf(str2));
        edit.commit();
    }

    static void setBlueTooth() {
        com.join.mgps.joystick.a.g().v();
    }

    public static boolean setImageToMEDIA(String str) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(new File(str)));
        EmuBaseActivity.send(intent);
        return true;
    }

    public static void startForumsActivity() {
        EmuBaseActivity.sendHandleMessage(new Message());
    }

    public static void startShare(String str) {
        Intent intent = new Intent("papa_broadcast_share_message");
        intent.putExtra("shareJson", str);
        EmuBaseActivity.send(intent);
    }

    public void createRom() {
        String str = "{\"romPath\":\"" + EmuBaseActivity.assetsPath + "/rom/kof97\",\"startMode\":0,\"userID\":\"2000\",\"gameID\":\"509474702\",\"version\":\"2\",\"roomID\":\"10000\",\"sopath\":\"" + (getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0) + "\",\"assetspath\":\"" + EmuBaseActivity.assetsPath + "\",\"classname\":\"com/papa91/arc/EmuActivity_fba\",\"serverIP\":\"121.201.0.114 \",\"serverPort\":\"5369\",\"porder\":0}";
        if (str != null) {
            EmuBaseActivity.setJson(str);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean dispatchKeyEvent;
        boolean p3;
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 24 && keyCode != 25) {
            if (this.firstKey == keyCode && keyEvent.getAction() == 1) {
                if (keyCode == 4) {
                    EmuBaseActivity.showDailog(0);
                }
                dispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
                p3 = !com.join.mgps.joystick.a.g().p(keyEvent);
            } else {
                this.firstKey = keyCode;
                dispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
                p3 = com.join.mgps.joystick.a.g().p(keyEvent);
            }
            return p3 | dispatchKeyEvent;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    String getCore(String str) {
        if (TextUtils.isEmpty(this.core) || !this.core.equals("3")) {
            String str2 = EmuBaseActivity.netState;
            if (str2 != "") {
                return str2.contains("_v2") ? "FBA_V2" : CContext.SCENE_FBA;
            }
            int i2 = EmuBaseActivity.startMode;
            if (i2 == 15) {
                return recordfn.indexOf("_v2") == -1 ? CContext.SCENE_FBA : "FBA_V2";
            } else if (i2 != 0 || this.roomSilent != 0) {
                return 14 == i2 ? "FBA_V2" : CContext.SCENE_FBA;
            } else {
                String substring = str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1, str.length());
                EmuBaseActivity.romName = substring;
                if (AppConfig_fba.isPgmGame(substring)) {
                    String str3 = BaseAppConfig.APP_PATH + EmuBaseActivity.romName + net.lingala.zip4j.util.e.F0 + EmuBaseActivity.romName;
                    for (int i4 = 0; i4 <= 100; i4++) {
                        if (new File(str3 + g0.f27568a + i4).exists()) {
                            return CContext.SCENE_FBA;
                        }
                    }
                }
                return "FBA_V2";
            }
        }
        return "FBA_V3";
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public List<GateBean> getGateData() {
        String[] list;
        ArrayList arrayList = new ArrayList();
        try {
            if (isShowGate()) {
                File file = new File(getGateZipPath(""));
                if (!file.exists() || file.list().length <= 0) {
                    XZip.upZipFile(new File(getGateZipPath(".zip")), getGateZipPath(""));
                }
                for (String str : file.list(new FilenameFilter() { // from class: com.papa91.arc.EmuActivity_fba.2
                    @Override // java.io.FilenameFilter
                    public boolean accept(File file2, String str2) {
                        return str2.endsWith(".jpg");
                    }
                })) {
                    GateBean gateBean = new GateBean();
                    gateBean.setGateMaskPath(getGateZipPath("") + net.lingala.zip4j.util.e.F0 + str);
                    gateBean.setGateName(str.substring(0, str.length() + (-4)));
                    gateBean.setGateIndex(Integer.parseInt(gateBean.getGateName().substring(gateBean.getGateName().lastIndexOf(g0.f27568a) + 1)));
                    arrayList.add(gateBean);
                }
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        Collections.sort(arrayList, new Comparator<GateBean>() { // from class: com.papa91.arc.EmuActivity_fba.3
            @Override // java.util.Comparator
            public int compare(GateBean gateBean2, GateBean gateBean3) {
                if (gateBean2.getGateIndex() > gateBean3.getGateIndex()) {
                    return 1;
                }
                return gateBean2.getGateIndex() < gateBean3.getGateIndex() ? -1 : 0;
            }
        });
        return arrayList;
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public List<TypeBean> getMenuTypes(int i2) {
        ArrayList arrayList = new ArrayList();
        if (i2 == 0) {
            int i4 = R.drawable.ic_cheat_vip;
            arrayList.add(new TypeBean(0, "悟饭定制", true, i4, i4));
        } else if (i2 == 1) {
            arrayList.add(new TypeBean(0, "我的存档", true, -1, -1));
            arrayList.add(new TypeBean(1, "自动存档", false, -1, -1));
            arrayList.add(new TypeBean(2, "存档商店", false, R.drawable.ic_slot_store_h, R.drawable.ic_slot_store_n));
        }
        return arrayList;
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public String getModSubfix() {
        return coreName.equals("FBA_V2") ? "_v2" : coreName.equals("FBA_V3") ? "_v3" : "";
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity
    public String getSimulatorType() {
        return "fba";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity
    public void handleAdResult(Context context, Intent intent) {
        super.handleAdResult(context, intent);
        int intExtra = intent.getIntExtra(DownloadHighSpeedingDialog_.a.f47372b, 1003);
        if (intExtra == 1003) {
            pauseGame();
        } else if (intExtra == 1004) {
            resumeGame();
        }
    }

    @Override // com.papa91.activity.EmuBaseActivity
    public void hideMenuDialog() {
        super.hideMenuDialog();
        closeDialogWithOut(null);
        gameOnResume();
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.MenuViewListener
    public boolean isShowGate() {
        if (isRankGame()) {
            return false;
        }
        try {
            return new File(getGateZipPath(".zip")).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public void loadAdVideo() {
        CContext.IVideoAdListener iVideoAdListener;
        if (getVip() > 0 || (iVideoAdListener = CContext.mVideoAdListener) == null) {
            return;
        }
        iVideoAdListener.loadAd(this, CContext.SCENE_FBA);
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public void loadGateStage(int i2) {
        EmuBaseActivity.loadStageData(i2);
    }

    public void loadRom() {
        EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_fba.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, CContext.SCENE_FBA});
        createRom();
        BaseAppConfig.ROM_PATH = EmuBaseActivity.assetsPath + "/rom/kof97";
        String name = new File(BaseAppConfig.ROM_PATH).getName();
        BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
        EmuBaseActivity.initEmu();
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void loginFinish() {
        try {
            EmuBaseActivity.onLoginFinish();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        MyJson myJson;
        String string;
        String stringExtra;
        StringBuilder sb = new StringBuilder();
        sb.append(getDir("jniLibs", 0).getAbsolutePath());
        sb.append(net.lingala.zip4j.util.e.F0);
        String externalStorageDirectory = SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(externalStorageDirectory);
        sb2.append("/1/so");
        EmuBaseActivity.assetsPath = externalStorageDirectory + "/1/assets/";
        setVolumeControlStream(3);
        emuActivity = this;
        CrashReport.initCrashReport(getApplicationContext(), BUGLY_ID, false);
        vibrtor = (Vibrator) getSystemService("vibrator");
        Intent intent = getIntent();
        if (intent != null && (stringExtra = intent.getStringExtra(BaseAppConfig.KEY_ROM_PATH)) != null && stringExtra != "") {
            EmuBaseActivity.romPath = stringExtra;
            AppConfig_fba.logD("json ........................... rompath : " + EmuBaseActivity.romPath);
        }
        AppConfig_fba.initialise(this);
        updateConfig();
        String stringExtra2 = intent.getStringExtra("jsonData");
        if (bundle != null) {
            String str = EmuBaseActivity.romPath;
            if (str == null || "".equals(str)) {
                EmuBaseActivity.romPath = bundle.getString(BaseAppConfig.KEY_ROM_PATH);
            }
            if (stringExtra2 == null || "".equals(stringExtra2)) {
                stringExtra2 = bundle.getString("jsonData");
            }
        }
        if (stringExtra2 != null) {
            this.jsonData = stringExtra2;
            try {
                myJson = new MyJson(stringExtra2);
            } catch (JSONException e4) {
                e4.printStackTrace();
                myJson = null;
            }
            if (myJson != null) {
                EmuBaseActivity.appPackName = myJson.getString(BaseAppConfig.PA_PACKAGE_NAME, EmuBaseActivity.appPackName);
                EmuBaseActivity.startMode = myJson.getInt("startMode", 0);
                String string2 = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "");
                EmuBaseActivity.romPath = string2;
                BaseAppConfig.ROM_PATH = string2;
                String name = new File(EmuBaseActivity.romPath).getName();
                BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
                EmuBaseActivity.soPath = myJson.getString(BaseAppConfig.KEY_SO_PATH, "");
                EmuBaseActivity.assetsPath = myJson.getString(BaseAppConfig.KEY_ASSETS_PATH, "");
                String string3 = myJson.getString(BaseAppConfig.KEY_ACTIVITY_NAME, "");
                EmuBaseActivity.className = string3;
                EmuBaseActivity.className = string3.replace(g0.f27568a, net.lingala.zip4j.util.e.F0);
                EmuBaseActivity.UserID = myJson.getString(BaseAppConfig.KEY_START_USERID, "");
                EmuBaseActivity.GameID = myJson.getString(BaseAppConfig.KEY_START_GAMEID, "");
                EmuBaseActivity.fid = myJson.getInt(BaseAppConfig.KEY_START_FID, 0);
                EmuBaseActivity.RoomID = myJson.getString(BaseAppConfig.KEY_START_ROOMID, "");
                EmuBaseActivity.GroupID = myJson.getString(BaseAppConfig.KEY_START_GROUPID, "");
                EmuBaseActivity.Version = myJson.getString("version", "");
                EmuBaseActivity.server_ip = myJson.getString(BaseAppConfig.KEY_SERVER_IP, "");
                EmuBaseActivity.server_port = myJson.getString(BaseAppConfig.KEY_SERVER_PORT, "");
                BaseAppConfig.curPlayer = myJson.getInt(BaseAppConfig.KEY_START_PORDER, 0);
                EmuBaseActivity.token = myJson.getString("token", "0");
                this.core = myJson.getString("core", "");
                EmuBaseActivity.spLock = myJson.getInt(BaseAppConfig.KEY_SP_LOCK, 0);
                this.m_SVIP = myJson.getInt(BaseAppConfig.KEY_SVIP_LEVEL, 0);
                this.m_VIP = myJson.getInt(BaseAppConfig.KEY_VIP_LEVEL, 0);
                this.roomSilent = myJson.getInt("", 0);
                EmuBaseActivity.netState = myJson.getString(BaseAppConfig.KEY_NET_STATE, "");
                this.allowPeripheralJoin = myJson.getBoolean("allowPeripheralJoin", Boolean.TRUE).booleanValue();
                this.miniRankTime = myJson.getInt("rankMiniTime", 0);
                this.rankAutoUpload = myJson.getInt(GamePaiWeiActivty_.L0, 0);
                try {
                    if (!isRankAutoUpload() && (string = myJson.getString("rolesJson")) != null) {
                        this.rolesBeanList = (List) new Gson().fromJson(string, new TypeToken<List<PaiWeiDataBean.RolesBean>>() { // from class: com.papa91.arc.EmuActivity_fba.1
                        }.getType());
                    }
                } catch (JSONException e5) {
                    e5.printStackTrace();
                }
                setMenuViewListener();
                JSONArray jSONArray = myJson.getJSONArray(BaseAppConfig.AD_JSON_KEY, null);
                if (jSONArray != null) {
                    initBanner(jSONArray, AD_APP_KEY);
                }
                try {
                    myJson.put(com.alipay.sdk.packet.d.f9795p, EmuBaseActivity.getPhoneInfo());
                } catch (JSONException e6) {
                    e6.printStackTrace();
                }
                if (EmuBaseActivity.startMode == 15) {
                    recordfn = myJson.getString(BaseAppConfig.KEY_NET_STATE, "");
                }
            }
            CrashReport.setUserId(EmuBaseActivity.GameID);
            AppConfig_fba.logE("...................KEY_START_FID : " + String.valueOf(EmuBaseActivity.fid));
            asyncConfig();
            onLoadNativeLibraries();
            coreName = getCore(EmuBaseActivity.romPath);
            AppConfig_fba.logE("getCore " + coreName);
            EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "version", "cpuNum", "cpuFreq", BaseAppConfig.KEY_SP_LOCK, "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_fba.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, EmuBaseActivity.version, cpuNum, cpuFreq, EmuBaseActivity.spLock + "", coreName});
            try {
                myJson.put("startMode", EmuBaseActivity.startMode);
                myJson.put(BaseAppConfig.KEY_APK_PATH, BaseAppConfig.APK_PATH);
                myJson.put(BaseAppConfig.KEY_CLASS_NAME, EmuBaseActivity.className);
            } catch (JSONException e7) {
                e7.printStackTrace();
            }
            EmuBaseActivity.setJson(dealSDPath(myJson.toString(), BaseAppConfig.APP_PATH));
            EmuBaseActivity.initEmu();
        } else {
            EmuBaseActivity.soPath = getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0;
            onLoadNativeLibraries();
            loadRom();
        }
        super.onCreate(bundle);
        if (this.allowPeripheralJoin) {
            com.join.mgps.joystick.a.g().w(this, KeyMap.EmuMap.FBA);
            com.join.mgps.joystick.a.g().y(this);
        }
        this.shareResultReceiver = new ShareResultReceiver();
        registerReceiver(this.shareResultReceiver, new IntentFilter("com.emu.share.result"));
        onAfterActivityCreated(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.joystick.a.g().F();
        super.onDestroy();
        EmuBaseActivity.exitEmu();
        ShareResultReceiver shareResultReceiver = this.shareResultReceiver;
        if (shareResultReceiver != null) {
            unregisterReceiver(shareResultReceiver);
        }
        System.exit(0);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onGenericMotionEvent(int i2, float f4, float f5) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa91.activity.EmuBaseActivity
    public void onHandleEmuExit() {
        super.onHandleEmuExit();
        gameDestroy(this);
    }

    @Override // com.papa91.activity.EmuBaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            AppConfig_fba.IsXperiaPlay();
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onKeyMap(int[] iArr, com.join.mgps.joystick.map.c cVar, KeyEvent keyEvent) {
        if (this.allowPeripheralJoin) {
            EmuBaseActivity.setJoyStickKey(iArr);
        }
    }

    @Override // com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        gamePause(this);
    }

    @Override // com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        gameResume(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putString("jsonData", this.jsonData);
        bundle.putString(BaseAppConfig.KEY_ROM_PATH, EmuBaseActivity.romPath);
        super.onSaveInstanceState(bundle);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onVirtualKeyboard(boolean z3) {
        boolean z4 = this.allowPeripheralJoin;
        if (z3) {
            EmuBaseActivity.setPadVisible(0, z4 ? 1 : 0);
        } else {
            EmuBaseActivity.setPadVisible(1, z4 ? 1 : 0);
        }
    }

    public byte[] readBytes(byte[] bArr, InputStream inputStream) throws IOException {
        int i2 = 0;
        while (i2 < bArr.length) {
            int read = inputStream.read(bArr, i2, bArr.length - i2);
            if (read < 0) {
                throw new IOException();
            }
            i2 += read;
        }
        return bArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        startKeyDemo();
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void setUserStateUi(int i2) {
        EmuBaseActivity.setUserState(i2);
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public void showAdVideo() {
        CContext.IVideoAdListener iVideoAdListener;
        if (getVip() > 0 || (iVideoAdListener = CContext.mVideoAdListener) == null) {
            return;
        }
        iVideoAdListener.showAd(this, EmuBaseActivity.GameID, CContext.SCENE_FBA);
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void showInvitePlayUi(String str, String str2, String str3, long j4) {
        EmuBaseActivity.showInvitePlay(str, str2, str3, j4);
        EmuBaseActivity.sendReceiveInvitation();
        hideMenuDialog();
    }

    protected void startKeyDemo() {
        try {
            this.socket = new Socket("192.168.71.163", 12345);
            byte[] bArr = new byte[4];
            new BufferedReader(new InputStreamReader(this.socket.getInputStream()));
            while (true) {
                bArr = readBytes(bArr, this.socket.getInputStream());
                int i2 = ((bArr[3] << 8) & (-16777216)) | ((bArr[2] << 8) & 16711680) | ((bArr[1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[0] & 255);
                StringBuilder sb = new StringBuilder();
                sb.append("res == ");
                sb.append(i2);
                if (i2 >= 0) {
                    int[] iArr = new int[4];
                    iArr[0] = i2;
                    EmuBaseActivity.setJoyStickKey(iArr);
                }
            }
        } catch (IOException e4) {
            Toast.makeText(this, "连接失败", 1).show();
            e4.printStackTrace();
        }
    }

    protected void testThread() {
        if (this.thread != null) {
            return;
        }
        Thread thread = new Thread(this);
        this.thread = thread;
        thread.start();
    }

    public void updateConfig() {
        SharedPreferences sharedPreferences = getSharedPreferences("core", 4);
        EmuBaseActivity.enableAudio = sharedPreferences.getString(BaseAppConfig.PREF_ENABLE_AUDIO, "1");
        EmuBaseActivity.screenMOde = sharedPreferences.getString(BaseAppConfig.PREF_SCREEN_MODE, "1");
        EmuBaseActivity.vibriorMode = sharedPreferences.getString("vibriorMode", "1");
        EmuBaseActivity.version = sharedPreferences.getString("version", "1.4.0");
    }
}
