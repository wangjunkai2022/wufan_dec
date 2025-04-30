package de.robv.android.xposed;

import de.robv.android.xposed.services.BaseService;
import de.robv.android.xposed.services.DirectAccessService;
/* loaded from: classes3.dex */
public final class SELinuxHelper {
    private static boolean sIsSELinuxEnabled;
    private static BaseService sServiceAppDataFile = new DirectAccessService();

    private SELinuxHelper() {
    }

    public static BaseService getAppDataFileService() {
        BaseService baseService = sServiceAppDataFile;
        return baseService != null ? baseService : new DirectAccessService();
    }

    public static String getContext() {
        return null;
    }

    public static boolean isSELinuxEnabled() {
        return sIsSELinuxEnabled;
    }

    public static boolean isSELinuxEnforced() {
        return sIsSELinuxEnabled;
    }
}
