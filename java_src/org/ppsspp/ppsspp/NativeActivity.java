package org.ppsspp.ppsspp;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.UiModeManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Point;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Vibrator;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.InputDeviceCompat;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.papa91.arc.util.SDCardUtil;
import com.papa91.arc.view.MenuView;
import com.papa91.arc.view.MenuViewListener;
import com.papa91.wrapper.SystemUiHider;
import com.papa91.wrapper.Wrapper;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Locale;
import org.ppsspp.ppsspp.NativeGLView;
/* loaded from: classes5.dex */
public abstract class NativeActivity extends Activity implements SurfaceHolder.Callback, MenuViewListener, NativeGLView.a {
    public static final int BBK_IQOO = 1;
    public static final int CLOSE_AD = 10;
    public static final int COMPLAIN_PLAYER = 12;
    private static final int EXIT_AD_KEY = 101;
    public static final int GIONEE_SOFTMANAGER = 2;
    public static final int LIKT_TYPE_TO_HTML5 = 4;
    private static final String LOG_TAG = "EmuBaseActivity";
    private static final String PAPA_EMU_INTENT_EXTRA_ACTION_FROM = "PAPA_EMU_INTENT_EXTRA_ACTION_FROM";
    public static final int PAY_CHEAT = 6;
    public static final int PAY_COIN = 4;
    public static final int PAY_JOIN = 7;
    public static final int PAY_SP = 3;
    public static final int RAISE_VIP = 11;
    public static final int REQUEST_CODE_CAMERA_PERMISSION = 3;
    public static final int REQUEST_CODE_LOCATION_PERMISSION = 2;
    public static final int REQUEST_CODE_STORAGE_PERMISSION = 1;
    private static int RESULT_LOAD_IMAGE = 1;
    public static final int SELECT_CHEAT = 5;
    public static final int SELECT_COIN = 2;
    public static final int SELECT_JOIN = 8;
    public static final int SELECT_SP = 1;
    public static final int SHOW_AD = 9;
    private static String TAG = "PPSSPPNativeActivity";
    private static final int TO_PREFECTURE_KEY = 100;
    public static final int VIVO_FILLET = 8;
    public static final int VIVO_NOTCH = 32;
    public static final String appPackName_aso4 = "com.papa91.fc.aso4";
    public static final String appPackName_mgsim = "com.join.android.app.mgsim";
    public static final String appPackName_mha = "com.join.android.app.mgsim.mha";
    public static String commandParameter = null;
    protected static boolean initialized = false;
    public static boolean is_copy = false;
    private static boolean javaGL = true;
    private static org.ppsspp.ppsspp.c mCameraHelper;
    private static org.ppsspp.ppsspp.e mLocationHelper;
    public static String romName;
    public static String runCommand;
    public static String server_ip;
    protected String AD_appId;
    protected FrameLayout adExitRootView;
    private org.ppsspp.ppsspp.a audioFocusChangeListener;
    private AudioManager audioManager;
    private String crc_link_type_val;
    private float densityDpi;
    private int gpixelHeight;
    private int gpixelWidth;
    private Handler hideHandler;
    private Runnable hideRunnable;
    private org.ppsspp.ppsspp.d inputPlayerA;
    private String inputPlayerADesc;
    private org.ppsspp.ppsspp.d inputPlayerB;
    private org.ppsspp.ppsspp.d inputPlayerC;
    private boolean isXperiaPlay;
    private String jump_type;
    private String link_type;
    private String link_type_val;
    private NativeGLView mGLSurfaceView;
    private Surface mSurface;
    private NativeSurfaceView mSurfaceView;
    protected MenuView menuView;
    protected NativeRenderer nativeRenderer;
    protected String onExitBannerId;
    protected String onLoadBannerId;
    protected String onMenuOpenBannerId;
    private int optimalFramesPerBuffer;
    private int optimalSampleRate;
    private int pixelHeight;
    private int pixelWidth;
    private PowerManager powerManager;
    private float refreshRate;
    protected RelativeLayout rootView;
    protected boolean shuttingDown;
    private boolean sustainedPerfSupported;
    private String tpl_type;
    protected SystemUiHider uiHider;
    private Vibrator vibrator;
    private static final String[] permissionsForStorage = {"android.permission.WRITE_EXTERNAL_STORAGE"};
    private static final String[] permissionsForLocation = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};
    private static final String[] permissionsForCamera = {"android.permission.CAMERA"};
    public static String romPath = "";
    public static String GameID = "0";
    public static String UserID = "0";
    public static String appPackName = "com.join.android.app.mgsim.wufun";
    private static int payType = 0;
    public static int[] keyVaule = new int[4];
    public static String screenMOde = "1";
    public static String enableAudio = "1";
    public static String vibriorMode = "1";
    public static String version = "1.5.0";
    public static int fid = 0;
    public static String ugcPath = null;
    protected static int startMode = 0;
    protected static String server_port = "5369";
    public static String Version = "0";
    public static String RoomID = "0";
    public static long startTIme = 0;
    public static int spLock = 0;
    public static String token = "0";
    public static boolean tourist = true;
    private static int systemSettingType = 0;
    public static int m_VIP = 0;
    public static String DEVICE_VERSION = "";
    public static String DEVICE_ID = "";
    public static String httpKeySign = "";
    public static String ExitAdImageFilePath = "";
    public static boolean hasAd = false;
    static String actionEmuintent = "com.papa.intent.activity.view.action.emuintent";
    public static String className = null;
    public static String assetsPath = "/mnt/sdcard/test/assets/";
    public static String soPath = null;
    public static long pspAdShowTime = 0;
    public static long pspAdShowTimeSwitch = 0;
    public static String channelId = "";
    private Thread mRenderLoopThread = null;
    private String shortcutParam = "";
    private boolean bFirstCreated = false;
    private boolean appCodeIsBigger160 = false;
    protected int m_SVIP = 0;
    public boolean onAdShwoIsCloseMine = false;
    String messData = "";
    private int APP_Version = 0;
    public boolean allowPeripheralJoin = true;
    protected String jstring = "";
    private Runnable mEmulationRunner = new a();
    private Point desiredSize = new Point();
    private int badOrientationCount = 0;
    private boolean fullScreenFlag = false;
    int fullScreenCfg = 0;

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String unused = NativeActivity.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("Starting the render loop: ");
            sb.append(NativeActivity.this.mSurface);
            NativeActivity nativeActivity = NativeActivity.this;
            if (!nativeActivity.runEGLRenderLoop(nativeActivity.mSurface)) {
                String unused2 = NativeActivity.TAG;
            }
            String unused3 = NativeActivity.TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Left the render loop: ");
            sb2.append(NativeActivity.this.mSurface);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements View.OnSystemUiVisibilityChangeListener {
        b() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i2) {
            if (i2 == 0) {
                NativeActivity.this.updateSystemUiVisibility();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements DialogInterface.OnDismissListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            NativeActivity.this.updateSystemUiVisibility();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            NativeActivity.this.updateSystemUiVisibility();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class e implements DialogInterface.OnClickListener {
        e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            NativeApp.sendMessage("inputbox_failed", "");
            dialogInterface.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class f implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f73761a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ EditText f73762b;

        f(String str, EditText editText) {
            this.f73761a = str;
            this.f73762b = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            NativeApp.sendMessage("inputbox_completed", this.f73761a + ":" + this.f73762b.getText().toString());
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NativeActivity.this.uiHider.hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class h implements SystemUiHider.OnVisibilityChangeListener {
        h() {
        }

        @Override // com.papa91.wrapper.SystemUiHider.OnVisibilityChangeListener
        public void onVisibilityChange(boolean z3) {
            if (z3) {
                NativeActivity.this.hideUiDelayed();
            }
        }
    }

    private void applyCompat() {
        try {
            Window window = getWindow();
            window.setFlags(1024, 1024);
            window.getDecorView().setSystemUiVisibility(Build.VERSION.SDK_INT >= 19 ? 5894 : 1799);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void clearHiderListener() {
        SystemUiHider systemUiHider = this.uiHider;
        if (systemUiHider != null) {
            systemUiHider.setOnVisibilityChangeListener(null);
        }
        Handler handler = this.hideHandler;
        if (handler != null) {
            handler.removeCallbacks(this.hideRunnable);
        }
    }

    @TargetApi(23)
    private AlertDialog.Builder createDialogBuilderNew() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 16974545);
        builder.setOnDismissListener(new d());
        return builder;
    }

    @TargetApi(14)
    private AlertDialog.Builder createDialogBuilderWithDeviceTheme() {
        return new AlertDialog.Builder(this, 4);
    }

    @TargetApi(17)
    private AlertDialog.Builder createDialogBuilderWithDeviceThemeAndUiVisibility() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 4);
        builder.setOnDismissListener(new c());
        return builder;
    }

    @TargetApi(11)
    private AlertDialog.Builder createDialogBuilderWithTheme() {
        return new AlertDialog.Builder(this, 2);
    }

    private boolean detectOpenGLES20() {
        return ((ActivityManager) getSystemService(TTDownloadField.TT_ACTIVITY)).getDeviceConfigurationInfo().reqGlEsVersion >= 131072;
    }

    private boolean detectOpenGLES30() {
        return ((ActivityManager) getSystemService(TTDownloadField.TT_ACTIVITY)).getDeviceConfigurationInfo().reqGlEsVersion >= 196608;
    }

    @TargetApi(17)
    private void detectOptimalAudioSettings() {
        try {
            this.optimalFramesPerBuffer = Integer.parseInt(this.audioManager.getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER"));
        } catch (NumberFormatException unused) {
        }
        try {
            this.optimalSampleRate = Integer.parseInt(this.audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE"));
        } catch (NumberFormatException unused2) {
        }
    }

    public static void gainAudioFocus(AudioManager audioManager, org.ppsspp.ppsspp.a aVar) {
        if (audioManager != null) {
            audioManager.requestAudioFocus(aVar, 3, 1);
        }
    }

    @TargetApi(16)
    public static String getInputDesc(InputDevice inputDevice) {
        if (Build.VERSION.SDK_INT >= 16) {
            return inputDevice.getDescriptor();
        }
        List<InputDevice.MotionRange> motionRanges = inputDevice.getMotionRanges();
        StringBuilder sb = new StringBuilder();
        for (InputDevice.MotionRange motionRange : motionRanges) {
            sb.append(motionRange.getAxis());
        }
        return sb.toString();
    }

    @TargetApi(9)
    private org.ppsspp.ppsspp.d getInputDeviceState(InputEvent inputEvent) {
        InputDevice device = inputEvent.getDevice();
        if (device == null) {
            return null;
        }
        if (this.inputPlayerA == null) {
            this.inputPlayerADesc = getInputDesc(device);
            StringBuilder sb = new StringBuilder();
            sb.append("Input player A registered: desc = ");
            sb.append(this.inputPlayerADesc);
            this.inputPlayerA = new org.ppsspp.ppsspp.d(device);
        }
        if (this.inputPlayerA.a() == device) {
            return this.inputPlayerA;
        }
        if (this.inputPlayerB == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Input player B registered: desc = ");
            sb2.append(getInputDesc(device));
            this.inputPlayerB = new org.ppsspp.ppsspp.d(device);
        }
        if (this.inputPlayerB.a() == device) {
            return this.inputPlayerB;
        }
        if (this.inputPlayerC == null) {
            this.inputPlayerC = new org.ppsspp.ppsspp.d(device);
        }
        if (this.inputPlayerC.a() == device) {
            return this.inputPlayerC;
        }
        return this.inputPlayerA;
    }

    private synchronized void joinRenderLoopThread() {
        if (javaGL) {
            return;
        }
        if (this.mRenderLoopThread != null) {
            exitEGLRenderLoop();
            try {
                this.mRenderLoopThread.join();
                this.mRenderLoopThread = null;
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
        }
    }

    public static void loseAudioFocus(AudioManager audioManager, org.ppsspp.ppsspp.a aVar) {
        if (audioManager != null) {
            audioManager.abandonAudioFocus(aVar);
        }
    }

    private void updateHider() {
        int i2;
        try {
            boolean z3 = this.fullScreenFlag;
            if (z3) {
                if (z3) {
                    i2 = 6;
                } else {
                    i2 = Wrapper.SDK_INT < 11 ? 3 : 1;
                }
                this.fullScreenCfg = i2;
            } else {
                this.fullScreenCfg = 0;
            }
            if (this.fullScreenCfg != 0) {
                this.hideHandler = new Handler();
                this.hideRunnable = new g();
                SystemUiHider systemUiHider = SystemUiHider.getInstance(this, findViewById(16908290), this.fullScreenCfg);
                this.uiHider = systemUiHider;
                systemUiHider.setup();
                this.uiHider.setOnVisibilityChangeListener(new h());
            }
            SystemUiHider systemUiHider2 = this.uiHider;
            if (systemUiHider2 == null || !systemUiHider2.isVisible()) {
                return;
            }
            this.uiHider.hide();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @TargetApi(9)
    private void updateScreenRotation(String str) {
        setRequestedOrientation(6);
    }

    @TargetApi(24)
    private void updateSustainedPerformanceMode() {
        if (this.sustainedPerfSupported) {
            String queryConfig = NativeApp.queryConfig("sustainedPerformanceMode");
            try {
                getWindow().setSustainedPerformanceMode(Integer.parseInt(queryConfig) != 0);
            } catch (NumberFormatException unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("Invalid perf mode: ");
                sb.append(queryConfig);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"InlinedApi"})
    @TargetApi(14)
    public void updateSystemUiVisibility() {
        boolean useLowProfileButtons = useLowProfileButtons();
        int i2 = useLowProfileButtons;
        if (useImmersive()) {
            i2 = (useLowProfileButtons ? 1 : 0) | 4098;
        }
        if (getWindow().getDecorView() != null) {
            getWindow().getDecorView().setSystemUiVisibility(i2);
        }
        updateDisplayMeasurements();
    }

    private boolean useImmersive() {
        if (Build.VERSION.SDK_INT < 19) {
            return false;
        }
        return NativeApp.queryConfig("immersiveMode").equals("1");
    }

    public void Initialize() {
        this.audioManager = (AudioManager) getSystemService("audio");
        this.audioFocusChangeListener = new org.ppsspp.ppsspp.a();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            detectOptimalAudioSettings();
        }
        PowerManager powerManager = (PowerManager) getSystemService("power");
        this.powerManager = powerManager;
        if (i2 >= 24 && powerManager.isSustainedPerformanceModeSupported()) {
            this.sustainedPerfSupported = true;
            NativeApp.sendMessage("sustained_perf_supported", "1");
        }
        boolean isLandscape = NativeApp.isLandscape();
        StringBuilder sb = new StringBuilder();
        sb.append("Landscape: ");
        sb.append(isLandscape);
        try {
            ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo(getPackageName(), 0);
            int currentModeType = ((UiModeManager) getSystemService("uimode")).getCurrentModeType();
            int i4 = currentModeType != 2 ? currentModeType != 4 ? 0 : 1 : 2;
            this.isXperiaPlay = IsXperiaPlay();
            String applicationLibraryDir = getApplicationLibraryDir(applicationInfo);
            String absolutePath = new File(SDCardUtil.getExternalStorageDirectory(this)).getAbsolutePath();
            File filesDir = getFilesDir();
            String absolutePath2 = filesDir != null ? filesDir.getAbsolutePath() : null;
            String str = applicationInfo.sourceDir;
            String absolutePath3 = getCacheDir().getAbsolutePath();
            NativeApp.audioConfig(this.optimalFramesPerBuffer, this.optimalSampleRate);
            NativeApp.init(Build.MANUFACTURER + ":" + Build.MODEL, i4, Locale.getDefault().getLanguage() + "_" + Locale.getDefault().getCountry(), str, absolutePath2, absolutePath, applicationLibraryDir, absolutePath3, this.shortcutParam, i2, Build.BOARD);
            javaGL = "true".equalsIgnoreCase(NativeApp.queryConfig("androidJavaGL"));
            sendInitialGrants();
            PowerSaveModeReceiver.e(this);
            if (i2 >= 9) {
                updateScreenRotation("Initialize");
            }
            if (detectOpenGLES20()) {
                detectOpenGLES30();
            }
            this.vibrator = (Vibrator) getSystemService("vibrator");
            if (i2 >= 11) {
                checkForVibrator();
            }
            mLocationHelper = new org.ppsspp.ppsspp.e(this);
            if (i2 >= 11) {
                mCameraHelper = new org.ppsspp.ppsspp.c(this);
            }
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            throw new RuntimeException("Unable to locate assets, aborting...");
        }
    }

    public boolean IsXperiaPlay() {
        String str = Build.MODEL;
        return str.equals("R800a") || str.equals("R800i") || str.equals("R800x") || str.equals("R800at") || str.equals("SO-01D") || str.equals("zeus");
    }

    @TargetApi(23)
    boolean askForPermissions(String[] strArr, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            boolean z3 = false;
            for (String str : strArr) {
                if (checkSelfPermission(str) != 0) {
                    z3 = true;
                }
            }
            if (z3) {
                requestPermissions(strArr, i2);
            }
            return z3;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void attachMenu() {
        if (this.rootView == null || this.menuView != null) {
            return;
        }
        MenuView menuView = new MenuView(this);
        this.menuView = menuView;
        this.rootView.addView(menuView);
        this.menuView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.menuView.setMenuViewListener(this);
    }

    @TargetApi(11)
    public void checkForVibrator() {
        if (Build.VERSION.SDK_INT < 11 || this.vibrator.hasVibrator()) {
            return;
        }
        this.vibrator = null;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 12 && !this.isXperiaPlay) {
            org.ppsspp.ppsspp.d inputDeviceState = getInputDeviceState(keyEvent);
            if (inputDeviceState == null) {
                return super.dispatchKeyEvent(keyEvent);
            }
            int keyCode = keyEvent.getKeyCode();
            boolean z3 = false;
            boolean z4 = keyCode == 4 || keyCode == 82;
            int source = keyEvent.getSource();
            if (source != 513 && source != 1025 && source != 16777232) {
                z3 = z4;
            }
            if (!z3) {
                int action = keyEvent.getAction();
                if (action != 0) {
                    if (action == 1 && inputDeviceState.e(keyEvent)) {
                        return true;
                    }
                } else if (inputDeviceState.d(keyEvent)) {
                    return true;
                }
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    protected synchronized void ensureRenderLoop() {
        if (javaGL) {
            return;
        }
        if (this.mSurface == null) {
            return;
        }
        if (this.mRenderLoopThread == null) {
            Thread thread = new Thread(this.mEmulationRunner);
            this.mRenderLoopThread = thread;
            thread.start();
        }
    }

    public void exit() {
    }

    public native void exitEGLRenderLoop();

    public void forum() {
    }

    public void gameOnPause() {
    }

    public void gameOnResume() {
    }

    String getApplicationLibraryDir(ApplicationInfo applicationInfo) {
        String str;
        try {
            str = (String) ApplicationInfo.class.getField("nativeLibraryDir").get(applicationInfo);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException | SecurityException unused) {
            str = null;
        }
        if (str == null) {
            return applicationInfo.dataDir + "/lib";
        }
        return str;
    }

    public boolean getChangeDiskState() {
        return NativeApp.NeedChangeDisk();
    }

    public void getDesiredBackbufferSize(Point point) {
        NativeApp.computeDesiredBackbufferDimensions();
        point.x = NativeApp.getDesiredBackbufferWidth();
        point.y = NativeApp.getDesiredBackbufferHeight();
    }

    public int getInt(String str, Activity activity) {
        if (isXiaomi()) {
            try {
                Class<?> loadClass = activity.getClassLoader().loadClass("android.os.SystemProperties");
                return ((Integer) loadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(loadClass, new String(str), 0)).intValue();
            } catch (ClassNotFoundException e4) {
                e4.printStackTrace();
                return 0;
            } catch (IllegalAccessException e5) {
                e5.printStackTrace();
                return 0;
            } catch (IllegalArgumentException e6) {
                e6.printStackTrace();
                return 0;
            } catch (NoSuchMethodException e7) {
                e7.printStackTrace();
                return 0;
            } catch (InvocationTargetException e8) {
                e8.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    @Override // org.ppsspp.ppsspp.NativeGLView.a
    public void getMode(int i2) {
        MenuView menuView = this.menuView;
        if (menuView == null) {
            return;
        }
        if (i2 == 7) {
            menuView.amplification();
        } else if (i2 == 8) {
            menuView.narrow();
        }
    }

    NativeRenderer getRenderer() {
        return this.nativeRenderer;
    }

    public boolean hasNotchAtHuawei() {
        try {
            Class<?> loadClass = getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) loadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(loadClass, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean hasNotchAtOPPO() {
        return getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    public boolean hasNotchAtVivo() {
        try {
            Class<?> loadClass = getClassLoader().loadClass("android.util.FtFeature");
            return ((Boolean) loadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(loadClass, 32)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean hasNotchScreen(Activity activity) {
        return getInt("ro.miui.notch", activity) == 1 || hasNotchAtHuawei() || hasNotchAtOPPO() || hasNotchAtVivo() || isAndroidP(activity) != null;
    }

    protected void hideUiDelayed() {
        this.hideHandler.removeCallbacks(this.hideRunnable);
        if (this.fullScreenCfg != 0) {
            this.hideHandler.postDelayed(this.hideRunnable, 3000L);
        }
    }

    public void inputBox(String str, String str2, String str3) {
        AlertDialog.Builder createDialogBuilderNew;
        FrameLayout frameLayout = new FrameLayout(this);
        EditText editText = new EditText(this);
        editText.setGravity(17);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(2, 20, 2, 20);
        frameLayout.addView(editText, layoutParams);
        editText.setInputType(1);
        editText.setText(str2);
        editText.selectAll();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 11) {
            createDialogBuilderNew = new AlertDialog.Builder(this);
        } else if (i2 < 14) {
            createDialogBuilderNew = createDialogBuilderWithTheme();
        } else if (i2 < 17) {
            createDialogBuilderNew = createDialogBuilderWithDeviceTheme();
        } else if (i2 < 23) {
            createDialogBuilderNew = createDialogBuilderWithDeviceThemeAndUiVisibility();
        } else {
            createDialogBuilderNew = createDialogBuilderNew();
        }
        AlertDialog create = createDialogBuilderNew.setView(frameLayout).setTitle(str).setPositiveButton(str3, new f(str, editText)).setNegativeButton("Cancel", new e()).create();
        create.setCancelable(true);
        create.show();
    }

    public DisplayCutout isAndroidP(Activity activity) {
        WindowInsets rootWindowInsets;
        View decorView = activity.getWindow().getDecorView();
        if (decorView == null || Build.VERSION.SDK_INT < 28 || (rootWindowInsets = decorView.getRootWindowInsets()) == null) {
            return null;
        }
        return rootWindowInsets.getDisplayCutout();
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean isRankGame() {
        return false;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean isShowOnekey() {
        return false;
    }

    public boolean isXiaomi() {
        return "Xiaomi".equals(Build.MANUFACTURER);
    }

    public void keysSetting() {
    }

    public void loadRom() {
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        if (i2 == RESULT_LOAD_IMAGE && i4 == -1 && intent != null) {
            String[] strArr = {"_data"};
            Cursor query = getContentResolver().query(intent.getData(), strArr, null, null, null);
            query.moveToFirst();
            String string = query.getString(query.getColumnIndex(strArr[0]));
            query.close();
            NativeApp.sendMessage("bgImage_updated", string);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT >= 14) {
            updateSystemUiVisibility();
        }
        this.densityDpi = configuration.densityDpi;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextRenderer.init(this);
        this.shuttingDown = false;
        registerCallbacks();
        updateDisplayMeasurements();
        if (!initialized) {
            if (!TextUtils.isEmpty(this.jstring)) {
                NativeApp.setJson(this.jstring);
            }
            Initialize();
            initialized = true;
        }
        updateScreenRotation("onCreate");
        updateSustainedPerformanceMode();
        setVolumeControlStream(3);
        gainAudioFocus(this.audioManager, this.audioFocusChangeListener);
        NativeApp.audioInit();
        if (javaGL) {
            this.mGLSurfaceView = new NativeGLView(this);
            this.nativeRenderer = new NativeRenderer(this);
            this.mGLSurfaceView.setEGLContextClientVersion(2);
            this.mGLSurfaceView.getHolder().addCallback(this);
            if (Build.MANUFACTURER == "OUYA") {
                this.mGLSurfaceView.getHolder().setFormat(2);
                this.mGLSurfaceView.setEGLConfigChooser(new org.ppsspp.ppsspp.g());
            }
            this.mGLSurfaceView.setRenderer(this.nativeRenderer);
            setContentView(wrapMenu(this.mGLSurfaceView));
            this.mGLSurfaceView.setFocusable(true);
            com.yatoooon.screenadaptation.e.a().f(getWindow().getDecorView());
        } else {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 14) {
                updateSystemUiVisibility();
                if (i2 >= 19) {
                    setupSystemUiCallback();
                }
            }
            NativeSurfaceView nativeSurfaceView = new NativeSurfaceView(this);
            this.mSurfaceView = nativeSurfaceView;
            nativeSurfaceView.getHolder().addCallback(this);
            setContentView(wrapMenu(this.mSurfaceView));
            this.mSurfaceView.setFocusable(true);
            com.yatoooon.screenadaptation.e.a().f(getWindow().getDecorView());
            ensureRenderLoop();
        }
        if (Build.VERSION.SDK_INT >= 28) {
            Point point = new Point();
            ((WindowManager) getSystemService("window")).getDefaultDisplay().getRealSize(point);
            this.gpixelWidth = point.x;
            this.gpixelHeight = point.y;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (javaGL) {
            if (this.nativeRenderer.a()) {
                int i2 = 200;
                do {
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException unused) {
                    }
                    i2--;
                    if (!this.nativeRenderer.a()) {
                        break;
                    }
                } while (i2 > 0);
            }
            this.mGLSurfaceView.f();
            this.mGLSurfaceView = null;
            this.audioFocusChangeListener = null;
            this.audioManager = null;
        } else {
            this.mSurfaceView.f();
            this.mSurfaceView = null;
        }
        NativeApp.audioShutdown();
        if (this.shuttingDown || isFinishing()) {
            unregisterCallbacks();
            NativeApp.shutdown();
            initialized = false;
        }
    }

    @Override // android.app.Activity
    @TargetApi(12)
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & InputDeviceCompat.SOURCE_JOYSTICK) != 0 && Build.VERSION.SDK_INT >= 12) {
            org.ppsspp.ppsspp.d inputDeviceState = getInputDeviceState(motionEvent);
            if (inputDeviceState == null) {
                return super.onGenericMotionEvent(motionEvent);
            }
            inputDeviceState.c(motionEvent);
            return true;
        }
        if ((motionEvent.getSource() & 2) != 0) {
            int action = motionEvent.getAction();
            if (action != 7) {
                if (action == 8) {
                    NativeApp.mouseWheelEvent(motionEvent.getX(), motionEvent.getY());
                }
            }
            return true;
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    @SuppressLint({"NewApi"})
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        boolean z3 = keyEvent.getRepeatCount() > 0;
        if (i2 == 4) {
            exit();
            return true;
        } else if (i2 == 82 || i2 == 84) {
            return true;
        } else {
            switch (i2) {
                case 19:
                case 20:
                case 21:
                case 22:
                    if (Build.VERSION.SDK_INT >= 12 && keyEvent.getSource() == 16777232) {
                        return super.onKeyDown(i2, keyEvent);
                    }
                    break;
            }
            return NativeApp.keyDown(0, i2, z3);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    @SuppressLint({"NewApi"})
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            if (keyEvent.isAltPressed()) {
                NativeApp.keyUp(0, 1004);
            } else if (NativeApp.isAtTopLevel()) {
                return super.onKeyUp(i2, keyEvent);
            } else {
                NativeApp.keyUp(0, i2);
            }
            return true;
        } else if (i2 != 82 && i2 != 84) {
            switch (i2) {
                case 19:
                case 20:
                case 21:
                case 22:
                    if (Build.VERSION.SDK_INT >= 12 && keyEvent.getSource() == 16777232) {
                        return super.onKeyUp(i2, keyEvent);
                    }
                    break;
            }
            return NativeApp.keyUp(0, i2);
        } else {
            NativeApp.keyUp(0, i2);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        loseAudioFocus(this.audioManager, this.audioFocusChangeListener);
        NativeApp.pause();
        if (!javaGL) {
            this.mSurfaceView.g();
            joinRenderLoopThread();
            return;
        }
        NativeGLView nativeGLView = this.mGLSurfaceView;
        if (nativeGLView != null) {
            nativeGLView.onPause();
        }
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void onRankFinish(int i2) {
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (i2 == 1) {
            if (permissionsGranted(strArr, iArr)) {
                NativeApp.sendMessage("permission_granted", "storage");
                loadRom();
                return;
            }
            NativeApp.sendMessage("permission_denied", "storage");
        } else if (i2 != 2) {
            if (i2 == 3 && mCameraHelper != null && permissionsGranted(strArr, iArr)) {
                mCameraHelper.e();
            }
        } else if (permissionsGranted(strArr, iArr)) {
            mLocationHelper.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        updateSustainedPerformanceMode();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 14) {
            updateSystemUiVisibility();
        }
        if (javaGL || i2 >= 9) {
            updateScreenRotation("onResume");
        }
        if (javaGL) {
            NativeGLView nativeGLView = this.mGLSurfaceView;
            if (nativeGLView != null) {
                nativeGLView.onResume();
            }
        } else {
            NativeSurfaceView nativeSurfaceView = this.mSurfaceView;
            if (nativeSurfaceView != null) {
                nativeSurfaceView.h();
            }
        }
        gainAudioFocus(this.audioManager, this.audioFocusChangeListener);
        NativeApp.resume();
        if (javaGL) {
            return;
        }
        ensureRenderLoop();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    public void onTimerTick(long j4) {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z3) {
        applyCompat();
        super.onWindowFocusChanged(z3);
        updateSustainedPerformanceMode();
    }

    public void onWindowFocusChangedCall(boolean z3) {
        SystemUiHider systemUiHider = this.uiHider;
        if (systemUiHider != null) {
            if (z3 && this.fullScreenFlag) {
                systemUiHider.hide();
            } else {
                systemUiHider.show();
            }
        }
    }

    boolean permissionsGranted(String[] strArr, int[] iArr) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x01b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean processCommand(java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ppsspp.ppsspp.NativeActivity.processCommand(java.lang.String, java.lang.String):boolean");
    }

    public void quickSlot() {
    }

    @Override // android.app.Activity
    @SuppressLint({"NewApi"})
    public void recreate() {
        if (Build.VERSION.SDK_INT >= 11) {
            super.recreate();
            return;
        }
        startActivity(getIntent());
        finish();
    }

    public native void registerCallbacks();

    public void reload() {
    }

    public native boolean runEGLRenderLoop(Surface surface);

    @TargetApi(23)
    public void sendInitialGrants() {
        if (Build.VERSION.SDK_INT >= 23) {
            if (checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                NativeApp.sendMessage("permission_granted", "storage");
            } else {
                NativeApp.sendMessage("permission_denied", "storage");
            }
        }
    }

    public void setShortcutParam(String str) {
        if (str == null) {
            str = "";
        }
        this.shortcutParam = str;
    }

    public void setSystemUiHide(boolean z3) {
        this.fullScreenFlag = z3;
        updateHider();
        SystemUiHider systemUiHider = this.uiHider;
        if (systemUiHider != null) {
            if (this.fullScreenFlag) {
                if (systemUiHider.isVisible()) {
                    this.uiHider.hide();
                    return;
                }
                return;
            }
            systemUiHider.show();
        }
    }

    @TargetApi(19)
    void setupSystemUiCallback() {
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new b());
    }

    public void showMenuCheating() {
    }

    public void showMenuPerformance() {
    }

    public void showMenuSlot() {
    }

    public void showTimeLimitedDialog1() {
    }

    public void showTimeLimitedDialog2() {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i4, int i5) {
        StringBuilder sb = new StringBuilder();
        sb.append("surfaceChanged: isCreating:");
        sb.append(surfaceHolder.isCreating());
        sb.append(" holder: ");
        sb.append(surfaceHolder.toString());
        if (surfaceHolder.isCreating()) {
            Point point = this.desiredSize;
            if (point.x > 0 && point.y > 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("holder.isCreating = true, ignoring. width=");
                sb2.append(i4);
                sb2.append(" height=");
                sb2.append(i5);
                sb2.append(" desWidth=");
                sb2.append(this.desiredSize.x);
                sb2.append(" desHeight=");
                sb2.append(this.desiredSize.y);
                return;
            }
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Surface changed. Resolution: ");
        sb3.append(i4);
        sb3.append("x");
        sb3.append(i5);
        sb3.append(" Format: ");
        sb3.append(i2);
        NativeApp.backbufferResize(i4, i5, i2);
        Surface surface = surfaceHolder.getSurface();
        this.mSurface = surface;
        if (!javaGL) {
            if (surface == null) {
                joinRenderLoopThread();
            } else {
                ensureRenderLoop();
            }
        }
        updateSustainedPerformanceMode();
        updateDisplayMeasurements();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (!this.bFirstCreated) {
            if (Build.VERSION.SDK_INT >= 28) {
                if (hasNotchScreen(this)) {
                    int width = surfaceHolder.getSurfaceFrame().width() - this.gpixelWidth;
                    int height = surfaceHolder.getSurfaceFrame().height();
                    int i2 = this.gpixelHeight;
                    this.pixelWidth = this.gpixelWidth + (width / 2);
                    this.pixelHeight = i2 + ((height - i2) / 2);
                } else {
                    this.pixelWidth = this.gpixelWidth;
                    this.pixelHeight = this.gpixelHeight;
                }
            } else {
                this.pixelWidth = surfaceHolder.getSurfaceFrame().width();
                this.pixelHeight = surfaceHolder.getSurfaceFrame().height();
            }
            this.bFirstCreated = true;
        }
        int requestedOrientation = getRequestedOrientation();
        boolean z3 = requestedOrientation == 1 || requestedOrientation == 9;
        boolean z4 = this.pixelHeight > this.pixelWidth;
        int i4 = Build.VERSION.SDK_INT;
        if (i4 < 19 && this.badOrientationCount < 3 && z3 != z4 && requestedOrientation != -1) {
            StringBuilder sb = new StringBuilder();
            sb.append("Bad orientation detected (w=");
            sb.append(this.pixelWidth);
            sb.append(" h=");
            sb.append(this.pixelHeight);
            sb.append("! Recreating activity.");
            this.badOrientationCount++;
            recreate();
            return;
        }
        if (z3 == z4) {
            this.badOrientationCount = 0;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Bad orientation detected but ignored");
            sb2.append(i4 < 19 ? " (sdk version)" : "");
            int i5 = this.pixelWidth;
            int i6 = this.pixelHeight;
            if (i5 < i6) {
                this.pixelWidth = i6;
                this.pixelHeight = i5;
            }
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Surface created. pixelWidth=");
        sb3.append(this.pixelWidth);
        sb3.append(", pixelHeight=");
        sb3.append(this.pixelHeight);
        sb3.append(" holder: ");
        sb3.append(surfaceHolder.toString());
        sb3.append(" or: ");
        sb3.append(requestedOrientation);
        NativeApp.setDisplayParameters(this.pixelWidth, this.pixelHeight, (int) this.densityDpi, this.refreshRate);
        getDesiredBackbufferSize(this.desiredSize);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Setting fixed size ");
        sb4.append(this.desiredSize.x);
        sb4.append(" x ");
        sb4.append(this.desiredSize.y);
        Point point = this.desiredSize;
        surfaceHolder.setFixedSize(point.x, point.y);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mSurface = null;
        if (!javaGL) {
            joinRenderLoopThread();
        }
        surfaceHolder.setSizeFromLayout();
    }

    public native void unregisterCallbacks();

    @TargetApi(17)
    public void updateDisplayMeasurements() {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (useImmersive() && Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealMetrics(displayMetrics);
        } else {
            defaultDisplay.getMetrics(displayMetrics);
        }
        this.densityDpi = displayMetrics.densityDpi;
        float refreshRate = defaultDisplay.getRefreshRate();
        this.refreshRate = refreshRate;
        NativeApp.setDisplayParameters(displayMetrics.widthPixels, displayMetrics.heightPixels, (int) this.densityDpi, refreshRate);
    }

    public boolean useLowProfileButtons() {
        return true;
    }

    public void vibrate(boolean z3) {
    }

    public void voice(boolean z3) {
    }

    View wrapMenu(View... viewArr) {
        if (viewArr == null) {
            return null;
        }
        if (viewArr.length == 0) {
            return viewArr[0];
        }
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.rootView = relativeLayout;
        for (View view : viewArr) {
            relativeLayout.addView(view);
            view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            if (view instanceof MenuView) {
                MenuView menuView = (MenuView) view;
                this.menuView = menuView;
                menuView.setMenuViewListener(this);
            } else if (view instanceof NativeGLView) {
                ((NativeGLView) view).setListener(this);
            } else if (view instanceof NativeSurfaceView) {
                ((NativeSurfaceView) view).setListener(this);
            }
        }
        return relativeLayout;
    }
}
