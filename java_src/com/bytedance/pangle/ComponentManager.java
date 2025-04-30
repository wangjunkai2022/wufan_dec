package com.bytedance.pangle;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.fragment.app.Fragment;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.PluginManager;
import com.bytedance.pangle.receiver.PluginBroadcastReceiver;
import com.bytedance.pangle.receiver.c;
import com.bytedance.pangle.util.MethodUtils;
import java.util.HashMap;
import java.util.Map;
@Keep
/* loaded from: classes2.dex */
public class ComponentManager {
    public static HashMap<String, String> target2StubActivity = new HashMap<>();
    public static HashMap<String, String> targetString2StubActivity = new HashMap<>();
    public static HashMap<String, String> targetString2PluginPkgName = new HashMap<>();
    public static HashMap<String, String> stubString2PluginPkgName = new HashMap<>();

    public static String getTargetStubActivityString(String str) {
        return targetString2StubActivity.get(str);
    }

    private static boolean isSupportLibIso(String str) {
        try {
            return PluginManager.getInstance().getPlugin(str).mIsSupportLibIso;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void realStartActivity(Object obj, Context context, Intent intent, Bundle bundle, String str) {
        if (context instanceof PluginContext) {
            context = ((PluginContext) context).mOriginContext;
        }
        if (intent.getComponent() != null) {
            String className = intent.getComponent().getClassName();
            Zeus.loadPlugin(str);
            String targetStubActivityString = getTargetStubActivityString(className);
            if (!TextUtils.isEmpty(targetStubActivityString)) {
                intent.setComponent(new ComponentName(context, targetStubActivityString));
                intent.putExtra("targetPlugin", className);
            }
        }
        try {
            if (!isSupportLibIso(str) && (obj instanceof Fragment)) {
                ((Fragment) obj).startActivity(intent, bundle);
            } else if (obj instanceof android.app.Fragment) {
                ((android.app.Fragment) obj).startActivity(intent, bundle);
            } else {
                context.startActivity(intent, bundle);
            }
        } catch (Throwable th) {
            throw new RuntimeException("component = " + intent.getComponent(), th);
        }
    }

    private static void realStartActivityForResult(Object obj, Activity activity, Intent intent, int i2, Bundle bundle, String str) {
        if (intent.getComponent() != null) {
            String className = intent.getComponent().getClassName();
            Zeus.loadPlugin(str);
            String targetStubActivityString = getTargetStubActivityString(className);
            if (!TextUtils.isEmpty(targetStubActivityString)) {
                intent.setComponent(new ComponentName(activity, targetStubActivityString));
                intent.putExtra("targetPlugin", className);
            }
        }
        try {
            if (!isSupportLibIso(str) && (obj instanceof Fragment)) {
                ((Fragment) obj).startActivityForResult(intent, i2, bundle);
            } else if (obj instanceof android.app.Fragment) {
                ((android.app.Fragment) obj).startActivityForResult(intent, i2, bundle);
            } else {
                activity.startActivityForResult(intent, i2, bundle);
            }
        } catch (Throwable th) {
            throw new RuntimeException("component =  " + intent.getComponent(), th);
        }
    }

    public static void registerActivity(String str, String str2, String... strArr) {
        if (strArr != null) {
            for (String str3 : strArr) {
                String str4 = targetString2PluginPkgName.get(str3);
                if (str4 != null && TextUtils.equals(str4, str)) {
                    throw new RuntimeException(String.format("%s is repeated in %s and %s", str3, str, str4));
                }
                target2StubActivity.put(str3, str2);
                targetString2StubActivity.put(str3, str2);
                targetString2PluginPkgName.put(str3, str);
                stubString2PluginPkgName.put(str2, str);
            }
        }
    }

    public static Intent registerReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, String str) {
        Zeus.loadPlugin(str);
        if (pluginBroadcastReceiver != null) {
            com.bytedance.pangle.receiver.c a4 = com.bytedance.pangle.receiver.c.a();
            if (intentFilter != null && intentFilter.actionsIterator() != null) {
                com.bytedance.pangle.receiver.a aVar = new com.bytedance.pangle.receiver.a();
                Intent registerReceiver = context.registerReceiver(aVar, intentFilter);
                a4.f10300b.put(pluginBroadcastReceiver, aVar);
                a4.a(intentFilter, pluginBroadcastReceiver);
                return registerReceiver;
            }
        }
        return null;
    }

    public static void startActivity(Object obj, Intent intent, Bundle bundle, String str) {
        if (obj instanceof Context) {
            realStartActivity(null, (Context) obj, intent, bundle, str);
        } else if (!isSupportLibIso(str) && (obj instanceof Fragment)) {
            realStartActivity(obj, ((Fragment) obj).getActivity(), intent, bundle, str);
        } else if (obj instanceof android.app.Fragment) {
            realStartActivity(obj, ((android.app.Fragment) obj).getActivity(), intent, bundle, str);
        } else {
            try {
                MethodUtils.invokeMethod(obj, "startActivity", new Object[]{intent, bundle}, new Class[]{Intent.class, Bundle.class});
            } catch (Throwable th) {
                throw new RuntimeException(th);
            }
        }
    }

    public static void startActivityForResult(Object obj, Intent intent, int i2, Bundle bundle, String str) {
        if (obj instanceof Activity) {
            realStartActivityForResult(null, (Activity) obj, intent, i2, null, str);
        } else if (!isSupportLibIso(str) && (obj instanceof Fragment)) {
            realStartActivityForResult(obj, ((Fragment) obj).getActivity(), intent, i2, null, str);
        } else if (obj instanceof android.app.Fragment) {
            realStartActivityForResult(obj, ((android.app.Fragment) obj).getActivity(), intent, i2, null, str);
        } else {
            try {
                MethodUtils.invokeMethod(obj, "startActivityForResult", new Object[]{intent, Integer.valueOf(i2), bundle}, new Class[]{Intent.class, Integer.TYPE, Bundle.class});
            } catch (Throwable th) {
                throw new RuntimeException(th);
            }
        }
    }

    public static void unregisterReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver) {
        boolean remove;
        if (pluginBroadcastReceiver != null) {
            com.bytedance.pangle.receiver.c a4 = com.bytedance.pangle.receiver.c.a();
            for (Map.Entry<String, c.a> entry : a4.f10299a.entrySet()) {
                c.a value = entry.getValue();
                if (value != null) {
                    try {
                        if (value.f10303b.size() > 0 && (remove = value.f10303b.remove(pluginBroadcastReceiver))) {
                            ZeusLogger.d(ZeusLogger.TAG_RECEIVER, "unregisterReceiver->[移除Action]:" + value.f10302a + ",receiver.hashCode()=" + pluginBroadcastReceiver.hashCode() + ",是否成功，success:" + remove);
                        }
                    } catch (Throwable th) {
                        ZeusLogger.w(ZeusLogger.TAG_RECEIVER, "unregisterReceiver-plugin-receiver->action:" + value.f10302a + "[exception]:", th);
                    }
                }
                BroadcastReceiver broadcastReceiver = a4.f10300b.get(pluginBroadcastReceiver);
                if (broadcastReceiver != null) {
                    try {
                        a4.f10301c.remove(Integer.valueOf(broadcastReceiver.hashCode()));
                        a4.f10300b.remove(pluginBroadcastReceiver);
                        context.unregisterReceiver(broadcastReceiver);
                    } catch (Throwable th2) {
                        ZeusLogger.w(ZeusLogger.TAG_RECEIVER, "unregisterReceiver-移除系统注册的广播发生异常:", th2);
                    }
                }
            }
        }
    }

