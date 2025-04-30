package com.papa91.arc;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.KeyEvent;
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
import com.papa91.arc.util.SDCardUtil;
import com.papa91.arc.util.XZip;
import com.papa91.arcapp.AppConfig_fc;
import com.papa91.common.BaseAppConfig;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class EmuActivity_fc extends EmuMenuBaseActivity implements a.d {
    public static String AD_APP_KEY = "1105704794";
    public static final boolean SINGLE_MODE = false;
    private static String appId = "900010112";
    private static String appKey = "m6eE8CcLThk7FMEg";
    public static String cpuFreq = getCurCpuFreq();
    public static String cpuNum = "" + Runtime.getRuntime().availableProcessors();
    private static EmuActivity_fc emuActivity;
    private static Vibrator vibrtor;
    int firstKey = 0;
    private String jsonData;

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

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00d5, code lost:
        com.papa91.activity.EmuBaseActivity.createDir(r0 + "/mgpapa/aidlservice/Game_startBattle15_" + com.papa91.activity.EmuBaseActivity.GameID + "_" + com.papa91.activity.EmuBaseActivity.UserID);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void exitActivty(int r6) {
        /*
            android.content.Context r0 = org.cocos2dx.lib.Cocos2dxActivity.getContext()     // Catch: java.lang.Exception -> L2c
            java.lang.String r0 = com.papa91.arc.util.SDCardUtil.getExternalStorageDirectory(r0)     // Catch: java.lang.Exception -> L2c
            android.content.Intent r1 = new android.content.Intent     // Catch: java.lang.Exception -> L2c
            java.lang.String r2 = "android.intent.action.MEDIA_MOUNTED"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L2c
            r3.<init>()     // Catch: java.lang.Exception -> L2c
            java.lang.String r4 = "file://"
            r3.append(r4)     // Catch: java.lang.Exception -> L2c
            r3.append(r0)     // Catch: java.lang.Exception -> L2c
            java.lang.String r0 = "papa91/img"
            r3.append(r0)     // Catch: java.lang.Exception -> L2c
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Exception -> L2c
            android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch: java.lang.Exception -> L2c
            r1.<init>(r2, r0)     // Catch: java.lang.Exception -> L2c
            com.papa91.activity.EmuBaseActivity.send(r1)     // Catch: java.lang.Exception -> L2c
        L2c:
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> Lf7
            long r2 = com.papa91.activity.EmuBaseActivity.startTIme     // Catch: java.lang.Exception -> Lf7
            long r0 = r0 - r2
            int r1 = (int) r0     // Catch: java.lang.Exception -> Lf7
            android.content.Context r0 = org.cocos2dx.lib.Cocos2dxActivity.getContext()     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = com.papa91.arc.util.SDCardUtil.getExternalStorageDirectory(r0)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r2 = com.papa91.activity.EmuBaseActivity.GameID     // Catch: java.lang.Exception -> Lf7
            java.lang.String r3 = com.papa91.activity.EmuBaseActivity.UserID     // Catch: java.lang.Exception -> Lf7
            boolean r2 = com.papa91.activity.EmuBaseActivity.gameOut(r2, r1, r3)     // Catch: java.lang.Exception -> Lf7
            com.papa91.activity.EmuBaseActivity.sendGameExit()     // Catch: java.lang.Exception -> Lf7
            java.lang.String r3 = "_"
            if (r2 != 0) goto L72
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lf7
            r4.<init>()     // Catch: java.lang.Exception -> Lf7
            r4.append(r0)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r5 = "/mgpapa/aidlservice/Game_out_"
            r4.append(r5)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r5 = com.papa91.activity.EmuBaseActivity.GameID     // Catch: java.lang.Exception -> Lf7
            r4.append(r5)     // Catch: java.lang.Exception -> Lf7
            r4.append(r3)     // Catch: java.lang.Exception -> Lf7
            r4.append(r1)     // Catch: java.lang.Exception -> Lf7
            r4.append(r3)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r1 = com.papa91.activity.EmuBaseActivity.UserID     // Catch: java.lang.Exception -> Lf7
            r4.append(r1)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Exception -> Lf7
            com.papa91.activity.EmuBaseActivity.createDir(r1)     // Catch: java.lang.Exception -> Lf7
        L72:
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> Lf7
            com.papa91.activity.EmuBaseActivity.startTIme = r4     // Catch: java.lang.Exception -> Lf7
            int r1 = com.papa91.activity.EmuBaseActivity.startMode     // Catch: java.lang.Exception -> Lf7
            if (r1 != 0) goto La0
            if (r2 != 0) goto Lfb
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lf7
            r1.<init>()     // Catch: java.lang.Exception -> Lf7
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = "/mgpapa/aidlservice/Game_start15_"
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = com.papa91.activity.EmuBaseActivity.GameID     // Catch: java.lang.Exception -> Lf7
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            r1.append(r3)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = com.papa91.activity.EmuBaseActivity.UserID     // Catch: java.lang.Exception -> Lf7
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Exception -> Lf7
            com.papa91.activity.EmuBaseActivity.createDir(r0)     // Catch: java.lang.Exception -> Lf7
            goto Lfb
        La0:
            r4 = 2
            if (r1 == r4) goto Ld3
            r4 = 1
            if (r1 != r4) goto La7
            goto Ld3
        La7:
            if (r2 != 0) goto Lfb
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lf7
            r1.<init>()     // Catch: java.lang.Exception -> Lf7
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = "/mgpapa/aidlservice/Game_start160_"
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = com.papa91.activity.EmuBaseActivity.GameID     // Catch: java.lang.Exception -> Lf7
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            r1.append(r3)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = com.papa91.activity.EmuBaseActivity.UserID     // Catch: java.lang.Exception -> Lf7
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            r1.append(r3)     // Catch: java.lang.Exception -> Lf7
            int r0 = com.papa91.activity.EmuBaseActivity.startMode     // Catch: java.lang.Exception -> Lf7
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Exception -> Lf7
            com.papa91.activity.EmuBaseActivity.createDir(r0)     // Catch: java.lang.Exception -> Lf7
            goto Lfb
        Ld3:
            if (r2 != 0) goto Lfb
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lf7
            r1.<init>()     // Catch: java.lang.Exception -> Lf7
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = "/mgpapa/aidlservice/Game_startBattle15_"
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = com.papa91.activity.EmuBaseActivity.GameID     // Catch: java.lang.Exception -> Lf7
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            r1.append(r3)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = com.papa91.activity.EmuBaseActivity.UserID     // Catch: java.lang.Exception -> Lf7
            r1.append(r0)     // Catch: java.lang.Exception -> Lf7
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Exception -> Lf7
            com.papa91.activity.EmuBaseActivity.createDir(r0)     // Catch: java.lang.Exception -> Lf7
            goto Lfb
        Lf7:
            r0 = move-exception
            r0.printStackTrace()
        Lfb:
            com.papa91.activity.EmuBaseActivity.exitActivity(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa91.arc.EmuActivity_fc.exitActivty(int):void");
    }

    public static String getCurCpuFreq() {
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
        return romPath().substring(0, romPath().lastIndexOf(net.lingala.zip4j.util.e.F0)) + "/combine_stage_" + getModSubfix() + str;
    }

    private static void openUrl() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://h5.papa91.com/sp_jiesuo.html"));
        emuActivity.startActivity(intent);
    }

    public static void playerVibrtor() {
        vibrtor.vibrate(50L);
    }

    public static void printLogCat(int i2, int i4, int i5, int i6) {
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
        EmuBaseActivity.sendHandleEmptyMessage(0);
    }

    public static int unLockSp() {
        try {
            return EmuBaseActivity.unLockSP(EmuBaseActivity.GameID) ? 1 : 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public void createRom() {
        String str = "{\"romPath\":\"" + EmuBaseActivity.assetsPath + "rom/hdl1\",\"startMode\":0,\"userID\":\"2000\",\"gameID\":\"509474702\",\"version\":\"2\",\"roomID\":\"10000\",\"sopath\":\"" + (getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0) + "\",\"assetspath\":\"" + EmuBaseActivity.assetsPath + "\",\"classname\":\"com/papa91/arc/EmuActivity_fc\",\"serverIP\":\"121.201.0.114 \",\"serverPort\":\"5369\",\"porder\":0}";
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

    protected boolean extractAsset(File file) {
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        if (file.exists()) {
            return true;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            inputStream = getAssets().open(file.getName());
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception unused) {
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception unused2) {
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int read = inputStream.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        fileOutputStream.close();
                        inputStream.close();
                        return true;
                    } catch (IOException unused3) {
                        return true;
                    }
                }
            }
        } catch (Exception unused4) {
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused5) {
                    return false;
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused6) {
                    throw th;
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public String getCustomCheatTip(boolean z3) {
        return z3 ? "请输入6或8位数字、字母\n例:SXOKVVSE" : "金手指码分为两部分:\n第一部分:4位数字、字母\n第二部分:2或4位数字、字母\n两部分中间请用【中线】分割，例:030B-63";
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public List<GateBean> getGateData() {
        String[] list;
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(getGateZipPath(""));
            if (!file.exists() || file.list().length <= 0) {
                XZip.upZipFile(new File(getGateZipPath(".zip")), getGateZipPath(""));
            }
            for (String str : file.list(new FilenameFilter() { // from class: com.papa91.arc.EmuActivity_fc.2
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
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        Collections.sort(arrayList, new Comparator<GateBean>() { // from class: com.papa91.arc.EmuActivity_fc.3
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

    @Override // com.papa91.activity.EmuMenuBaseActivity
    public String getSimulatorType() {
        return "fc";
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
        try {
            if (isRankGame()) {
                return false;
            }
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
        iVideoAdListener.loadAd(this, CContext.SCENE_FC);
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public void loadGateStage(int i2) {
        EmuBaseActivity.loadStageData(i2);
    }

    public void loadRom() {
        EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_fc.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, CContext.SCENE_FC});
        createRom();
        BaseAppConfig.ROM_PATH = EmuBaseActivity.assetsPath + "rom/hdl1";
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
        com.papa91.common.MyJson myJson;
        String string;
        String stringExtra;
        EmuBaseActivity.hasRewardBanana = true;
        StringBuilder sb = new StringBuilder();
        sb.append(getDir("jniLibs", 0).getAbsolutePath());
        sb.append(net.lingala.zip4j.util.e.F0);
        File file = new File(SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext()));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.getAbsolutePath());
        sb2.append("/1/so_fc");
        EmuBaseActivity.assetsPath = file.getAbsolutePath() + "/1/assets_fc/";
        updateConfig();
        emuActivity = this;
        CrashReport.initCrashReport(getApplicationContext(), appId, true);
        vibrtor = (Vibrator) getSystemService("vibrator");
        Intent intent = getIntent();
        if (intent != null && (stringExtra = intent.getStringExtra(BaseAppConfig.KEY_ROM_PATH)) != null && stringExtra != "") {
            EmuBaseActivity.romPath = stringExtra;
            AppConfig_fc.logE("json ........................... rompath : " + EmuBaseActivity.romPath);
        }
        AppConfig_fc.initialise(this);
        extractAsset(new File(BaseAppConfig.APP_PATH, "nesromdb.dat"));
        extractAsset(new File(BaseAppConfig.APP_PATH, "Disksys.rom"));
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
                try {
                    myJson = new com.papa91.common.MyJson(stringExtra2);
                } catch (JSONException e4) {
                    e4.printStackTrace();
                    CrashReport.setUserId(EmuBaseActivity.GameID);
                    myJson = null;
                }
                if (myJson != null) {
                    EmuBaseActivity.appPackName = myJson.getString(BaseAppConfig.PA_PACKAGE_NAME, EmuBaseActivity.appPackName);
                    EmuBaseActivity.startMode = myJson.getInt("startMode", 0);
                    String string2 = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "");
                    EmuBaseActivity.romPath = string2;
                    BaseAppConfig.ROM_PATH = string2;
                    String name = new File(BaseAppConfig.ROM_PATH).getName();
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
                    EmuBaseActivity.tourist = myJson.getBoolean("tourist", Boolean.TRUE).booleanValue();
                    EmuBaseActivity.spLock = myJson.getInt(BaseAppConfig.KEY_SP_LOCK, 0);
                    this.m_SVIP = myJson.getInt(BaseAppConfig.KEY_SVIP_LEVEL, 0);
                    this.m_VIP = myJson.getInt(BaseAppConfig.KEY_VIP_LEVEL, 0);
                    EmuBaseActivity.DEVICE_ID = myJson.getString("device_id", "");
                    JSONArray jSONArray = myJson.getJSONArray(BaseAppConfig.AD_JSON_KEY, null);
                    if (jSONArray != null) {
                        initBanner(jSONArray, AD_APP_KEY);
                    }
                    try {
                        myJson.put(com.alipay.sdk.packet.d.f9795p, EmuBaseActivity.getPhoneInfo());
                    } catch (JSONException e5) {
                        e5.printStackTrace();
                    }
                    this.miniRankTime = myJson.getInt("rankMiniTime", 0);
                    this.rankAutoUpload = myJson.getInt(GamePaiWeiActivty_.L0, 0);
                    try {
                        if (!isRankAutoUpload() && myJson.has("rolesJson") && (string = myJson.getString("rolesJson")) != null) {
                            this.rolesBeanList = (List) new Gson().fromJson(string, new TypeToken<List<PaiWeiDataBean.RolesBean>>() { // from class: com.papa91.arc.EmuActivity_fc.1
                            }.getType());
                        }
                    } catch (JSONException e6) {
                        e6.printStackTrace();
                    }
                }
                setMenuViewListener();
                asyncConfig();
                onLoadNativeLibraries();
                EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "version", "cpuNum", "cpuFreq", "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_fc.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, EmuBaseActivity.version, cpuNum, cpuFreq, CContext.SCENE_FC});
                try {
                    myJson.put(BaseAppConfig.KEY_APK_PATH, BaseAppConfig.APK_PATH);
                    myJson.put(BaseAppConfig.KEY_CLASS_NAME, EmuBaseActivity.className);
                } catch (JSONException e7) {
                    e7.printStackTrace();
                }
                EmuBaseActivity.setJson(dealSDPath(myJson.toString(), BaseAppConfig.APP_PATH));
                EmuBaseActivity.initEmu();
            } finally {
                CrashReport.setUserId(EmuBaseActivity.GameID);
            }
        } else {
            EmuBaseActivity.soPath = getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0;
            onLoadNativeLibraries();
            loadRom();
        }
        super.onCreate(bundle);
        com.join.mgps.joystick.a.g().w(this, KeyMap.EmuMap.FC);
        com.join.mgps.joystick.a.g().y(this);
        onAfterActivityCreated(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EmuBaseActivity.exitEmu();
        System.exit(0);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onGenericMotionEvent(int i2, float f4, float f5) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa91.activity.EmuBaseActivity
    public void onHandleGameExit(Intent intent) {
        super.onHandleGameExit(intent);
        gameDestroy(this);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onKeyMap(int[] iArr, com.join.mgps.joystick.map.c cVar, KeyEvent keyEvent) {
        EmuBaseActivity.setJoyStickKey(iArr);
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
        if (z3) {
            EmuBaseActivity.setPadVisible(0);
        } else {
            EmuBaseActivity.setPadVisible(1);
        }
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
        iVideoAdListener.showAd(this, EmuBaseActivity.GameID, CContext.SCENE_FC);
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public boolean showGGCodeButton() {
        return true;
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void showInvitePlayUi(String str, String str2, String str3, long j4) {
        EmuBaseActivity.showInvitePlay(str, str2, str3, j4);
        EmuBaseActivity.sendReceiveInvitation();
        hideMenuDialog();
    }

    public void updateConfig() {
        SharedPreferences sharedPreferences = getSharedPreferences("core", 4);
        EmuBaseActivity.enableAudio = sharedPreferences.getString(BaseAppConfig.PREF_ENABLE_AUDIO, "1");
        EmuBaseActivity.screenMOde = sharedPreferences.getString(BaseAppConfig.PREF_SCREEN_MODE, "1");
        EmuBaseActivity.vibriorMode = sharedPreferences.getString("vibriorMode", "1");
        EmuBaseActivity.version = sharedPreferences.getString("version", "1.4.0");
    }
}
