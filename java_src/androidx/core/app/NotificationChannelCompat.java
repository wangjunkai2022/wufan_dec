package androidx.core.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
/* loaded from: classes.dex */
public class NotificationChannelCompat {
    public static final String DEFAULT_CHANNEL_ID = "miscellaneous";

    /* renamed from: s  reason: collision with root package name */
    private static final boolean f3796s = true;

    /* renamed from: t  reason: collision with root package name */
    private static final int f3797t = 0;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    final String f3798a;

    /* renamed from: b  reason: collision with root package name */
    CharSequence f3799b;

    /* renamed from: c  reason: collision with root package name */
    int f3800c;

    /* renamed from: d  reason: collision with root package name */
    String f3801d;

    /* renamed from: e  reason: collision with root package name */
    String f3802e;

    /* renamed from: f  reason: collision with root package name */
    boolean f3803f;

    /* renamed from: g  reason: collision with root package name */
    Uri f3804g;

    /* renamed from: h  reason: collision with root package name */
    AudioAttributes f3805h;

    /* renamed from: i  reason: collision with root package name */
    boolean f3806i;

    /* renamed from: j  reason: collision with root package name */
    int f3807j;

    /* renamed from: k  reason: collision with root package name */
    boolean f3808k;

    /* renamed from: l  reason: collision with root package name */
    long[] f3809l;

    /* renamed from: m  reason: collision with root package name */
    String f3810m;

    /* renamed from: n  reason: collision with root package name */
    String f3811n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f3812o;

    /* renamed from: p  reason: collision with root package name */
    private int f3813p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f3814q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f3815r;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final NotificationChannelCompat f3816a;

        public Builder(@NonNull String str, int i2) {
            this.f3816a = new NotificationChannelCompat(str, i2);
        }

        @NonNull
        public NotificationChannelCompat build() {
            return this.f3816a;
        }

        @NonNull
        public Builder setConversationId(@NonNull String str, @NonNull String str2) {
            if (Build.VERSION.SDK_INT >= 30) {
                NotificationChannelCompat notificationChannelCompat = this.f3816a;
                notificationChannelCompat.f3810m = str;
                notificationChannelCompat.f3811n = str2;
            }
            return this;
        }

        @NonNull
        public Builder setDescription(@Nullable String str) {
            this.f3816a.f3801d = str;
            return this;
        }

        @NonNull
        public Builder setGroup(@Nullable String str) {
            this.f3816a.f3802e = str;
            return this;
        }

        @NonNull
        public Builder setImportance(int i2) {
            this.f3816a.f3800c = i2;
            return this;
        }

        @NonNull
        public Builder setLightColor(int i2) {
            this.f3816a.f3807j = i2;
            return this;
        }

        @NonNull
        public Builder setLightsEnabled(boolean z3) {
            this.f3816a.f3806i = z3;
            return this;
        }

        @NonNull
        public Builder setName(@Nullable CharSequence charSequence) {
            this.f3816a.f3799b = charSequence;
            return this;
        }

        @NonNull
        public Builder setShowBadge(boolean z3) {
            this.f3816a.f3803f = z3;
            return this;
        }

        @NonNull
        public Builder setSound(@Nullable Uri uri, @Nullable AudioAttributes audioAttributes) {
            NotificationChannelCompat notificationChannelCompat = this.f3816a;
            notificationChannelCompat.f3804g = uri;
            notificationChannelCompat.f3805h = audioAttributes;
            return this;
        }

        @NonNull
        public Builder setVibrationEnabled(boolean z3) {
            this.f3816a.f3808k = z3;
            return this;
        }

