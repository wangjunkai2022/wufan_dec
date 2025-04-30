package androidx.media;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.util.ObjectsCompat;
import androidx.media.MediaSessionManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MediaSessionManagerImplBase implements MediaSessionManager.MediaSessionManagerImpl {

    /* renamed from: c  reason: collision with root package name */
    private static final String f6583c = "MediaSessionManager";

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f6584d = MediaSessionManager.f6576c;

    /* renamed from: e  reason: collision with root package name */
    private static final String f6585e = "android.permission.STATUS_BAR_SERVICE";

    /* renamed from: f  reason: collision with root package name */
    private static final String f6586f = "android.permission.MEDIA_CONTENT_CONTROL";

    /* renamed from: g  reason: collision with root package name */
    private static final String f6587g = "enabled_notification_listeners";

    /* renamed from: a  reason: collision with root package name */
    Context f6588a;

    /* renamed from: b  reason: collision with root package name */
    ContentResolver f6589b;

    /* loaded from: classes.dex */
    static class RemoteUserInfoImplBase implements MediaSessionManager.RemoteUserInfoImpl {

        /* renamed from: a  reason: collision with root package name */
        private String f6590a;

        /* renamed from: b  reason: collision with root package name */
        private int f6591b;

        /* renamed from: c  reason: collision with root package name */
        private int f6592c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RemoteUserInfoImplBase(String str, int i2, int i4) {
            this.f6590a = str;
            this.f6591b = i2;
            this.f6592c = i4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof RemoteUserInfoImplBase) {
                RemoteUserInfoImplBase remoteUserInfoImplBase = (RemoteUserInfoImplBase) obj;
                return TextUtils.equals(this.f6590a, remoteUserInfoImplBase.f6590a) && this.f6591b == remoteUserInfoImplBase.f6591b && this.f6592c == remoteUserInfoImplBase.f6592c;
            }
            return false;
        }

        @Override // androidx.media.MediaSessionManager.RemoteUserInfoImpl
        public String getPackageName() {
            return this.f6590a;
        }

        @Override // androidx.media.MediaSessionManager.RemoteUserInfoImpl
        public int getPid() {
            return this.f6591b;
        }

        @Override // androidx.media.MediaSessionManager.RemoteUserInfoImpl
        public int getUid() {
            return this.f6592c;
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.f6590a, Integer.valueOf(this.f6591b), Integer.valueOf(this.f6592c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaSessionManagerImplBase(Context context) {
        this.f6588a = context;
        this.f6589b = context.getContentResolver();
    }

    private boolean b(MediaSessionManager.RemoteUserInfoImpl remoteUserInfoImpl, String str) {
        return remoteUserInfoImpl.getPid() < 0 ? this.f6588a.getPackageManager().checkPermission(str, remoteUserInfoImpl.getPackageName()) == 0 : this.f6588a.checkPermission(str, remoteUserInfoImpl.getPid(), remoteUserInfoImpl.getUid()) == 0;
    }

    boolean a(@NonNull MediaSessionManager.RemoteUserInfoImpl remoteUserInfoImpl) {
        String string = Settings.Secure.getString(this.f6589b, f6587g);
        if (string != null) {
            for (String str : string.split(":")) {
                ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                if (unflattenFromString != null && unflattenFromString.getPackageName().equals(remoteUserInfoImpl.getPackageName())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.media.MediaSessionManager.MediaSessionManagerImpl
    public Context getContext() {
        return this.f6588a;
    }

    @Override // androidx.media.MediaSessionManager.MediaSessionManagerImpl
    public boolean isTrustedForMediaControl(@NonNull MediaSessionManager.RemoteUserInfoImpl remoteUserInfoImpl) {
        try {
            if (this.f6588a.getPackageManager().getApplicationInfo(remoteUserInfoImpl.getPackageName(), 0).uid == remoteUserInfoImpl.getUid()) {
                return b(remoteUserInfoImpl, f6585e) || b(remoteUserInfoImpl, f6586f) || remoteUserInfoImpl.getUid() == 1000 || a(remoteUserInfoImpl);
            }
            if (f6584d) {
                StringBuilder sb = new StringBuilder();
                sb.append("Package name ");
                sb.append(remoteUserInfoImpl.getPackageName());
                sb.append(" doesn't match with the uid ");
                sb.append(remoteUserInfoImpl.getUid());
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            if (f6584d) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Package ");
                sb2.append(remoteUserInfoImpl.getPackageName());
                sb2.append(" doesn't exist");
            }
            return false;
        }
    }
}
