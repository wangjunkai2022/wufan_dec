package com.join.mgps.mod.bean;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import dalvik.system.DexClassLoader;
/* loaded from: classes.dex */
public class ModMeta {
    public static final int MOD_TYPE_MOD = 0;
    public static final int MOD_TYPE_VA = 1;
    private String archiveCloudSwitch;
    private String channelNum;
    private DexClassLoader classLoader;
    private String entryClass;
    private String entryDataClass;
    private String gameId;
    private String goldFingerSwitch;
    private Application hostApp;
    private String hostPackage;
    private String introductionSwitch;
    private int modCode;
    private String modPath;
    private int modType = 0;
    private String modVersion;
    private String nativeLibDir;
    private PackageInfo packageInfo;
    private String packageName;
    private String pluginLibDir;
    private String processName;
    private Resources resources;
    private Application targetApp;
    private int target_version;
    private boolean useNativeLibDir;
    private int userId;

    public void bind(Application application, String str, String str2, Application application2) {
        this.hostApp = application;
        this.packageName = str;
        this.processName = str2;
        this.targetApp = application2;
    }

    public String getArchiveCloudSwitch() {
        return this.archiveCloudSwitch;
    }

    public String getChannelNum() {
        return this.channelNum;
    }

    public DexClassLoader getClassLoader() {
        return this.classLoader;
    }

    public String getEntryClass() {
        return this.entryClass;
    }

    public String getEntryDataClass() {
        return this.entryDataClass;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGoldFingerSwitch() {
        return this.goldFingerSwitch;
    }

    public Application getHostApp() {
        return this.hostApp;
    }

    public String getHostPackage() {
        return this.hostPackage;
    }

    public String getIntroductionSwitch() {
        return this.introductionSwitch;
    }

    public int getModCode() {
        return this.modCode;
    }

    public String getModPath() {
        return this.modPath;
    }

    public int getModType() {
        return this.modType;
    }

    public String getModVersion() {
        return this.modVersion;
    }

    public String getNativeLibDir() {
        return this.nativeLibDir;
    }

    public PackageInfo getPackageInfo() {
        return this.packageInfo;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPluginLibDir() {
        return this.pluginLibDir;
    }

    public String getProcessName() {
        return this.processName;
    }

    public Resources getResources() {
        return this.resources;
    }

    public Application getTargetApp() {
        return this.targetApp;
    }

    public int getTarget_version() {
        return this.target_version;
    }

    public boolean getUseNativeLibDir() {
        return this.useNativeLibDir;
    }

    public int getUserId() {
        return this.userId;
    }

    public boolean isUseNativeLibDir() {
        return this.useNativeLibDir;
    }

    public void setArchiveCloudSwitch(String str) {
        this.archiveCloudSwitch = str;
    }

    public void setChannelNum(String str) {
        this.channelNum = str;
    }

    public void setClassLoader(DexClassLoader dexClassLoader) {
        this.classLoader = dexClassLoader;
    }

    public void setEntryClass(String str) {
        this.entryClass = str;
    }

    public void setEntryDataClass(String str) {
        this.entryDataClass = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setGoldFingerSwitch(String str) {
        this.goldFingerSwitch = str;
    }

    public void setHostApp(Application application) {
        this.hostApp = application;
    }

    public void setHostPackage(String str) {
        this.hostPackage = str;
    }

    public void setIntroductionSwitch(String str) {
        this.introductionSwitch = str;
    }

    public void setModCode(int i2) {
        this.modCode = i2;
    }

    public void setModInfo(String str, PackageInfo packageInfo, DexClassLoader dexClassLoader, Resources resources, String str2) {
        this.modPath = str;
        this.packageInfo = packageInfo;
        this.classLoader = dexClassLoader;
        this.resources = resources;
        this.entryClass = str2;
    }

    public void setModPath(String str) {
        this.modPath = str;
    }

    public void setModType(int i2) {
        this.modType = i2;
    }

    public void setModVersion(String str) {
        this.modVersion = str;
    }

    public void setNativeLibDir(String str) {
        this.nativeLibDir = str;
    }

    public void setPackageInfo(PackageInfo packageInfo) {
        this.packageInfo = packageInfo;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPluginLibDir(String str) {
        this.pluginLibDir = str;
    }

    public void setProcessName(String str) {
        this.processName = str;
    }

    public void setResources(Resources resources) {
        this.resources = resources;
    }

    public void setTargetApp(Application application) {
        this.targetApp = application;
    }

    public void setTarget_version(int i2) {
        this.target_version = i2;
    }

    public void setUseNativeLibDir(boolean z3) {
        this.useNativeLibDir = z3;
    }

    public void setUserId(int i2) {
        this.userId = i2;
    }

    public String toString() {
        return "ModMeta{hostApp=" + this.hostApp + ", targetApp=" + this.targetApp + ", packageName='" + this.packageName + "', processName='" + this.processName + "', modPath='" + this.modPath + "', nativeLibDir='" + this.nativeLibDir + "', classLoader=" + this.classLoader + ", resources=" + this.resources + ", packageInfo=" + this.packageInfo + ", entryClass='" + this.entryClass + "', entryDataClass='" + this.entryDataClass + "', modCode=" + this.modCode + ", modVersion='" + this.modVersion + "', pluginLibDir='" + this.pluginLibDir + "', gameId='" + this.gameId + "', userId=" + this.userId + ", useNativeLibDir=" + this.useNativeLibDir + ", hostPackage='" + this.hostPackage + "', modType=" + this.modType + '}';
    }
}