        @NonNull
        public Builder setVibrationPattern(@Nullable long[] jArr) {
            NotificationChannelCompat notificationChannelCompat = this.f3816a;
            notificationChannelCompat.f3808k = jArr != null && jArr.length > 0;
            notificationChannelCompat.f3809l = jArr;
            return this;
        }
    }

    NotificationChannelCompat(@NonNull String str, int i2) {
        this.f3803f = true;
        this.f3804g = Settings.System.DEFAULT_NOTIFICATION_URI;
        this.f3807j = 0;
        this.f3798a = (String) Preconditions.checkNotNull(str);
        this.f3800c = i2;
        if (Build.VERSION.SDK_INT >= 21) {
            this.f3805h = Notification.AUDIO_ATTRIBUTES_DEFAULT;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotificationChannel a() {
        String str;
        String str2;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 26) {
            return null;
        }
        NotificationChannel notificationChannel = new NotificationChannel(this.f3798a, this.f3799b, this.f3800c);
        notificationChannel.setDescription(this.f3801d);
        notificationChannel.setGroup(this.f3802e);
        notificationChannel.setShowBadge(this.f3803f);
        notificationChannel.setSound(this.f3804g, this.f3805h);
        notificationChannel.enableLights(this.f3806i);
        notificationChannel.setLightColor(this.f3807j);
        notificationChannel.setVibrationPattern(this.f3809l);
        notificationChannel.enableVibration(this.f3808k);
        if (i2 >= 30 && (str = this.f3810m) != null && (str2 = this.f3811n) != null) {
            notificationChannel.setConversationId(str, str2);
        }
        return notificationChannel;
    }

    public boolean canBubble() {
        return this.f3814q;
    }

    public boolean canBypassDnd() {
        return this.f3812o;
    }

    public boolean canShowBadge() {
        return this.f3803f;
    }

    @Nullable
    public AudioAttributes getAudioAttributes() {
        return this.f3805h;
    }

    @Nullable
    public String getConversationId() {
        return this.f3811n;
    }

    @Nullable
    public String getDescription() {
        return this.f3801d;
    }

    @Nullable
    public String getGroup() {
        return this.f3802e;
    }

    @NonNull
    public String getId() {
        return this.f3798a;
    }

    public int getImportance() {
        return this.f3800c;
    }

    public int getLightColor() {
        return this.f3807j;
    }

    public int getLockscreenVisibility() {
        return this.f3813p;
    }

    @Nullable
    public CharSequence getName() {
        return this.f3799b;
    }

    @Nullable
    public String getParentChannelId() {
        return this.f3810m;
    }

    @Nullable
    public Uri getSound() {
        return this.f3804g;
    }

    @Nullable
    public long[] getVibrationPattern() {
        return this.f3809l;
    }

    public boolean isImportantConversation() {
        return this.f3815r;
    }

    public boolean shouldShowLights() {
        return this.f3806i;
    }

    public boolean shouldVibrate() {
        return this.f3808k;
    }

    @NonNull
    public Builder toBuilder() {
        return new Builder(this.f3798a, this.f3800c).setName(this.f3799b).setDescription(this.f3801d).setGroup(this.f3802e).setShowBadge(this.f3803f).setSound(this.f3804g, this.f3805h).setLightsEnabled(this.f3806i).setLightColor(this.f3807j).setVibrationEnabled(this.f3808k).setVibrationPattern(this.f3809l).setConversationId(this.f3810m, this.f3811n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    public NotificationChannelCompat(@NonNull NotificationChannel notificationChannel) {
        this(notificationChannel.getId(), notificationChannel.getImportance());
        this.f3799b = notificationChannel.getName();
        this.f3801d = notificationChannel.getDescription();
        this.f3802e = notificationChannel.getGroup();
        this.f3803f = notificationChannel.canShowBadge();
        this.f3804g = notificationChannel.getSound();
        this.f3805h = notificationChannel.getAudioAttributes();
        this.f3806i = notificationChannel.shouldShowLights();
        this.f3807j = notificationChannel.getLightColor();
        this.f3808k = notificationChannel.shouldVibrate();
        this.f3809l = notificationChannel.getVibrationPattern();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.f3810m = notificationChannel.getParentChannelId();
            this.f3811n = notificationChannel.getConversationId();
        }
        this.f3812o = notificationChannel.canBypassDnd();
        this.f3813p = notificationChannel.getLockscreenVisibility();
        if (i2 >= 29) {
            this.f3814q = notificationChannel.canBubble();
        }
        if (i2 >= 30) {
            this.f3815r = notificationChannel.isImportantConversation();
        }
    }
}
