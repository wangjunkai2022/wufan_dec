package com.xinzhu.overmind.server.os;

import android.app.NotificationManager;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.os.c;
import com.xinzhu.overmind.utils.wrappers.ObjectsWrapper;
import java.util.HashSet;
import java.util.Iterator;
/* compiled from: MindNotificationManagerService.java */
/* loaded from: classes.dex */
public class g extends c.b implements com.xinzhu.overmind.server.c {
    public static final String TAG = g.class.getSimpleName();
    private static g sService = new g();
    HashSet<a> cached_notifications = new HashSet<>();
    private NotificationManager mNotificationManager = (NotificationManager) Overmind.getContext().getSystemService("notification");

    /* compiled from: MindNotificationManagerService.java */
    /* loaded from: classes3.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f64508a;

        /* renamed from: b  reason: collision with root package name */
        public int f64509b;

        /* renamed from: c  reason: collision with root package name */
        public int f64510c;

        /* renamed from: d  reason: collision with root package name */
        public String f64511d;

        /* renamed from: e  reason: collision with root package name */
        public String f64512e;

        public a(String pkgName, int userId, int id, String tag) {
            this.f64508a = pkgName;
            this.f64509b = userId;
            this.f64510c = id;
            this.f64511d = tag;
            String str = "stub_noti_" + this.f64508a + "_" + this.f64509b + "_";
            if (this.f64511d == null) {
                this.f64512e = str;
                return;
            }
            this.f64512e = str + this.f64511d;
        }
    }

    public static g get() {
        return sService;
    }

    @Override // com.xinzhu.overmind.server.os.c
    public String solveAddNotification(String pkgName, int userId, int id, String tag) throws RemoteException {
        Iterator<a> it2 = this.cached_notifications.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (ObjectsWrapper.equals(next.f64511d, tag) && next.f64510c == id && next.f64508a.equals(pkgName) && next.f64509b == userId) {
                return next.f64512e;
            }
        }
        String str = TAG;
        com.xinzhu.overmind.b.c(str, "CachedNotificationInfo " + pkgName + " " + tag);
        a aVar = new a(pkgName, userId, id, tag);
        this.cached_notifications.add(aVar);
        return aVar.f64512e;
    }

    @Override // com.xinzhu.overmind.server.os.c
    public void solveCancelAllNotifications(String pkgName, int userId) throws RemoteException {
        Iterator<a> it2 = this.cached_notifications.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (next.f64508a.equals(pkgName) && next.f64509b == userId) {
                this.mNotificationManager.cancel(next.f64512e, next.f64510c);
                this.cached_notifications.remove(next);
            }
        }
    }

    @Override // com.xinzhu.overmind.server.os.c
    public String solveCancelNotification(String pkgName, int userId, int id, String tag) throws RemoteException {
        Iterator<a> it2 = this.cached_notifications.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (ObjectsWrapper.equals(next.f64511d, tag) && next.f64510c == id && next.f64508a.equals(pkgName) && next.f64509b == userId) {
                this.cached_notifications.remove(next);
                return next.f64512e;
            }
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.c
    public void systemReady() {
    }
}
