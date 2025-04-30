package androidx.media.session;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.KeyEvent;
import androidx.annotation.RestrictTo;
import androidx.media.MediaBrowserServiceCompat;
import java.util.List;
/* loaded from: classes.dex */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6606a = "MediaButtonReceiver";

    /* loaded from: classes.dex */
    private static class MediaButtonConnectionCallback extends MediaBrowserCompat.ConnectionCallback {

        /* renamed from: a  reason: collision with root package name */
        private final Context f6607a;

        /* renamed from: b  reason: collision with root package name */
        private final Intent f6608b;

        /* renamed from: c  reason: collision with root package name */
        private final BroadcastReceiver.PendingResult f6609c;

        /* renamed from: d  reason: collision with root package name */
        private MediaBrowserCompat f6610d;

        MediaButtonConnectionCallback(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f6607a = context;
            this.f6608b = intent;
            this.f6609c = pendingResult;
        }

        private void a() {
            this.f6610d.disconnect();
            this.f6609c.finish();
        }

        void b(MediaBrowserCompat mediaBrowserCompat) {
            this.f6610d = mediaBrowserCompat;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnected() {
            try {
                new MediaControllerCompat(this.f6607a, this.f6610d.getSessionToken()).dispatchMediaButtonEvent((KeyEvent) this.f6608b.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            } catch (RemoteException unused) {
            }
            a();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnectionFailed() {
            a();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnectionSuspended() {
            a();
        }
    }

    private static ComponentName a(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices.size() == 1) {
            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
            return new ComponentName(serviceInfo.packageName, serviceInfo.name);
        } else if (queryIntentServices.isEmpty()) {
            return null;
        } else {
            throw new IllegalStateException("Expected 1 service that handles " + str + ", found " + queryIntentServices.size());
        }
    }

    private static void b(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, long j4) {
        ComponentName mediaButtonReceiverComponent = getMediaButtonReceiverComponent(context);
        if (mediaButtonReceiverComponent == null) {
            return null;
        }
        return buildMediaButtonPendingIntent(context, mediaButtonReceiverComponent, j4);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static ComponentName getMediaButtonReceiverComponent(Context context) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers.size() == 1) {
            ActivityInfo activityInfo = queryBroadcastReceivers.get(0).activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        }
        queryBroadcastReceivers.size();
        return null;
    }

    public static KeyEvent handleIntent(MediaSessionCompat mediaSessionCompat, Intent intent) {
        if (mediaSessionCompat == null || intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            return null;
        }
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        mediaSessionCompat.getController().dispatchMediaButtonEvent(keyEvent);
        return keyEvent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && "android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) && intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            ComponentName a4 = a(context, "android.intent.action.MEDIA_BUTTON");
            if (a4 != null) {
                intent.setComponent(a4);
                b(context, intent);
                return;
            }
            ComponentName a5 = a(context, MediaBrowserServiceCompat.SERVICE_INTERFACE);
            if (a5 != null) {
                BroadcastReceiver.PendingResult goAsync = goAsync();
                Context applicationContext = context.getApplicationContext();
                MediaButtonConnectionCallback mediaButtonConnectionCallback = new MediaButtonConnectionCallback(applicationContext, intent, goAsync);
                MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, a5, mediaButtonConnectionCallback, null);
                mediaButtonConnectionCallback.b(mediaBrowserCompat);
                mediaBrowserCompat.connect();
                return;
            }
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Ignore unsupported intent: ");
        sb.append(intent);
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, ComponentName componentName, long j4) {
        if (componentName == null) {
            return null;
        }
        int keyCode = PlaybackStateCompat.toKeyCode(j4);
        if (keyCode == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Cannot build a media button pending intent with the given action: ");
            sb.append(j4);
            return null;
        }
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, keyCode));
        return PendingIntent.getBroadcast(context, keyCode, intent, 0);
    }
}
