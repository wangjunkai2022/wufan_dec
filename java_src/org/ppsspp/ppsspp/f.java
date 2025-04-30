package org.ppsspp.ppsspp;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import com.bda.controller.Controller;
import java.lang.reflect.Field;
import java.util.List;
/* compiled from: MogaHack.java */
/* loaded from: classes5.dex */
public class f {
    public static void a(Controller controller, Context context) {
        Field field;
        boolean z3;
        if (Build.VERSION.SDK_INT > 19) {
            ServiceConnection serviceConnection = null;
            try {
                Class<?> cls = controller.getClass();
                field = cls.getDeclaredField("mIsBound");
                try {
                    field.setAccessible(true);
                    z3 = field.getBoolean(controller);
                    try {
                        Field declaredField = cls.getDeclaredField("mServiceConnection");
                        declaredField.setAccessible(true);
                        serviceConnection = (ServiceConnection) declaredField.get(controller);
                    } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException unused) {
                    }
                } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException unused2) {
                    z3 = false;
                    if (z3) {
                        return;
                    }
                    return;
                }
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException unused3) {
                field = null;
            }
            if (z3 || serviceConnection == null) {
                return;
            }
            Intent intent = new Intent(com.bda.controller.f.class.getName());
            List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null) {
                queryIntentServices.size();
            }
            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
            intent.setComponent(new ComponentName(serviceInfo.packageName, serviceInfo.name));
            context.startService(intent);
            context.bindService(intent, serviceConnection, 1);
            try {
                field.setBoolean(controller, true);
                return;
            } catch (IllegalAccessException | IllegalArgumentException unused4) {
                return;
            }
        }
        controller.init();
    }
}
