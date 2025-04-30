package org.cocos2dx.lib;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.chukong.cocosplay.client.CocosPlayClient;
import java.io.UnsupportedEncodingException;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import net.lingala.zip4j.util.e;
/* loaded from: classes5.dex */
public class Cocos2dxHelper {
    private static final String PREFS_NAME = "Cocos2dxPrefsFile";
    private static final int RUNNABLES_PER_FRAME = 5;
    private static boolean sAccelerometerEnabled;
    private static Activity sActivity;
    private static boolean sActivityVisible;
    private static AssetManager sAssetManager;
    private static Cocos2dxMusic sCocos2dMusic;
    private static Cocos2dxSound sCocos2dSound;
    private static Cocos2dxAccelerometer sCocos2dxAccelerometer;
    private static Cocos2dxHelperListener sCocos2dxHelperListener;
    private static String sFileDirectory;
    private static String sPackageName;
    private static Set<PreferenceManager.OnActivityResultListener> onActivityResultListeners = new LinkedHashSet();
    private static boolean sInited = false;

    /* loaded from: classes5.dex */
    public interface Cocos2dxHelperListener {
        void runOnGLThread(Runnable runnable);

        void showDialog(String str, String str2);

        void showEditTextDialog(String str, String str2, int i2, int i4, int i5, int i6);
    }

    public static void addOnActivityResultListener(PreferenceManager.OnActivityResultListener onActivityResultListener) {
        onActivityResultListeners.add(onActivityResultListener);
    }

    public static void disableAccelerometer() {
        sAccelerometerEnabled = false;
        sCocos2dxAccelerometer.disable();
    }

    public static void enableAccelerometer() {
        sAccelerometerEnabled = true;
        sCocos2dxAccelerometer.enable();
    }

    public static void end() {
        sCocos2dMusic.end();
        sCocos2dSound.end();
    }

    public static Activity getActivity() {
        return sActivity;
    }

    public static AssetManager getAssetManager() {
        return sAssetManager;
    }

    public static float getBackgroundMusicVolume() {
        return sCocos2dMusic.getBackgroundVolume();
    }

    public static boolean getBoolForKey(String str, boolean z3) {
        return sActivity.getSharedPreferences(PREFS_NAME, 4).getBoolean(str, z3);
    }

    public static String getCocos2dxPackageName() {
        return sPackageName;
    }

    public static String getCocos2dxWritablePath() {
        return sFileDirectory;
    }

    public static String getCurrentLanguage() {
        return Locale.getDefault().getLanguage();
    }

