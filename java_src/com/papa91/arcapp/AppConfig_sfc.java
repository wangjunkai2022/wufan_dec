package com.papa91.arcapp;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.view.Display;
import android.view.InputDevice;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.arc.util.SDCardUtil;
import com.papa91.common.BaseAppConfig;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.regex.Pattern;
/* loaded from: classes4.dex */
public class AppConfig_sfc extends BaseAppConfig {
    private static final char[] HEX_DIGITS;
    public static String PATH = "/papa91/sfc/";
    public static String[] deviceDescrip;
    public static int[] deviceID;
    public static String[] deviceName;

    static {
        BaseAppConfig.EMU_NAME = "sfc";
        initPath(null);
        HEX_DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        deviceName = new String[]{"?", "?", "?", "?"};
        deviceDescrip = new String[]{"?", "?", "?", "?"};
        deviceID = new int[]{0, 0, 0, 0};
    }

    public static boolean IsXperiaPlay() {
        String str = Build.MODEL;
        return str.equals("R800a") || str.equals("R800i") || str.equals("R800x") || str.equals("R800at") || str.equals("SO-01D") || str.equals("zeus");
    }

    public static void createAppDir(Context context) {
        createFolder(BaseAppConfig.APP_PATH);
        createFolder(BaseAppConfig.ROM_PATH);
        createFolder(BaseAppConfig.CONFIG_PATH);
        createFolder(BaseAppConfig.INFO_PATH);
        createFolder(BaseAppConfig.INFO_PATH + "icon/");
        createFolder(BaseAppConfig.IPS_PATH);
        createFolder(BaseAppConfig.TMP_PATH);
        createFolder(BaseAppConfig.ROMDATA_PATH);
    }

    static boolean createFolder(String str) {
        File file = new File(str);
        if (file.exists()) {
            return true;
        }
        if (file.mkdirs()) {
            logD("mkdir: ok" + str);
            return true;
        }
        logD("mkdir: failed" + str);
        return false;
    }

    static void createResFile(Context context, String str, String[] strArr, boolean z3) {
        int i2;
        StringBuilder sb;
        File file = new File(str);
        if (!file.exists()) {
            file.mkdir();
        }
        AssetManager assets = context.getAssets();
        while (i2 < strArr.length) {
            if (!z3) {
                try {
                    sb = new StringBuilder();
                    sb.append(str);
                    sb.append(strArr[i2]);
                } catch (IOException unused) {
                    logE("cant install bios file");
                }
                i2 = new File(sb.toString()).exists() ? i2 + 1 : 0;
            }
            InputStream open = assets.open(strArr[i2], 3);
            FileOutputStream fileOutputStream = new FileOutputStream(str + strArr[i2]);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.flush();
            fileOutputStream.close();
            open.close();
        }
    }

    public static int getAnalogDZ(Context context) {
        return Integer.valueOf(getDefaultSharedPreferences(context).getString(BaseAppConfig.PREF_ANALOG_DZ, "1")).intValue();
    }

    public static int getAnalogEZ(Context context) {
        return Integer.valueOf(getDefaultSharedPreferences(context).getString(BaseAppConfig.PREF_ANALOG_EZ, "1")).intValue();
    }

    public static int getButtonEZ(Context context) {
        return Integer.valueOf(getDefaultSharedPreferences(context).getString(BaseAppConfig.PREF_BUTTON_EZ, "1")).intValue();
    }

    public static SharedPreferences getDefaultSharedPreferences(Context context) {
        String str = EmuBaseActivity.appPackName;
        if (!context.getPackageName().equals(str)) {
            return context.getSharedPreferences(str + "_preferences", 4);
        }
        return PreferenceManager.getDefaultSharedPreferences(context);
    }

    static String getLastDir(Context context) {
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(context);
        String str = BaseAppConfig.ROM_PATH;
        return defaultSharedPreferences.getString(BaseAppConfig.KEY_LAST_DIR, str.substring(0, str.length() - 1));
    }

    public static String getLibpath(Context context) {
        return context.getCacheDir().getAbsolutePath().replace("cache", "lib");
    }

    public static String getNameNoExt(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        int lastIndexOf2 = str.lastIndexOf(46);
        if (lastIndexOf2 == -1) {
            lastIndexOf2 = str.length();
        }
        if (lastIndexOf == -1) {
            return str.substring(0, lastIndexOf2);
        }
        if (lastIndexOf2 < lastIndexOf) {
            return str.substring(lastIndexOf + 1, str.length());
        }
        return str.substring(lastIndexOf + 1, lastIndexOf2);
    }

