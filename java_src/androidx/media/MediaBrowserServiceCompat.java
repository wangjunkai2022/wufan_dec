package androidx.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.core.app.BundleCompat;
import androidx.core.util.Pair;
import androidx.media.MediaBrowserServiceCompatApi21;
import androidx.media.MediaBrowserServiceCompatApi23;
import androidx.media.MediaBrowserServiceCompatApi26;
import androidx.media.MediaSessionManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String KEY_MEDIA_ITEM = "media_item";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String KEY_SEARCH_RESULTS = "search_results";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int RESULT_ERROR = -1;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int RESULT_OK = 0;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int RESULT_PROGRESS_UPDATE = 1;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";

    /* renamed from: f  reason: collision with root package name */
    static final String f6460f = "MBServiceCompat";

    /* renamed from: g  reason: collision with root package name */
    static final boolean f6461g = Log.isLoggable(f6460f, 3);

    /* renamed from: h  reason: collision with root package name */
    private static final float f6462h = 1.0E-5f;

    /* renamed from: i  reason: collision with root package name */
    static final int f6463i = 1;

    /* renamed from: j  reason: collision with root package name */
    static final int f6464j = 2;

    /* renamed from: k  reason: collision with root package name */
    static final int f6465k = 4;

    /* renamed from: a  reason: collision with root package name */
    private MediaBrowserServiceImpl f6466a;

    /* renamed from: c  reason: collision with root package name */
    ConnectionRecord f6468c;

    /* renamed from: e  reason: collision with root package name */
    MediaSessionCompat.Token f6470e;

    /* renamed from: b  reason: collision with root package name */
    final ArrayMap<IBinder, ConnectionRecord> f6467b = new ArrayMap<>();

    /* renamed from: d  reason: collision with root package name */
    final ServiceHandler f6469d = new ServiceHandler();

    /* loaded from: classes.dex */
    public static final class BrowserRoot {
        public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
        public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
        public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";
        @Deprecated
        public static final String EXTRA_SUGGESTION_KEYWORDS = "android.service.media.extra.SUGGESTION_KEYWORDS";

        /* renamed from: a  reason: collision with root package name */
        private final String f6482a;

        /* renamed from: b  reason: collision with root package name */
        private final Bundle f6483b;

        public BrowserRoot(@NonNull String str, @Nullable Bundle bundle) {
            if (str != null) {
                this.f6482a = str;
                this.f6483b = bundle;
                return;
            }
            throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead.");
        }

        public Bundle getExtras() {
            return this.f6483b;
        }

        public String getRootId() {
            return this.f6482a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ConnectionRecord implements IBinder.DeathRecipient {
        public final MediaSessionManager.RemoteUserInfo browserInfo;
        public final ServiceCallbacks callbacks;
        public final int pid;
        public final String pkg;
        public BrowserRoot root;
        public final Bundle rootHints;
        public final HashMap<String, List<Pair<IBinder, Bundle>>> subscriptions = new HashMap<>();
        public final int uid;

        ConnectionRecord(String str, int i2, int i4, Bundle bundle, ServiceCallbacks serviceCallbacks) {
            this.pkg = str;
            this.pid = i2;
            this.uid = i4;
            this.browserInfo = new MediaSessionManager.RemoteUserInfo(str, i2, i4);
            this.rootHints = bundle;
            this.callbacks = serviceCallbacks;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.f6469d.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ConnectionRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = ConnectionRecord.this;
                    MediaBrowserServiceCompat.this.f6467b.remove(connectionRecord.callbacks.asBinder());
                }
            });
        }
    }

    /* loaded from: classes.dex */
    interface MediaBrowserServiceImpl {
        Bundle getBrowserRootHints();

        MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo();

        void notifyChildrenChanged(MediaSessionManager.RemoteUserInfo remoteUserInfo, String str, Bundle bundle);

        void notifyChildrenChanged(String str, Bundle bundle);

        IBinder onBind(Intent intent);

        void onCreate();

        void setSessionToken(MediaSessionCompat.Token token);
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    class MediaBrowserServiceImplApi23 extends MediaBrowserServiceImplApi21 implements MediaBrowserServiceCompatApi23.ServiceCompatProxy {
        MediaBrowserServiceImplApi23() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            Object createService = MediaBrowserServiceCompatApi23.createService(MediaBrowserServiceCompat.this, this);
            this.f6487b = createService;
            MediaBrowserServiceCompatApi21.onCreate(createService);
        }

        @Override // androidx.media.MediaBrowserServiceCompatApi23.ServiceCompatProxy
        public void onLoadItem(String str, final MediaBrowserServiceCompatApi21.ResultWrapper<Parcel> resultWrapper) {
            MediaBrowserServiceCompat.this.onLoadItem(str, new Result<MediaBrowserCompat.MediaItem>(str) { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23.1
                @Override // androidx.media.MediaBrowserServiceCompat.Result
                public void detach() {
                    resultWrapper.detach();
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // androidx.media.MediaBrowserServiceCompat.Result
                /* renamed from: h */
                public void f(MediaBrowserCompat.MediaItem mediaItem) {
                    if (mediaItem == null) {
                        resultWrapper.sendResult(null);
                        return;
                    }
                    Parcel obtain = Parcel.obtain();
                    mediaItem.writeToParcel(obtain, 0);
                    resultWrapper.sendResult(obtain);
                }
            });
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    class MediaBrowserServiceImplApi26 extends MediaBrowserServiceImplApi23 implements MediaBrowserServiceCompatApi26.ServiceCompatProxy {
        MediaBrowserServiceImplApi26() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21
        void d(String str, Bundle bundle) {
            if (bundle != null) {
                MediaBrowserServiceCompatApi26.notifyChildrenChanged(this.f6487b, str, bundle);
            } else {
                super.d(str, bundle);
            }
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public Bundle getBrowserRootHints() {
            ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f6468c;
            if (connectionRecord != null) {
                if (connectionRecord.rootHints == null) {
                    return null;
                }
                return new Bundle(MediaBrowserServiceCompat.this.f6468c.rootHints);
            }
            return MediaBrowserServiceCompatApi26.getBrowserRootHints(this.f6487b);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            Object createService = MediaBrowserServiceCompatApi26.createService(MediaBrowserServiceCompat.this, this);
            this.f6487b = createService;
            MediaBrowserServiceCompatApi21.onCreate(createService);
        }

        @Override // androidx.media.MediaBrowserServiceCompatApi26.ServiceCompatProxy
        public void onLoadChildren(String str, final MediaBrowserServiceCompatApi26.ResultWrapper resultWrapper, Bundle bundle) {
            MediaBrowserServiceCompat.this.onLoadChildren(str, new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi26.1
                @Override // androidx.media.MediaBrowserServiceCompat.Result
                public void detach() {
                    resultWrapper.detach();
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // androidx.media.MediaBrowserServiceCompat.Result
                /* renamed from: h */
                public void f(List<MediaBrowserCompat.MediaItem> list) {
                    ArrayList arrayList;
                    if (list != null) {
                        arrayList = new ArrayList();
                        for (MediaBrowserCompat.MediaItem mediaItem : list) {
                            Parcel obtain = Parcel.obtain();
                            mediaItem.writeToParcel(obtain, 0);
                            arrayList.add(obtain);
                        }
                    } else {
                        arrayList = null;
                    }
                    resultWrapper.sendResult(arrayList, b());
                }
            }, bundle);
        }
    }

    @RequiresApi(28)
    /* loaded from: classes.dex */
    class MediaBrowserServiceImplApi28 extends MediaBrowserServiceImplApi26 {
        MediaBrowserServiceImplApi28() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo() {
            ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f6468c;
            if (connectionRecord != null) {
                return connectionRecord.browserInfo;
            }
            return new MediaSessionManager.RemoteUserInfo(((MediaBrowserService) this.f6487b).getCurrentBrowserInfo());
        }
    }

    /* loaded from: classes.dex */
    class MediaBrowserServiceImplBase implements MediaBrowserServiceImpl {

        /* renamed from: a  reason: collision with root package name */
        private Messenger f6508a;

        MediaBrowserServiceImplBase() {
        }

        void a(ConnectionRecord connectionRecord, String str, Bundle bundle) {
            List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
            if (list != null) {
                for (Pair<IBinder, Bundle> pair : list) {
                    if (MediaBrowserCompatUtils.hasDuplicatedItems(bundle, pair.second)) {
                        MediaBrowserServiceCompat.this.e(str, connectionRecord, pair.second, bundle);
                    }
                }
            }
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public Bundle getBrowserRootHints() {
            ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f6468c;
            if (connectionRecord != null) {
                if (connectionRecord.rootHints == null) {
                    return null;
                }
                return new Bundle(MediaBrowserServiceCompat.this.f6468c.rootHints);
            }
            throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo() {
            ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f6468c;
            if (connectionRecord != null) {
                return connectionRecord.browserInfo;
            }
            throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void notifyChildrenChanged(@NonNull final String str, final Bundle bundle) {
            MediaBrowserServiceCompat.this.f6469d.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplBase.2
                @Override // java.lang.Runnable
                public void run() {
                    for (IBinder iBinder : MediaBrowserServiceCompat.this.f6467b.keySet()) {
                        ArrayMap<IBinder, ConnectionRecord> arrayMap = MediaBrowserServiceCompat.this.f6467b;
                        MediaBrowserServiceImplBase.this.a(arrayMap.get(iBinder), str, bundle);
                    }
                }
            });
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public IBinder onBind(Intent intent) {
            if (MediaBrowserServiceCompat.SERVICE_INTERFACE.equals(intent.getAction())) {
                return this.f6508a.getBinder();
            }
            return null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            this.f6508a = new Messenger(MediaBrowserServiceCompat.this.f6469d);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void setSessionToken(final MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.f6469d.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplBase.1
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<ConnectionRecord> it2 = MediaBrowserServiceCompat.this.f6467b.values().iterator();
                    while (it2.hasNext()) {
                        ConnectionRecord next = it2.next();
                        try {
                            next.callbacks.onConnect(next.root.getRootId(), token, next.root.getExtras());
                        } catch (RemoteException unused) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Connection for ");
                            sb.append(next.pkg);
                            sb.append(" is no longer valid.");
                            it2.remove();
                        }
                    }
                }
            });
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void notifyChildrenChanged(@NonNull final MediaSessionManager.RemoteUserInfo remoteUserInfo, @NonNull final String str, final Bundle bundle) {
            MediaBrowserServiceCompat.this.f6469d.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplBase.3
                @Override // java.lang.Runnable
                public void run() {
                    for (int i2 = 0; i2 < MediaBrowserServiceCompat.this.f6467b.size(); i2++) {
                        ConnectionRecord valueAt = MediaBrowserServiceCompat.this.f6467b.valueAt(i2);
                        if (valueAt.browserInfo.equals(remoteUserInfo)) {
                            MediaBrowserServiceImplBase.this.a(valueAt, str, bundle);
                            return;
                        }
                    }
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public static class Result<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Object f6519a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f6520b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f6521c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f6522d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f6523e;

        /* renamed from: f  reason: collision with root package name */
        private int f6524f;

        Result(Object obj) {
            this.f6519a = obj;
        }

        private void a(Bundle bundle) {
            if (bundle != null && bundle.containsKey(MediaBrowserCompat.EXTRA_DOWNLOAD_PROGRESS)) {
                float f4 = bundle.getFloat(MediaBrowserCompat.EXTRA_DOWNLOAD_PROGRESS);
                if (f4 < -1.0E-5f || f4 > 1.00001f) {
                    throw new IllegalArgumentException("The value of the EXTRA_DOWNLOAD_PROGRESS field must be a float number within [0.0, 1.0].");
                }
            }
        }

        int b() {
            return this.f6524f;
        }

        boolean c() {
            return this.f6520b || this.f6521c || this.f6523e;
        }

        void d(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f6519a);
        }

        public void detach() {
            if (!this.f6520b) {
                if (!this.f6521c) {
                    if (!this.f6523e) {
                        this.f6520b = true;
                        return;
                    }
                    throw new IllegalStateException("detach() called when sendError() had already been called for: " + this.f6519a);
                }
                throw new IllegalStateException("detach() called when sendResult() had already been called for: " + this.f6519a);
            }
            throw new IllegalStateException("detach() called when detach() had already been called for: " + this.f6519a);
        }

        void e(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an interim update for " + this.f6519a);
        }

        void f(T t3) {
        }

        void g(int i2) {
            this.f6524f = i2;
        }

        public void sendError(Bundle bundle) {
            if (!this.f6521c && !this.f6523e) {
                this.f6523e = true;
                d(bundle);
                return;
            }
            throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f6519a);
        }

        public void sendProgressUpdate(Bundle bundle) {
            if (!this.f6521c && !this.f6523e) {
                a(bundle);
                this.f6522d = true;
                e(bundle);
                return;
            }
            throw new IllegalStateException("sendProgressUpdate() called when either sendResult() or sendError() had already been called for: " + this.f6519a);
        }

        public void sendResult(T t3) {
            if (!this.f6521c && !this.f6523e) {
                this.f6521c = true;
                f(t3);
                return;
            }
            throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f6519a);
        }
    }

    /* loaded from: classes.dex */
    private class ServiceBinderImpl {
        ServiceBinderImpl() {
        }

        public void addSubscription(final String str, final IBinder iBinder, final Bundle bundle, final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.f6469d.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f6467b.get(serviceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("addSubscription for callback that isn't registered id=");
                        sb.append(str);
                        return;
                    }
                    MediaBrowserServiceCompat.this.a(str, connectionRecord, iBinder, bundle);
                }
            });
        }

        public void connect(final String str, final int i2, final int i4, final Bundle bundle, final ServiceCallbacks serviceCallbacks) {
            if (MediaBrowserServiceCompat.this.c(str, i4)) {
                MediaBrowserServiceCompat.this.f6469d.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        IBinder asBinder = serviceCallbacks.asBinder();
                        MediaBrowserServiceCompat.this.f6467b.remove(asBinder);
                        ConnectionRecord connectionRecord = new ConnectionRecord(str, i2, i4, bundle, serviceCallbacks);
                        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                        mediaBrowserServiceCompat.f6468c = connectionRecord;
                        BrowserRoot onGetRoot = mediaBrowserServiceCompat.onGetRoot(str, i4, bundle);
                        connectionRecord.root = onGetRoot;
                        MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                        mediaBrowserServiceCompat2.f6468c = null;
                        if (onGetRoot == null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("No root for client ");
                            sb.append(str);
                            sb.append(" from service ");
                            sb.append(getClass().getName());
                            try {
                                serviceCallbacks.onConnectFailed();
                                return;
                            } catch (RemoteException unused) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("Calling onConnectFailed() failed. Ignoring. pkg=");
                                sb2.append(str);
                                return;
                            }
                        }
                        try {
                            mediaBrowserServiceCompat2.f6467b.put(asBinder, connectionRecord);
                            asBinder.linkToDeath(connectionRecord, 0);
                            if (MediaBrowserServiceCompat.this.f6470e != null) {
                                serviceCallbacks.onConnect(connectionRecord.root.getRootId(), MediaBrowserServiceCompat.this.f6470e, connectionRecord.root.getExtras());
                            }
                        } catch (RemoteException unused2) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Calling onConnect() failed. Dropping client. pkg=");
                            sb3.append(str);
                            MediaBrowserServiceCompat.this.f6467b.remove(asBinder);
                        }
                    }
                });
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i4 + " package=" + str);
        }

        public void disconnect(final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.f6469d.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord remove = MediaBrowserServiceCompat.this.f6467b.remove(serviceCallbacks.asBinder());
                    if (remove != null) {
                        remove.callbacks.asBinder().unlinkToDeath(remove, 0);
                    }
                }
            });
        }

        public void getMediaItem(final String str, final ResultReceiver resultReceiver, final ServiceCallbacks serviceCallbacks) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f6469d.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.5
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f6467b.get(serviceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("getMediaItem for callback that isn't registered id=");
                        sb.append(str);
                        return;
                    }
                    MediaBrowserServiceCompat.this.f(str, connectionRecord, resultReceiver);
                }
            });
        }

        public void registerCallbacks(final ServiceCallbacks serviceCallbacks, final String str, final int i2, final int i4, final Bundle bundle) {
            MediaBrowserServiceCompat.this.f6469d.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.6
                @Override // java.lang.Runnable
                public void run() {
                    IBinder asBinder = serviceCallbacks.asBinder();
                    MediaBrowserServiceCompat.this.f6467b.remove(asBinder);
                    ConnectionRecord connectionRecord = new ConnectionRecord(str, i2, i4, bundle, serviceCallbacks);
                    MediaBrowserServiceCompat.this.f6467b.put(asBinder, connectionRecord);
                    try {
                        asBinder.linkToDeath(connectionRecord, 0);
                    } catch (RemoteException unused) {
                    }
                }
            });
        }

        public void removeSubscription(final String str, final IBinder iBinder, final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.f6469d.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.4
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f6467b.get(serviceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("removeSubscription for callback that isn't registered id=");
                        sb.append(str);
                    } else if (MediaBrowserServiceCompat.this.h(str, connectionRecord, iBinder)) {
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("removeSubscription called for ");
                        sb2.append(str);
                        sb2.append(" which is not subscribed");
                    }
                }
            });
        }

        public void search(final String str, final Bundle bundle, final ResultReceiver resultReceiver, final ServiceCallbacks serviceCallbacks) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f6469d.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.8
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f6467b.get(serviceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("search for callback that isn't registered query=");
                        sb.append(str);
                        return;
                    }
                    MediaBrowserServiceCompat.this.g(str, bundle, connectionRecord, resultReceiver);
                }
            });
        }

        public void sendCustomAction(final String str, final Bundle bundle, final ResultReceiver resultReceiver, final ServiceCallbacks serviceCallbacks) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f6469d.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.9
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f6467b.get(serviceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("sendCustomAction for callback that isn't registered action=");
                        sb.append(str);
                        sb.append(", extras=");
                        sb.append(bundle);
                        return;
                    }
                    MediaBrowserServiceCompat.this.d(str, bundle, connectionRecord, resultReceiver);
                }
            });
        }

        public void unregisterCallbacks(final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.f6469d.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.7
                @Override // java.lang.Runnable
                public void run() {
                    IBinder asBinder = serviceCallbacks.asBinder();
                    ConnectionRecord remove = MediaBrowserServiceCompat.this.f6467b.remove(asBinder);
                    if (remove != null) {
                        asBinder.unlinkToDeath(remove, 0);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface ServiceCallbacks {
        IBinder asBinder();

        void onConnect(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException;

        void onConnectFailed() throws RemoteException;

        void onLoadChildren(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException;
    }

    /* loaded from: classes.dex */
    private static class ServiceCallbacksCompat implements ServiceCallbacks {

        /* renamed from: a  reason: collision with root package name */
        final Messenger f6565a;

        ServiceCallbacksCompat(Messenger messenger) {
            this.f6565a = messenger;
        }

        private void a(int i2, Bundle bundle) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i2;
            obtain.arg1 = 2;
            obtain.setData(bundle);
            this.f6565a.send(obtain);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.ServiceCallbacks
        public IBinder asBinder() {
            return this.f6565a.getBinder();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onConnect(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 2);
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            bundle2.putParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN, token);
            bundle2.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, bundle);
            a(1, bundle2);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onConnectFailed() throws RemoteException {
            a(2, null);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onLoadChildren(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException {
            Bundle bundle3 = new Bundle();
            bundle3.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            bundle3.putBundle(MediaBrowserProtocol.DATA_OPTIONS, bundle);
            bundle3.putBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS, bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            a(3, bundle3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class ServiceHandler extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final ServiceBinderImpl f6566a;

        ServiceHandler() {
            this.f6566a = new ServiceBinderImpl();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                    MediaSessionCompat.ensureClassLoader(bundle);
                    this.f6566a.connect(data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt(MediaBrowserProtocol.DATA_CALLING_PID), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID), bundle, new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 2:
                    this.f6566a.disconnect(new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 3:
                    Bundle bundle2 = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                    MediaSessionCompat.ensureClassLoader(bundle2);
                    this.f6566a.addSubscription(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.getBinder(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), bundle2, new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 4:
                    this.f6566a.removeSubscription(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.getBinder(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 5:
                    this.f6566a.getMediaItem(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 6:
                    Bundle bundle3 = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                    MediaSessionCompat.ensureClassLoader(bundle3);
                    this.f6566a.registerCallbacks(new ServiceCallbacksCompat(message.replyTo), data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt(MediaBrowserProtocol.DATA_CALLING_PID), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID), bundle3);
                    return;
                case 7:
                    this.f6566a.unregisterCallbacks(new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 8:
                    Bundle bundle4 = data.getBundle(MediaBrowserProtocol.DATA_SEARCH_EXTRAS);
                    MediaSessionCompat.ensureClassLoader(bundle4);
                    this.f6566a.search(data.getString(MediaBrowserProtocol.DATA_SEARCH_QUERY), bundle4, (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 9:
                    Bundle bundle5 = data.getBundle(MediaBrowserProtocol.DATA_CUSTOM_ACTION_EXTRAS);
                    MediaSessionCompat.ensureClassLoader(bundle5);
                    this.f6566a.sendCustomAction(data.getString(MediaBrowserProtocol.DATA_CUSTOM_ACTION), bundle5, (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new ServiceCallbacksCompat(message.replyTo));
                    return;
                default:
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unhandled message: ");
                    sb.append(message);
                    sb.append("\n  Service version: ");
                    sb.append(2);
                    sb.append("\n  Client version: ");
                    sb.append(message.arg1);
                    return;
            }
        }

        public void postOrRun(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j4) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt(MediaBrowserProtocol.DATA_CALLING_UID, Binder.getCallingUid());
            data.putInt(MediaBrowserProtocol.DATA_CALLING_PID, Binder.getCallingPid());
            return super.sendMessageAtTime(message, j4);
        }
    }

    void a(String str, ConnectionRecord connectionRecord, IBinder iBinder, Bundle bundle) {
        List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
        if (list == null) {
            list = new ArrayList<>();
        }
        for (Pair<IBinder, Bundle> pair : list) {
            if (iBinder == pair.first && MediaBrowserCompatUtils.areSameOptions(bundle, pair.second)) {
                return;
            }
        }
        list.add(new Pair<>(iBinder, bundle));
        connectionRecord.subscriptions.put(str, list);
        e(str, connectionRecord, bundle, null);
        this.f6468c = connectionRecord;
        onSubscribe(str, bundle);
        this.f6468c = null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void attachToBaseContext(Context context) {
        attachBaseContext(context);
    }

    List<MediaBrowserCompat.MediaItem> b(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i2 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i4 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        if (i2 == -1 && i4 == -1) {
            return list;
        }
        int i5 = i4 * i2;
        int i6 = i5 + i4;
        if (i2 >= 0 && i4 >= 1 && i5 < list.size()) {
            if (i6 > list.size()) {
                i6 = list.size();
            }
            return list.subList(i5, i6);
        }
        return Collections.emptyList();
    }

    boolean c(String str, int i2) {
        if (str == null) {
            return false;
        }
        for (String str2 : getPackageManager().getPackagesForUid(i2)) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    void d(String str, Bundle bundle, ConnectionRecord connectionRecord, final ResultReceiver resultReceiver) {
        Result<Bundle> result = new Result<Bundle>(str) { // from class: androidx.media.MediaBrowserServiceCompat.4
            @Override // androidx.media.MediaBrowserServiceCompat.Result
            void d(Bundle bundle2) {
                resultReceiver.send(-1, bundle2);
            }

            @Override // androidx.media.MediaBrowserServiceCompat.Result
            void e(Bundle bundle2) {
                resultReceiver.send(1, bundle2);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.Result
            /* renamed from: h */
            public void f(Bundle bundle2) {
                resultReceiver.send(0, bundle2);
            }
        };
        this.f6468c = connectionRecord;
        onCustomAction(str, bundle, result);
        this.f6468c = null;
        if (result.c()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    void e(final String str, final ConnectionRecord connectionRecord, final Bundle bundle, final Bundle bundle2) {
        Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.Result
            /* renamed from: h */
            public void f(List<MediaBrowserCompat.MediaItem> list) {
                if (MediaBrowserServiceCompat.this.f6467b.get(connectionRecord.callbacks.asBinder()) != connectionRecord) {
                    if (MediaBrowserServiceCompat.f6461g) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Not sending onLoadChildren result for connection that has been disconnected. pkg=");
                        sb.append(connectionRecord.pkg);
                        sb.append(" id=");
                        sb.append(str);
                        return;
                    }
                    return;
                }
                if ((b() & 1) != 0) {
                    list = MediaBrowserServiceCompat.this.b(list, bundle);
                }
                try {
                    connectionRecord.callbacks.onLoadChildren(str, list, bundle, bundle2);
                } catch (RemoteException unused) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Calling onLoadChildren() failed for id=");
                    sb2.append(str);
                    sb2.append(" package=");
                    sb2.append(connectionRecord.pkg);
                }
            }
        };
        this.f6468c = connectionRecord;
        if (bundle == null) {
            onLoadChildren(str, result);
        } else {
            onLoadChildren(str, result, bundle);
        }
        this.f6468c = null;
        if (result.c()) {
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + connectionRecord.pkg + " id=" + str);
    }

    void f(String str, ConnectionRecord connectionRecord, final ResultReceiver resultReceiver) {
        Result<MediaBrowserCompat.MediaItem> result = new Result<MediaBrowserCompat.MediaItem>(str) { // from class: androidx.media.MediaBrowserServiceCompat.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.Result
            /* renamed from: h */
            public void f(MediaBrowserCompat.MediaItem mediaItem) {
                if ((b() & 2) != 0) {
                    resultReceiver.send(-1, null);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM, mediaItem);
                resultReceiver.send(0, bundle);
            }
        };
        this.f6468c = connectionRecord;
        onLoadItem(str, result);
        this.f6468c = null;
        if (result.c()) {
            return;
        }
        throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
    }

    void g(String str, Bundle bundle, ConnectionRecord connectionRecord, final ResultReceiver resultReceiver) {
        Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.Result
            /* renamed from: h */
            public void f(List<MediaBrowserCompat.MediaItem> list) {
                if ((b() & 4) == 0 && list != null) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS, (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
                    resultReceiver.send(0, bundle2);
                    return;
                }
                resultReceiver.send(-1, null);
            }
        };
        this.f6468c = connectionRecord;
        onSearch(str, bundle, result);
        this.f6468c = null;
        if (result.c()) {
            return;
        }
        throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
    }

    public final Bundle getBrowserRootHints() {
        return this.f6466a.getBrowserRootHints();
    }

    @NonNull
    public final MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo() {
        return this.f6466a.getCurrentBrowserInfo();
    }

    @Nullable
    public MediaSessionCompat.Token getSessionToken() {
        return this.f6470e;
    }

    boolean h(String str, ConnectionRecord connectionRecord, IBinder iBinder) {
        boolean z3 = false;
        try {
            if (iBinder == null) {
                return connectionRecord.subscriptions.remove(str) != null;
            }
            List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
            if (list != null) {
                Iterator<Pair<IBinder, Bundle>> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (iBinder == it2.next().first) {
                        it2.remove();
                        z3 = true;
                    }
                }
                if (list.size() == 0) {
                    connectionRecord.subscriptions.remove(str);
                }
            }
            return z3;
        } finally {
            this.f6468c = connectionRecord;
            onUnsubscribe(str);
            this.f6468c = null;
        }
    }

    public void notifyChildrenChanged(@NonNull String str) {
        if (str != null) {
            this.f6466a.notifyChildrenChanged(str, null);
            return;
        }
        throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f6466a.onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            this.f6466a = new MediaBrowserServiceImplApi28();
        } else if (i2 >= 26) {
            this.f6466a = new MediaBrowserServiceImplApi26();
        } else if (i2 >= 23) {
            this.f6466a = new MediaBrowserServiceImplApi23();
        } else if (i2 >= 21) {
            this.f6466a = new MediaBrowserServiceImplApi21();
        } else {
            this.f6466a = new MediaBrowserServiceImplBase();
        }
        this.f6466a.onCreate();
    }

    public void onCustomAction(@NonNull String str, Bundle bundle, @NonNull Result<Bundle> result) {
        result.sendError(null);
    }

    @Nullable
    public abstract BrowserRoot onGetRoot(@NonNull String str, int i2, @Nullable Bundle bundle);

    public abstract void onLoadChildren(@NonNull String str, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result);

    public void onLoadChildren(@NonNull String str, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result, @NonNull Bundle bundle) {
        result.g(1);
        onLoadChildren(str, result);
    }

    public void onLoadItem(String str, @NonNull Result<MediaBrowserCompat.MediaItem> result) {
        result.g(2);
        result.sendResult(null);
    }

    public void onSearch(@NonNull String str, Bundle bundle, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result) {
        result.g(4);
        result.sendResult(null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onSubscribe(String str, Bundle bundle) {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onUnsubscribe(String str) {
    }

    public void setSessionToken(MediaSessionCompat.Token token) {
        if (token != null) {
            if (this.f6470e == null) {
                this.f6470e = token;
                this.f6466a.setSessionToken(token);
                return;
            }
            throw new IllegalStateException("The session token has already been set.");
        }
        throw new IllegalArgumentException("Session token may not be null.");
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    class MediaBrowserServiceImplApi21 implements MediaBrowserServiceImpl, MediaBrowserServiceCompatApi21.ServiceCompatProxy {

        /* renamed from: a  reason: collision with root package name */
        final List<Bundle> f6486a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        Object f6487b;

        /* renamed from: c  reason: collision with root package name */
        Messenger f6488c;

        MediaBrowserServiceImplApi21() {
        }

        void a(final MediaSessionManager.RemoteUserInfo remoteUserInfo, final String str, final Bundle bundle) {
            MediaBrowserServiceCompat.this.f6469d.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.4
                @Override // java.lang.Runnable
                public void run() {
                    for (int i2 = 0; i2 < MediaBrowserServiceCompat.this.f6467b.size(); i2++) {
                        ConnectionRecord valueAt = MediaBrowserServiceCompat.this.f6467b.valueAt(i2);
                        if (valueAt.browserInfo.equals(remoteUserInfo)) {
                            MediaBrowserServiceImplApi21.this.c(valueAt, str, bundle);
                        }
                    }
                }
            });
        }

        void b(final String str, final Bundle bundle) {
            MediaBrowserServiceCompat.this.f6469d.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.3
                @Override // java.lang.Runnable
                public void run() {
                    for (IBinder iBinder : MediaBrowserServiceCompat.this.f6467b.keySet()) {
                        ArrayMap<IBinder, ConnectionRecord> arrayMap = MediaBrowserServiceCompat.this.f6467b;
                        MediaBrowserServiceImplApi21.this.c(arrayMap.get(iBinder), str, bundle);
                    }
                }
            });
        }

        void c(ConnectionRecord connectionRecord, String str, Bundle bundle) {
            List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
            if (list != null) {
                for (Pair<IBinder, Bundle> pair : list) {
                    if (MediaBrowserCompatUtils.hasDuplicatedItems(bundle, pair.second)) {
                        MediaBrowserServiceCompat.this.e(str, connectionRecord, pair.second, bundle);
                    }
                }
            }
        }

        void d(String str, Bundle bundle) {
            MediaBrowserServiceCompatApi21.notifyChildrenChanged(this.f6487b, str);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public Bundle getBrowserRootHints() {
            if (this.f6488c == null) {
                return null;
            }
            ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f6468c;
            if (connectionRecord != null) {
                if (connectionRecord.rootHints == null) {
                    return null;
                }
                return new Bundle(MediaBrowserServiceCompat.this.f6468c.rootHints);
            }
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo() {
            ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f6468c;
            if (connectionRecord != null) {
                return connectionRecord.browserInfo;
            }
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void notifyChildrenChanged(String str, Bundle bundle) {
            d(str, bundle);
            b(str, bundle);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public IBinder onBind(Intent intent) {
            return MediaBrowserServiceCompatApi21.onBind(this.f6487b, intent);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            Object createService = MediaBrowserServiceCompatApi21.createService(MediaBrowserServiceCompat.this, this);
            this.f6487b = createService;
            MediaBrowserServiceCompatApi21.onCreate(createService);
        }

        @Override // androidx.media.MediaBrowserServiceCompatApi21.ServiceCompatProxy
        public MediaBrowserServiceCompatApi21.BrowserRoot onGetRoot(String str, int i2, Bundle bundle) {
            Bundle bundle2;
            if (bundle == null || bundle.getInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 0) == 0) {
                bundle2 = null;
            } else {
                bundle.remove(MediaBrowserProtocol.EXTRA_CLIENT_VERSION);
                this.f6488c = new Messenger(MediaBrowserServiceCompat.this.f6469d);
                bundle2 = new Bundle();
                bundle2.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 2);
                BundleCompat.putBinder(bundle2, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER, this.f6488c.getBinder());
                MediaSessionCompat.Token token = MediaBrowserServiceCompat.this.f6470e;
                if (token != null) {
                    IMediaSession extraBinder = token.getExtraBinder();
                    BundleCompat.putBinder(bundle2, MediaBrowserProtocol.EXTRA_SESSION_BINDER, extraBinder == null ? null : extraBinder.asBinder());
                } else {
                    this.f6486a.add(bundle2);
                }
            }
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f6468c = new ConnectionRecord(str, -1, i2, bundle, null);
            BrowserRoot onGetRoot = MediaBrowserServiceCompat.this.onGetRoot(str, i2, bundle);
            MediaBrowserServiceCompat.this.f6468c = null;
            if (onGetRoot == null) {
                return null;
            }
            if (bundle2 == null) {
                bundle2 = onGetRoot.getExtras();
            } else if (onGetRoot.getExtras() != null) {
                bundle2.putAll(onGetRoot.getExtras());
            }
            return new MediaBrowserServiceCompatApi21.BrowserRoot(onGetRoot.getRootId(), bundle2);
        }

        @Override // androidx.media.MediaBrowserServiceCompatApi21.ServiceCompatProxy
        public void onLoadChildren(String str, final MediaBrowserServiceCompatApi21.ResultWrapper<List<Parcel>> resultWrapper) {
            MediaBrowserServiceCompat.this.onLoadChildren(str, new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.2
                @Override // androidx.media.MediaBrowserServiceCompat.Result
                public void detach() {
                    resultWrapper.detach();
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // androidx.media.MediaBrowserServiceCompat.Result
                /* renamed from: h */
                public void f(List<MediaBrowserCompat.MediaItem> list) {
                    ArrayList arrayList;
                    if (list != null) {
                        arrayList = new ArrayList();
                        for (MediaBrowserCompat.MediaItem mediaItem : list) {
                            Parcel obtain = Parcel.obtain();
                            mediaItem.writeToParcel(obtain, 0);
                            arrayList.add(obtain);
                        }
                    } else {
                        arrayList = null;
                    }
                    resultWrapper.sendResult(arrayList);
                }
            });
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void setSessionToken(final MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.f6469d.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!MediaBrowserServiceImplApi21.this.f6486a.isEmpty()) {
                        IMediaSession extraBinder = token.getExtraBinder();
                        if (extraBinder != null) {
                            for (Bundle bundle : MediaBrowserServiceImplApi21.this.f6486a) {
                                BundleCompat.putBinder(bundle, MediaBrowserProtocol.EXTRA_SESSION_BINDER, extraBinder.asBinder());
                            }
                        }
                        MediaBrowserServiceImplApi21.this.f6486a.clear();
                    }
                    MediaBrowserServiceCompatApi21.setSessionToken(MediaBrowserServiceImplApi21.this.f6487b, token.getToken());
                }
            });
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void notifyChildrenChanged(MediaSessionManager.RemoteUserInfo remoteUserInfo, String str, Bundle bundle) {
            a(remoteUserInfo, str, bundle);
        }
    }

    public void notifyChildrenChanged(@NonNull String str, @NonNull Bundle bundle) {
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        if (bundle != null) {
            this.f6466a.notifyChildrenChanged(str, bundle);
            return;
        }
        throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void notifyChildrenChanged(@NonNull MediaSessionManager.RemoteUserInfo remoteUserInfo, @NonNull String str, @NonNull Bundle bundle) {
        if (remoteUserInfo == null) {
            throw new IllegalArgumentException("remoteUserInfo cannot be null in notifyChildrenChanged");
        }
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        if (bundle != null) {
            this.f6466a.notifyChildrenChanged(remoteUserInfo, str, bundle);
            return;
        }
        throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
    }
}
