package com.papa91.common;

import android.content.Context;
import android.content.res.AssetManager;
import com.papa91.arc.util.SDCardUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4.dex */
public class BaseAppConfig {
    public static final String AD_JSON_KEY = "adDatas";
    public static String APK_PATH = "";
    public static String APP_PATH = "";
    public static String CONFIG_PATH = "config/";
    public static final boolean DEBUG = false;
    public static String EMU_NAME = "";
    public static final String GUIDE_JSON = "guide.json";
    public static String INFO_PATH = "rominfo/";
    public static String IPS_PATH = "ips/";
    public static final boolean IS_DEBUG = true;
    public static boolean IsXperiaPlay = false;
    public static final String KEY_ACTIVITY_NAME = "activityName";
    public static final String KEY_APK_PATH = "apkPath";
    public static final String KEY_ARCHIVE_SAVE_COUNT = "archiveSaveCount";
    public static final String KEY_ARCHIVE_SAVE_TIME = "archiveSaveTime";
    public static final String KEY_ASSETS_PATH = "assetspath";
    public static final String KEY_CLASS_NAME = "classname";
    public static final String KEY_INTENTFROM = "intentFrom";
    public static final String KEY_LAST_DIR = "LAST_DIR";
    public static final String KEY_NETTYPE = "tcptype";
    public static final String KEY_NET_STATE = "netState";
    public static final String KEY_PLAYER_NAME_1 = "p1Name";
    public static final String KEY_PLAYER_NAME_2 = "p2Name";
    public static final String KEY_ROM_NAME = "romName";
    public static final String KEY_ROM_PATH = "romPath";
    public static final String KEY_ROM_TITLE = "romTitle";
    public static final String KEY_SERVER_IP = "serverIP";
    public static final String KEY_SERVER_PORT = "serverPort";
    public static final String KEY_SO_PATH = "sopath";
    public static final String KEY_SP_LOCK = "sp_lock";
    public static final String KEY_START_CHEAT = "startCheat";
    public static final String KEY_START_FID = "plugin_area_val";
    public static final String KEY_START_GAMEID = "gameID";
    public static final String KEY_START_GROUPID = "groupId";
    public static final String KEY_START_JSON = "jsonData";
    public static final String KEY_START_MODE = "startMode";
    public static final String KEY_START_PORDER = "porder";
    public static final String KEY_START_ROOMID = "roomID";
    public static final String KEY_START_USERID = "userID";
    public static final String KEY_START_VERSION = "version";
    public static final String KEY_STATE_PATH = "statePath";
    public static final String KEY_SVIP_LEVEL = "sVipLevel";
    public static final String KEY_UDP_PORT = "udpport";
    public static final String KEY_UGC_PATH = "ugcPath";
    public static final String KEY_VIP_LEVEL = "vipLevel";
    public static final String KEY_WEBVIEW_TITLE = "WEBVIEW_TITLE";
    public static final String KEY_WEBVIEW_URL = "WEBVIEW_URL";
    public static int LAND_BUTTONS_KEY = 2;
    public static String LOG_PATH = "log/";
    public static final int MAX_PLAYER = 4;
    public static final int MAX_SCREENSHOT_NUM = 32;
    public static final int MAX_STATE_NUMS = 10;
    public static final int ORIENT_AUTO = 0;
    public static final int ORIENT_LANDSCAPE = 1;
    public static final int ORIENT_LANDSCAPE_REV = 3;
    public static final int ORIENT_PORTRAIT = 2;
    public static final int ORIENT_PORTRAIT_REV = 4;
    public static final String PA_PACKAGE_NAME = "pa_package_name";
    public static final String PREF_ANALOG_DZ = "analogDeadzoneNEW";
    public static final String PREF_ANALOG_EZ = "analogExpandzoneNEW";
    public static final String PREF_ANALOG_PRETTY = "analogPretty";
    public static final String PREF_AUTO_THREADING = "autoMultiThread";
    public static final String PREF_BUTTON_EZ = "buttonExpandzoneNEW";
    public static final String PREF_DEVICE_DESCRIP = "device descrip:";
    public static final String PREF_DEVICE_NAME = "device name:";
    public static final String PREF_ENABLE_AUDIO = "enableAudio";
    public static final String PREF_ENABLE_ONE_CONTROLLER = "enableOneController";
    public static final String PREF_ENABLE_PHYSICAL_KEY = "enablePhysicalKey";
    public static final String PREF_ENABLE_VIBRATOR = "enableVibrator";
    public static final String PREF_ENABLE_VPAD = "enableVPad";
    public static final String PREF_FIRST_RUN = "firstRun";
    public static final String PREF_FRAME_SKIP = "frameSkip";
    public static final String PREF_HIDE_ADS = "hideAds";
    public static final String PREF_KEY_EXT1_VAL = "KEY_EXT1_VAL";
    public static final String PREF_KEY_EXT2_VAL = "KEY_EXT2_VAL";
    public static final String PREF_KEY_EXT3_VAL = "KEY_EXT3_VAL";
    public static final String PREF_KEY_EXT4_VAL = "KEY_EXT4_VAL";
    public static final String PREF_LAST_NETADDR = "lastNetAddr";
    public static final String PREF_PLAYER_KEYMAP = "keymap:";
    public static final String PREF_RENDER_MODE = "renderMode";
    public static final String PREF_RENDER_QUALITY = "renderQuality";
    public static final String PREF_SCREENT_ORIENT = "screenOrient";
    public static final String PREF_SCREEN_MODE = "screenMode";
    public static final String PREF_SHOW_FPS = "showFPS";
    public static final String PREF_TILT_DZ = "PREF_TILT_DZ";
    public static final String PREF_TILT_SENSITIVITY = "PREF_TILT_SENSITIVITY";
    public static final String PREF_TILT_SENSOR = "PREF_TILT_SENSOR";
    public static final String PREF_TURBO_ENABLE = "turboEnable";
    public static final String PREF_TURBO_SPEED = "turboSpeed";
    public static final String PREF_VPAD_AUTOLAYOUT = "vpadAutoLayout";
    public static final String PREF_VPAD_PLAYER = "vpadPlayer";
    public static final int PREF_VPAD_SKIN_1 = 0;
    public static final int PREF_VPAD_SKIN_2 = 1;
    public static final int PREF_VPAD_SKIN_3 = 2;
    public static final String PREF_VPAD_STYLE = "PREF_VPAD_STYLE";
    public static String PRIVATE_PATH = null;
    public static final int RENDER_MODE_CPU = 0;
    public static final int RENDER_MODE_GPU = 1;
    public static String ROMDATA_PATH = "romdata/";
    public static final int ROMS_MODE_ALL = 0;
    public static final int ROMS_MODE_BOARD = 3;
    public static final int ROMS_MODE_FAVOR = 2;
    public static final int ROMS_MODE_SUPPORT = 1;
    public static final int ROMS_MODE_TYPE = 4;
    public static String ROM_PATH = "";
    public static final int SCREEN_MODE_END = 3;
    public static final int SCREEN_MODE_FIT = 0;
    public static final int SCREEN_MODE_FRAME = 2;
    public static final int SCREEN_MODE_FULL = 1;
    public static final int SCREEN_MODE_ORIGIN = 5;
    public static final int SCREEN_MODE_RATIO3TO4 = 4;
    public static final int SCREEN_MODE_RATIO4TO3 = 3;
    public static final int START_MODE_INVITE = 8;
    public static final int START_MODE_LOAD_STATE = 4;
    public static final int START_MODE_MUTICLIENT = 12;
    public static final int START_MODE_MUTILOBBY = 9;
    public static final int START_MODE_MUTILOBBY_FAST = 10;
    public static final int START_MODE_MUTISERVER = 11;
    public static final int START_MODE_NETCLIENT = 2;
    public static final int START_MODE_NETSERVER = 1;
    public static final int START_MODE_NETWORK = 7;
    public static final int START_MODE_PLAYRECORD = 15;
    public static final int START_MODE_PSP_NET_START = 13;
    public static final int START_MODE_RANKING = 14;
    public static final int START_MODE_RESTART = 0;
    public static final int START_MODE_RESUME_LAST = 5;
    public static final int START_MODE_TUTORIAL = 3;
    public static final int START_MODE_WORLD = 6;
    public static final int STATE_PIC_HEIGHT = 90;
    public static final int STATE_PIC_WIDTH = 160;
    public static final String TAG = "PAPAARC";
    public static String TMP_PATH = "tmp/";
    public static boolean autoSearchRom = false;
    public static boolean bAutoLayoutBtn = true;
    public static float controlScale = 1.0f;
    public static int cpuCores = 1;
    public static int curBoardType = 0;
    public static int curGameType = 0;
    public static int curListMode = 0;
    public static int curPlayer = 0;
    public static boolean enableAudio = true;
    public static boolean enableAutoOri = true;
    public static boolean enablePad = true;
    public static boolean enablePhysicalKey = false;
    public static boolean enableVibrator = true;
    public static int frameSkip = -1;
    public static boolean isFirstRun = false;
    public static boolean landscape = false;
    public static int language = 1;
    public static String lastRomPath = "";
    public static boolean multiThread = false;
    public static boolean oneController = false;
    public static int renderMode = 1;
    public static boolean renderQuality = true;
    public static int screenMode = 1;
    public static int screenOrientation = 1;
    public static int turboSpeed = 8;
    public static int versionCode = 0;
    public static String vkeypadLayout = "bottom_bottom";
    public static int vkeypadTransparency = 30;
    public static int waysStick = 8;

    public static void PrintLog(String str, String str2) {
    }

    public static void copyGuide(Context context) {
        boolean z3;
        String str = new File(SDCardUtil.getExternalStorageDirectory(context)) + "/papa91/";
        AssetManager assets = context.getAssets();
        try {
            File file = new File(str, GUIDE_JSON);
            if (file.exists()) {
                return;
            }
            String[] list = assets.list("");
            int i2 = 0;
            while (true) {
                if (i2 >= list.length) {
                    z3 = false;
                    break;
                } else if (list[i2].equals(GUIDE_JSON)) {
                    z3 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (!z3) {
                return;
            }
            InputStream open = assets.open(GUIDE_JSON, 3);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    open.close();
                    return;
                }
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }
}
