package androidx.core.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.app.INotificationSideChannel;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class NotificationManagerCompat {
    public static final String ACTION_BIND_SIDE_CHANNEL = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL";
    public static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
    public static final int IMPORTANCE_DEFAULT = 3;
    public static final int IMPORTANCE_HIGH = 4;
    public static final int IMPORTANCE_LOW = 2;
    public static final int IMPORTANCE_MAX = 5;
    public static final int IMPORTANCE_MIN = 1;
    public static final int IMPORTANCE_NONE = 0;
    public static final int IMPORTANCE_UNSPECIFIED = -1000;

    /* renamed from: c  reason: collision with root package name */
    private static final String f4019c = "NotifManCompat";

    /* renamed from: d  reason: collision with root package name */
    private static final String f4020d = "checkOpNoThrow";

    /* renamed from: e  reason: collision with root package name */
    private static final String f4021e = "OP_POST_NOTIFICATION";

    /* renamed from: f  reason: collision with root package name */
    static final int f4022f = 19;

    /* renamed from: g  reason: collision with root package name */
    private static final int f4023g = 1000;

    /* renamed from: h  reason: collision with root package name */
    private static final int f4024h = 6;

    /* renamed from: i  reason: collision with root package name */
    private static final String f4025i = "enabled_notification_listeners";
    @GuardedBy("sEnabledNotificationListenersLock")

    /* renamed from: k  reason: collision with root package name */
    private static String f4027k;
    @GuardedBy("sLock")

    /* renamed from: n  reason: collision with root package name */
    private static SideChannelManager f4030n;

    /* renamed from: a  reason: collision with root package name */
    private final Context f4031a;

    /* renamed from: b  reason: collision with root package name */
    private final NotificationManager f4032b;

    /* renamed from: j  reason: collision with root package name */
    private static final Object f4026j = new Object();
    @GuardedBy("sEnabledNotificationListenersLock")

    /* renamed from: l  reason: collision with root package name */
    private static Set<String> f4028l = new HashSet();

    /* renamed from: m  reason: collision with root package name */
    private static final Object f4029m = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class NotifyTask implements Task {

        /* renamed from: a  reason: collision with root package name */
        final String f4037a;

        /* renamed from: b  reason: collision with root package name */
        final int f4038b;

        /* renamed from: c  reason: collision with root package name */
        final String f4039c;

        /* renamed from: d  reason: collision with root package name */
        final Notification f4040d;

        NotifyTask(String str, int i2, String str2, Notification notification) {
            this.f4037a = str;
            this.f4038b = i2;
            this.f4039c = str2;
            this.f4040d = notification;
        }

        @Override // androidx.core.app.NotificationManagerCompat.Task
        public void send(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
            iNotificationSideChannel.notify(this.f4037a, this.f4038b, this.f4039c, this.f4040d);
        }

        @NonNull
        public String toString() {
            return "NotifyTask[packageName:" + this.f4037a + ", id:" + this.f4038b + ", tag:" + this.f4039c + "]";
        }
    }

    /* loaded from: classes.dex */
    private static class ServiceConnectedEvent {

        /* renamed from: a  reason: collision with root package name */
        final ComponentName f4041a;

        /* renamed from: b  reason: collision with root package name */
        final IBinder f4042b;

        ServiceConnectedEvent(ComponentName componentName, IBinder iBinder) {
            this.f4041a = componentName;
            this.f4042b = iBinder;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SideChannelManager implements Handler.Callback, ServiceConnection {

        /* renamed from: f  reason: collision with root package name */
        private static final int f4043f = 0;

        /* renamed from: g  reason: collision with root package name */
        private static final int f4044g = 1;

        /* renamed from: h  reason: collision with root package name */
        private static final int f4045h = 2;

        /* renamed from: i  reason: collision with root package name */
        private static final int f4046i = 3;

        /* renamed from: a  reason: collision with root package name */
        private final Context f4047a;

        /* renamed from: b  reason: collision with root package name */
        private final HandlerThread f4048b;

        /* renamed from: c  reason: collision with root package name */
        private final Handler f4049c;

        /* renamed from: d  reason: collision with root package name */
        private final Map<ComponentName, ListenerRecord> f4050d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        private Set<String> f4051e = new HashSet();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class ListenerRecord {

            /* renamed from: a  reason: collision with root package name */
            final ComponentName f4052a;

            /* renamed from: c  reason: collision with root package name */
            INotificationSideChannel f4054c;

            /* renamed from: b  reason: collision with root package name */
            boolean f4053b = false;

            /* renamed from: d  reason: collision with root package name */
            ArrayDeque<Task> f4055d = new ArrayDeque<>();

            /* renamed from: e  reason: collision with root package name */
            int f4056e = 0;

            ListenerRecord(ComponentName componentName) {
                this.f4052a = componentName;
            }
        }

        SideChannelManager(Context context) {
            this.f4047a = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.f4048b = handlerThread;
            handlerThread.start();
            this.f4049c = new Handler(handlerThread.getLooper(), this);
        }

        private boolean a(ListenerRecord listenerRecord) {
            if (listenerRecord.f4053b) {
                return true;
            }
            boolean bindService = this.f4047a.bindService(new Intent(NotificationManagerCompat.ACTION_BIND_SIDE_CHANNEL).setComponent(listenerRecord.f4052a), this, 33);
            listenerRecord.f4053b = bindService;
            if (bindService) {
                listenerRecord.f4056e = 0;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Unable to bind to listener ");
                sb.append(listenerRecord.f4052a);
                this.f4047a.unbindService(this);
            }
            return listenerRecord.f4053b;
        }

        private void b(ListenerRecord listenerRecord) {
            if (listenerRecord.f4053b) {
                this.f4047a.unbindService(this);
                listenerRecord.f4053b = false;
            }
            listenerRecord.f4054c = null;
        }

        private void c(Task task) {
            i();
            for (ListenerRecord listenerRecord : this.f4050d.values()) {
                listenerRecord.f4055d.add(task);
                g(listenerRecord);
            }
        }

        private void d(ComponentName componentName) {
            ListenerRecord listenerRecord = this.f4050d.get(componentName);
            if (listenerRecord != null) {
                g(listenerRecord);
            }
        }

        private void e(ComponentName componentName, IBinder iBinder) {
            ListenerRecord listenerRecord = this.f4050d.get(componentName);
            if (listenerRecord != null) {
                listenerRecord.f4054c = INotificationSideChannel.Stub.asInterface(iBinder);
                listenerRecord.f4056e = 0;
                g(listenerRecord);
            }
        }

        private void f(ComponentName componentName) {
            ListenerRecord listenerRecord = this.f4050d.get(componentName);
            if (listenerRecord != null) {
                b(listenerRecord);
            }
        }

        private void g(ListenerRecord listenerRecord) {
            if (Log.isLoggable(NotificationManagerCompat.f4019c, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Processing component ");
                sb.append(listenerRecord.f4052a);
                sb.append(", ");
                sb.append(listenerRecord.f4055d.size());
                sb.append(" queued tasks");
            }
            if (listenerRecord.f4055d.isEmpty()) {
                return;
            }
            if (a(listenerRecord) && listenerRecord.f4054c != null) {
                while (true) {
                    Task peek = listenerRecord.f4055d.peek();
                    if (peek == null) {
                        break;
                    }
                    try {
                        if (Log.isLoggable(NotificationManagerCompat.f4019c, 3)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Sending task ");
                            sb2.append(peek);
                        }
                        peek.send(listenerRecord.f4054c);
                        listenerRecord.f4055d.remove();
                    } catch (DeadObjectException unused) {
                        if (Log.isLoggable(NotificationManagerCompat.f4019c, 3)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Remote service has died: ");
                            sb3.append(listenerRecord.f4052a);
                        }
                    } catch (RemoteException unused2) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("RemoteException communicating with ");
                        sb4.append(listenerRecord.f4052a);
                    }
                }
                if (listenerRecord.f4055d.isEmpty()) {
                    return;
                }
                h(listenerRecord);
                return;
            }
            h(listenerRecord);
        }

        private void h(ListenerRecord listenerRecord) {
            if (this.f4049c.hasMessages(3, listenerRecord.f4052a)) {
                return;
            }
            int i2 = listenerRecord.f4056e + 1;
            listenerRecord.f4056e = i2;
            if (i2 > 6) {
                StringBuilder sb = new StringBuilder();
                sb.append("Giving up on delivering ");
                sb.append(listenerRecord.f4055d.size());
                sb.append(" tasks to ");
                sb.append(listenerRecord.f4052a);
                sb.append(" after ");
                sb.append(listenerRecord.f4056e);
                sb.append(" retries");
                listenerRecord.f4055d.clear();
                return;
            }
            int i4 = (1 << (i2 - 1)) * 1000;
            if (Log.isLoggable(NotificationManagerCompat.f4019c, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Scheduling retry for ");
                sb2.append(i4);
                sb2.append(" ms");
            }
            this.f4049c.sendMessageDelayed(this.f4049c.obtainMessage(3, listenerRecord.f4052a), i4);
        }

        private void i() {
            Set<String> enabledListenerPackages = NotificationManagerCompat.getEnabledListenerPackages(this.f4047a);
            if (enabledListenerPackages.equals(this.f4051e)) {
                return;
            }
            this.f4051e = enabledListenerPackages;
            List<ResolveInfo> queryIntentServices = this.f4047a.getPackageManager().queryIntentServices(new Intent().setAction(NotificationManagerCompat.ACTION_BIND_SIDE_CHANNEL), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : queryIntentServices) {
                if (enabledListenerPackages.contains(resolveInfo.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Permission present on component ");
                        sb.append(componentName);
                        sb.append(", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f4050d.containsKey(componentName2)) {
                    if (Log.isLoggable(NotificationManagerCompat.f4019c, 3)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Adding listener record for ");
                        sb2.append(componentName2);
                    }
                    this.f4050d.put(componentName2, new ListenerRecord(componentName2));
                }
            }
            Iterator<Map.Entry<ComponentName, ListenerRecord>> it2 = this.f4050d.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<ComponentName, ListenerRecord> next = it2.next();
                if (!hashSet.contains(next.getKey())) {
                    if (Log.isLoggable(NotificationManagerCompat.f4019c, 3)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Removing listener record for ");
                        sb3.append(next.getKey());
                    }
                    b(next.getValue());
                    it2.remove();
                }
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                c((Task) message.obj);
                return true;
            } else if (i2 == 1) {
                ServiceConnectedEvent serviceConnectedEvent = (ServiceConnectedEvent) message.obj;
                e(serviceConnectedEvent.f4041a, serviceConnectedEvent.f4042b);
                return true;
            } else if (i2 == 2) {
                f((ComponentName) message.obj);
                return true;
            } else if (i2 != 3) {
                return false;
            } else {
                d((ComponentName) message.obj);
                return true;
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable(NotificationManagerCompat.f4019c, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Connected to service ");
                sb.append(componentName);
            }
            this.f4049c.obtainMessage(1, new ServiceConnectedEvent(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable(NotificationManagerCompat.f4019c, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Disconnected from service ");
                sb.append(componentName);
            }
            this.f4049c.obtainMessage(2, componentName).sendToTarget();
        }

        public void queueTask(Task task) {
            this.f4049c.obtainMessage(0, task).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface Task {
        void send(INotificationSideChannel iNotificationSideChannel) throws RemoteException;
    }

    private NotificationManagerCompat(Context context) {
        this.f4031a = context;
        this.f4032b = (NotificationManager) context.getSystemService("notification");
    }

    private void a(Task task) {
        synchronized (f4029m) {
            if (f4030n == null) {
                f4030n = new SideChannelManager(this.f4031a.getApplicationContext());
            }
            f4030n.queueTask(task);
        }
    }

    private static boolean b(Notification notification) {
        Bundle extras = NotificationCompat.getExtras(notification);
        return extras != null && extras.getBoolean(EXTRA_USE_SIDE_CHANNEL);
    }

    @NonNull
    public static NotificationManagerCompat from(@NonNull Context context) {
        return new NotificationManagerCompat(context);
    }

    @NonNull
    public static Set<String> getEnabledListenerPackages(@NonNull Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), f4025i);
        synchronized (f4026j) {
            if (string != null) {
                if (!string.equals(f4027k)) {
                    String[] split = string.split(":", -1);
                    HashSet hashSet = new HashSet(split.length);
                    for (String str : split) {
                        ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                        if (unflattenFromString != null) {
                            hashSet.add(unflattenFromString.getPackageName());
                        }
                    }
                    f4028l = hashSet;
                    f4027k = string;
                }
            }
            set = f4028l;
        }
        return set;
    }

    public boolean areNotificationsEnabled() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 24) {
            return this.f4032b.areNotificationsEnabled();
        }
        if (i2 >= 19) {
            AppOpsManager appOpsManager = (AppOpsManager) this.f4031a.getSystemService("appops");
            ApplicationInfo applicationInfo = this.f4031a.getApplicationInfo();
            String packageName = this.f4031a.getApplicationContext().getPackageName();
            int i4 = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                Class<?> cls2 = Integer.TYPE;
                return ((Integer) cls.getMethod(f4020d, cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField(f4021e).get(Integer.class)).intValue()), Integer.valueOf(i4), packageName)).intValue() == 0;
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
                return true;
            }
        }
        return true;
    }

    public void cancel(int i2) {
        cancel(null, i2);
    }

    public void cancelAll() {
        this.f4032b.cancelAll();
        if (Build.VERSION.SDK_INT <= 19) {
            a(new CancelTask(this.f4031a.getPackageName()));
        }
    }

    public void createNotificationChannel(@NonNull NotificationChannel notificationChannel) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4032b.createNotificationChannel(notificationChannel);
        }
    }

    public void createNotificationChannelGroup(@NonNull NotificationChannelGroup notificationChannelGroup) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4032b.createNotificationChannelGroup(notificationChannelGroup);
        }
    }

    public void createNotificationChannelGroups(@NonNull List<NotificationChannelGroup> list) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4032b.createNotificationChannelGroups(list);
        }
    }

    public void createNotificationChannelGroupsCompat(@NonNull List<NotificationChannelGroupCompat> list) {
        if (Build.VERSION.SDK_INT < 26 || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (NotificationChannelGroupCompat notificationChannelGroupCompat : list) {
            arrayList.add(notificationChannelGroupCompat.b());
        }
        this.f4032b.createNotificationChannelGroups(arrayList);
    }

    public void createNotificationChannels(@NonNull List<NotificationChannel> list) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4032b.createNotificationChannels(list);
        }
    }

    public void createNotificationChannelsCompat(@NonNull List<NotificationChannelCompat> list) {
        if (Build.VERSION.SDK_INT < 26 || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (NotificationChannelCompat notificationChannelCompat : list) {
            arrayList.add(notificationChannelCompat.a());
        }
        this.f4032b.createNotificationChannels(arrayList);
    }

    public void deleteNotificationChannel(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4032b.deleteNotificationChannel(str);
        }
    }

    public void deleteNotificationChannelGroup(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4032b.deleteNotificationChannelGroup(str);
        }
    }

    public void deleteUnlistedNotificationChannels(@NonNull Collection<String> collection) {
        if (Build.VERSION.SDK_INT >= 26) {
            for (NotificationChannel notificationChannel : this.f4032b.getNotificationChannels()) {
                if (!collection.contains(notificationChannel.getId()) && (Build.VERSION.SDK_INT < 30 || !collection.contains(notificationChannel.getParentChannelId()))) {
                    this.f4032b.deleteNotificationChannel(notificationChannel.getId());
                }
            }
        }
    }

    public int getImportance() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f4032b.getImportance();
        }
        return -1000;
    }

    @Nullable
    public NotificationChannel getNotificationChannel(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f4032b.getNotificationChannel(str);
        }
        return null;
    }

    @Nullable
    public NotificationChannelCompat getNotificationChannelCompat(@NonNull String str) {
        NotificationChannel notificationChannel;
        if (Build.VERSION.SDK_INT < 26 || (notificationChannel = getNotificationChannel(str)) == null) {
            return null;
        }
        return new NotificationChannelCompat(notificationChannel);
    }

    @Nullable
    public NotificationChannelGroup getNotificationChannelGroup(@NonNull String str) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return this.f4032b.getNotificationChannelGroup(str);
        }
        if (i2 >= 26) {
            for (NotificationChannelGroup notificationChannelGroup : getNotificationChannelGroups()) {
                if (notificationChannelGroup.getId().equals(str)) {
                    return notificationChannelGroup;
                }
            }
        }
        return null;
    }

    @Nullable
    public NotificationChannelGroupCompat getNotificationChannelGroupCompat(@NonNull String str) {
        NotificationChannelGroup notificationChannelGroup;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            NotificationChannelGroup notificationChannelGroup2 = getNotificationChannelGroup(str);
            if (notificationChannelGroup2 != null) {
                return new NotificationChannelGroupCompat(notificationChannelGroup2);
            }
            return null;
        } else if (i2 < 26 || (notificationChannelGroup = getNotificationChannelGroup(str)) == null) {
            return null;
        } else {
            return new NotificationChannelGroupCompat(notificationChannelGroup, getNotificationChannels());
        }
    }

    @NonNull
    public List<NotificationChannelGroup> getNotificationChannelGroups() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f4032b.getNotificationChannelGroups();
        }
        return Collections.emptyList();
    }

    @NonNull
    public List<NotificationChannelGroupCompat> getNotificationChannelGroupsCompat() {
        List<NotificationChannel> notificationChannels;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            List<NotificationChannelGroup> notificationChannelGroups = getNotificationChannelGroups();
            if (!notificationChannelGroups.isEmpty()) {
                if (i2 >= 28) {
                    notificationChannels = Collections.emptyList();
                } else {
                    notificationChannels = getNotificationChannels();
                }
                ArrayList arrayList = new ArrayList(notificationChannelGroups.size());
                for (NotificationChannelGroup notificationChannelGroup : notificationChannelGroups) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        arrayList.add(new NotificationChannelGroupCompat(notificationChannelGroup));
                    } else {
                        arrayList.add(new NotificationChannelGroupCompat(notificationChannelGroup, notificationChannels));
                    }
                }
                return arrayList;
            }
        }
        return Collections.emptyList();
    }

    @NonNull
    public List<NotificationChannel> getNotificationChannels() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f4032b.getNotificationChannels();
        }
        return Collections.emptyList();
    }

    @NonNull
    public List<NotificationChannelCompat> getNotificationChannelsCompat() {
        if (Build.VERSION.SDK_INT >= 26) {
            List<NotificationChannel> notificationChannels = getNotificationChannels();
            if (!notificationChannels.isEmpty()) {
                ArrayList arrayList = new ArrayList(notificationChannels.size());
                for (NotificationChannel notificationChannel : notificationChannels) {
                    arrayList.add(new NotificationChannelCompat(notificationChannel));
                }
                return arrayList;
            }
        }
        return Collections.emptyList();
    }

    public void notify(int i2, @NonNull Notification notification) {
        notify(null, i2, notification);
    }

    public void cancel(@Nullable String str, int i2) {
        this.f4032b.cancel(str, i2);
        if (Build.VERSION.SDK_INT <= 19) {
            a(new CancelTask(this.f4031a.getPackageName(), i2, str));
        }
    }

    public void notify(@Nullable String str, int i2, @NonNull Notification notification) {
        if (b(notification)) {
            a(new NotifyTask(this.f4031a.getPackageName(), i2, str, notification));
            this.f4032b.cancel(str, i2);
            return;
        }
        this.f4032b.notify(str, i2, notification);
    }

    public void createNotificationChannel(@NonNull NotificationChannelCompat notificationChannelCompat) {
        createNotificationChannel(notificationChannelCompat.a());
    }

    public void createNotificationChannelGroup(@NonNull NotificationChannelGroupCompat notificationChannelGroupCompat) {
        createNotificationChannelGroup(notificationChannelGroupCompat.b());
    }

    @Nullable
    public NotificationChannel getNotificationChannel(@NonNull String str, @NonNull String str2) {
        if (Build.VERSION.SDK_INT >= 30) {
            return this.f4032b.getNotificationChannel(str, str2);
        }
        return getNotificationChannel(str);
    }

    @Nullable
    public NotificationChannelCompat getNotificationChannelCompat(@NonNull String str, @NonNull String str2) {
        NotificationChannel notificationChannel;
        if (Build.VERSION.SDK_INT < 26 || (notificationChannel = getNotificationChannel(str, str2)) == null) {
            return null;
        }
        return new NotificationChannelCompat(notificationChannel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CancelTask implements Task {

        /* renamed from: a  reason: collision with root package name */
        final String f4033a;

        /* renamed from: b  reason: collision with root package name */
        final int f4034b;

        /* renamed from: c  reason: collision with root package name */
        final String f4035c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f4036d;

        CancelTask(String str) {
            this.f4033a = str;
            this.f4034b = 0;
            this.f4035c = null;
            this.f4036d = true;
        }

        @Override // androidx.core.app.NotificationManagerCompat.Task
        public void send(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
            if (this.f4036d) {
                iNotificationSideChannel.cancelAll(this.f4033a);
            } else {
                iNotificationSideChannel.cancel(this.f4033a, this.f4034b, this.f4035c);
            }
        }

        @NonNull
        public String toString() {
            return "CancelTask[packageName:" + this.f4033a + ", id:" + this.f4034b + ", tag:" + this.f4035c + ", all:" + this.f4036d + "]";
        }

        CancelTask(String str, int i2, String str2) {
            this.f4033a = str;
            this.f4034b = i2;
            this.f4035c = str2;
            this.f4036d = false;
        }
    }
}
