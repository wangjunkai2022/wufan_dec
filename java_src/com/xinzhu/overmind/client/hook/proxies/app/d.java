package com.xinzhu.overmind.client.hook.proxies.app;

import android.os.IInterface;
import com.xinzhu.haunted.android.app.u;
import com.xinzhu.overmind.server.DaemonService;
import java.lang.reflect.Method;
/* compiled from: NotificationManagerStub.java */
/* loaded from: classes.dex */
public class d extends com.xinzhu.overmind.client.hook.b {

    /* compiled from: NotificationManagerStub.java */
    /* loaded from: classes.dex */
    class a extends com.xinzhu.overmind.client.hook.common.d {
        a(String name, int replace_pkg_index, int replace_userId_index) {
            super(name, replace_pkg_index, replace_userId_index);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.client.frameworks.e.a().d(com.xinzhu.overmind.client.e.getVPackageName(), com.xinzhu.overmind.client.e.getUserId());
            com.xinzhu.overmind.b.c(com.xinzhu.overmind.client.hook.c.f64074d, "cancelAllNotifications succeed");
            return null;
        }
    }

    /* compiled from: NotificationManagerStub.java */
    /* loaded from: classes.dex */
    class b extends com.xinzhu.overmind.client.hook.common.d {
        b(String name, int replace_pkg_index, int replace_userId_index) {
            super(name, replace_pkg_index, replace_userId_index);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            String c4 = com.xinzhu.overmind.client.frameworks.e.a().c(com.xinzhu.overmind.client.e.getVPackageName(), com.xinzhu.overmind.client.e.getUserId(), ((Integer) args[com.xinzhu.overmind.utils.helpers.a.a(args, Integer.class)]).intValue(), (String) args[2]);
            if (c4 != null) {
                args[2] = c4;
                return super.d(who, method, args);
            }
            throw new RuntimeException(c() + " solve tag get null");
        }
    }

    /* compiled from: NotificationManagerStub.java */
    /* loaded from: classes.dex */
    class c extends com.xinzhu.overmind.client.hook.common.d {
        c(String name, int replace_pkg_index, int replace_userId_index) {
            super(name, replace_pkg_index, replace_userId_index);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            char c4 = com.xinzhu.overmind.utils.e.g() ? (char) 3 : (char) 2;
            char c5 = com.xinzhu.overmind.utils.e.g() ? (char) 2 : (char) 1;
            args[c5] = com.xinzhu.overmind.client.frameworks.e.a().e(com.xinzhu.overmind.client.e.getVPackageName(), com.xinzhu.overmind.client.e.getUserId(), ((Integer) args[c4]).intValue(), (String) args[c5]);
            return super.d(who, method, args);
        }
    }

    /* compiled from: NotificationManagerStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.app.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0410d extends com.xinzhu.overmind.client.hook.common.d {
        C0410d(String name, int replace_pkg_index, int replace_userId_index) {
            super(name, replace_pkg_index, replace_userId_index);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            if (args == null || args.length < 2 || !args[1].equals(DaemonService.f64340c)) {
                try {
                    return method.invoke(who, args);
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }
    }

    /* compiled from: NotificationManagerStub.java */
    /* loaded from: classes.dex */
    class e extends com.xinzhu.overmind.client.hook.common.e {
        e(String name, int replace_UID_index) {
            super(name, replace_UID_index);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.common.e, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return Boolean.TRUE;
        }
    }

    public d() {
        super(u.c().asBinder());
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return u.c();
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        u.e((IInterface) g());
        m("notification");
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        com.xinzhu.overmind.utils.helpers.a.c(args);
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new a("cancelAllNotifications", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new b("enqueueNotificationWithTag", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new c("cancelNotificationWithTag", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new C0410d("deleteNotificationChannel", com.xinzhu.overmind.client.hook.common.d.f64084f, com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new com.xinzhu.overmind.client.hook.common.d("getNotificationChannel", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.utils.e.f() ? 1 : com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new com.xinzhu.overmind.client.hook.common.d("getConversationNotificationChannel", com.xinzhu.overmind.client.hook.common.d.f64083e, 1));
        d(new com.xinzhu.overmind.client.hook.common.d("getNotificationChannels", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.utils.e.f() ? com.xinzhu.overmind.client.hook.common.d.f64085g : com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new com.xinzhu.overmind.client.hook.common.d("getBlockedAppCount", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("getNotificationChannelsBypassingDnd", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("registerListener", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("unregisterListener", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("isNotificationListenerAccessGrantedForUser", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("setNotificationListenerAccessGrantedForUser", com.xinzhu.overmind.client.hook.common.d.f64083e, 1));
        d(new com.xinzhu.overmind.client.hook.common.d("setNotificationAssistantAccessGrantedForUser", com.xinzhu.overmind.client.hook.common.d.f64083e, 1));
        d(new com.xinzhu.overmind.client.hook.common.d("getEnabledNotificationListeners", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("getAllowedNotificationAssistantForUser", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("setNotificationPolicyAccessGrantedForUser", com.xinzhu.overmind.client.hook.common.d.f64083e, 1));
        d(new com.xinzhu.overmind.client.hook.common.d("getAppActiveNotifications", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("canNotifyAsPackage", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("removeEdgeNotification", com.xinzhu.overmind.client.hook.common.d.f64083e, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new e("hasPackageBeenManaged", com.xinzhu.overmind.client.hook.common.d.f64085g));
    }
}
