package com.mob.tools.utils;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.mob.MobSDK;
import com.mob.commons.a.o;
import com.mob.tools.MobLog;
import com.mob.tools.proguard.PublicMemberKeeper;
import com.mob.tools.utils.ReflectHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes4.dex */
public class DeviceHelper implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private static DeviceHelper f53930a = new DeviceHelper();

    /* renamed from: b  reason: collision with root package name */
    private Context f53931b;

    public static Object currentActivityThread() {
        return com.mob.tools.a.c.a(MobSDK.getContext()).b().aL();
    }

    public static synchronized DeviceHelper getInstance(Context context) {
        DeviceHelper deviceHelper;
        synchronized (DeviceHelper.class) {
            DeviceHelper deviceHelper2 = f53930a;
            if (deviceHelper2.f53931b == null && context != null) {
                deviceHelper2.f53931b = context.getApplicationContext();
            }
            deviceHelper = f53930a;
        }
        return deviceHelper;
    }

    public static Object invokeRuntimeExec(String str) throws Throwable {
        return ReflectHelper.invokeInstanceMethod(ReflectHelper.invokeStaticMethod(ReflectHelper.importClass(o.a("017^igeg1k0egfmfeegelggfmhfedelReAef.mj")), o.a("010:gg@jeGhfedel6e$ef8mj"), new Object[0]), o.a("004jYemWj>eh"), new Object[]{str}, new Class[]{String.class});
    }

    public String Base64AES(String str, String str2) {
        return com.mob.tools.a.c.a(this.f53931b).b().a(str, str2);
    }

    public boolean checkNetworkAvailable() {
        return com.mob.tools.a.c.a(this.f53931b).b().ah();
    }

    public boolean checkPad() {
        return com.mob.tools.a.c.a(this.f53931b).b().c();
    }

    public boolean checkPermission(String str) throws Throwable {
        return com.mob.tools.a.c.a(this.f53931b).b().h(str);
    }

    public boolean checkUA() {
        return com.mob.tools.a.c.a(this.f53931b).b().f();
    }

    public boolean cx() {
        return com.mob.tools.a.c.a(this.f53931b).b().b();
    }

    public boolean debugable() {
        return com.mob.tools.a.c.a(this.f53931b).b().d();
    }

    public boolean devEnable() {
        return com.mob.tools.a.c.a(this.f53931b).b().g();
    }

    public String getAD() {
        return com.mob.tools.a.c.a(this.f53931b).b().aZ();
    }

    public ApplicationInfo getAInfo() {
        return com.mob.tools.a.c.a(this.f53931b).b().bd();
    }

    public HashMap<String, Object> getALLD() {
        return com.mob.tools.a.c.a(this.f53931b).b().bc();
    }

    public String getAdvertisingID() throws Throwable {
        return com.mob.tools.a.c.a(this.f53931b).b().m();
    }

    public int getAlbumCount() {
        return com.mob.tools.a.c.a(this.f53931b).b().ab();
    }

    public String getAppLanguage() {
        return com.mob.tools.a.c.a(this.f53931b).b().ac();
    }

    public long getAppLastUpdateTime() {
        return com.mob.tools.a.c.a(this.f53931b).b().aP();
    }

    public String getAppName() {
        return com.mob.tools.a.c.a(this.f53931b).b().aF();
    }

    public int getAppVersion() {
        return com.mob.tools.a.c.a(this.f53931b).b().aG();
    }

    public String getAppVersionName() {
        return com.mob.tools.a.c.a(this.f53931b).b().aH();
    }

    public Context getApplication() {
        return com.mob.tools.a.c.a(this.f53931b).b().aM();
    }

    public ArrayList<HashMap<String, Object>> getAvailableWifiList() {
        return com.mob.tools.a.c.a(this.f53931b).b().O();
    }

    public ArrayList<HashMap<String, Object>> getAvailableWifiListOneKey() {
        return com.mob.tools.a.c.a(this.f53931b).b().be();
    }

    public String getBaseband() {
        return com.mob.tools.a.c.a(this.f53931b).b().aq();
    }

    public void getBatteryState(final ReflectHelper.a<HashMap<String, Object>, Void> aVar) {
        if (aVar != null) {
            com.mob.tools.a.c.a(this.f53931b).b().a(new Handler.Callback() { // from class: com.mob.tools.utils.DeviceHelper.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    aVar.a((HashMap) message.obj);
                    return false;
                }
            });
        }
    }

    public String getBluetoothName() {
        return com.mob.tools.a.c.a(this.f53931b).b().D();
    }

    public String getBoard() {
        return com.mob.tools.a.c.a(this.f53931b).b().aQ();
    }

    public String getBoardFromSysProperty() {
        return com.mob.tools.a.c.a(this.f53931b).b().ar();
    }

    public String getBoardPlatform() {
        return com.mob.tools.a.c.a(this.f53931b).b().as();
    }

    public String getBrand() {
        return com.mob.tools.a.c.a(this.f53931b).b().A();
    }

    public String getBssid() {
        return com.mob.tools.a.c.a(this.f53931b).b().s();
    }

    public String getCInfo() {
        return com.mob.tools.a.c.a(this.f53931b).b().aW();
    }

    public HashMap<String, String> getCPUFreq() {
        return com.mob.tools.a.c.a(this.f53931b).b().am();
    }

    public HashMap<String, Object> getCPUInfo() {
        return com.mob.tools.a.c.a(this.f53931b).b().U();
    }

    public String getCPUType() {
        return com.mob.tools.a.c.a(this.f53931b).b().an();
    }

    public ArrayList<HashMap<String, String>> getCamResolution() {
        return com.mob.tools.a.c.a(this.f53931b).b().aj();
    }

    public String getCarrier() {
        return getCarrier(false);
    }

    public String getCarrierName() {
        return getCarrierName(false);
    }

    public int getCdmaBid() {
        return com.mob.tools.a.c.a(this.f53931b).b().J();
    }

    public int getCdmaLat() {
        return com.mob.tools.a.c.a(this.f53931b).b().H();
    }

    public int getCdmaLon() {
        return com.mob.tools.a.c.a(this.f53931b).b().I();
    }

    public int getCdmaNid() {
        return com.mob.tools.a.c.a(this.f53931b).b().L();
    }

    public int getCdmaSid() {
        return com.mob.tools.a.c.a(this.f53931b).b().K();
    }

    public int getCellId() {
        return com.mob.tools.a.c.a(this.f53931b).b().E();
    }

    public int getCellLac() {
        return com.mob.tools.a.c.a(this.f53931b).b().F();
    }

    public String getCgroup() {
        return com.mob.tools.a.c.a(this.f53931b).b().aV();
    }

    public String getCurrentProcessName() {
        return com.mob.tools.a.c.a(this.f53931b).b().aJ();
    }

    public HashMap<String, Object> getCurrentWifiInfo() {
        return com.mob.tools.a.c.a(this.f53931b).b().N();
    }

    public int getDataNtType() {
        return com.mob.tools.a.c.a(this.f53931b).b().ai();
    }

    public HashMap<String, Object> getDefaultIM() {
        return com.mob.tools.a.c.a(this.f53931b).b().aA();
    }

    public String getDefaultIMPkg() {
        return com.mob.tools.a.c.a(this.f53931b).b().az();
    }

    public String getDefaultResolvePkg(String str) {
        return com.mob.tools.a.c.a(this.f53931b).b().c(str);
    }

    public String getDetailNetworkTypeForStatic() {
        return com.mob.tools.a.c.a(this.f53931b).b().ag();
    }

    public String getDeviceData() {
        return com.mob.tools.a.c.a(this.f53931b).b().aN();
    }

    public String getDeviceDataNotAES() {
        return com.mob.tools.a.c.a(this.f53931b).b().aO();
    }

    public String getDeviceId() {
        return com.mob.tools.a.c.a(this.f53931b).b().ax();
    }

    public String getDeviceKey() {
        return com.mob.tools.a.c.a(this.f53931b).b().ay();
    }

    public HashMap<String, Object> getDeviceMemUsage() {
        return com.mob.tools.a.c.a(this.f53931b).b().at();
    }

    public String getDeviceName() {
        return com.mob.tools.a.c.a(this.f53931b).b().aR();
    }

    public String getDeviceType() {
        return com.mob.tools.a.c.a(this.f53931b).b().B();
    }

    public String getDisplayId() {
        return com.mob.tools.a.c.a(this.f53931b).b().aS();
    }

    public String getFingerprint() {
        return com.mob.tools.a.c.a(this.f53931b).b().aT();
    }

    public String getFlavor() {
        return com.mob.tools.a.c.a(this.f53931b).b().ao();
    }

    public ArrayList<HashMap<String, String>> getIA(boolean z3) {
        return com.mob.tools.a.c.a(this.f53931b).b().e(z3);
    }

    public String getIMEI() {
        return com.mob.tools.a.c.a(this.f53931b).b().n();
    }

    public ArrayList<HashMap<String, Object>> getIMList() {
        return com.mob.tools.a.c.a(this.f53931b).b().aB();
    }

    public String getIMSI() {
        return com.mob.tools.a.c.a(this.f53931b).b().p();
    }

    public String getIPAddress() {
        return com.mob.tools.a.c.a(this.f53931b).b().au();
    }

    public Location getLocation(int i2, int i4, boolean z3) {
        return com.mob.tools.a.c.a(this.f53931b).b().a(i2, i4, z3);
    }

    public String getMIUIVersion() {
        return com.mob.tools.a.c.a(this.f53931b).b().w();
    }

    public String getManufacturer() {
        return com.mob.tools.a.c.a(this.f53931b).b().z();
    }

    public HashMap<String, Long> getMemoryInfo() {
        return com.mob.tools.a.c.a(this.f53931b).b().aa();
    }

    public String getModel() {
        return com.mob.tools.a.c.a(this.f53931b).b().y();
    }

    public ArrayList<HashMap<String, Object>> getNeighboringCellInfo() {
        return com.mob.tools.a.c.a(this.f53931b).b().M();
    }

    public String getNetworkType() {
        return com.mob.tools.a.c.a(this.f53931b).b().ae();
    }

    public String getNetworkTypeForStatic() {
        return com.mob.tools.a.c.a(this.f53931b).b().af();
    }

    public String getOD() {
        return com.mob.tools.a.c.a(this.f53931b).b().aX();
    }

    public String getODH() {
        return com.mob.tools.a.c.a(this.f53931b).b().aY();
    }

    public String getOSCountry() {
        return com.mob.tools.a.c.a(this.f53931b).b().T();
    }

    public String getOSLanguage() {
        return com.mob.tools.a.c.a(this.f53931b).b().S();
    }

    public int getOSVersionInt() {
        return com.mob.tools.a.c.a(this.f53931b).b().Q();
    }

    public String getOSVersionName() {
        return com.mob.tools.a.c.a(this.f53931b).b().R();
    }

    public PackageInfo getPInfo(String str, int i2) {
        return com.mob.tools.a.c.a(this.f53931b).b().a(false, 0, str, i2);
    }

    public String getPackageName() {
        return com.mob.tools.a.c.a(this.f53931b).b().aE();
    }

    public int getPlatformCode() {
        return 1;
    }

    public int getPsc() {
        return com.mob.tools.a.c.a(this.f53931b).b().G();
    }

    public String getQemuKernel() {
        return com.mob.tools.a.c.a(this.f53931b).b().Y();
    }

    public String getRadioVersion() {
        return com.mob.tools.a.c.a(this.f53931b).b().aU();
    }

    public List<String> getResolvePkgs(String str) {
        return com.mob.tools.a.c.a(this.f53931b).b().d(str);
    }

    public ArrayList<HashMap<String, String>> getSA() {
        return com.mob.tools.a.c.a(this.f53931b).b().aw();
    }

    public String getSSID() {
        return com.mob.tools.a.c.a(this.f53931b).b().r();
    }

    public int getScreenBrightness() {
        return com.mob.tools.a.c.a(this.f53931b).b().W();
    }

    public int getScreenBrightnessMode() {
        return com.mob.tools.a.c.a(this.f53931b).b().X();
    }

    public String getScreenSize() {
        return com.mob.tools.a.c.a(this.f53931b).b().ad();
    }

    public String getSdcardPath() {
        return com.mob.tools.a.c.a(this.f53931b).b().aC();
    }

    public boolean getSdcardState() {
        return false;
    }

    public String getSerialno() {
        return com.mob.tools.a.c.a(this.f53931b).b().l();
    }

    public String getSignMD5() {
        return com.mob.tools.a.c.a(this.f53931b).b().aD();
    }

    public String getSimSerialNumber() {
        return com.mob.tools.a.c.a(this.f53931b).b().v();
    }

    public HashMap<String, HashMap<String, Long>> getSizeInfo() {
        return com.mob.tools.a.c.a(this.f53931b).b().Z();
    }

    public HashMap<String, Object> getSupport() {
        return com.mob.tools.a.c.a(this.f53931b).b().al();
    }

    public String getSystemProperties(String str) {
        return com.mob.tools.a.c.a(this.f53931b).b().b(str);
    }

    public Object getSystemServiceSafe(String str) {
        try {
            return this.f53931b.getSystemService(str);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    public ArrayList<ArrayList<String>> getTTYDriversInfo() {
        return com.mob.tools.a.c.a(this.f53931b).b().V();
    }

    public String getTimezone() {
        return com.mob.tools.a.c.a(this.f53931b).b().ak();
    }

    public Activity getTopActivity() {
        return null;
    }

    public HashMap<String, Object> getTraffic() {
        return com.mob.tools.a.c.a(this.f53931b).b().ap();
    }

    public String getUD() {
        return com.mob.tools.a.c.a(this.f53931b).b().bb();
    }

    public String getVD() {
        return com.mob.tools.a.c.a(this.f53931b).b().ba();
    }

    public void hideSoftInput(View view) {
        com.mob.tools.a.c.a(this.f53931b).b().a(view);
    }

    public <T> T invokeInstanceMethod(Object obj, String str, Object... objArr) {
        try {
            return (T) ReflectHelper.invokeInstanceMethod(obj, str, objArr);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public boolean isFakePass(String str) {
        return com.mob.tools.a.c.a(this.f53931b).b().a(str);
    }

    public boolean isInMainProcess() {
        return com.mob.tools.a.c.a(this.f53931b).b().aI();
    }

    public boolean isPackageInstalled(String str) {
        return com.mob.tools.a.c.a(this.f53931b).b().e(str);
    }

    public boolean isRooted() {
        return com.mob.tools.a.c.a(this.f53931b).b().a();
    }

    public boolean isSensitiveDevice() {
        return com.mob.tools.a.c.a(this.f53931b).b().k();
    }

    public boolean isSmlt() {
        return com.mob.tools.a.c.a(this.f53931b).b().j();
    }

    public boolean isWifiProxy() {
        return com.mob.tools.a.c.a(this.f53931b).b().i();
    }

    public String[] queryIMEI() {
        return com.mob.tools.a.c.a(this.f53931b).b().C();
    }

    public String[] queryIMSI() {
        return com.mob.tools.a.c.a(this.f53931b).b().q();
    }

    public List<ResolveInfo> queryIntentServices(Intent intent, int i2) {
        return com.mob.tools.a.c.a(this.f53931b).b().a(intent, i2);
    }

    public void regReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) throws Throwable {
        com.mob.tools.a.c.a(this.f53931b).b().a(broadcastReceiver, intentFilter);
    }

    public void registerWifiScanReceiver(BlockingQueue<Boolean> blockingQueue) {
        com.mob.tools.a.c.a(this.f53931b).b().a(blockingQueue);
    }

    public ResolveInfo resolveActivity(Intent intent, int i2) {
        return com.mob.tools.a.c.a(this.f53931b).b().b(intent, i2);
    }

    public boolean scanWifiList() {
        return com.mob.tools.a.c.a(this.f53931b).b().P();
    }

    public void showSoftInput(View view) {
        com.mob.tools.a.c.a(this.f53931b).b().b(view);
    }

    public void unregReceiver(BroadcastReceiver broadcastReceiver) throws Throwable {
        com.mob.tools.a.c.a(this.f53931b).b().a(broadcastReceiver);
    }

    public boolean usbEnable() {
        return com.mob.tools.a.c.a(this.f53931b).b().h();
    }

    public boolean vpn() {
        return com.mob.tools.a.c.a(this.f53931b).b().e();
    }

    public ApplicationInfo getAInfo(String str, int i2) {
        return com.mob.tools.a.c.a(this.f53931b).b().a(str, i2);
    }

    public String getAppName(String str) {
        return com.mob.tools.a.c.a(this.f53931b).b().g(str);
    }

    public String getCarrier(boolean z3) {
        return com.mob.tools.a.c.a(this.f53931b).b().c(z3);
    }

    public String getCarrierName(boolean z3) {
        return com.mob.tools.a.c.a(this.f53931b).b().d(z3);
    }

    public String getDeviceKey(boolean z3) {
        return com.mob.tools.a.c.a(this.f53931b).b().f(z3);
    }

    public PackageInfo getPInfo(boolean z3, String str, int i2) {
        return com.mob.tools.a.c.a(this.f53931b).b().a(z3, 0, str, i2);
    }

    public String getSignMD5(String str) {
        return com.mob.tools.a.c.a(this.f53931b).b().f(str);
    }

    public PackageInfo getPInfo(int i2, String str, int i4) {
        return com.mob.tools.a.c.a(this.f53931b).b().a(false, i2, str, i4);
    }

    public <T> T invokeInstanceMethod(Object obj, String str, Object[] objArr, Class<?>[] clsArr) {
        try {
            return (T) ReflectHelper.invokeInstanceMethod(obj, str, objArr, clsArr);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }
}