    public static int getDPI() {
        Display defaultDisplay;
        if (sActivity != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = sActivity.getWindowManager();
            if (windowManager == null || (defaultDisplay = windowManager.getDefaultDisplay()) == null) {
                return -1;
            }
            defaultDisplay.getMetrics(displayMetrics);
            return (int) (displayMetrics.density * 160.0f);
        }
        return -1;
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    public static double getDoubleForKey(String str, double d4) {
        return sActivity.getSharedPreferences(PREFS_NAME, 4).getFloat(str, (float) d4);
    }

    public static float getEffectsVolume() {
        return sCocos2dSound.getEffectsVolume();
    }

    public static float getFloatForKey(String str, float f4) {
        return sActivity.getSharedPreferences(PREFS_NAME, 4).getFloat(str, f4);
    }

    public static int getIntegerForKey(String str, int i2) {
        return sActivity.getSharedPreferences(PREFS_NAME, 4).getInt(str, i2);
    }

    public static Set<PreferenceManager.OnActivityResultListener> getOnActivityResultListeners() {
        return onActivityResultListeners;
    }

    public static String getStringForKey(String str, String str2) {
        return sActivity.getSharedPreferences(PREFS_NAME, 4).getString(str, str2);
    }

    public static void init(Activity activity) {
        if (sInited) {
            return;
        }
        ApplicationInfo applicationInfo = activity.getApplicationInfo();
        sCocos2dxHelperListener = (Cocos2dxHelperListener) activity;
        sPackageName = applicationInfo.packageName;
        if (CocosPlayClient.isEnabled() && !CocosPlayClient.isDemo()) {
            sFileDirectory = CocosPlayClient.getGameRoot();
        } else {
            sFileDirectory = activity.getFilesDir().getAbsolutePath();
        }
        nativeSetApkPath(applicationInfo.sourceDir);
        sCocos2dxAccelerometer = new Cocos2dxAccelerometer(activity);
        sCocos2dMusic = new Cocos2dxMusic(activity);
        sCocos2dSound = new Cocos2dxSound(activity);
        AssetManager assets = activity.getAssets();
        sAssetManager = assets;
        nativeSetContext(activity, assets);
        Cocos2dxBitmap.setContext(activity);
        sActivity = activity;
        sInited = true;
    }

    public static boolean isActivityVisible() {
        return sActivityVisible;
    }

    public static boolean isBackgroundMusicPlaying() {
        return sCocos2dMusic.isBackgroundMusicPlaying();
    }

    private static native void nativeSetApkPath(String str);

    private static native void nativeSetContext(Context context, AssetManager assetManager);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeSetEditTextDialogResult(byte[] bArr);

    public static void onEnterBackground() {
        sCocos2dSound.onEnterBackground();
        sCocos2dMusic.onEnterBackground();
    }

    public static void onEnterForeground() {
        sCocos2dSound.onEnterForeground();
        sCocos2dMusic.onEnterForeground();
    }

    public static void onPause() {
        sActivityVisible = false;
        if (sAccelerometerEnabled) {
            sCocos2dxAccelerometer.disable();
        }
    }

    public static void onResume() {
        sActivityVisible = true;
        if (sAccelerometerEnabled) {
            sCocos2dxAccelerometer.enable();
        }
    }

    public static boolean openURL(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            sActivity.startActivity(intent);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void pauseAllEffects() {
        sCocos2dSound.pauseAllEffects();
    }

    public static void pauseBackgroundMusic() {
        sCocos2dMusic.pauseBackgroundMusic();
    }

    public static void pauseEffect(int i2) {
        sCocos2dSound.pauseEffect(i2);
    }

    public static void playBackgroundMusic(String str, boolean z3) {
        sCocos2dMusic.playBackgroundMusic(str, z3);
    }

    public static int playEffect(String str, boolean z3, float f4, float f5, float f6) {
        return sCocos2dSound.playEffect(str, z3, f4, f5, f6);
    }

    public static void preloadBackgroundMusic(String str) {
        sCocos2dMusic.preloadBackgroundMusic(str);
    }

    public static void preloadEffect(String str) {
        sCocos2dSound.preloadEffect(str);
    }

    public static void resumeAllEffects() {
        sCocos2dSound.resumeAllEffects();
    }

    public static void resumeBackgroundMusic() {
        sCocos2dMusic.resumeBackgroundMusic();
    }

    public static void resumeEffect(int i2) {
        sCocos2dSound.resumeEffect(i2);
    }

    public static void rewindBackgroundMusic() {
        sCocos2dMusic.rewindBackgroundMusic();
    }

    public static void runOnGLThread(Runnable runnable) {
        ((Cocos2dxActivity) sActivity).runOnGLThread(runnable);
    }

    public static void setAccelerometerInterval(float f4) {
        sCocos2dxAccelerometer.setInterval(f4);
    }

    public static void setBackgroundMusicVolume(float f4) {
        sCocos2dMusic.setBackgroundVolume(f4);
    }

    public static void setBoolForKey(String str, boolean z3) {
        SharedPreferences.Editor edit = sActivity.getSharedPreferences(PREFS_NAME, 4).edit();
        edit.putBoolean(str, z3);
        edit.commit();
    }

    public static void setDoubleForKey(String str, double d4) {
        SharedPreferences.Editor edit = sActivity.getSharedPreferences(PREFS_NAME, 4).edit();
        edit.putFloat(str, (float) d4);
        edit.commit();
    }

    public static void setEditTextDialogResult(String str) {
        try {
            final byte[] bytes = str.getBytes(e.A0);
            sCocos2dxHelperListener.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxHelper.nativeSetEditTextDialogResult(bytes);
                }
            });
        } catch (UnsupportedEncodingException unused) {
        }
    }

    public static void setEffectsVolume(float f4) {
        sCocos2dSound.setEffectsVolume(f4);
    }

    public static void setFloatForKey(String str, float f4) {
        SharedPreferences.Editor edit = sActivity.getSharedPreferences(PREFS_NAME, 4).edit();
        edit.putFloat(str, f4);
        edit.commit();
    }

    public static void setIntegerForKey(String str, int i2) {
        SharedPreferences.Editor edit = sActivity.getSharedPreferences(PREFS_NAME, 4).edit();
        edit.putInt(str, i2);
        edit.commit();
    }

    public static void setKeepScreenOn(boolean z3) {
        ((Cocos2dxActivity) sActivity).setKeepScreenOn(z3);
    }

    public static void setStringForKey(String str, String str2) {
        SharedPreferences.Editor edit = sActivity.getSharedPreferences(PREFS_NAME, 4).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    private static void showDialog(String str, String str2) {
        sCocos2dxHelperListener.showDialog(str, str2);
    }

    private static void showEditTextDialog(String str, String str2, int i2, int i4, int i5, int i6) {
        sCocos2dxHelperListener.showEditTextDialog(str, str2, i2, i4, i5, i6);
    }

    public static void stopAllEffects() {
        sCocos2dSound.stopAllEffects();
    }

    public static void stopBackgroundMusic() {
        sCocos2dMusic.stopBackgroundMusic();
    }

    public static void stopEffect(int i2) {
        sCocos2dSound.stopEffect(i2);
    }

    public static void terminateProcess() {
        Process.killProcess(Process.myPid());
    }

    public static void unloadEffect(String str) {
        sCocos2dSound.unloadEffect(str);
    }
}
