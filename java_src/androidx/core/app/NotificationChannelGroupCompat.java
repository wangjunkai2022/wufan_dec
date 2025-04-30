package androidx.core.app;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class NotificationChannelGroupCompat {

    /* renamed from: a  reason: collision with root package name */
    final String f3817a;

    /* renamed from: b  reason: collision with root package name */
    CharSequence f3818b;

    /* renamed from: c  reason: collision with root package name */
    String f3819c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3820d;

    /* renamed from: e  reason: collision with root package name */
    private List<NotificationChannelCompat> f3821e;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        final NotificationChannelGroupCompat f3822a;

        public Builder(@NonNull String str) {
            this.f3822a = new NotificationChannelGroupCompat(str);
        }

        @NonNull
        public NotificationChannelGroupCompat build() {
            return this.f3822a;
        }

        @NonNull
        public Builder setDescription(@Nullable String str) {
            this.f3822a.f3819c = str;
            return this;
        }

        @NonNull
        public Builder setName(@Nullable CharSequence charSequence) {
            this.f3822a.f3818b = charSequence;
            return this;
        }
    }

    NotificationChannelGroupCompat(@NonNull String str) {
        this.f3821e = Collections.emptyList();
        this.f3817a = (String) Preconditions.checkNotNull(str);
    }

    @RequiresApi(26)
    private List<NotificationChannelCompat> a(List<NotificationChannel> list) {
        ArrayList arrayList = new ArrayList();
        for (NotificationChannel notificationChannel : list) {
            if (this.f3817a.equals(notificationChannel.getGroup())) {
                arrayList.add(new NotificationChannelCompat(notificationChannel));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotificationChannelGroup b() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 26) {
            return null;
        }
        NotificationChannelGroup notificationChannelGroup = new NotificationChannelGroup(this.f3817a, this.f3818b);
        if (i2 >= 28) {
            notificationChannelGroup.setDescription(this.f3819c);
        }
        return notificationChannelGroup;
    }

    @NonNull
    public List<NotificationChannelCompat> getChannels() {
        return this.f3821e;
    }

    @Nullable
    public String getDescription() {
        return this.f3819c;
    }

    @NonNull
    public String getId() {
        return this.f3817a;
    }

    @Nullable
    public CharSequence getName() {
        return this.f3818b;
    }

    public boolean isBlocked() {
        return this.f3820d;
    }

    @NonNull
    public Builder toBuilder() {
        return new Builder(this.f3817a).setName(this.f3818b).setDescription(this.f3819c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(28)
    public NotificationChannelGroupCompat(@NonNull NotificationChannelGroup notificationChannelGroup) {
        this(notificationChannelGroup, Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    public NotificationChannelGroupCompat(@NonNull NotificationChannelGroup notificationChannelGroup, @NonNull List<NotificationChannel> list) {
        this(notificationChannelGroup.getId());
        this.f3818b = notificationChannelGroup.getName();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            this.f3819c = notificationChannelGroup.getDescription();
        }
        if (i2 >= 28) {
            this.f3820d = notificationChannelGroup.isBlocked();
            this.f3821e = a(notificationChannelGroup.getChannels());
            return;
        }
        this.f3821e = a(list);
    }
}
