package m.framework.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.efs.sdk.base.core.util.NetworkUtil;
import io.netty.util.internal.StringUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes5.dex */
public class DeviceHelper {
    private static DeviceHelper deviceHelper;
    private Context context;

    public DeviceHelper(Context context) {
        this.context = context.getApplicationContext();
    }

    public static DeviceHelper getInstance(Context context) {
        if (deviceHelper == null) {
            deviceHelper = new DeviceHelper(context);
        }
        return deviceHelper;
    }

    private boolean isFastMobileNetwork() {
        TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService("phone");
        if (telephonyManager == null) {
            return false;
        }
        switch (telephonyManager.getNetworkType()) {
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
            case 14:
            case 15:
                return true;
            case 4:
            case 7:
            case 11:
            default:
                return false;
        }
    }

    private boolean isSystemApp(PackageInfo packageInfo) {
        int i2 = packageInfo.applicationInfo.flags;
        return ((i2 & 1) == 1) || ((i2 & 128) == 1);
    }

    public String Base64AES(String str, String str2) {
        try {
            String encodeToString = Base64.encodeToString(Data.AES128Encode(str2, str), 0);
            return encodeToString.contains("\n") ? encodeToString.replace("\n", "") : encodeToString;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public String getAppName() {
        int i2;
        String str = this.context.getApplicationInfo().name;
        return (str == null && (i2 = this.context.getApplicationInfo().labelRes) > 0) ? this.context.getString(i2) : str;
    }

    public int getAppVersion() {
        try {
            return this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).versionCode;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public String getAppVersionName() {
        try {
            return this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).versionName;
        } catch (Throwable th) {
            th.printStackTrace();
            return "1.0";
        }
    }

    public String getCarrier() {
        String simOperator = ((TelephonyManager) this.context.getSystemService("phone")).getSimOperator();
        return TextUtils.isEmpty(simOperator) ? "-1" : simOperator;
    }

    public String getDeviceData() {
        return Base64AES(String.valueOf(getModel()) + "|" + getOSVersion() + "|" + getFactory() + "|" + getCarrier() + "|" + getScreenSize(), getDeviceKey().substring(0, 16));
    }

    public String getDeviceId() {
        TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        String deviceId = telephonyManager.getDeviceId();
        String replace = deviceId != null ? new String(deviceId).replace("0", "") : "";
        if ((deviceId == null || replace.length() <= 0) && Build.VERSION.SDK_INT >= 9) {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                return (String) cls.getMethod("get", String.class, String.class).invoke(cls, "ro.serialno", "unknown");
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
        return deviceId;
    }

    public String getDeviceKey() {
        try {
            String macAddress = getMacAddress();
            String deviceId = getDeviceId();
            String model = getModel();
            return Data.byteToHex(Data.SHA1(String.valueOf(macAddress) + ":" + deviceId + ":" + model));
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public String getFactory() {
        return Build.MANUFACTURER;
    }

    public ArrayList<HashMap<String, String>> getInstalledApp(boolean z3) {
        ArrayList<HashMap<String, String>> arrayList = new ArrayList<>();
        try {
            PackageManager packageManager = this.context.getPackageManager();
            for (PackageInfo packageInfo : packageManager.getInstalledPackages(0)) {
                if (z3 || !isSystemApp(packageInfo)) {
                    HashMap<String, String> hashMap = new HashMap<>();
                    hashMap.put("pkg", packageInfo.packageName);
                    hashMap.put("name", packageInfo.applicationInfo.loadLabel(packageManager).toString());
                    hashMap.put("version", packageInfo.versionName);
                    arrayList.add(hashMap);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return arrayList;
    }

    public String getMacAddress() {
        WifiInfo connectionInfo;
        String macAddress;
        WifiManager wifiManager = (WifiManager) this.context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        if (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null || (macAddress = connectionInfo.getMacAddress()) == null) {
            return null;
        }
        return macAddress;
    }

    public String getModel() {
        return Build.MODEL;
    }

    public String getNetworkOperator() {
        return ((TelephonyManager) this.context.getSystemService("phone")).getNetworkOperator();
    }

    public String getNetworkType() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) this.context.getSystemService("connectivity");
        if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
            int type = activeNetworkInfo.getType();
            if (1 == type) {
                return NetworkUtil.NETWORK_TYPE_WIFI;
            }
            if (type == 0) {
                String defaultHost = Proxy.getDefaultHost();
                String str = (defaultHost == null || defaultHost.length() <= 0) ? "" : " wap";
                return (isFastMobileNetwork() ? "3G" : "2G") + str;
            }
        }
        return null;
    }

    public String getOSVersion() {
        return String.valueOf(Build.VERSION.SDK_INT);
    }

    public String getPackageName() {
        return this.context.getPackageName();
    }

    public int getPlatformCode() {
        return 1;
    }

    public JSONArray getRunningApp() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        JSONArray jSONArray = new JSONArray();
        ActivityManager activityManager = (ActivityManager) this.context.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return jSONArray;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            jSONArray.put(runningAppProcessInfo.processName);
        }
        return jSONArray;
    }

    public String getRunningAppStr() throws JSONException {
        JSONArray runningApp = getRunningApp();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < runningApp.length(); i2++) {
            if (i2 > 0) {
                sb.append(StringUtil.COMMA);
            }
            sb.append(String.valueOf(runningApp.get(i2)));
        }
        return sb.toString();
    }

    public String getScreenSize() {
        DisplayMetrics displayMetrics = this.context.getResources().getDisplayMetrics();
        if (this.context.getResources().getConfiguration().orientation == 1) {
            return String.valueOf(displayMetrics.widthPixels) + "x" + displayMetrics.heightPixels;
        }
        return String.valueOf(displayMetrics.heightPixels) + "x" + displayMetrics.widthPixels;
    }

    public String getSdcardPath() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public boolean getSdcardState() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public String getTopTaskPackageName() {
        try {
            return ((ActivityManager) this.context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1).get(0).topActivity.getPackageName();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public boolean isRooted() {
        return false;
    }
}