    public static String getNameNoExtWithPath(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            lastIndexOf = str.length();
        }
        return str.substring(0, lastIndexOf);
    }

    public static String getNameWithExt(String str) {
        return str.substring(str.lastIndexOf(47) + 1, str.length());
    }

    static int getNumCores() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: com.papa91.arcapp.AppConfig_sfc.1CpuFilter
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return Pattern.matches("cpu[0-9]", file.getName());
                }
            }).length;
        } catch (Exception unused) {
            return 1;
        }
    }

    public static String getRomPath(String str) {
        return str.substring(0, str.lastIndexOf(47));
    }

    public static String getStringPref(Context context, String str, String str2) {
        return getDefaultSharedPreferences(context).getString(str, str2);
    }

    public static int getTiltDZ(Context context) {
        return Integer.valueOf(getDefaultSharedPreferences(context).getString(BaseAppConfig.PREF_TILT_DZ, "1")).intValue();
    }

    public static int getTiltSensitivity(Context context) {
        return getDefaultSharedPreferences(context).getInt(BaseAppConfig.PREF_TILT_SENSITIVITY, 6);
    }

    public static int getVpadStyle(Context context) {
        return getDefaultSharedPreferences(context).getInt(BaseAppConfig.PREF_VPAD_STYLE, 0);
    }

    public static int getscrOrientation(Activity activity) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        int i2 = activity.getResources().getConfiguration().orientation;
        if (i2 == 0) {
            int i4 = activity.getResources().getConfiguration().orientation;
            if (i4 == 0) {
                if (defaultDisplay.getWidth() == defaultDisplay.getHeight()) {
                    return 3;
                }
                return defaultDisplay.getWidth() < defaultDisplay.getHeight() ? 1 : 2;
            }
            return i4;
        }
        return i2;
    }

    public static boolean hideAds(Context context) {
        return getDefaultSharedPreferences(context).getBoolean(BaseAppConfig.PREF_HIDE_ADS, false);
    }

    public static void initPath(Context context) {
        String externalStorageDirectory = SDCardUtil.getExternalStorageDirectory(context);
        BaseAppConfig.PRIVATE_PATH = externalStorageDirectory + PATH;
        String str = externalStorageDirectory + PATH;
        BaseAppConfig.APP_PATH = str;
        BaseAppConfig.ROM_PATH = str;
        BaseAppConfig.CONFIG_PATH = BaseAppConfig.PRIVATE_PATH + "config/";
        BaseAppConfig.INFO_PATH = BaseAppConfig.PRIVATE_PATH + "rominfo/";
        BaseAppConfig.IPS_PATH = BaseAppConfig.PRIVATE_PATH + "ips/";
        BaseAppConfig.TMP_PATH = BaseAppConfig.PRIVATE_PATH + "tmp/";
        BaseAppConfig.ROMDATA_PATH = BaseAppConfig.PRIVATE_PATH + "romdata/";
        BaseAppConfig.LOG_PATH = BaseAppConfig.PRIVATE_PATH + "log/";
    }

    public static void initialise(Context context) {
        initPath(context);
        boolean isFirstRun = isFirstRun(context);
        try {
            BaseAppConfig.versionCode = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
        }
        createAppDir(context);
        if (isFirstRun) {
            setDefaultConfig(context);
        }
        updateConfig(context);
        String[] strArr = {"listcn.txt", "drvrom.xml"};
        BaseAppConfig.copyGuide(context);
        if (isFirstRun) {
            createResFile(context, BaseAppConfig.INFO_PATH, strArr, true);
            setFirstRun(context, false);
        }
    }

    public static int inputDeviceToPlayer(InputDevice inputDevice) {
        if (inputDevice == null) {
            return -1;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            for (int i2 = 0; i2 < 4; i2++) {
            }
        }
        for (int i4 = 0; i4 < 4; i4++) {
            if (deviceName[i4].equals(inputDevice.getName())) {
                int[] iArr = deviceID;
                if (iArr[i4] != 0) {
                    if (iArr[i4] == inputDevice.getId()) {
                        return i4;
                    }
                } else if (iArr[i4] == 0) {
                    iArr[i4] = inputDevice.getId();
                    return i4;
                }
            }
        }
        return 0;
    }

    public static boolean isAnalogPretty(Context context) {
        return true;
    }

    static boolean isFirstRun(Context context) {
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(context);
        boolean z3 = true;
        boolean z4 = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_FIRST_RUN, true);
        try {
            int i2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            if (defaultSharedPreferences.getInt("version", 0) < i2) {
                SharedPreferences.Editor edit = defaultSharedPreferences.edit();
                edit.putInt("version", i2);
                edit.commit();
            } else {
                z3 = z4;
            }
            return z3;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return z4;
        }
    }

    static boolean isGameFile(String str) {
        return ((!str.endsWith(".fba") && !str.endsWith(".zip") && !str.endsWith(".iso")) || str.endsWith("pgm.zip") || str.endsWith("neogeo.zip")) ? false : true;
    }

    public static boolean isTiltSensor(Context context) {
        return getDefaultSharedPreferences(context).getBoolean(BaseAppConfig.PREF_TILT_SENSOR, false);
    }

    public static void lockScreenOrientation(Context context, int i2) {
        Activity activity = (Activity) context;
        if (i2 == 1) {
            activity.setRequestedOrientation(0);
        } else if (i2 == 2) {
            activity.setRequestedOrientation(1);
        } else if (i2 == 3) {
            activity.setRequestedOrientation(8);
        } else if (i2 != 4) {
        } else {
            activity.setRequestedOrientation(9);
        }
    }

    public static void logD(String str) {
    }

    public static void logD(String str, String str2) {
    }

    public static void logE(String str) {
    }

    public static String md5string(String str) {
        char[] charArray = str.toCharArray();
        byte[] bArr = new byte[charArray.length];
        for (int i2 = 0; i2 < charArray.length; i2++) {
            bArr[i2] = (byte) charArray[i2];
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr, 0, charArray.length);
            return toHexString(messageDigest.digest());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String md5sum(String str) {
        if (!new File(str).exists()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    messageDigest.update(bArr, 0, read);
                } else {
                    fileInputStream.close();
                    return toHexString(messageDigest.digest());
                }
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public static void saveLastDir(Context context, String str) {
        SharedPreferences.Editor edit = getDefaultSharedPreferences(context).edit();
        edit.putString(BaseAppConfig.KEY_LAST_DIR, str);
        edit.commit();
    }

    public static void saveScreenModeConfig(Context context) {
        SharedPreferences.Editor edit = getDefaultSharedPreferences(context).edit();
        edit.putString(BaseAppConfig.PREF_SCREEN_MODE, String.valueOf(BaseAppConfig.screenMode));
        edit.putString(BaseAppConfig.PREF_FRAME_SKIP, String.valueOf(BaseAppConfig.frameSkip));
        edit.commit();
    }

    public static void saveStringPref(Context context, String str, String str2) {
        SharedPreferences.Editor edit = getDefaultSharedPreferences(context).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    static void saveTurboSpeed(Context context, int i2) {
        SharedPreferences.Editor edit = getDefaultSharedPreferences(context).edit();
        edit.putInt(BaseAppConfig.PREF_TURBO_SPEED, i2);
        edit.commit();
    }

    static boolean setDefaultConfig(Context context) {
        setVpadStyle(context, 0);
        SharedPreferences.Editor edit = getDefaultSharedPreferences(context).edit();
        BaseAppConfig.enableAudio = true;
        BaseAppConfig.renderMode = 1;
        BaseAppConfig.renderQuality = true;
        BaseAppConfig.frameSkip = -1;
        BaseAppConfig.screenOrientation = 1;
        BaseAppConfig.screenMode = 0;
        BaseAppConfig.enablePad = true;
        BaseAppConfig.enableVibrator = false;
        BaseAppConfig.enablePhysicalKey = true;
        BaseAppConfig.cpuCores = 2;
        edit.putBoolean(BaseAppConfig.PREF_ENABLE_AUDIO, BaseAppConfig.enableAudio);
        if (BaseAppConfig.renderMode == 1) {
            edit.putBoolean(BaseAppConfig.PREF_RENDER_MODE, true);
        } else {
            edit.putBoolean(BaseAppConfig.PREF_RENDER_MODE, false);
        }
        edit.putBoolean(BaseAppConfig.PREF_RENDER_QUALITY, BaseAppConfig.renderQuality);
        edit.putString(BaseAppConfig.PREF_SCREENT_ORIENT, String.valueOf(BaseAppConfig.screenOrientation));
        edit.putString(BaseAppConfig.PREF_FRAME_SKIP, String.valueOf(BaseAppConfig.frameSkip));
        edit.putString(BaseAppConfig.PREF_SCREEN_MODE, String.valueOf(BaseAppConfig.screenMode));
        edit.putBoolean(BaseAppConfig.PREF_ENABLE_VPAD, BaseAppConfig.enablePad);
        edit.putBoolean(BaseAppConfig.PREF_ENABLE_VIBRATOR, BaseAppConfig.enableVibrator);
        edit.putBoolean(BaseAppConfig.PREF_ENABLE_PHYSICAL_KEY, BaseAppConfig.enablePhysicalKey);
        edit.putBoolean(BaseAppConfig.PREF_HIDE_ADS, false);
        edit.putBoolean(BaseAppConfig.PREF_VPAD_PLAYER, true);
        edit.putBoolean(BaseAppConfig.PREF_AUTO_THREADING, true);
        edit.putBoolean(BaseAppConfig.PREF_ANALOG_PRETTY, false);
        edit.putBoolean(BaseAppConfig.PREF_ENABLE_ONE_CONTROLLER, false);
        edit.putString(BaseAppConfig.PREF_ANALOG_DZ, "1");
        edit.putString(BaseAppConfig.PREF_ANALOG_EZ, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
        edit.putString(BaseAppConfig.PREF_BUTTON_EZ, PayCenterOrderRequest.PAY_TYPE_RECHARGE);
        edit.commit();
        return true;
    }

    static void setFirstRun(Context context, boolean z3) {
        SharedPreferences.Editor edit = getDefaultSharedPreferences(context).edit();
        edit.putBoolean(BaseAppConfig.PREF_FIRST_RUN, z3);
        edit.commit();
    }

    public static void setVpadStyle(Context context, int i2) {
        SharedPreferences.Editor edit = getDefaultSharedPreferences(context).edit();
        edit.putInt(BaseAppConfig.PREF_VPAD_STYLE, i2);
        edit.commit();
    }

    public static boolean showPlayerButton(Context context) {
        return getDefaultSharedPreferences(context).getBoolean(BaseAppConfig.PREF_VPAD_PLAYER, true);
    }

    public static String toHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            char[] cArr = HEX_DIGITS;
            sb.append(cArr[(bArr[i2] & 240) >>> 4]);
            sb.append(cArr[bArr[i2] & 15]);
        }
        return sb.toString();
    }

    public static void updateConfig(Context context) {
        if (!context.getResources().getConfiguration().locale.getLanguage().equalsIgnoreCase("zh") && !context.getResources().getConfiguration().locale.getCountry().equals("CN")) {
            BaseAppConfig.language = 0;
        } else {
            BaseAppConfig.language = 1;
        }
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(context);
        BaseAppConfig.enableAudio = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_AUDIO, true);
        BaseAppConfig.IsXperiaPlay = IsXperiaPlay();
        if (getNumCores() > 1 && defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_AUTO_THREADING, true)) {
            BaseAppConfig.cpuCores = getNumCores();
        } else {
            BaseAppConfig.cpuCores = 1;
        }
        if (defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_RENDER_MODE, true)) {
            BaseAppConfig.renderMode = 1;
        } else {
            BaseAppConfig.renderMode = 0;
        }
        BaseAppConfig.renderQuality = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_RENDER_QUALITY, true);
        BaseAppConfig.screenMode = Integer.parseInt(defaultSharedPreferences.getString(BaseAppConfig.PREF_SCREEN_MODE, "0"));
        BaseAppConfig.frameSkip = Integer.parseInt(defaultSharedPreferences.getString(BaseAppConfig.PREF_FRAME_SKIP, "-1"));
        BaseAppConfig.turboSpeed = defaultSharedPreferences.getInt(BaseAppConfig.PREF_TURBO_SPEED, 8);
        BaseAppConfig.enableVibrator = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_VIBRATOR, true);
        BaseAppConfig.enablePad = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_VPAD, true);
        BaseAppConfig.bAutoLayoutBtn = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_VPAD_AUTOLAYOUT, true);
        BaseAppConfig.enablePhysicalKey = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_PHYSICAL_KEY, true);
        BaseAppConfig.oneController = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_ONE_CONTROLLER, true);
        logD(BaseAppConfig.autoSearchRom + " " + BaseAppConfig.enableAudio + " " + BaseAppConfig.enableVibrator + " " + BaseAppConfig.renderMode + " " + BaseAppConfig.screenMode + " " + BaseAppConfig.vkeypadLayout + " " + BaseAppConfig.controlScale + " " + BaseAppConfig.enablePhysicalKey);
    }
}