    public static Intent registerReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, String str, Handler handler, String str2) {
        Zeus.loadPlugin(str2);
        if (pluginBroadcastReceiver != null) {
            com.bytedance.pangle.receiver.c a4 = com.bytedance.pangle.receiver.c.a();
            if (intentFilter != null && intentFilter.actionsIterator() != null) {
                com.bytedance.pangle.receiver.a aVar = new com.bytedance.pangle.receiver.a();
                Intent registerReceiver = context.registerReceiver(aVar, intentFilter, str, handler);
                a4.f10300b.put(pluginBroadcastReceiver, aVar);
                if (handler != null) {
                    a4.f10301c.add(Integer.valueOf(aVar.hashCode()));
                }
                a4.a(intentFilter, pluginBroadcastReceiver);
                return registerReceiver;
            }
        }
        return null;
    }

    public static void startActivity(Context context, Intent intent, String str) {
        realStartActivity(null, context, intent, null, str);
    }

    public static void startActivityForResult(Activity activity, Intent intent, int i2, Bundle bundle, String str) {
        realStartActivityForResult(null, activity, intent, i2, bundle, str);
    }

    public static void startActivity(Context context, Intent intent, Bundle bundle, String str) {
        realStartActivity(null, context, intent, bundle, str);
    }

    public static Intent registerReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, int i2, String str) {
        Zeus.loadPlugin(str);
        if (pluginBroadcastReceiver != null) {
            com.bytedance.pangle.receiver.c a4 = com.bytedance.pangle.receiver.c.a();
            if (intentFilter != null && intentFilter.actionsIterator() != null && Build.VERSION.SDK_INT >= 26) {
                com.bytedance.pangle.receiver.a aVar = new com.bytedance.pangle.receiver.a();
                Intent registerReceiver = context.registerReceiver(aVar, intentFilter, i2);
                a4.f10300b.put(pluginBroadcastReceiver, aVar);
                a4.a(intentFilter, pluginBroadcastReceiver);
                return registerReceiver;
            }
        }
        return null;
    }

    public static Intent registerReceiver(Context context, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i2, String str2) {
        Zeus.loadPlugin(str2);
        if (pluginBroadcastReceiver != null) {
            com.bytedance.pangle.receiver.c a4 = com.bytedance.pangle.receiver.c.a();
            if (intentFilter != null && intentFilter.actionsIterator() != null && Build.VERSION.SDK_INT >= 26) {
                com.bytedance.pangle.receiver.a aVar = new com.bytedance.pangle.receiver.a();
                Intent registerReceiver = context.registerReceiver(aVar, intentFilter, str, handler, i2);
                a4.f10300b.put(pluginBroadcastReceiver, aVar);
                if (handler != null) {
                    a4.f10301c.add(Integer.valueOf(aVar.hashCode()));
                }
                a4.a(intentFilter, pluginBroadcastReceiver);
                return registerReceiver;
            }
        }
        return null;
    }
}
