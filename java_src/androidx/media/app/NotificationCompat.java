package androidx.media.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.BundleCompat;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.core.app.NotificationCompat;
import androidx.media.R;
/* loaded from: classes.dex */
public class NotificationCompat {

    /* loaded from: classes.dex */
    public static class DecoratedMediaCustomViewStyle extends MediaStyle {
        private void u(RemoteViews remoteViews) {
            int color;
            if (this.f3956a.getColor() != 0) {
                color = this.f3956a.getColor();
            } else {
                color = this.f3956a.mContext.getResources().getColor(R.color.notification_material_background_media_default_color);
            }
            remoteViews.setInt(R.id.status_bar_latest_event_content, "setBackgroundColor", color);
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                notificationBuilderWithBuilderAccessor.getBuilder().setStyle(o(new Notification.DecoratedMediaCustomViewStyle()));
            } else {
                super.apply(notificationBuilderWithBuilderAccessor);
            }
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            RemoteViews contentView;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                return null;
            }
            if (this.f3956a.getBigContentView() != null) {
                contentView = this.f3956a.getBigContentView();
            } else {
                contentView = this.f3956a.getContentView();
            }
            if (contentView == null) {
                return null;
            }
            RemoteViews p3 = p();
            buildIntoRemoteViews(p3, contentView);
            if (i2 >= 21) {
                u(p3);
            }
            return p3;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                return null;
            }
            boolean z3 = true;
            boolean z4 = this.f3956a.getContentView() != null;
            if (i2 >= 21) {
                if (!z4 && this.f3956a.getBigContentView() == null) {
                    z3 = false;
                }
                if (z3) {
                    RemoteViews q3 = q();
                    if (z4) {
                        buildIntoRemoteViews(q3, this.f3956a.getContentView());
                    }
                    u(q3);
                    return q3;
                }
            } else {
                RemoteViews q4 = q();
                if (z4) {
                    buildIntoRemoteViews(q4, this.f3956a.getContentView());
                    return q4;
                }
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            RemoteViews contentView;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                return null;
            }
            if (this.f3956a.getHeadsUpContentView() != null) {
                contentView = this.f3956a.getHeadsUpContentView();
            } else {
                contentView = this.f3956a.getContentView();
            }
            if (contentView == null) {
                return null;
            }
            RemoteViews p3 = p();
            buildIntoRemoteViews(p3, contentView);
            if (i2 >= 21) {
                u(p3);
            }
            return p3;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle
        int s(int i2) {
            return i2 <= 3 ? R.layout.notification_template_big_media_narrow_custom : R.layout.notification_template_big_media_custom;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle
        int t() {
            return this.f3956a.getContentView() != null ? R.layout.notification_template_media_custom : super.t();
        }
    }

    private NotificationCompat() {
    }

    /* loaded from: classes.dex */
    public static class MediaStyle extends NotificationCompat.Style {

        /* renamed from: i  reason: collision with root package name */
        private static final int f6600i = 3;

        /* renamed from: j  reason: collision with root package name */
        private static final int f6601j = 5;

        /* renamed from: e  reason: collision with root package name */
        int[] f6602e = null;

        /* renamed from: f  reason: collision with root package name */
        MediaSessionCompat.Token f6603f;

        /* renamed from: g  reason: collision with root package name */
        boolean f6604g;

        /* renamed from: h  reason: collision with root package name */
        PendingIntent f6605h;

        public MediaStyle() {
        }

        public static MediaSessionCompat.Token getMediaSession(Notification notification) {
            Bundle extras = androidx.core.app.NotificationCompat.getExtras(notification);
            if (extras != null) {
                if (Build.VERSION.SDK_INT >= 21) {
                    Parcelable parcelable = extras.getParcelable(androidx.core.app.NotificationCompat.EXTRA_MEDIA_SESSION);
                    if (parcelable != null) {
                        return MediaSessionCompat.Token.fromToken(parcelable);
                    }
                    return null;
                }
                IBinder binder = BundleCompat.getBinder(extras, androidx.core.app.NotificationCompat.EXTRA_MEDIA_SESSION);
                if (binder != null) {
                    Parcel obtain = Parcel.obtain();
                    obtain.writeStrongBinder(binder);
                    obtain.setDataPosition(0);
                    MediaSessionCompat.Token createFromParcel = MediaSessionCompat.Token.CREATOR.createFromParcel(obtain);
                    obtain.recycle();
                    return createFromParcel;
                }
                return null;
            }
            return null;
        }

        private RemoteViews r(NotificationCompat.Action action) {
            boolean z3 = action.getActionIntent() == null;
            RemoteViews remoteViews = new RemoteViews(this.f3956a.mContext.getPackageName(), R.layout.notification_media_action);
            int i2 = R.id.action0;
            remoteViews.setImageViewResource(i2, action.getIcon());
            if (!z3) {
                remoteViews.setOnClickPendingIntent(i2, action.getActionIntent());
            }
            if (Build.VERSION.SDK_INT >= 15) {
                remoteViews.setContentDescription(i2, action.getTitle());
            }
            return remoteViews;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 21) {
                notificationBuilderWithBuilderAccessor.getBuilder().setStyle(o(new Notification.MediaStyle()));
            } else if (this.f6604g) {
                notificationBuilderWithBuilderAccessor.getBuilder().setOngoing(true);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 21) {
                return null;
            }
            return p();
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 21) {
                return null;
            }
            return q();
        }

        @RequiresApi(21)
        Notification.MediaStyle o(Notification.MediaStyle mediaStyle) {
            int[] iArr = this.f6602e;
            if (iArr != null) {
                mediaStyle.setShowActionsInCompactView(iArr);
            }
            MediaSessionCompat.Token token = this.f6603f;
            if (token != null) {
                mediaStyle.setMediaSession((MediaSession.Token) token.getToken());
            }
            return mediaStyle;
        }

        RemoteViews p() {
            int min = Math.min(this.f3956a.mActions.size(), 5);
            RemoteViews applyStandardTemplate = applyStandardTemplate(false, s(min), false);
            applyStandardTemplate.removeAllViews(R.id.media_actions);
            if (min > 0) {
                for (int i2 = 0; i2 < min; i2++) {
                    applyStandardTemplate.addView(R.id.media_actions, r(this.f3956a.mActions.get(i2)));
                }
            }
            if (this.f6604g) {
                int i4 = R.id.cancel_action;
                applyStandardTemplate.setViewVisibility(i4, 0);
                applyStandardTemplate.setInt(i4, "setAlpha", this.f3956a.mContext.getResources().getInteger(R.integer.cancel_button_image_alpha));
                applyStandardTemplate.setOnClickPendingIntent(i4, this.f6605h);
            } else {
                applyStandardTemplate.setViewVisibility(R.id.cancel_action, 8);
            }
            return applyStandardTemplate;
        }

        RemoteViews q() {
            RemoteViews applyStandardTemplate = applyStandardTemplate(false, t(), true);
            int size = this.f3956a.mActions.size();
            int[] iArr = this.f6602e;
            int min = iArr == null ? 0 : Math.min(iArr.length, 3);
            applyStandardTemplate.removeAllViews(R.id.media_actions);
            if (min > 0) {
                for (int i2 = 0; i2 < min; i2++) {
                    if (i2 < size) {
                        applyStandardTemplate.addView(R.id.media_actions, r(this.f3956a.mActions.get(this.f6602e[i2])));
                    } else {
                        throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i2), Integer.valueOf(size - 1)));
                    }
                }
            }
            if (this.f6604g) {
                applyStandardTemplate.setViewVisibility(R.id.end_padder, 8);
                int i4 = R.id.cancel_action;
                applyStandardTemplate.setViewVisibility(i4, 0);
                applyStandardTemplate.setOnClickPendingIntent(i4, this.f6605h);
                applyStandardTemplate.setInt(i4, "setAlpha", this.f3956a.mContext.getResources().getInteger(R.integer.cancel_button_image_alpha));
            } else {
                applyStandardTemplate.setViewVisibility(R.id.end_padder, 0);
                applyStandardTemplate.setViewVisibility(R.id.cancel_action, 8);
            }
            return applyStandardTemplate;
        }

        int s(int i2) {
            return i2 <= 3 ? R.layout.notification_template_big_media_narrow : R.layout.notification_template_big_media;
        }

        public MediaStyle setCancelButtonIntent(PendingIntent pendingIntent) {
            this.f6605h = pendingIntent;
            return this;
        }

        public MediaStyle setMediaSession(MediaSessionCompat.Token token) {
            this.f6603f = token;
            return this;
        }

        public MediaStyle setShowActionsInCompactView(int... iArr) {
            this.f6602e = iArr;
            return this;
        }

        public MediaStyle setShowCancelButton(boolean z3) {
            if (Build.VERSION.SDK_INT < 21) {
                this.f6604g = z3;
            }
            return this;
        }

        int t() {
            return R.layout.notification_template_media;
        }

        public MediaStyle(NotificationCompat.Builder builder) {
            setBuilder(builder);
        }
    }
}
