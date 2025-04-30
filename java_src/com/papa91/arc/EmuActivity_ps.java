package com.papa91.arc;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Vibrator;
import android.view.KeyEvent;
import com.join.mgps.Util.g0;
import com.join.mgps.joystick.a;
import com.join.mgps.joystick.map.KeyMap;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.arc.util.FileUtils;
import com.papa91.arc.util.SDCardUtil;
import com.papa91.arcapp.AppConfig_ps;
import com.papa91.common.BaseAppConfig;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class EmuActivity_ps extends EmuBaseActivity implements a.d {
    public static String AD_APP_KEY = "1105704756";
    public static final boolean SINGLE_MODE = false;
    private static String appId = "900017101";
    private static String appKey = "Ddff3esMlP1HtFr6";
    private static EmuActivity_ps emuActivity;
    private static Vibrator vibrtor;
    int firstKey = 0;
    private String jsonData;
    public static int[] keyVaule = {0, 0, 0, 0};
    public static String cpuFreq = getCurCpuFreq();
    public static String cpuNum = "" + Runtime.getRuntime().availableProcessors();

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

    public static void exitActivty(int i2) {
        try {
            String externalStorageDirectory = SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext());
            EmuBaseActivity.send(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse("file://" + externalStorageDirectory + "papa91/img")));
        } catch (Exception unused) {
        }
        try {
            EmuBaseActivity.uploadEfficiencyData();
            EmuBaseActivity.gameOut(EmuBaseActivity.GameID, (int) (System.currentTimeMillis() - EmuBaseActivity.startTIme), EmuBaseActivity.UserID);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        EmuBaseActivity.exitActivity(i2);
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

    private static void openUrl() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://h5.papa91.com/sp_jiesuo.html"));
        emuActivity.startActivity(intent);
    }

    public static void playerVibrtor() {
        vibrtor.vibrate(50L);
    }

    public static void printLogCat(int i2, int i4, int i5, int i6) {
        StringBuilder sb = new StringBuilder();
        sb.append("zcylog15 printLogCat a=");
        sb.append(i2);
        sb.append("b=");
        sb.append(i4);
        sb.append("c=");
        sb.append(i5);
        sb.append("d=");
        sb.append(i6);
        String str = "";
        String str2 = i2 != 2 ? i2 != 4 ? i2 != 8 ? i2 != 11 ? i2 != 15 ? i2 != 21 ? i2 != 22 ? "" : "SIGABRT" : "SIGBREAK" : "SIGTERM" : "SIGSEGV" : "SIGFPE" : "SIGILL" : "SIGINT";
        try {
            String packageName = Cocos2dxActivity.getContext().getPackageName();
            try {
                str = Cocos2dxActivity.getContext().getPackageManager().getPackageInfo(packageName, 0).versionName;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
            }
            EmuBaseActivity.emuLogCat(EmuBaseActivity.GameID, EmuBaseActivity.UserID, packageName, str, str2);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
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

    static void setVibrate(int i2, int i4) {
        AppConfig_ps.logE("EmuActivity-->setVibrate : " + String.valueOf(i2) + "--" + String.valueOf(i4));
        com.join.mgps.joystick.a.g().z(i2, i4);
    }

    public static int unLockSp() {
        try {
            return EmuBaseActivity.unLockSP(EmuBaseActivity.GameID) ? 1 : 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void asyncFile(String str, String str2) {
        FileUtils.copyFolder(new File(str).getParent(), new File(str2).getParent(), new String[]{".sav", ".srm", ".mcr"});
    }

    public void createRom() {
        String str = "{\"romPath\":\"" + EmuBaseActivity.assetsPath + "/rom/sgz2bwddlfkb\",\"startMode\":0,\"userID\":\"2000\",\"gameID\":\"509474702\",\"version\":\"2\",\"roomID\":\"10000\",\"sopath\":\"" + (getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0) + "\",\"assetspath\":\"" + EmuBaseActivity.assetsPath + "\",\"classname\":\"com/papa91/arc/EmuActivity_ps\",\"serverIP\":\"121.201.0.114 \",\"serverPort\":\"5369\",\"porder\":0}";
        if (str != null) {
            EmuBaseActivity.setJson(dealSDPath(str, BaseAppConfig.APP_PATH));
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

    public String getCore() {
        try {
            File file = new File(BaseAppConfig.APP_PATH + "coreCrash.log");
            if (file.exists()) {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[4];
                fileInputStream.read(bArr);
                fileInputStream.close();
                if (bArr[0] == 48) {
                    return "PS_INTERPRETER";
                }
                byte b4 = bArr[0];
            }
            return "PS";
        } catch (Exception e4) {
            e4.printStackTrace();
            return "PS";
        }
    }

    public void loadRom() {
        EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "version", "cpuNum", "cpuFreq", "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_ps.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, EmuBaseActivity.version, cpuNum, cpuFreq, "PS"});
        createRom();
        BaseAppConfig.ROM_PATH = EmuBaseActivity.assetsPath + "/rom/sgz2bwddlfkb";
        String name = new File(BaseAppConfig.ROM_PATH).getName();
        BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
        EmuBaseActivity.initEmu();
    }

    @Override // com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String stringExtra;
        emuActivity = this;
        CrashReport.initCrashReport(getApplicationContext(), appId, true);
        vibrtor = (Vibrator) getSystemService("vibrator");
        StringBuilder sb = new StringBuilder();
        sb.append(getDir("jniLibs", 0).getAbsolutePath());
        sb.append(net.lingala.zip4j.util.e.F0);
        File file = new File(SDCardUtil.getExternalStorageDirectory(Cocos2dxActivity.getContext()));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.getAbsolutePath());
        sb2.append("/1/so_ps");
        EmuBaseActivity.assetsPath = file.getAbsolutePath() + "/1/assets_ps/";
        Intent intent = getIntent();
        if (intent != null && (stringExtra = intent.getStringExtra(BaseAppConfig.KEY_ROM_PATH)) != null && stringExtra != "") {
            EmuBaseActivity.romPath = stringExtra;
            AppConfig_ps.logE("json ........................... rompath : " + EmuBaseActivity.romPath);
        }
        AppConfig_ps.initialise(this);
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
            AppConfig_ps.logE(stringExtra2);
            try {
                try {
                    com.papa91.common.MyJson myJson = new com.papa91.common.MyJson(stringExtra2);
                    EmuBaseActivity.appPackName = myJson.getString(BaseAppConfig.PA_PACKAGE_NAME, EmuBaseActivity.appPackName);
                    EmuBaseActivity.fid = myJson.getInt(BaseAppConfig.KEY_START_FID, 0);
                    EmuBaseActivity.startMode = myJson.getInt("startMode", 0);
                    EmuBaseActivity.romPath = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "0");
                    EmuBaseActivity.UserID = myJson.getString(BaseAppConfig.KEY_START_USERID, "0");
                    BaseAppConfig.ROM_PATH = EmuBaseActivity.romPath;
                    String name = new File(BaseAppConfig.ROM_PATH).getName();
                    BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
                    EmuBaseActivity.soPath = myJson.getString(BaseAppConfig.KEY_SO_PATH, "");
                    EmuBaseActivity.assetsPath = myJson.getString(BaseAppConfig.KEY_ASSETS_PATH, "");
                    String string = myJson.getString(BaseAppConfig.KEY_ACTIVITY_NAME, "");
                    EmuBaseActivity.className = string;
                    EmuBaseActivity.className = string.replace(g0.f27568a, net.lingala.zip4j.util.e.F0);
                    EmuBaseActivity.GameID = myJson.getString(BaseAppConfig.KEY_START_GAMEID, "0");
                    EmuBaseActivity.RoomID = myJson.getString(BaseAppConfig.KEY_START_ROOMID, "0");
                    EmuBaseActivity.GroupID = myJson.getString(BaseAppConfig.KEY_START_GROUPID, "");
                    EmuBaseActivity.Version = myJson.getString("version", "0");
                    EmuBaseActivity.server_ip = myJson.getString(BaseAppConfig.KEY_SERVER_IP, "0");
                    EmuBaseActivity.server_port = myJson.getString(BaseAppConfig.KEY_SERVER_PORT, EmuBaseActivity.server_port);
                    BaseAppConfig.curPlayer = myJson.getInt(BaseAppConfig.KEY_START_PORDER, 0);
                    EmuBaseActivity.token = myJson.getString("token", "0");
                    this.m_SVIP = myJson.getInt(BaseAppConfig.KEY_SVIP_LEVEL, 0);
                    this.m_VIP = myJson.getInt(BaseAppConfig.KEY_VIP_LEVEL, 0);
                    JSONArray jSONArray = myJson.getJSONArray(BaseAppConfig.AD_JSON_KEY, null);
                    if (jSONArray != null) {
                        initBanner(jSONArray, AD_APP_KEY);
                    }
                    try {
                        String str2 = BaseAppConfig.APK_PATH;
                        myJson.put(com.alipay.sdk.packet.d.f9795p, EmuBaseActivity.getPhoneInfo());
                        myJson.put(BaseAppConfig.KEY_APK_PATH, BaseAppConfig.APK_PATH);
                        myJson.put(BaseAppConfig.KEY_CLASS_NAME, EmuBaseActivity.className);
                        myJson.put(com.alipay.sdk.packet.d.f9795p, EmuBaseActivity.getPhoneInfo());
                    } catch (JSONException e4) {
                        e4.printStackTrace();
                    }
                    stringExtra2 = myJson.toString();
                } catch (JSONException e5) {
                    e5.printStackTrace();
                }
                CrashReport.setUserId(EmuBaseActivity.GameID);
                asyncConfig();
                onLoadNativeLibraries();
                AppConfig_ps.logE("...................KEY_START_FID : " + String.valueOf(EmuBaseActivity.fid));
                intent.getIntExtra("startMode", 0);
                EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "version", "cpuNum", "cpuFreq", "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_ps.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, EmuBaseActivity.version, cpuNum, cpuFreq, getCore()});
                EmuBaseActivity.setJson(dealSDPath(stringExtra2, BaseAppConfig.APP_PATH));
                EmuBaseActivity.initEmu();
            } catch (Throwable th) {
                CrashReport.setUserId(EmuBaseActivity.GameID);
                throw th;
            }
        } else {
            AppConfig_ps.logE("json not load");
            EmuBaseActivity.soPath = getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0;
            asyncConfig();
            onLoadNativeLibraries();
            loadRom();
        }
        super.onCreate(bundle);
        onAfterActivityCreated(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onDestroy() {
        EmuBaseActivity.exitEmu();
        super.onDestroy();
        System.exit(0);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onGenericMotionEvent(int i2, float f4, float f5) {
    }

    @Override // com.papa91.activity.EmuBaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            AppConfig_ps.IsXperiaPlay();
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onKeyMap(int[] iArr, com.join.mgps.joystick.map.c cVar, KeyEvent keyEvent) {
        iArr[BaseAppConfig.curPlayer] = iArr[0];
        EmuBaseActivity.setJoyStickKey(iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onPause() {
        com.join.mgps.joystick.a.g().F();
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onResume() {
        com.join.mgps.joystick.a.g().w(this, KeyMap.EmuMap.PS);
        com.join.mgps.joystick.a.g().y(this);
        super.onResume();
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
    protected void showInvitePlayUi(String str, String str2, String str3, long j4) {
    }

    public void updateConfig() {
        SharedPreferences sharedPreferences = getSharedPreferences("core", 4);
        EmuBaseActivity.enableAudio = sharedPreferences.getString(BaseAppConfig.PREF_ENABLE_AUDIO, "1");
        EmuBaseActivity.screenMOde = sharedPreferences.getString(BaseAppConfig.PREF_SCREEN_MODE, "0");
        EmuBaseActivity.vibriorMode = sharedPreferences.getString("vibriorMode", "1");
        EmuBaseActivity.version = sharedPreferences.getString("version", "1.4.0");
    }
}
