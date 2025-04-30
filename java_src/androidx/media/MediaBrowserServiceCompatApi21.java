package androidx.media;

import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;
@RequiresApi(21)
/* loaded from: classes.dex */
class MediaBrowserServiceCompatApi21 {

    /* loaded from: classes.dex */
    static class BrowserRoot {

        /* renamed from: a  reason: collision with root package name */
        final String f6568a;

        /* renamed from: b  reason: collision with root package name */
        final Bundle f6569b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public BrowserRoot(String str, Bundle bundle) {
            this.f6568a = str;
            this.f6569b = bundle;
        }
    }

    /* loaded from: classes.dex */
    static class MediaBrowserServiceAdaptor extends MediaBrowserService {

        /* renamed from: a  reason: collision with root package name */
        final ServiceCompatProxy f6570a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public MediaBrowserServiceAdaptor(Context context, ServiceCompatProxy serviceCompatProxy) {
            attachBaseContext(context);
            this.f6570a = serviceCompatProxy;
        }

        @Override // android.service.media.MediaBrowserService
        public MediaBrowserService.BrowserRoot onGetRoot(String str, int i2, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            BrowserRoot onGetRoot = this.f6570a.onGetRoot(str, i2, bundle == null ? null : new Bundle(bundle));
            if (onGetRoot == null) {
                return null;
            }
            return new MediaBrowserService.BrowserRoot(onGetRoot.f6568a, onGetRoot.f6569b);
        }

        @Override // android.service.media.MediaBrowserService
        public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
            this.f6570a.onLoadChildren(str, new ResultWrapper<>(result));
        }
    }

    /* loaded from: classes.dex */
    static class ResultWrapper<T> {

        /* renamed from: a  reason: collision with root package name */
        MediaBrowserService.Result f6571a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ResultWrapper(MediaBrowserService.Result result) {
            this.f6571a = result;
        }

        List<MediaBrowser.MediaItem> a(List<Parcel> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcel parcel : list) {
                parcel.setDataPosition(0);
                arrayList.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            return arrayList;
        }

        public void detach() {
            this.f6571a.detach();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void sendResult(T t3) {
            if (t3 instanceof List) {
                this.f6571a.sendResult(a((List) t3));
            } else if (t3 instanceof Parcel) {
                Parcel parcel = (Parcel) t3;
                parcel.setDataPosition(0);
                this.f6571a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            } else {
                this.f6571a.sendResult(null);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface ServiceCompatProxy {
        BrowserRoot onGetRoot(String str, int i2, Bundle bundle);

        void onLoadChildren(String str, ResultWrapper<List<Parcel>> resultWrapper);
    }

    private MediaBrowserServiceCompatApi21() {
    }

    public static Object createService(Context context, ServiceCompatProxy serviceCompatProxy) {
        return new MediaBrowserServiceAdaptor(context, serviceCompatProxy);
    }

    public static void notifyChildrenChanged(Object obj, String str) {
        ((MediaBrowserService) obj).notifyChildrenChanged(str);
    }

    public static IBinder onBind(Object obj, Intent intent) {
        return ((MediaBrowserService) obj).onBind(intent);
    }

    public static void onCreate(Object obj) {
        ((MediaBrowserService) obj).onCreate();
    }

    public static void setSessionToken(Object obj, Object obj2) {
        ((MediaBrowserService) obj).setSessionToken((MediaSession.Token) obj2);
    }
}
