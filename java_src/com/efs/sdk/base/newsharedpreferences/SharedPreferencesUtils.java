package com.efs.sdk.base.newsharedpreferences;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class SharedPreferencesUtils {
    private static final HashMap<String, SharedPreferencesWrapper> sSpCache = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SharedPreferencesWrapper {
        private volatile SharedPreferences mSharedPreferences;

        private SharedPreferencesWrapper() {
        }
    }

    private static SharedPreferences getNewSharedPreferences(Context context, String str, boolean z3) {
        return getNewSharedPreferences(context, str, z3, false);
    }

    public static File getNewSharedPrefsFile(Context context, String str) {
        String str2 = context.getApplicationInfo().dataDir;
        return new File(str2, "shared_prefs" + File.separatorChar + str + ".sp");
    }

    public static SharedPreferences getSharedPreferences(Context context, String str) {
        return getSharedPreferences(context, str, false);
    }

    private static synchronized void handleReplace(Context context, String str, boolean z3) {
        synchronized (SharedPreferencesUtils.class) {
            if (context == null) {
                return;
            }
            SharedPreferences newSharedPreferences = getNewSharedPreferences(context, "sp_replace_flag", z3, true);
            if (!newSharedPreferences.contains(str)) {
                SharedPreferences newSharedPreferences2 = getNewSharedPreferences(context, str, z3, true);
                SharedPreferences.Editor edit = newSharedPreferences2.edit();
                if (((SharedPreferencesNewImpl) newSharedPreferences2).getModifyID() <= 1) {
                    Map<String, ?> all = context.getSharedPreferences(str, 0).getAll();
                    StringBuilder sb = new StringBuilder("replace ");
                    sb.append(str);
                    sb.append("   ");
                    sb.append(all.size());
                    sb.append("   ");
                    sb.append(newSharedPreferences2.hashCode());
                    if (all.size() > 0) {
                        for (Map.Entry<String, ?> entry : all.entrySet()) {
                            String key = entry.getKey();
                            Object value = entry.getValue();
                            if (key != null && key.trim().length() > 0 && value != null) {
                                if (value instanceof String) {
                                    edit.putString(key, (String) value);
                                } else if (value instanceof Long) {
                                    edit.putLong(key, ((Long) value).longValue());
                                } else if (value instanceof Integer) {
                                    edit.putInt(key, ((Integer) value).intValue());
                                } else if (value instanceof Float) {
                                    edit.putFloat(key, ((Float) value).floatValue());
                                } else if (value instanceof Boolean) {
                                    edit.putBoolean(key, ((Boolean) value).booleanValue());
                                }
                            }
                        }
                        edit.apply();
                    }
                }
                newSharedPreferences.edit().putBoolean(str, true).apply();
            }
        }
    }

    private static Object invokeObjectMethod(Object obj, String str, Class[] clsArr, Object[] objArr) {
        try {
            Method method = obj.getClass().getMethod(str, clsArr);
            method.setAccessible(true);
            return method.invoke(obj, objArr);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static void onDestroy() {
        HashMap<String, SharedPreferencesWrapper> hashMap = sSpCache;
        synchronized (hashMap) {
            if (hashMap.size() > 0) {
                for (SharedPreferencesWrapper sharedPreferencesWrapper : hashMap.values()) {
                    SharedPreferences sharedPreferences = sharedPreferencesWrapper.mSharedPreferences;
                    if (sharedPreferences != null) {
                        ((SharedPreferencesNewImpl) sharedPreferences).onDestroy();
                    }
                }
            }
        }
    }

    private static SharedPreferences getNewSharedPreferences(Context context, String str, boolean z3, boolean z4) {
        SharedPreferencesWrapper sharedPreferencesWrapper;
        HashMap<String, SharedPreferencesWrapper> hashMap = sSpCache;
        synchronized (hashMap) {
            sharedPreferencesWrapper = hashMap.get(str);
            if (sharedPreferencesWrapper == null) {
                sharedPreferencesWrapper = new SharedPreferencesWrapper();
                hashMap.put(str, sharedPreferencesWrapper);
            }
        }
        if (sharedPreferencesWrapper.mSharedPreferences == null) {
            synchronized (sharedPreferencesWrapper) {
                if (sharedPreferencesWrapper.mSharedPreferences == null) {
                    if (!z4) {
                        handleReplace(context, str, z3);
                    }
                    if (sharedPreferencesWrapper.mSharedPreferences == null) {
                        sharedPreferencesWrapper.mSharedPreferences = new SharedPreferencesNewImpl(getNewSharedPrefsFile(context, str), z3);
                    }
                }
            }
        }
        return sharedPreferencesWrapper.mSharedPreferences;
    }

    public static SharedPreferences getSharedPreferences(Context context, String str, boolean z3) {
        return getNewSharedPreferences(context, str, z3);
    }
}
