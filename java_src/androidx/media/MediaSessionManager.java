package androidx.media;

import android.content.Context;
import android.media.session.MediaSessionManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.MediaSessionManagerImplApi28;
import androidx.media.MediaSessionManagerImplBase;
/* loaded from: classes.dex */
public final class MediaSessionManager {

    /* renamed from: b  reason: collision with root package name */
    static final String f6575b = "MediaSessionManager";

    /* renamed from: c  reason: collision with root package name */
    static final boolean f6576c = Log.isLoggable(f6575b, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final Object f6577d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static volatile MediaSessionManager f6578e;

    /* renamed from: a  reason: collision with root package name */
    MediaSessionManagerImpl f6579a;

    /* loaded from: classes.dex */
    interface MediaSessionManagerImpl {
        Context getContext();

        boolean isTrustedForMediaControl(RemoteUserInfoImpl remoteUserInfoImpl);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface RemoteUserInfoImpl {
        String getPackageName();

        int getPid();

        int getUid();
    }

    private MediaSessionManager(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            this.f6579a = new MediaSessionManagerImplApi28(context);
        } else if (i2 >= 21) {
            this.f6579a = new MediaSessionManagerImplApi21(context);
        } else {
            this.f6579a = new MediaSessionManagerImplBase(context);
        }
    }

    @NonNull
    public static MediaSessionManager getSessionManager(@NonNull Context context) {
        MediaSessionManager mediaSessionManager = f6578e;
        if (mediaSessionManager == null) {
            synchronized (f6577d) {
                mediaSessionManager = f6578e;
                if (mediaSessionManager == null) {
                    f6578e = new MediaSessionManager(context.getApplicationContext());
                    mediaSessionManager = f6578e;
                }
            }
        }
        return mediaSessionManager;
    }

    Context getContext() {
        return this.f6579a.getContext();
    }

    public boolean isTrustedForMediaControl(@NonNull RemoteUserInfo remoteUserInfo) {
        if (remoteUserInfo != null) {
            return this.f6579a.isTrustedForMediaControl(remoteUserInfo.f6580a);
        }
        throw new IllegalArgumentException("userInfo should not be null");
    }

    /* loaded from: classes.dex */
    public static final class RemoteUserInfo {
        public static final String LEGACY_CONTROLLER = "android.media.session.MediaController";

        /* renamed from: a  reason: collision with root package name */
        RemoteUserInfoImpl f6580a;

        public RemoteUserInfo(@NonNull String str, int i2, int i4) {
            if (Build.VERSION.SDK_INT >= 28) {
                this.f6580a = new MediaSessionManagerImplApi28.RemoteUserInfoImplApi28(str, i2, i4);
            } else {
                this.f6580a = new MediaSessionManagerImplBase.RemoteUserInfoImplBase(str, i2, i4);
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof RemoteUserInfo) {
                return this.f6580a.equals(((RemoteUserInfo) obj).f6580a);
            }
            return false;
        }

        @NonNull
        public String getPackageName() {
            return this.f6580a.getPackageName();
        }

        public int getPid() {
            return this.f6580a.getPid();
        }

        public int getUid() {
            return this.f6580a.getUid();
        }

        public int hashCode() {
            return this.f6580a.hashCode();
        }

        @RequiresApi(28)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public RemoteUserInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            this.f6580a = new MediaSessionManagerImplApi28.RemoteUserInfoImplApi28(remoteUserInfo);
        }
    }
}
