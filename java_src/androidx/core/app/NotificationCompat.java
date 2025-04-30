package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.content.LocusId;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.app.Person;
import androidx.core.content.LocusIdCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.text.BidiFormatter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
public class NotificationCompat {
    public static final int BADGE_ICON_LARGE = 2;
    public static final int BADGE_ICON_NONE = 0;
    public static final int BADGE_ICON_SMALL = 1;
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_LOCATION_SHARING = "location_sharing";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_MISSED_CALL = "missed_call";
    public static final String CATEGORY_NAVIGATION = "navigation";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_REMINDER = "reminder";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_STOPWATCH = "stopwatch";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    public static final String CATEGORY_WORKOUT = "workout";
    @ColorInt
    public static final int COLOR_DEFAULT = 0;
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_AUDIO_CONTENTS_URI = "android.audioContents";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_BIG_TEXT = "android.bigText";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHANNEL_GROUP_ID = "android.intent.extra.CHANNEL_GROUP_ID";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHANNEL_ID = "android.intent.extra.CHANNEL_ID";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHRONOMETER_COUNT_DOWN = "android.chronometerCountDown";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_COLORIZED = "android.colorized";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
    public static final String EXTRA_COMPAT_TEMPLATE = "androidx.core.app.extra.COMPAT_TEMPLATE";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CONVERSATION_TITLE = "android.conversationTitle";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HIDDEN_CONVERSATION_TITLE = "android.hiddenConversationTitle";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HISTORIC_MESSAGES = "android.messages.historic";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_INFO_TEXT = "android.infoText";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_IS_GROUP_CONVERSATION = "android.isGroupConversation";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MESSAGES = "android.messages";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MESSAGING_STYLE_USER = "android.messagingStyleUser";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_NOTIFICATION_ID = "android.intent.extra.NOTIFICATION_ID";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_NOTIFICATION_TAG = "android.intent.extra.NOTIFICATION_TAG";
    @SuppressLint({"ActionValue"})
    @Deprecated
    public static final String EXTRA_PEOPLE = "android.people";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PEOPLE_LIST = "android.people.list";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE = "android.picture";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS = "android.progress";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_REMOTE_INPUT_HISTORY = "android.remoteInputHistory";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SELF_DISPLAY_NAME = "android.selfDisplayName";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED = "android.showBigPictureWhenCollapsed";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_WHEN = "android.showWhen";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SMALL_ICON = "android.icon";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SUB_TEXT = "android.subText";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEMPLATE = "android.template";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEXT = "android.text";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEXT_LINES = "android.textLines";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TITLE = "android.title";
    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TITLE_BIG = "android.title.big";
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_BUBBLE = 4096;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;
    @Deprecated
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    public static final int FLAG_SHOW_LIGHTS = 1;
    public static final int FOREGROUND_SERVICE_DEFAULT = 0;
    public static final int FOREGROUND_SERVICE_DEFERRED = 2;
    public static final int FOREGROUND_SERVICE_IMMEDIATE = 1;
    public static final int GROUP_ALERT_ALL = 0;
    public static final int GROUP_ALERT_CHILDREN = 2;
    public static final int GROUP_ALERT_SUMMARY = 1;
    public static final String GROUP_KEY_SILENT = "silent";
    @SuppressLint({"ActionValue"})
    public static final String INTENT_CATEGORY_NOTIFICATION_PREFERENCES = "android.intent.category.NOTIFICATION_PREFERENCES";
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;
    public static final int STREAM_DEFAULT = -1;
    public static final int VISIBILITY_PRIVATE = 0;
    public static final int VISIBILITY_PUBLIC = 1;
    public static final int VISIBILITY_SECRET = -1;

    /* loaded from: classes.dex */
    public static class Action {
        public static final int SEMANTIC_ACTION_ARCHIVE = 5;
        public static final int SEMANTIC_ACTION_CALL = 10;
        public static final int SEMANTIC_ACTION_DELETE = 4;
        public static final int SEMANTIC_ACTION_MARK_AS_READ = 2;
        public static final int SEMANTIC_ACTION_MARK_AS_UNREAD = 3;
        public static final int SEMANTIC_ACTION_MUTE = 6;
        public static final int SEMANTIC_ACTION_NONE = 0;
        public static final int SEMANTIC_ACTION_REPLY = 1;
        public static final int SEMANTIC_ACTION_THUMBS_DOWN = 9;
        public static final int SEMANTIC_ACTION_THUMBS_UP = 8;
        public static final int SEMANTIC_ACTION_UNMUTE = 7;

        /* renamed from: i  reason: collision with root package name */
        static final String f3823i = "android.support.action.showsUserInterface";

        /* renamed from: j  reason: collision with root package name */
        static final String f3824j = "android.support.action.semanticAction";

        /* renamed from: a  reason: collision with root package name */
        final Bundle f3825a;
        public PendingIntent actionIntent;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private IconCompat f3826b;

        /* renamed from: c  reason: collision with root package name */
        private final RemoteInput[] f3827c;

        /* renamed from: d  reason: collision with root package name */
        private final RemoteInput[] f3828d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f3829e;

        /* renamed from: f  reason: collision with root package name */
        boolean f3830f;

        /* renamed from: g  reason: collision with root package name */
        private final int f3831g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f3832h;
        @Deprecated
        public int icon;
        public CharSequence title;

        /* loaded from: classes.dex */
        public static final class Builder {

            /* renamed from: a  reason: collision with root package name */
            private final IconCompat f3833a;

            /* renamed from: b  reason: collision with root package name */
            private final CharSequence f3834b;

            /* renamed from: c  reason: collision with root package name */
            private final PendingIntent f3835c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f3836d;

            /* renamed from: e  reason: collision with root package name */
            private final Bundle f3837e;

            /* renamed from: f  reason: collision with root package name */
            private ArrayList<RemoteInput> f3838f;

            /* renamed from: g  reason: collision with root package name */
            private int f3839g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f3840h;

            /* renamed from: i  reason: collision with root package name */
            private boolean f3841i;

            public Builder(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
                this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false);
            }

            private void a() {
                if (this.f3841i) {
                    Objects.requireNonNull(this.f3835c, "Contextual Actions must contain a valid PendingIntent");
                }
            }

            @NonNull
            @RequiresApi(19)
            @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
            public static Builder fromAndroidAction(@NonNull Notification.Action action) {
                Builder builder;
                android.app.RemoteInput[] remoteInputs;
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 23 && action.getIcon() != null) {
                    builder = new Builder(IconCompat.createFromIcon(action.getIcon()), action.title, action.actionIntent);
                } else {
                    builder = new Builder(action.icon, action.title, action.actionIntent);
                }
                if (i2 >= 20 && (remoteInputs = action.getRemoteInputs()) != null && remoteInputs.length != 0) {
                    for (android.app.RemoteInput remoteInput : remoteInputs) {
                        builder.addRemoteInput(RemoteInput.c(remoteInput));
                    }
                }
                int i4 = Build.VERSION.SDK_INT;
                if (i4 >= 24) {
                    builder.f3836d = action.getAllowGeneratedReplies();
                }
                if (i4 >= 28) {
                    builder.setSemanticAction(action.getSemanticAction());
                }
                if (i4 >= 29) {
                    builder.setContextual(action.isContextual());
                }
                return builder;
            }

            @NonNull
            public Builder addExtras(@Nullable Bundle bundle) {
                if (bundle != null) {
                    this.f3837e.putAll(bundle);
                }
                return this;
            }

            @NonNull
            public Builder addRemoteInput(@Nullable RemoteInput remoteInput) {
                if (this.f3838f == null) {
                    this.f3838f = new ArrayList<>();
                }
                if (remoteInput != null) {
                    this.f3838f.add(remoteInput);
                }
                return this;
            }

            @NonNull
            public Action build() {
                a();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList<RemoteInput> arrayList3 = this.f3838f;
                if (arrayList3 != null) {
                    Iterator<RemoteInput> it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        RemoteInput next = it2.next();
                        if (next.isDataOnly()) {
                            arrayList.add(next);
                        } else {
                            arrayList2.add(next);
                        }
                    }
                }
                RemoteInput[] remoteInputArr = arrayList.isEmpty() ? null : (RemoteInput[]) arrayList.toArray(new RemoteInput[arrayList.size()]);
                return new Action(this.f3833a, this.f3834b, this.f3835c, this.f3837e, arrayList2.isEmpty() ? null : (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]), remoteInputArr, this.f3836d, this.f3839g, this.f3840h, this.f3841i);
            }

            @NonNull
            public Builder extend(@NonNull Extender extender) {
                extender.extend(this);
                return this;
            }

            @NonNull
            public Bundle getExtras() {
                return this.f3837e;
            }

            @NonNull
            public Builder setAllowGeneratedReplies(boolean z3) {
                this.f3836d = z3;
                return this;
            }

            @NonNull
            public Builder setContextual(boolean z3) {
                this.f3841i = z3;
                return this;
            }

            @NonNull
            public Builder setSemanticAction(int i2) {
                this.f3839g = i2;
                return this;
            }

            @NonNull
            public Builder setShowsUserInterface(boolean z3) {
                this.f3840h = z3;
                return this;
            }

            public Builder(int i2, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
                this(i2 != 0 ? IconCompat.createWithResource(null, "", i2) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false);
            }

            public Builder(@NonNull Action action) {
                this(action.getIconCompat(), action.title, action.actionIntent, new Bundle(action.f3825a), action.getRemoteInputs(), action.getAllowGeneratedReplies(), action.getSemanticAction(), action.f3830f, action.isContextual());
            }

            private Builder(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent, @NonNull Bundle bundle, @Nullable RemoteInput[] remoteInputArr, boolean z3, int i2, boolean z4, boolean z5) {
                this.f3836d = true;
                this.f3840h = true;
                this.f3833a = iconCompat;
                this.f3834b = Builder.b(charSequence);
                this.f3835c = pendingIntent;
                this.f3837e = bundle;
                this.f3838f = remoteInputArr == null ? null : new ArrayList<>(Arrays.asList(remoteInputArr));
                this.f3836d = z3;
                this.f3839g = i2;
                this.f3840h = z4;
                this.f3841i = z5;
            }
        }

        /* loaded from: classes.dex */
        public interface Extender {
            @NonNull
            Builder extend(@NonNull Builder builder);
        }

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface SemanticAction {
        }

        /* loaded from: classes.dex */
        public static final class WearableExtender implements Extender {

            /* renamed from: e  reason: collision with root package name */
            private static final String f3842e = "android.wearable.EXTENSIONS";

            /* renamed from: f  reason: collision with root package name */
            private static final String f3843f = "flags";

            /* renamed from: g  reason: collision with root package name */
            private static final String f3844g = "inProgressLabel";

            /* renamed from: h  reason: collision with root package name */
            private static final String f3845h = "confirmLabel";

            /* renamed from: i  reason: collision with root package name */
            private static final String f3846i = "cancelLabel";

            /* renamed from: j  reason: collision with root package name */
            private static final int f3847j = 1;

            /* renamed from: k  reason: collision with root package name */
            private static final int f3848k = 2;

            /* renamed from: l  reason: collision with root package name */
            private static final int f3849l = 4;

            /* renamed from: m  reason: collision with root package name */
            private static final int f3850m = 1;

            /* renamed from: a  reason: collision with root package name */
            private int f3851a;

            /* renamed from: b  reason: collision with root package name */
            private CharSequence f3852b;

            /* renamed from: c  reason: collision with root package name */
            private CharSequence f3853c;

            /* renamed from: d  reason: collision with root package name */
            private CharSequence f3854d;

            public WearableExtender() {
                this.f3851a = 1;
            }

            private void a(int i2, boolean z3) {
                if (z3) {
                    this.f3851a = i2 | this.f3851a;
                    return;
                }
                this.f3851a = (i2 ^ (-1)) & this.f3851a;
            }

            @Override // androidx.core.app.NotificationCompat.Action.Extender
            @NonNull
            public Builder extend(@NonNull Builder builder) {
                Bundle bundle = new Bundle();
                int i2 = this.f3851a;
                if (i2 != 1) {
                    bundle.putInt(f3843f, i2);
                }
                CharSequence charSequence = this.f3852b;
                if (charSequence != null) {
                    bundle.putCharSequence(f3844g, charSequence);
                }
                CharSequence charSequence2 = this.f3853c;
                if (charSequence2 != null) {
                    bundle.putCharSequence(f3845h, charSequence2);
                }
                CharSequence charSequence3 = this.f3854d;
                if (charSequence3 != null) {
                    bundle.putCharSequence(f3846i, charSequence3);
                }
                builder.getExtras().putBundle(f3842e, bundle);
                return builder;
            }

            @Nullable
            @Deprecated
            public CharSequence getCancelLabel() {
                return this.f3854d;
            }

            @Nullable
            @Deprecated
            public CharSequence getConfirmLabel() {
                return this.f3853c;
            }

            public boolean getHintDisplayActionInline() {
                return (this.f3851a & 4) != 0;
            }

            public boolean getHintLaunchesActivity() {
                return (this.f3851a & 2) != 0;
            }

            @Nullable
            @Deprecated
            public CharSequence getInProgressLabel() {
                return this.f3852b;
            }

            public boolean isAvailableOffline() {
                return (this.f3851a & 1) != 0;
            }

            @NonNull
            public WearableExtender setAvailableOffline(boolean z3) {
                a(1, z3);
                return this;
            }

            @NonNull
            @Deprecated
            public WearableExtender setCancelLabel(@Nullable CharSequence charSequence) {
                this.f3854d = charSequence;
                return this;
            }

            @NonNull
            @Deprecated
            public WearableExtender setConfirmLabel(@Nullable CharSequence charSequence) {
                this.f3853c = charSequence;
                return this;
            }

            @NonNull
            public WearableExtender setHintDisplayActionInline(boolean z3) {
                a(4, z3);
                return this;
            }

            @NonNull
            public WearableExtender setHintLaunchesActivity(boolean z3) {
                a(2, z3);
                return this;
            }

            @NonNull
            @Deprecated
            public WearableExtender setInProgressLabel(@Nullable CharSequence charSequence) {
                this.f3852b = charSequence;
                return this;
            }

            @NonNull
            /* renamed from: clone */
            public WearableExtender m5clone() {
                WearableExtender wearableExtender = new WearableExtender();
                wearableExtender.f3851a = this.f3851a;
                wearableExtender.f3852b = this.f3852b;
                wearableExtender.f3853c = this.f3853c;
                wearableExtender.f3854d = this.f3854d;
                return wearableExtender;
            }

            public WearableExtender(@NonNull Action action) {
                this.f3851a = 1;
                Bundle bundle = action.getExtras().getBundle(f3842e);
                if (bundle != null) {
                    this.f3851a = bundle.getInt(f3843f, 1);
                    this.f3852b = bundle.getCharSequence(f3844g);
                    this.f3853c = bundle.getCharSequence(f3845h);
                    this.f3854d = bundle.getCharSequence(f3846i);
                }
            }
        }

        public Action(int i2, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this(i2 != 0 ? IconCompat.createWithResource(null, "", i2) : null, charSequence, pendingIntent);
        }

        @Nullable
        public PendingIntent getActionIntent() {
            return this.actionIntent;
        }

        public boolean getAllowGeneratedReplies() {
            return this.f3829e;
        }

        @Nullable
        public RemoteInput[] getDataOnlyRemoteInputs() {
            return this.f3828d;
        }

        @NonNull
        public Bundle getExtras() {
            return this.f3825a;
        }

        @Deprecated
        public int getIcon() {
            return this.icon;
        }

        @Nullable
        public IconCompat getIconCompat() {
            int i2;
            if (this.f3826b == null && (i2 = this.icon) != 0) {
                this.f3826b = IconCompat.createWithResource(null, "", i2);
            }
            return this.f3826b;
        }

        @Nullable
        public RemoteInput[] getRemoteInputs() {
            return this.f3827c;
        }

        public int getSemanticAction() {
            return this.f3831g;
        }

        public boolean getShowsUserInterface() {
            return this.f3830f;
        }

        @Nullable
        public CharSequence getTitle() {
            return this.title;
        }

        public boolean isContextual() {
            return this.f3832h;
        }

        public Action(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), (RemoteInput[]) null, (RemoteInput[]) null, true, 0, true, false);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Action(int i2, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent, @Nullable Bundle bundle, @Nullable RemoteInput[] remoteInputArr, @Nullable RemoteInput[] remoteInputArr2, boolean z3, int i4, boolean z4, boolean z5) {
            this(i2 != 0 ? IconCompat.createWithResource(null, "", i2) : null, charSequence, pendingIntent, bundle, remoteInputArr, remoteInputArr2, z3, i4, z4, z5);
        }

        Action(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent, @Nullable Bundle bundle, @Nullable RemoteInput[] remoteInputArr, @Nullable RemoteInput[] remoteInputArr2, boolean z3, int i2, boolean z4, boolean z5) {
            this.f3830f = true;
            this.f3826b = iconCompat;
            if (iconCompat != null && iconCompat.getType() == 2) {
                this.icon = iconCompat.getResId();
            }
            this.title = Builder.b(charSequence);
            this.actionIntent = pendingIntent;
            this.f3825a = bundle == null ? new Bundle() : bundle;
            this.f3827c = remoteInputArr;
            this.f3828d = remoteInputArr2;
            this.f3829e = z3;
            this.f3831g = i2;
            this.f3830f = z4;
            this.f3832h = z5;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface BadgeIconType {
    }

    /* loaded from: classes.dex */
    public static class BigPictureStyle extends Style {

        /* renamed from: i  reason: collision with root package name */
        private static final String f3855i = "androidx.core.app.NotificationCompat$BigPictureStyle";

        /* renamed from: e  reason: collision with root package name */
        private Bitmap f3856e;

        /* renamed from: f  reason: collision with root package name */
        private IconCompat f3857f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f3858g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f3859h;

        @RequiresApi(16)
        /* loaded from: classes.dex */
        private static class Api16Impl {
            private Api16Impl() {
            }

            @RequiresApi(16)
            static void a(Notification.BigPictureStyle bigPictureStyle, Bitmap bitmap) {
                bigPictureStyle.bigLargeIcon(bitmap);
            }

            @RequiresApi(16)
            static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setSummaryText(charSequence);
            }
        }

        @RequiresApi(23)
        /* loaded from: classes.dex */
        private static class Api23Impl {
            private Api23Impl() {
            }

            @RequiresApi(23)
            static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        @RequiresApi(31)
        /* loaded from: classes.dex */
        private static class Api31Impl {
            private Api31Impl() {
            }

            @RequiresApi(31)
            static void a(Notification.BigPictureStyle bigPictureStyle, boolean z3) {
                bigPictureStyle.showBigPictureWhenCollapsed(z3);
            }
        }

        public BigPictureStyle() {
        }

        @Nullable
        private static IconCompat o(@Nullable Parcelable parcelable) {
            if (parcelable != null) {
                if (Build.VERSION.SDK_INT >= 23 && (parcelable instanceof Icon)) {
                    return IconCompat.createFromIcon((Icon) parcelable);
                }
                if (parcelable instanceof Bitmap) {
                    return IconCompat.createWithBitmap((Bitmap) parcelable);
                }
                return null;
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 16) {
                Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.f3957b).bigPicture(this.f3856e);
                if (this.f3858g) {
                    IconCompat iconCompat = this.f3857f;
                    if (iconCompat == null) {
                        Api16Impl.a(bigPicture, null);
                    } else if (i2 >= 23) {
                        Api23Impl.a(bigPicture, this.f3857f.toIcon(notificationBuilderWithBuilderAccessor instanceof NotificationCompatBuilder ? ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).getContext() : null));
                    } else if (iconCompat.getType() == 1) {
                        Api16Impl.a(bigPicture, this.f3857f.getBitmap());
                    } else {
                        Api16Impl.a(bigPicture, null);
                    }
                }
                if (this.f3959d) {
                    Api16Impl.b(bigPicture, this.f3958c);
                }
                if (i2 >= 31) {
                    Api31Impl.a(bigPicture, this.f3859h);
                }
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected void b(@NonNull Bundle bundle) {
            super.b(bundle);
            bundle.remove(NotificationCompat.EXTRA_LARGE_ICON_BIG);
            bundle.remove(NotificationCompat.EXTRA_PICTURE);
            bundle.remove(NotificationCompat.EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED);
        }

        @NonNull
        public BigPictureStyle bigLargeIcon(@Nullable Bitmap bitmap) {
            this.f3857f = bitmap == null ? null : IconCompat.createWithBitmap(bitmap);
            this.f3858g = true;
            return this;
        }

        @NonNull
        public BigPictureStyle bigPicture(@Nullable Bitmap bitmap) {
            this.f3856e = bitmap;
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected String l() {
            return f3855i;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected void n(@NonNull Bundle bundle) {
            super.n(bundle);
            if (bundle.containsKey(NotificationCompat.EXTRA_LARGE_ICON_BIG)) {
                this.f3857f = o(bundle.getParcelable(NotificationCompat.EXTRA_LARGE_ICON_BIG));
                this.f3858g = true;
            }
            this.f3856e = (Bitmap) bundle.getParcelable(NotificationCompat.EXTRA_PICTURE);
            this.f3859h = bundle.getBoolean(NotificationCompat.EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED);
        }

        @NonNull
        public BigPictureStyle setBigContentTitle(@Nullable CharSequence charSequence) {
            this.f3957b = Builder.b(charSequence);
            return this;
        }

        @NonNull
        public BigPictureStyle setSummaryText(@Nullable CharSequence charSequence) {
            this.f3958c = Builder.b(charSequence);
            this.f3959d = true;
            return this;
        }

        @NonNull
        @RequiresApi(31)
        public BigPictureStyle showBigPictureWhenCollapsed(boolean z3) {
            this.f3859h = z3;
            return this;
        }

        public BigPictureStyle(@Nullable Builder builder) {
            setBuilder(builder);
        }
    }

    /* loaded from: classes.dex */
    public static class BigTextStyle extends Style {

        /* renamed from: f  reason: collision with root package name */
        private static final String f3860f = "androidx.core.app.NotificationCompat$BigTextStyle";

        /* renamed from: e  reason: collision with root package name */
        private CharSequence f3861e;

        public BigTextStyle() {
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void addCompatExtras(@NonNull Bundle bundle) {
            super.addCompatExtras(bundle);
            if (Build.VERSION.SDK_INT < 21) {
                bundle.putCharSequence(NotificationCompat.EXTRA_BIG_TEXT, this.f3861e);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.f3957b).bigText(this.f3861e);
                if (this.f3959d) {
                    bigText.setSummaryText(this.f3958c);
                }
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected void b(@NonNull Bundle bundle) {
            super.b(bundle);
            bundle.remove(NotificationCompat.EXTRA_BIG_TEXT);
        }

        @NonNull
        public BigTextStyle bigText(@Nullable CharSequence charSequence) {
            this.f3861e = Builder.b(charSequence);
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected String l() {
            return f3860f;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected void n(@NonNull Bundle bundle) {
            super.n(bundle);
            this.f3861e = bundle.getCharSequence(NotificationCompat.EXTRA_BIG_TEXT);
        }

        @NonNull
        public BigTextStyle setBigContentTitle(@Nullable CharSequence charSequence) {
            this.f3957b = Builder.b(charSequence);
            return this;
        }

        @NonNull
        public BigTextStyle setSummaryText(@Nullable CharSequence charSequence) {
            this.f3958c = Builder.b(charSequence);
            this.f3959d = true;
            return this;
        }

        public BigTextStyle(@Nullable Builder builder) {
            setBuilder(builder);
        }
    }

    /* loaded from: classes.dex */
    public static final class BubbleMetadata {

        /* renamed from: h  reason: collision with root package name */
        private static final int f3862h = 1;

        /* renamed from: i  reason: collision with root package name */
        private static final int f3863i = 2;

        /* renamed from: a  reason: collision with root package name */
        private PendingIntent f3864a;

        /* renamed from: b  reason: collision with root package name */
        private PendingIntent f3865b;

        /* renamed from: c  reason: collision with root package name */
        private IconCompat f3866c;

        /* renamed from: d  reason: collision with root package name */
        private int f3867d;
        @DimenRes

        /* renamed from: e  reason: collision with root package name */
        private int f3868e;

        /* renamed from: f  reason: collision with root package name */
        private int f3869f;

        /* renamed from: g  reason: collision with root package name */
        private String f3870g;

        /* JADX INFO: Access modifiers changed from: private */
        @RequiresApi(29)
        /* loaded from: classes.dex */
        public static class Api29Impl {
            private Api29Impl() {
            }

            @Nullable
            @RequiresApi(29)
            static BubbleMetadata a(@Nullable Notification.BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                    return null;
                }
                Builder suppressNotification = new Builder(bubbleMetadata.getIntent(), IconCompat.createFromIcon(bubbleMetadata.getIcon())).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    suppressNotification.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    suppressNotification.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return suppressNotification.build();
            }

            @Nullable
            @RequiresApi(29)
            static Notification.BubbleMetadata b(@Nullable BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setIcon(bubbleMetadata.getIcon().toIcon()).setIntent(bubbleMetadata.getIntent()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    suppressNotification.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    suppressNotification.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return suppressNotification.build();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @RequiresApi(30)
        /* loaded from: classes.dex */
        public static class Api30Impl {
            private Api30Impl() {
            }

            @Nullable
            @RequiresApi(30)
            static BubbleMetadata a(@Nullable Notification.BubbleMetadata bubbleMetadata) {
                Builder builder;
                if (bubbleMetadata == null) {
                    return null;
                }
                if (bubbleMetadata.getShortcutId() != null) {
                    builder = new Builder(bubbleMetadata.getShortcutId());
                } else {
                    builder = new Builder(bubbleMetadata.getIntent(), IconCompat.createFromIcon(bubbleMetadata.getIcon()));
                }
                builder.setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    builder.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    builder.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return builder.build();
            }

            @Nullable
            @RequiresApi(30)
            static Notification.BubbleMetadata b(@Nullable BubbleMetadata bubbleMetadata) {
                Notification.BubbleMetadata.Builder builder;
                if (bubbleMetadata == null) {
                    return null;
                }
                if (bubbleMetadata.getShortcutId() != null) {
                    builder = new Notification.BubbleMetadata.Builder(bubbleMetadata.getShortcutId());
                } else {
                    builder = new Notification.BubbleMetadata.Builder(bubbleMetadata.getIntent(), bubbleMetadata.getIcon().toIcon());
                }
                builder.setDeleteIntent(bubbleMetadata.getDeleteIntent()).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    builder.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    builder.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return builder.build();
            }
        }

        /* loaded from: classes.dex */
        public static final class Builder {

            /* renamed from: a  reason: collision with root package name */
            private PendingIntent f3871a;

            /* renamed from: b  reason: collision with root package name */
            private IconCompat f3872b;

            /* renamed from: c  reason: collision with root package name */
            private int f3873c;
            @DimenRes

            /* renamed from: d  reason: collision with root package name */
            private int f3874d;

            /* renamed from: e  reason: collision with root package name */
            private int f3875e;

            /* renamed from: f  reason: collision with root package name */
            private PendingIntent f3876f;

            /* renamed from: g  reason: collision with root package name */
            private String f3877g;

            @Deprecated
            public Builder() {
            }

            @NonNull
            private Builder a(int i2, boolean z3) {
                if (z3) {
                    this.f3875e = i2 | this.f3875e;
                } else {
                    this.f3875e = (i2 ^ (-1)) & this.f3875e;
                }
                return this;
            }

            @NonNull
            @SuppressLint({"SyntheticAccessor"})
            public BubbleMetadata build() {
                String str = this.f3877g;
                if (str == null) {
                    Objects.requireNonNull(this.f3871a, "Must supply pending intent or shortcut to bubble");
                }
                if (str == null) {
                    Objects.requireNonNull(this.f3872b, "Must supply an icon or shortcut for the bubble");
                }
                BubbleMetadata bubbleMetadata = new BubbleMetadata(this.f3871a, this.f3876f, this.f3872b, this.f3873c, this.f3874d, this.f3875e, str);
                bubbleMetadata.setFlags(this.f3875e);
                return bubbleMetadata;
            }

            @NonNull
            public Builder setAutoExpandBubble(boolean z3) {
                a(1, z3);
                return this;
            }

            @NonNull
            public Builder setDeleteIntent(@Nullable PendingIntent pendingIntent) {
                this.f3876f = pendingIntent;
                return this;
            }

            @NonNull
            public Builder setDesiredHeight(@Dimension(unit = 0) int i2) {
                this.f3873c = Math.max(i2, 0);
                this.f3874d = 0;
                return this;
            }

            @NonNull
            public Builder setDesiredHeightResId(@DimenRes int i2) {
                this.f3874d = i2;
                this.f3873c = 0;
                return this;
            }

            @NonNull
            public Builder setIcon(@NonNull IconCompat iconCompat) {
                if (this.f3877g == null) {
                    Objects.requireNonNull(iconCompat, "Bubbles require non-null icon");
                    this.f3872b = iconCompat;
                    return this;
                }
                throw new IllegalStateException("Created as a shortcut bubble, cannot set an Icon. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead.");
            }

            @NonNull
            public Builder setIntent(@NonNull PendingIntent pendingIntent) {
                if (this.f3877g == null) {
                    Objects.requireNonNull(pendingIntent, "Bubble requires non-null pending intent");
                    this.f3871a = pendingIntent;
                    return this;
                }
                throw new IllegalStateException("Created as a shortcut bubble, cannot set a PendingIntent. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead.");
            }

            @NonNull
            public Builder setSuppressNotification(boolean z3) {
                a(2, z3);
                return this;
            }

            @RequiresApi(30)
            public Builder(@NonNull String str) {
                if (!TextUtils.isEmpty(str)) {
                    this.f3877g = str;
                    return;
                }
                throw new NullPointerException("Bubble requires a non-null shortcut id");
            }

            public Builder(@NonNull PendingIntent pendingIntent, @NonNull IconCompat iconCompat) {
                Objects.requireNonNull(pendingIntent, "Bubble requires non-null pending intent");
                Objects.requireNonNull(iconCompat, "Bubbles require non-null icon");
                this.f3871a = pendingIntent;
                this.f3872b = iconCompat;
            }
        }

        @Nullable
        public static BubbleMetadata fromPlatform(@Nullable Notification.BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30) {
                return Api30Impl.a(bubbleMetadata);
            }
            if (i2 == 29) {
                return Api29Impl.a(bubbleMetadata);
            }
            return null;
        }

        @Nullable
        public static Notification.BubbleMetadata toPlatform(@Nullable BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30) {
                return Api30Impl.b(bubbleMetadata);
            }
            if (i2 == 29) {
                return Api29Impl.b(bubbleMetadata);
            }
            return null;
        }

        public boolean getAutoExpandBubble() {
            return (this.f3869f & 1) != 0;
        }

        @Nullable
        public PendingIntent getDeleteIntent() {
            return this.f3865b;
        }

        @Dimension(unit = 0)
        public int getDesiredHeight() {
            return this.f3867d;
        }

        @DimenRes
        public int getDesiredHeightResId() {
            return this.f3868e;
        }

        @Nullable
        @SuppressLint({"InvalidNullConversion"})
        public IconCompat getIcon() {
            return this.f3866c;
        }

        @Nullable
        @SuppressLint({"InvalidNullConversion"})
        public PendingIntent getIntent() {
            return this.f3864a;
        }

        @Nullable
        public String getShortcutId() {
            return this.f3870g;
        }

        public boolean isNotificationSuppressed() {
            return (this.f3869f & 2) != 0;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void setFlags(int i2) {
            this.f3869f = i2;
        }

        private BubbleMetadata(@Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable IconCompat iconCompat, int i2, @DimenRes int i4, int i5, @Nullable String str) {
            this.f3864a = pendingIntent;
            this.f3866c = iconCompat;
            this.f3867d = i2;
            this.f3868e = i4;
            this.f3865b = pendingIntent2;
            this.f3869f = i5;
            this.f3870g = str;
        }
    }

    /* loaded from: classes.dex */
    public static class Builder {
        private static final int U = 5120;
        String A;
        Bundle B;
        int C;
        int D;
        Notification E;
        RemoteViews F;
        RemoteViews G;
        RemoteViews H;
        String I;
        int J;
        String K;
        LocusIdCompat L;
        long M;
        int N;
        int O;
        boolean P;
        BubbleMetadata Q;
        Notification R;
        boolean S;
        Icon T;

        /* renamed from: a  reason: collision with root package name */
        ArrayList<Action> f3878a;

        /* renamed from: b  reason: collision with root package name */
        CharSequence f3879b;

        /* renamed from: c  reason: collision with root package name */
        CharSequence f3880c;

        /* renamed from: d  reason: collision with root package name */
        PendingIntent f3881d;

        /* renamed from: e  reason: collision with root package name */
        PendingIntent f3882e;

        /* renamed from: f  reason: collision with root package name */
        RemoteViews f3883f;

        /* renamed from: g  reason: collision with root package name */
        Bitmap f3884g;

        /* renamed from: h  reason: collision with root package name */
        CharSequence f3885h;

        /* renamed from: i  reason: collision with root package name */
        int f3886i;

        /* renamed from: j  reason: collision with root package name */
        int f3887j;

        /* renamed from: k  reason: collision with root package name */
        boolean f3888k;

        /* renamed from: l  reason: collision with root package name */
        boolean f3889l;

        /* renamed from: m  reason: collision with root package name */
        boolean f3890m;
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public ArrayList<Action> mActions;
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Context mContext;
        @Deprecated
        public ArrayList<String> mPeople;
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public ArrayList<Person> mPersonList;

        /* renamed from: n  reason: collision with root package name */
        Style f3891n;

        /* renamed from: o  reason: collision with root package name */
        CharSequence f3892o;

        /* renamed from: p  reason: collision with root package name */
        CharSequence f3893p;

        /* renamed from: q  reason: collision with root package name */
        CharSequence[] f3894q;

        /* renamed from: r  reason: collision with root package name */
        int f3895r;

        /* renamed from: s  reason: collision with root package name */
        int f3896s;

        /* renamed from: t  reason: collision with root package name */
        boolean f3897t;

        /* renamed from: u  reason: collision with root package name */
        String f3898u;

        /* renamed from: v  reason: collision with root package name */
        boolean f3899v;

        /* renamed from: w  reason: collision with root package name */
        String f3900w;

        /* renamed from: x  reason: collision with root package name */
        boolean f3901x;

        /* renamed from: y  reason: collision with root package name */
        boolean f3902y;

        /* renamed from: z  reason: collision with root package name */
        boolean f3903z;

        @RequiresApi(19)
        public Builder(@NonNull Context context, @NonNull Notification notification) {
            this(context, NotificationCompat.getChannelId(notification));
            ArrayList parcelableArrayList;
            Bundle bundle = notification.extras;
            Style extractStyleFromNotification = Style.extractStyleFromNotification(notification);
            setContentTitle(NotificationCompat.getContentTitle(notification)).setContentText(NotificationCompat.getContentText(notification)).setContentInfo(NotificationCompat.getContentInfo(notification)).setSubText(NotificationCompat.getSubText(notification)).setSettingsText(NotificationCompat.getSettingsText(notification)).setStyle(extractStyleFromNotification).setContentIntent(notification.contentIntent).setGroup(NotificationCompat.getGroup(notification)).setGroupSummary(NotificationCompat.isGroupSummary(notification)).setLocusId(NotificationCompat.getLocusId(notification)).setWhen(notification.when).setShowWhen(NotificationCompat.getShowWhen(notification)).setUsesChronometer(NotificationCompat.getUsesChronometer(notification)).setAutoCancel(NotificationCompat.getAutoCancel(notification)).setOnlyAlertOnce(NotificationCompat.getOnlyAlertOnce(notification)).setOngoing(NotificationCompat.getOngoing(notification)).setLocalOnly(NotificationCompat.getLocalOnly(notification)).setLargeIcon(notification.largeIcon).setBadgeIconType(NotificationCompat.getBadgeIconType(notification)).setCategory(NotificationCompat.getCategory(notification)).setBubbleMetadata(NotificationCompat.getBubbleMetadata(notification)).setNumber(notification.number).setTicker(notification.tickerText).setContentIntent(notification.contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(notification.fullScreenIntent, NotificationCompat.b(notification)).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setDefaults(notification.defaults).setPriority(notification.priority).setColor(NotificationCompat.getColor(notification)).setVisibility(NotificationCompat.getVisibility(notification)).setPublicVersion(NotificationCompat.getPublicVersion(notification)).setSortKey(NotificationCompat.getSortKey(notification)).setTimeoutAfter(NotificationCompat.getTimeoutAfter(notification)).setShortcutId(NotificationCompat.getShortcutId(notification)).setProgress(bundle.getInt(NotificationCompat.EXTRA_PROGRESS_MAX), bundle.getInt(NotificationCompat.EXTRA_PROGRESS), bundle.getBoolean(NotificationCompat.EXTRA_PROGRESS_INDETERMINATE)).setAllowSystemGeneratedContextualActions(NotificationCompat.getAllowSystemGeneratedContextualActions(notification)).setSmallIcon(notification.icon, notification.iconLevel).addExtras(a(notification, extractStyleFromNotification));
            if (Build.VERSION.SDK_INT >= 23) {
                this.T = notification.getSmallIcon();
            }
            Notification.Action[] actionArr = notification.actions;
            if (actionArr != null && actionArr.length != 0) {
                for (Notification.Action action : actionArr) {
                    addAction(Action.Builder.fromAndroidAction(action).build());
                }
            }
            if (Build.VERSION.SDK_INT >= 21) {
                List<Action> invisibleActions = NotificationCompat.getInvisibleActions(notification);
                if (!invisibleActions.isEmpty()) {
                    for (Action action2 : invisibleActions) {
                        addInvisibleAction(action2);
                    }
                }
            }
            String[] stringArray = notification.extras.getStringArray(NotificationCompat.EXTRA_PEOPLE);
            if (stringArray != null && stringArray.length != 0) {
                for (String str : stringArray) {
                    addPerson(str);
                }
            }
            if (Build.VERSION.SDK_INT >= 28 && (parcelableArrayList = notification.extras.getParcelableArrayList(NotificationCompat.EXTRA_PEOPLE_LIST)) != null && !parcelableArrayList.isEmpty()) {
                Iterator it2 = parcelableArrayList.iterator();
                while (it2.hasNext()) {
                    addPerson(Person.fromAndroidPerson((android.app.Person) it2.next()));
                }
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24 && bundle.containsKey(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN)) {
                setChronometerCountDown(bundle.getBoolean(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN));
            }
            if (i2 < 26 || !bundle.containsKey(NotificationCompat.EXTRA_COLORIZED)) {
                return;
            }
            setColorized(bundle.getBoolean(NotificationCompat.EXTRA_COLORIZED));
        }

        @Nullable
        @RequiresApi(19)
        private static Bundle a(@NonNull Notification notification, @Nullable Style style) {
            if (notification.extras == null) {
                return null;
            }
            Bundle bundle = new Bundle(notification.extras);
            bundle.remove(NotificationCompat.EXTRA_TITLE);
            bundle.remove(NotificationCompat.EXTRA_TEXT);
            bundle.remove(NotificationCompat.EXTRA_INFO_TEXT);
            bundle.remove(NotificationCompat.EXTRA_SUB_TEXT);
            bundle.remove(NotificationCompat.EXTRA_CHANNEL_ID);
            bundle.remove(NotificationCompat.EXTRA_CHANNEL_GROUP_ID);
            bundle.remove(NotificationCompat.EXTRA_SHOW_WHEN);
            bundle.remove(NotificationCompat.EXTRA_PROGRESS);
            bundle.remove(NotificationCompat.EXTRA_PROGRESS_MAX);
            bundle.remove(NotificationCompat.EXTRA_PROGRESS_INDETERMINATE);
            bundle.remove(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN);
            bundle.remove(NotificationCompat.EXTRA_COLORIZED);
            bundle.remove(NotificationCompat.EXTRA_PEOPLE_LIST);
            bundle.remove(NotificationCompat.EXTRA_PEOPLE);
            bundle.remove(NotificationCompatExtras.EXTRA_SORT_KEY);
            bundle.remove(NotificationCompatExtras.EXTRA_GROUP_KEY);
            bundle.remove(NotificationCompatExtras.EXTRA_GROUP_SUMMARY);
            bundle.remove(NotificationCompatExtras.EXTRA_LOCAL_ONLY);
            bundle.remove(NotificationCompatExtras.EXTRA_ACTION_EXTRAS);
            Bundle bundle2 = bundle.getBundle("android.car.EXTENSIONS");
            if (bundle2 != null) {
                Bundle bundle3 = new Bundle(bundle2);
                bundle3.remove("invisible_actions");
                bundle.putBundle("android.car.EXTENSIONS", bundle3);
            }
            if (style != null) {
                style.b(bundle);
            }
            return bundle;
        }

        @Nullable
        protected static CharSequence b(@Nullable CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > U) ? charSequence.subSequence(0, U) : charSequence;
        }

        @Nullable
        private Bitmap c(@Nullable Bitmap bitmap) {
            if (bitmap == null || Build.VERSION.SDK_INT >= 27) {
                return bitmap;
            }
            Resources resources = this.mContext.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
            if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                double d4 = dimensionPixelSize;
                double max = Math.max(1, bitmap.getWidth());
                Double.isNaN(d4);
                Double.isNaN(max);
                double d5 = d4 / max;
                double d6 = dimensionPixelSize2;
                double max2 = Math.max(1, bitmap.getHeight());
                Double.isNaN(d6);
                Double.isNaN(max2);
                double min = Math.min(d5, d6 / max2);
                double width = bitmap.getWidth();
                Double.isNaN(width);
                double height = bitmap.getHeight();
                Double.isNaN(height);
                return Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(width * min), (int) Math.ceil(height * min), true);
            }
            return bitmap;
        }

        private void d(int i2, boolean z3) {
            if (z3) {
                Notification notification = this.R;
                notification.flags = i2 | notification.flags;
                return;
            }
            Notification notification2 = this.R;
            notification2.flags = (i2 ^ (-1)) & notification2.flags;
        }

        private boolean e() {
            Style style = this.f3891n;
            return style == null || !style.displayCustomViewInline();
        }

        @NonNull
        public Builder addAction(int i2, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this.mActions.add(new Action(i2, charSequence, pendingIntent));
            return this;
        }

        @NonNull
        public Builder addExtras(@Nullable Bundle bundle) {
            if (bundle != null) {
                Bundle bundle2 = this.B;
                if (bundle2 == null) {
                    this.B = new Bundle(bundle);
                } else {
                    bundle2.putAll(bundle);
                }
            }
            return this;
        }

        @NonNull
        @RequiresApi(21)
        public Builder addInvisibleAction(int i2, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this.f3878a.add(new Action(i2, charSequence, pendingIntent));
            return this;
        }

        @NonNull
        @Deprecated
        public Builder addPerson(@Nullable String str) {
            if (str != null && !str.isEmpty()) {
                this.mPeople.add(str);
            }
            return this;
        }

        @NonNull
        public Notification build() {
            return new NotificationCompatBuilder(this).build();
        }

        @NonNull
        public Builder clearActions() {
            this.mActions.clear();
            return this;
        }

        @NonNull
        public Builder clearInvisibleActions() {
            this.f3878a.clear();
            Bundle bundle = this.B.getBundle("android.car.EXTENSIONS");
            if (bundle != null) {
                Bundle bundle2 = new Bundle(bundle);
                bundle2.remove("invisible_actions");
                this.B.putBundle("android.car.EXTENSIONS", bundle2);
            }
            return this;
        }

        @NonNull
        public Builder clearPeople() {
            this.mPersonList.clear();
            this.mPeople.clear();
            return this;
        }

        @Nullable
        @SuppressLint({"BuilderSetStyle"})
        public RemoteViews createBigContentView() {
            RemoteViews makeBigContentView;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 16) {
                return null;
            }
            if (this.G != null && e()) {
                return this.G;
            }
            NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
            Style style = this.f3891n;
            if (style == null || (makeBigContentView = style.makeBigContentView(notificationCompatBuilder)) == null) {
                Notification build = notificationCompatBuilder.build();
                if (i2 >= 24) {
                    return Notification.Builder.recoverBuilder(this.mContext, build).createBigContentView();
                }
                return build.bigContentView;
            }
            return makeBigContentView;
        }

        @Nullable
        @SuppressLint({"BuilderSetStyle"})
        public RemoteViews createContentView() {
            RemoteViews makeContentView;
            if (this.F != null && e()) {
                return this.F;
            }
            NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
            Style style = this.f3891n;
            if (style == null || (makeContentView = style.makeContentView(notificationCompatBuilder)) == null) {
                Notification build = notificationCompatBuilder.build();
                if (Build.VERSION.SDK_INT >= 24) {
                    return Notification.Builder.recoverBuilder(this.mContext, build).createContentView();
                }
                return build.contentView;
            }
            return makeContentView;
        }

        @Nullable
        @SuppressLint({"BuilderSetStyle"})
        public RemoteViews createHeadsUpContentView() {
            RemoteViews makeHeadsUpContentView;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 21) {
                return null;
            }
            if (this.H != null && e()) {
                return this.H;
            }
            NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
            Style style = this.f3891n;
            if (style == null || (makeHeadsUpContentView = style.makeHeadsUpContentView(notificationCompatBuilder)) == null) {
                Notification build = notificationCompatBuilder.build();
                if (i2 >= 24) {
                    return Notification.Builder.recoverBuilder(this.mContext, build).createHeadsUpContentView();
                }
                return build.headsUpContentView;
            }
            return makeHeadsUpContentView;
        }

        @NonNull
        public Builder extend(@NonNull Extender extender) {
            extender.extend(this);
            return this;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews getBigContentView() {
            return this.G;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public BubbleMetadata getBubbleMetadata() {
            return this.Q;
        }

        @ColorInt
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public int getColor() {
            return this.C;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews getContentView() {
            return this.F;
        }

        @NonNull
        public Bundle getExtras() {
            if (this.B == null) {
                this.B = new Bundle();
            }
            return this.B;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public int getForegroundServiceBehavior() {
            return this.O;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews getHeadsUpContentView() {
            return this.H;
        }

        @NonNull
        @Deprecated
        public Notification getNotification() {
            return build();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public int getPriority() {
            return this.f3887j;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public long getWhenIfShowing() {
            if (this.f3888k) {
                return this.R.when;
            }
            return 0L;
        }

        @NonNull
        public Builder setAllowSystemGeneratedContextualActions(boolean z3) {
            this.P = z3;
            return this;
        }

        @NonNull
        public Builder setAutoCancel(boolean z3) {
            d(16, z3);
            return this;
        }

        @NonNull
        public Builder setBadgeIconType(int i2) {
            this.J = i2;
            return this;
        }

        @NonNull
        public Builder setBubbleMetadata(@Nullable BubbleMetadata bubbleMetadata) {
            this.Q = bubbleMetadata;
            return this;
        }

        @NonNull
        public Builder setCategory(@Nullable String str) {
            this.A = str;
            return this;
        }

        @NonNull
        public Builder setChannelId(@NonNull String str) {
            this.I = str;
            return this;
        }

        @NonNull
        @RequiresApi(24)
        public Builder setChronometerCountDown(boolean z3) {
            this.f3890m = z3;
            getExtras().putBoolean(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN, z3);
            return this;
        }

        @NonNull
        public Builder setColor(@ColorInt int i2) {
            this.C = i2;
            return this;
        }

        @NonNull
        public Builder setColorized(boolean z3) {
            this.f3902y = z3;
            this.f3903z = true;
            return this;
        }

        @NonNull
        public Builder setContent(@Nullable RemoteViews remoteViews) {
            this.R.contentView = remoteViews;
            return this;
        }

        @NonNull
        public Builder setContentInfo(@Nullable CharSequence charSequence) {
            this.f3885h = b(charSequence);
            return this;
        }

        @NonNull
        public Builder setContentIntent(@Nullable PendingIntent pendingIntent) {
            this.f3881d = pendingIntent;
            return this;
        }

        @NonNull
        public Builder setContentText(@Nullable CharSequence charSequence) {
            this.f3880c = b(charSequence);
            return this;
        }

        @NonNull
        public Builder setContentTitle(@Nullable CharSequence charSequence) {
            this.f3879b = b(charSequence);
            return this;
        }

        @NonNull
        public Builder setCustomBigContentView(@Nullable RemoteViews remoteViews) {
            this.G = remoteViews;
            return this;
        }

        @NonNull
        public Builder setCustomContentView(@Nullable RemoteViews remoteViews) {
            this.F = remoteViews;
            return this;
        }

        @NonNull
        public Builder setCustomHeadsUpContentView(@Nullable RemoteViews remoteViews) {
            this.H = remoteViews;
            return this;
        }

        @NonNull
        public Builder setDefaults(int i2) {
            Notification notification = this.R;
            notification.defaults = i2;
            if ((i2 & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        @NonNull
        public Builder setDeleteIntent(@Nullable PendingIntent pendingIntent) {
            this.R.deleteIntent = pendingIntent;
            return this;
        }

        @NonNull
        public Builder setExtras(@Nullable Bundle bundle) {
            this.B = bundle;
            return this;
        }

        @NonNull
        public Builder setForegroundServiceBehavior(int i2) {
            this.O = i2;
            return this;
        }

        @NonNull
        public Builder setFullScreenIntent(@Nullable PendingIntent pendingIntent, boolean z3) {
            this.f3882e = pendingIntent;
            d(128, z3);
            return this;
        }

        @NonNull
        public Builder setGroup(@Nullable String str) {
            this.f3898u = str;
            return this;
        }

        @NonNull
        public Builder setGroupAlertBehavior(int i2) {
            this.N = i2;
            return this;
        }

        @NonNull
        public Builder setGroupSummary(boolean z3) {
            this.f3899v = z3;
            return this;
        }

        @NonNull
        public Builder setLargeIcon(@Nullable Bitmap bitmap) {
            this.f3884g = c(bitmap);
            return this;
        }

        @NonNull
        public Builder setLights(@ColorInt int i2, int i4, int i5) {
            Notification notification = this.R;
            notification.ledARGB = i2;
            notification.ledOnMS = i4;
            notification.ledOffMS = i5;
            notification.flags = ((i4 == 0 || i5 == 0) ? 0 : 1) | (notification.flags & (-2));
            return this;
        }

        @NonNull
        public Builder setLocalOnly(boolean z3) {
            this.f3901x = z3;
            return this;
        }

        @NonNull
        public Builder setLocusId(@Nullable LocusIdCompat locusIdCompat) {
            this.L = locusIdCompat;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setNotificationSilent() {
            this.S = true;
            return this;
        }

        @NonNull
        public Builder setNumber(int i2) {
            this.f3886i = i2;
            return this;
        }

        @NonNull
        public Builder setOngoing(boolean z3) {
            d(2, z3);
            return this;
        }

        @NonNull
        public Builder setOnlyAlertOnce(boolean z3) {
            d(8, z3);
            return this;
        }

        @NonNull
        public Builder setPriority(int i2) {
            this.f3887j = i2;
            return this;
        }

        @NonNull
        public Builder setProgress(int i2, int i4, boolean z3) {
            this.f3895r = i2;
            this.f3896s = i4;
            this.f3897t = z3;
            return this;
        }

        @NonNull
        public Builder setPublicVersion(@Nullable Notification notification) {
            this.E = notification;
            return this;
        }

        @NonNull
        public Builder setRemoteInputHistory(@Nullable CharSequence[] charSequenceArr) {
            this.f3894q = charSequenceArr;
            return this;
        }

        @NonNull
        public Builder setSettingsText(@Nullable CharSequence charSequence) {
            this.f3893p = b(charSequence);
            return this;
        }

        @NonNull
        public Builder setShortcutId(@Nullable String str) {
            this.K = str;
            return this;
        }

        @NonNull
        public Builder setShortcutInfo(@Nullable ShortcutInfoCompat shortcutInfoCompat) {
            if (shortcutInfoCompat == null) {
                return this;
            }
            this.K = shortcutInfoCompat.getId();
            if (this.L == null) {
                if (shortcutInfoCompat.getLocusId() != null) {
                    this.L = shortcutInfoCompat.getLocusId();
                } else if (shortcutInfoCompat.getId() != null) {
                    this.L = new LocusIdCompat(shortcutInfoCompat.getId());
                }
            }
            if (this.f3879b == null) {
                setContentTitle(shortcutInfoCompat.getShortLabel());
            }
            return this;
        }

        @NonNull
        public Builder setShowWhen(boolean z3) {
            this.f3888k = z3;
            return this;
        }

        @NonNull
        public Builder setSilent(boolean z3) {
            this.S = z3;
            return this;
        }

        @NonNull
        @RequiresApi(23)
        public Builder setSmallIcon(@NonNull IconCompat iconCompat) {
            this.T = iconCompat.toIcon(this.mContext);
            return this;
        }

        @NonNull
        public Builder setSortKey(@Nullable String str) {
            this.f3900w = str;
            return this;
        }

        @NonNull
        public Builder setSound(@Nullable Uri uri) {
            Notification notification = this.R;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        @NonNull
        public Builder setStyle(@Nullable Style style) {
            if (this.f3891n != style) {
                this.f3891n = style;
                if (style != null) {
                    style.setBuilder(this);
                }
            }
            return this;
        }

        @NonNull
        public Builder setSubText(@Nullable CharSequence charSequence) {
            this.f3892o = b(charSequence);
            return this;
        }

        @NonNull
        public Builder setTicker(@Nullable CharSequence charSequence) {
            this.R.tickerText = b(charSequence);
            return this;
        }

        @NonNull
        public Builder setTimeoutAfter(long j4) {
            this.M = j4;
            return this;
        }

        @NonNull
        public Builder setUsesChronometer(boolean z3) {
            this.f3889l = z3;
            return this;
        }

        @NonNull
        public Builder setVibrate(@Nullable long[] jArr) {
            this.R.vibrate = jArr;
            return this;
        }

        @NonNull
        public Builder setVisibility(int i2) {
            this.D = i2;
            return this;
        }

        @NonNull
        public Builder setWhen(long j4) {
            this.R.when = j4;
            return this;
        }

        @NonNull
        public Builder addAction(@Nullable Action action) {
            if (action != null) {
                this.mActions.add(action);
            }
            return this;
        }

        @NonNull
        @RequiresApi(21)
        public Builder addInvisibleAction(@Nullable Action action) {
            if (action != null) {
                this.f3878a.add(action);
            }
            return this;
        }

        @NonNull
        public Builder setSmallIcon(int i2) {
            this.R.icon = i2;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setTicker(@Nullable CharSequence charSequence, @Nullable RemoteViews remoteViews) {
            this.R.tickerText = b(charSequence);
            this.f3883f = remoteViews;
            return this;
        }

        @NonNull
        public Builder addPerson(@Nullable Person person) {
            if (person != null) {
                this.mPersonList.add(person);
            }
            return this;
        }

        @NonNull
        public Builder setSmallIcon(int i2, int i4) {
            Notification notification = this.R;
            notification.icon = i2;
            notification.iconLevel = i4;
            return this;
        }

        @NonNull
        public Builder setSound(@Nullable Uri uri, int i2) {
            Notification notification = this.R;
            notification.sound = uri;
            notification.audioStreamType = i2;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setLegacyStreamType(i2).build();
            }
            return this;
        }

        public Builder(@NonNull Context context, @NonNull String str) {
            this.mActions = new ArrayList<>();
            this.mPersonList = new ArrayList<>();
            this.f3878a = new ArrayList<>();
            this.f3888k = true;
            this.f3901x = false;
            this.C = 0;
            this.D = 0;
            this.J = 0;
            this.N = 0;
            this.O = 0;
            Notification notification = new Notification();
            this.R = notification;
            this.mContext = context;
            this.I = str;
            notification.when = System.currentTimeMillis();
            this.R.audioStreamType = -1;
            this.f3887j = 0;
            this.mPeople = new ArrayList<>();
            this.P = true;
        }

        @Deprecated
        public Builder(@NonNull Context context) {
            this(context, (String) null);
        }
    }

    /* loaded from: classes.dex */
    public static class DecoratedCustomViewStyle extends Style {

        /* renamed from: e  reason: collision with root package name */
        private static final String f3932e = "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";

        /* renamed from: f  reason: collision with root package name */
        private static final int f3933f = 3;

        private RemoteViews o(RemoteViews remoteViews, boolean z3) {
            int min;
            boolean z4 = true;
            RemoteViews applyStandardTemplate = applyStandardTemplate(true, R.layout.notification_template_custom_big, false);
            applyStandardTemplate.removeAllViews(R.id.actions);
            List<Action> q3 = q(this.f3956a.mActions);
            if (!z3 || q3 == null || (min = Math.min(q3.size(), 3)) <= 0) {
                z4 = false;
            } else {
                for (int i2 = 0; i2 < min; i2++) {
                    applyStandardTemplate.addView(R.id.actions, p(q3.get(i2)));
                }
            }
            int i4 = z4 ? 0 : 8;
            applyStandardTemplate.setViewVisibility(R.id.actions, i4);
            applyStandardTemplate.setViewVisibility(R.id.action_divider, i4);
            buildIntoRemoteViews(applyStandardTemplate, remoteViews);
            return applyStandardTemplate;
        }

        private RemoteViews p(Action action) {
            int i2;
            boolean z3 = action.actionIntent == null;
            String packageName = this.f3956a.mContext.getPackageName();
            if (z3) {
                i2 = R.layout.notification_action_tombstone;
            } else {
                i2 = R.layout.notification_action;
            }
            RemoteViews remoteViews = new RemoteViews(packageName, i2);
            IconCompat iconCompat = action.getIconCompat();
            if (iconCompat != null) {
                remoteViews.setImageViewBitmap(R.id.action_image, i(iconCompat, this.f3956a.mContext.getResources().getColor(R.color.notification_action_color_filter)));
            }
            remoteViews.setTextViewText(R.id.action_text, action.title);
            if (!z3) {
                remoteViews.setOnClickPendingIntent(R.id.action_container, action.actionIntent);
            }
            if (Build.VERSION.SDK_INT >= 15) {
                remoteViews.setContentDescription(R.id.action_container, action.title);
            }
            return remoteViews;
        }

        private static List<Action> q(List<Action> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Action action : list) {
                if (!action.isContextual()) {
                    arrayList.add(action);
                }
            }
            return arrayList;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                notificationBuilderWithBuilderAccessor.getBuilder().setStyle(new Notification.DecoratedCustomViewStyle());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean displayCustomViewInline() {
            return true;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected String l() {
            return f3932e;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews bigContentView = this.f3956a.getBigContentView();
            if (bigContentView == null) {
                bigContentView = this.f3956a.getContentView();
            }
            if (bigContentView == null) {
                return null;
            }
            return o(bigContentView, true);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT < 24 && this.f3956a.getContentView() != null) {
                return o(this.f3956a.getContentView(), false);
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews headsUpContentView = this.f3956a.getHeadsUpContentView();
            RemoteViews contentView = headsUpContentView != null ? headsUpContentView : this.f3956a.getContentView();
            if (headsUpContentView == null) {
                return null;
            }
            return o(contentView, true);
        }
    }

    /* loaded from: classes.dex */
    public interface Extender {
        @NonNull
        Builder extend(@NonNull Builder builder);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface GroupAlertBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface NotificationVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ServiceNotificationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface StreamType {
    }

    /* loaded from: classes.dex */
    public static abstract class Style {
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})

        /* renamed from: a  reason: collision with root package name */
        protected Builder f3956a;

        /* renamed from: b  reason: collision with root package name */
        CharSequence f3957b;

        /* renamed from: c  reason: collision with root package name */
        CharSequence f3958c;

        /* renamed from: d  reason: collision with root package name */
        boolean f3959d = false;

        private int a() {
            Resources resources = this.f3956a.mContext.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_top_pad);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.notification_top_pad_large_text);
            float c4 = (c(resources.getConfiguration().fontScale, 1.0f, 1.3f) - 1.0f) / 0.29999995f;
            return Math.round(((1.0f - c4) * dimensionPixelSize) + (c4 * dimensionPixelSize2));
        }

        private static float c(float f4, float f5, float f6) {
            return f4 < f5 ? f5 : f4 > f6 ? f6 : f4;
        }

        @Nullable
        static Style d(@Nullable String str) {
            if (str != null) {
                char c4 = 65535;
                switch (str.hashCode()) {
                    case -716705180:
                        if (str.equals("androidx.core.app.NotificationCompat$DecoratedCustomViewStyle")) {
                            c4 = 0;
                            break;
                        }
                        break;
                    case -171946061:
                        if (str.equals("androidx.core.app.NotificationCompat$BigPictureStyle")) {
                            c4 = 1;
                            break;
                        }
                        break;
                    case 912942987:
                        if (str.equals("androidx.core.app.NotificationCompat$InboxStyle")) {
                            c4 = 2;
                            break;
                        }
                        break;
                    case 919595044:
                        if (str.equals("androidx.core.app.NotificationCompat$BigTextStyle")) {
                            c4 = 3;
                            break;
                        }
                        break;
                    case 2090799565:
                        if (str.equals("androidx.core.app.NotificationCompat$MessagingStyle")) {
                            c4 = 4;
                            break;
                        }
                        break;
                }
                switch (c4) {
                    case 0:
                        return new DecoratedCustomViewStyle();
                    case 1:
                        return new BigPictureStyle();
                    case 2:
                        return new InboxStyle();
                    case 3:
                        return new BigTextStyle();
                    case 4:
                        return new MessagingStyle();
                    default:
                        return null;
                }
            }
            return null;
        }

        @Nullable
        private static Style e(@Nullable String str) {
            int i2;
            if (str != null && (i2 = Build.VERSION.SDK_INT) >= 16) {
                if (str.equals(Notification.BigPictureStyle.class.getName())) {
                    return new BigPictureStyle();
                }
                if (str.equals(Notification.BigTextStyle.class.getName())) {
                    return new BigTextStyle();
                }
                if (str.equals(Notification.InboxStyle.class.getName())) {
                    return new InboxStyle();
                }
                if (i2 >= 24) {
                    if (str.equals(Notification.MessagingStyle.class.getName())) {
                        return new MessagingStyle();
                    }
                    if (str.equals(Notification.DecoratedCustomViewStyle.class.getName())) {
                        return new DecoratedCustomViewStyle();
                    }
                }
            }
            return null;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static Style extractStyleFromNotification(@NonNull Notification notification) {
            Bundle extras = NotificationCompat.getExtras(notification);
            if (extras == null) {
                return null;
            }
            return g(extras);
        }

        @Nullable
        static Style f(@NonNull Bundle bundle) {
            Style d4 = d(bundle.getString(NotificationCompat.EXTRA_COMPAT_TEMPLATE));
            if (d4 != null) {
                return d4;
            }
            if (!bundle.containsKey(NotificationCompat.EXTRA_SELF_DISPLAY_NAME) && !bundle.containsKey(NotificationCompat.EXTRA_MESSAGING_STYLE_USER)) {
                if (bundle.containsKey(NotificationCompat.EXTRA_PICTURE)) {
                    return new BigPictureStyle();
                }
                if (bundle.containsKey(NotificationCompat.EXTRA_BIG_TEXT)) {
                    return new BigTextStyle();
                }
                if (bundle.containsKey(NotificationCompat.EXTRA_TEXT_LINES)) {
                    return new InboxStyle();
                }
                return e(bundle.getString(NotificationCompat.EXTRA_TEMPLATE));
            }
            return new MessagingStyle();
        }

        @Nullable
        static Style g(@NonNull Bundle bundle) {
            Style f4 = f(bundle);
            if (f4 == null) {
                return null;
            }
            try {
                f4.n(bundle);
                return f4;
            } catch (ClassCastException unused) {
                return null;
            }
        }

        private Bitmap h(int i2, int i4, int i5) {
            return j(IconCompat.createWithResource(this.f3956a.mContext, i2), i4, i5);
        }

        private Bitmap j(@NonNull IconCompat iconCompat, int i2, int i4) {
            Drawable loadDrawable = iconCompat.loadDrawable(this.f3956a.mContext);
            int intrinsicWidth = i4 == 0 ? loadDrawable.getIntrinsicWidth() : i4;
            if (i4 == 0) {
                i4 = loadDrawable.getIntrinsicHeight();
            }
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, i4, Bitmap.Config.ARGB_8888);
            loadDrawable.setBounds(0, 0, intrinsicWidth, i4);
            if (i2 != 0) {
                loadDrawable.mutate().setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN));
            }
            loadDrawable.draw(new Canvas(createBitmap));
            return createBitmap;
        }

        private Bitmap k(int i2, int i4, int i5, int i6) {
            int i7 = R.drawable.notification_icon_background;
            if (i6 == 0) {
                i6 = 0;
            }
            Bitmap h4 = h(i7, i6, i4);
            Canvas canvas = new Canvas(h4);
            Drawable mutate = this.f3956a.mContext.getResources().getDrawable(i2).mutate();
            mutate.setFilterBitmap(true);
            int i8 = (i4 - i5) / 2;
            int i9 = i5 + i8;
            mutate.setBounds(i8, i8, i9, i9);
            mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            mutate.draw(canvas);
            return h4;
        }

        private void m(RemoteViews remoteViews) {
            remoteViews.setViewVisibility(R.id.title, 8);
            remoteViews.setViewVisibility(R.id.text2, 8);
            remoteViews.setViewVisibility(R.id.text, 8);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void addCompatExtras(@NonNull Bundle bundle) {
            if (this.f3959d) {
                bundle.putCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT, this.f3958c);
            }
            CharSequence charSequence = this.f3957b;
            if (charSequence != null) {
                bundle.putCharSequence(NotificationCompat.EXTRA_TITLE_BIG, charSequence);
            }
            String l4 = l();
            if (l4 != null) {
                bundle.putString(NotificationCompat.EXTRA_COMPAT_TEMPLATE, l4);
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        }

        /* JADX WARN: Removed duplicated region for block: B:62:0x0177  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0181  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0189 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x018d  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x01af  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x01f5  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x01fa  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01fc  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x0206  */
        @androidx.annotation.NonNull
        @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.widget.RemoteViews applyStandardTemplate(boolean r17, int r18, boolean r19) {
            /*
                Method dump skipped, instructions count: 524
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.NotificationCompat.Style.applyStandardTemplate(boolean, int, boolean):android.widget.RemoteViews");
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected void b(@NonNull Bundle bundle) {
            bundle.remove(NotificationCompat.EXTRA_SUMMARY_TEXT);
            bundle.remove(NotificationCompat.EXTRA_TITLE_BIG);
            bundle.remove(NotificationCompat.EXTRA_COMPAT_TEMPLATE);
        }

        @Nullable
        public Notification build() {
            Builder builder = this.f3956a;
            if (builder != null) {
                return builder.build();
            }
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void buildIntoRemoteViews(RemoteViews remoteViews, RemoteViews remoteViews2) {
            m(remoteViews);
            int i2 = R.id.notification_main_column;
            remoteViews.removeAllViews(i2);
            remoteViews.addView(i2, remoteViews2.clone());
            remoteViews.setViewVisibility(i2, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                remoteViews.setViewPadding(R.id.notification_main_column_container, 0, a(), 0, 0);
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Bitmap createColoredBitmap(int i2, int i4) {
            return h(i2, i4, 0);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean displayCustomViewInline() {
            return false;
        }

        Bitmap i(@NonNull IconCompat iconCompat, int i2) {
            return j(iconCompat, i2, 0);
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected String l() {
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected void n(@NonNull Bundle bundle) {
            if (bundle.containsKey(NotificationCompat.EXTRA_SUMMARY_TEXT)) {
                this.f3958c = bundle.getCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT);
                this.f3959d = true;
            }
            this.f3957b = bundle.getCharSequence(NotificationCompat.EXTRA_TITLE_BIG);
        }

        public void setBuilder(@Nullable Builder builder) {
            if (this.f3956a != builder) {
                this.f3956a = builder;
                if (builder != null) {
                    builder.setStyle(this);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class WearableExtender implements Extender {
        private static final String A = "hintScreenTimeout";
        private static final String B = "dismissalId";
        private static final String C = "bridgeTag";
        private static final int D = 1;
        private static final int E = 2;
        private static final int F = 4;
        private static final int G = 8;
        private static final int H = 16;
        private static final int I = 32;
        private static final int J = 64;
        private static final int K = 1;
        private static final int L = 8388613;
        private static final int M = 80;
        @Deprecated
        public static final int SCREEN_TIMEOUT_LONG = -1;
        @Deprecated
        public static final int SCREEN_TIMEOUT_SHORT = 0;
        @Deprecated
        public static final int SIZE_DEFAULT = 0;
        @Deprecated
        public static final int SIZE_FULL_SCREEN = 5;
        @Deprecated
        public static final int SIZE_LARGE = 4;
        @Deprecated
        public static final int SIZE_MEDIUM = 3;
        @Deprecated
        public static final int SIZE_SMALL = 2;
        @Deprecated
        public static final int SIZE_XSMALL = 1;
        public static final int UNSET_ACTION_INDEX = -1;

        /* renamed from: o  reason: collision with root package name */
        private static final String f3960o = "android.wearable.EXTENSIONS";

        /* renamed from: p  reason: collision with root package name */
        private static final String f3961p = "actions";

        /* renamed from: q  reason: collision with root package name */
        private static final String f3962q = "flags";

        /* renamed from: r  reason: collision with root package name */
        private static final String f3963r = "displayIntent";

        /* renamed from: s  reason: collision with root package name */
        private static final String f3964s = "pages";

        /* renamed from: t  reason: collision with root package name */
        private static final String f3965t = "background";

        /* renamed from: u  reason: collision with root package name */
        private static final String f3966u = "contentIcon";

        /* renamed from: v  reason: collision with root package name */
        private static final String f3967v = "contentIconGravity";

        /* renamed from: w  reason: collision with root package name */
        private static final String f3968w = "contentActionIndex";

        /* renamed from: x  reason: collision with root package name */
        private static final String f3969x = "customSizePreset";

        /* renamed from: y  reason: collision with root package name */
        private static final String f3970y = "customContentHeight";

        /* renamed from: z  reason: collision with root package name */
        private static final String f3971z = "gravity";

        /* renamed from: a  reason: collision with root package name */
        private ArrayList<Action> f3972a;

        /* renamed from: b  reason: collision with root package name */
        private int f3973b;

        /* renamed from: c  reason: collision with root package name */
        private PendingIntent f3974c;

        /* renamed from: d  reason: collision with root package name */
        private ArrayList<Notification> f3975d;

        /* renamed from: e  reason: collision with root package name */
        private Bitmap f3976e;

        /* renamed from: f  reason: collision with root package name */
        private int f3977f;

        /* renamed from: g  reason: collision with root package name */
        private int f3978g;

        /* renamed from: h  reason: collision with root package name */
        private int f3979h;

        /* renamed from: i  reason: collision with root package name */
        private int f3980i;

        /* renamed from: j  reason: collision with root package name */
        private int f3981j;

        /* renamed from: k  reason: collision with root package name */
        private int f3982k;

        /* renamed from: l  reason: collision with root package name */
        private int f3983l;

        /* renamed from: m  reason: collision with root package name */
        private String f3984m;

        /* renamed from: n  reason: collision with root package name */
        private String f3985n;

        public WearableExtender() {
            this.f3972a = new ArrayList<>();
            this.f3973b = 1;
            this.f3975d = new ArrayList<>();
            this.f3978g = 8388613;
            this.f3979h = -1;
            this.f3980i = 0;
            this.f3982k = 80;
        }

        @RequiresApi(20)
        private static Notification.Action a(Action action) {
            Notification.Action.Builder builder;
            Bundle bundle;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 23) {
                IconCompat iconCompat = action.getIconCompat();
                builder = new Notification.Action.Builder(iconCompat == null ? null : iconCompat.toIcon(), action.getTitle(), action.getActionIntent());
            } else {
                IconCompat iconCompat2 = action.getIconCompat();
                builder = new Notification.Action.Builder((iconCompat2 == null || iconCompat2.getType() != 2) ? 0 : iconCompat2.getResId(), action.getTitle(), action.getActionIntent());
            }
            if (action.getExtras() != null) {
                bundle = new Bundle(action.getExtras());
            } else {
                bundle = new Bundle();
            }
            bundle.putBoolean("android.support.allowGeneratedReplies", action.getAllowGeneratedReplies());
            if (i2 >= 24) {
                builder.setAllowGeneratedReplies(action.getAllowGeneratedReplies());
            }
            builder.addExtras(bundle);
            RemoteInput[] remoteInputs = action.getRemoteInputs();
            if (remoteInputs != null) {
                for (android.app.RemoteInput remoteInput : RemoteInput.b(remoteInputs)) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            return builder.build();
        }

        private void b(int i2, boolean z3) {
            if (z3) {
                this.f3973b = i2 | this.f3973b;
                return;
            }
            this.f3973b = (i2 ^ (-1)) & this.f3973b;
        }

        @NonNull
        public WearableExtender addAction(@NonNull Action action) {
            this.f3972a.add(action);
            return this;
        }

        @NonNull
        public WearableExtender addActions(@NonNull List<Action> list) {
            this.f3972a.addAll(list);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender addPage(@NonNull Notification notification) {
            this.f3975d.add(notification);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender addPages(@NonNull List<Notification> list) {
            this.f3975d.addAll(list);
            return this;
        }

        @NonNull
        public WearableExtender clearActions() {
            this.f3972a.clear();
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender clearPages() {
            this.f3975d.clear();
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Extender
        @NonNull
        public Builder extend(@NonNull Builder builder) {
            Bundle bundle = new Bundle();
            if (!this.f3972a.isEmpty()) {
                if (Build.VERSION.SDK_INT >= 16) {
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f3972a.size());
                    Iterator<Action> it2 = this.f3972a.iterator();
                    while (it2.hasNext()) {
                        Action next = it2.next();
                        int i2 = Build.VERSION.SDK_INT;
                        if (i2 >= 20) {
                            arrayList.add(a(next));
                        } else if (i2 >= 16) {
                            arrayList.add(NotificationCompatJellybean.g(next));
                        }
                    }
                    bundle.putParcelableArrayList(f3961p, arrayList);
                } else {
                    bundle.putParcelableArrayList(f3961p, null);
                }
            }
            int i4 = this.f3973b;
            if (i4 != 1) {
                bundle.putInt(f3962q, i4);
            }
            PendingIntent pendingIntent = this.f3974c;
            if (pendingIntent != null) {
                bundle.putParcelable(f3963r, pendingIntent);
            }
            if (!this.f3975d.isEmpty()) {
                ArrayList<Notification> arrayList2 = this.f3975d;
                bundle.putParcelableArray("pages", (Parcelable[]) arrayList2.toArray(new Notification[arrayList2.size()]));
            }
            Bitmap bitmap = this.f3976e;
            if (bitmap != null) {
                bundle.putParcelable(f3965t, bitmap);
            }
            int i5 = this.f3977f;
            if (i5 != 0) {
                bundle.putInt(f3966u, i5);
            }
            int i6 = this.f3978g;
            if (i6 != 8388613) {
                bundle.putInt(f3967v, i6);
            }
            int i7 = this.f3979h;
            if (i7 != -1) {
                bundle.putInt(f3968w, i7);
            }
            int i8 = this.f3980i;
            if (i8 != 0) {
                bundle.putInt(f3969x, i8);
            }
            int i9 = this.f3981j;
            if (i9 != 0) {
                bundle.putInt(f3970y, i9);
            }
            int i10 = this.f3982k;
            if (i10 != 80) {
                bundle.putInt(f3971z, i10);
            }
            int i11 = this.f3983l;
            if (i11 != 0) {
                bundle.putInt(A, i11);
            }
            String str = this.f3984m;
            if (str != null) {
                bundle.putString(B, str);
            }
            String str2 = this.f3985n;
            if (str2 != null) {
                bundle.putString(C, str2);
            }
            builder.getExtras().putBundle(f3960o, bundle);
            return builder;
        }

        @NonNull
        public List<Action> getActions() {
            return this.f3972a;
        }

        @Nullable
        @Deprecated
        public Bitmap getBackground() {
            return this.f3976e;
        }

        @Nullable
        public String getBridgeTag() {
            return this.f3985n;
        }

        public int getContentAction() {
            return this.f3979h;
        }

        @Deprecated
        public int getContentIcon() {
            return this.f3977f;
        }

        @Deprecated
        public int getContentIconGravity() {
            return this.f3978g;
        }

        public boolean getContentIntentAvailableOffline() {
            return (this.f3973b & 1) != 0;
        }

        @Deprecated
        public int getCustomContentHeight() {
            return this.f3981j;
        }

        @Deprecated
        public int getCustomSizePreset() {
            return this.f3980i;
        }

        @Nullable
        public String getDismissalId() {
            return this.f3984m;
        }

        @Nullable
        @Deprecated
        public PendingIntent getDisplayIntent() {
            return this.f3974c;
        }

        @Deprecated
        public int getGravity() {
            return this.f3982k;
        }

        @Deprecated
        public boolean getHintAmbientBigPicture() {
            return (this.f3973b & 32) != 0;
        }

        @Deprecated
        public boolean getHintAvoidBackgroundClipping() {
            return (this.f3973b & 16) != 0;
        }

        public boolean getHintContentIntentLaunchesActivity() {
            return (this.f3973b & 64) != 0;
        }

        @Deprecated
        public boolean getHintHideIcon() {
            return (this.f3973b & 2) != 0;
        }

        @Deprecated
        public int getHintScreenTimeout() {
            return this.f3983l;
        }

        @Deprecated
        public boolean getHintShowBackgroundOnly() {
            return (this.f3973b & 4) != 0;
        }

        @NonNull
        @Deprecated
        public List<Notification> getPages() {
            return this.f3975d;
        }

        public boolean getStartScrollBottom() {
            return (this.f3973b & 8) != 0;
        }

        @NonNull
        @Deprecated
        public WearableExtender setBackground(@Nullable Bitmap bitmap) {
            this.f3976e = bitmap;
            return this;
        }

        @NonNull
        public WearableExtender setBridgeTag(@Nullable String str) {
            this.f3985n = str;
            return this;
        }

        @NonNull
        public WearableExtender setContentAction(int i2) {
            this.f3979h = i2;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setContentIcon(int i2) {
            this.f3977f = i2;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setContentIconGravity(int i2) {
            this.f3978g = i2;
            return this;
        }

        @NonNull
        public WearableExtender setContentIntentAvailableOffline(boolean z3) {
            b(1, z3);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setCustomContentHeight(int i2) {
            this.f3981j = i2;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setCustomSizePreset(int i2) {
            this.f3980i = i2;
            return this;
        }

        @NonNull
        public WearableExtender setDismissalId(@Nullable String str) {
            this.f3984m = str;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setDisplayIntent(@Nullable PendingIntent pendingIntent) {
            this.f3974c = pendingIntent;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setGravity(int i2) {
            this.f3982k = i2;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintAmbientBigPicture(boolean z3) {
            b(32, z3);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintAvoidBackgroundClipping(boolean z3) {
            b(16, z3);
            return this;
        }

        @NonNull
        public WearableExtender setHintContentIntentLaunchesActivity(boolean z3) {
            b(64, z3);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintHideIcon(boolean z3) {
            b(2, z3);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintScreenTimeout(int i2) {
            this.f3983l = i2;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintShowBackgroundOnly(boolean z3) {
            b(4, z3);
            return this;
        }

        @NonNull
        public WearableExtender setStartScrollBottom(boolean z3) {
            b(8, z3);
            return this;
        }

        @NonNull
        /* renamed from: clone */
        public WearableExtender m6clone() {
            WearableExtender wearableExtender = new WearableExtender();
            wearableExtender.f3972a = new ArrayList<>(this.f3972a);
            wearableExtender.f3973b = this.f3973b;
            wearableExtender.f3974c = this.f3974c;
            wearableExtender.f3975d = new ArrayList<>(this.f3975d);
            wearableExtender.f3976e = this.f3976e;
            wearableExtender.f3977f = this.f3977f;
            wearableExtender.f3978g = this.f3978g;
            wearableExtender.f3979h = this.f3979h;
            wearableExtender.f3980i = this.f3980i;
            wearableExtender.f3981j = this.f3981j;
            wearableExtender.f3982k = this.f3982k;
            wearableExtender.f3983l = this.f3983l;
            wearableExtender.f3984m = this.f3984m;
            wearableExtender.f3985n = this.f3985n;
            return wearableExtender;
        }

        public WearableExtender(@NonNull Notification notification) {
            this.f3972a = new ArrayList<>();
            this.f3973b = 1;
            this.f3975d = new ArrayList<>();
            this.f3978g = 8388613;
            this.f3979h = -1;
            this.f3980i = 0;
            this.f3982k = 80;
            Bundle extras = NotificationCompat.getExtras(notification);
            Bundle bundle = extras != null ? extras.getBundle(f3960o) : null;
            if (bundle != null) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(f3961p);
                if (Build.VERSION.SDK_INT >= 16 && parcelableArrayList != null) {
                    int size = parcelableArrayList.size();
                    Action[] actionArr = new Action[size];
                    for (int i2 = 0; i2 < size; i2++) {
                        int i4 = Build.VERSION.SDK_INT;
                        if (i4 >= 20) {
                            actionArr[i2] = NotificationCompat.a((Notification.Action) parcelableArrayList.get(i2));
                        } else if (i4 >= 16) {
                            actionArr[i2] = NotificationCompatJellybean.d((Bundle) parcelableArrayList.get(i2));
                        }
                    }
                    Collections.addAll(this.f3972a, actionArr);
                }
                this.f3973b = bundle.getInt(f3962q, 1);
                this.f3974c = (PendingIntent) bundle.getParcelable(f3963r);
                Notification[] c4 = NotificationCompat.c(bundle, "pages");
                if (c4 != null) {
                    Collections.addAll(this.f3975d, c4);
                }
                this.f3976e = (Bitmap) bundle.getParcelable(f3965t);
                this.f3977f = bundle.getInt(f3966u);
                this.f3978g = bundle.getInt(f3967v, 8388613);
                this.f3979h = bundle.getInt(f3968w, -1);
                this.f3980i = bundle.getInt(f3969x, 0);
                this.f3981j = bundle.getInt(f3970y);
                this.f3982k = bundle.getInt(f3971z, 80);
                this.f3983l = bundle.getInt(A);
                this.f3984m = bundle.getString(B);
                this.f3985n = bundle.getString(C);
            }
        }
    }

    @NonNull
    @RequiresApi(20)
    static Action a(@NonNull Notification.Action action) {
        RemoteInput[] remoteInputArr;
        boolean z3;
        int i2;
        int i4;
        android.app.RemoteInput[] remoteInputs = action.getRemoteInputs();
        if (remoteInputs == null) {
            remoteInputArr = null;
        } else {
            RemoteInput[] remoteInputArr2 = new RemoteInput[remoteInputs.length];
            for (int i5 = 0; i5 < remoteInputs.length; i5++) {
                android.app.RemoteInput remoteInput = remoteInputs[i5];
                remoteInputArr2[i5] = new RemoteInput(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), Build.VERSION.SDK_INT >= 29 ? remoteInput.getEditChoicesBeforeSending() : 0, remoteInput.getExtras(), null);
            }
            remoteInputArr = remoteInputArr2;
        }
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 24) {
            z3 = action.getExtras().getBoolean("android.support.allowGeneratedReplies") || action.getAllowGeneratedReplies();
        } else {
            z3 = action.getExtras().getBoolean("android.support.allowGeneratedReplies");
        }
        boolean z4 = z3;
        boolean z5 = action.getExtras().getBoolean("android.support.action.showsUserInterface", true);
        if (i6 >= 28) {
            i2 = action.getSemanticAction();
        } else {
            i2 = action.getExtras().getInt("android.support.action.semanticAction", 0);
        }
        int i7 = i2;
        boolean isContextual = i6 >= 29 ? action.isContextual() : false;
        if (i6 >= 23) {
            if (action.getIcon() == null && (i4 = action.icon) != 0) {
                return new Action(i4, action.title, action.actionIntent, action.getExtras(), remoteInputArr, (RemoteInput[]) null, z4, i7, z5, isContextual);
            }
            return new Action(action.getIcon() != null ? IconCompat.createFromIconOrNullIfZeroResId(action.getIcon()) : null, action.title, action.actionIntent, action.getExtras(), remoteInputArr, (RemoteInput[]) null, z4, i7, z5, isContextual);
        }
        return new Action(action.icon, action.title, action.actionIntent, action.getExtras(), remoteInputArr, (RemoteInput[]) null, z4, i7, z5, isContextual);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    static boolean b(@NonNull Notification notification) {
        return (notification.flags & 128) != 0;
    }

    @NonNull
    static Notification[] c(@NonNull Bundle bundle, @NonNull String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if (!(parcelableArray instanceof Notification[]) && parcelableArray != null) {
            Notification[] notificationArr = new Notification[parcelableArray.length];
            for (int i2 = 0; i2 < parcelableArray.length; i2++) {
                notificationArr[i2] = (Notification) parcelableArray[i2];
            }
            bundle.putParcelableArray(str, notificationArr);
            return notificationArr;
        }
        return (Notification[]) parcelableArray;
    }

    @Nullable
    public static Action getAction(@NonNull Notification notification, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 20) {
            return a(notification.actions[i2]);
        }
        if (i4 >= 19) {
            Notification.Action action = notification.actions[i2];
            SparseArray sparseParcelableArray = notification.extras.getSparseParcelableArray(NotificationCompatExtras.EXTRA_ACTION_EXTRAS);
            return NotificationCompatJellybean.readAction(action.icon, action.title, action.actionIntent, sparseParcelableArray != null ? (Bundle) sparseParcelableArray.get(i2) : null);
        } else if (i4 >= 16) {
            return NotificationCompatJellybean.getAction(notification, i2);
        } else {
            return null;
        }
    }

    public static int getActionCount(@NonNull Notification notification) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 19) {
            if (i2 >= 16) {
                return NotificationCompatJellybean.getActionCount(notification);
            }
            return 0;
        }
        Notification.Action[] actionArr = notification.actions;
        if (actionArr != null) {
            return actionArr.length;
        }
        return 0;
    }

    public static boolean getAllowSystemGeneratedContextualActions(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return notification.getAllowSystemGeneratedContextualActions();
        }
        return false;
    }

    public static boolean getAutoCancel(@NonNull Notification notification) {
        return (notification.flags & 16) != 0;
    }

    public static int getBadgeIconType(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getBadgeIconType();
        }
        return 0;
    }

    @Nullable
    public static BubbleMetadata getBubbleMetadata(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return BubbleMetadata.fromPlatform(notification.getBubbleMetadata());
        }
        return null;
    }

    @Nullable
    public static String getCategory(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.category;
        }
        return null;
    }

    @Nullable
    public static String getChannelId(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getChannelId();
        }
        return null;
    }

    public static int getColor(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.color;
        }
        return 0;
    }

    @Nullable
    @RequiresApi(19)
    public static CharSequence getContentInfo(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_INFO_TEXT);
    }

    @Nullable
    @RequiresApi(19)
    public static CharSequence getContentText(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_TEXT);
    }

    @Nullable
    @RequiresApi(19)
    public static CharSequence getContentTitle(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_TITLE);
    }

    @Nullable
    public static Bundle getExtras(@NonNull Notification notification) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            return notification.extras;
        }
        if (i2 >= 16) {
            return NotificationCompatJellybean.getExtras(notification);
        }
        return null;
    }

    @Nullable
    public static String getGroup(@NonNull Notification notification) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            return notification.getGroup();
        }
        if (i2 >= 19) {
            return notification.extras.getString(NotificationCompatExtras.EXTRA_GROUP_KEY);
        }
        if (i2 >= 16) {
            return NotificationCompatJellybean.getExtras(notification).getString(NotificationCompatExtras.EXTRA_GROUP_KEY);
        }
        return null;
    }

    public static int getGroupAlertBehavior(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getGroupAlertBehavior();
        }
        return 0;
    }

    @NonNull
    @RequiresApi(21)
    public static List<Action> getInvisibleActions(@NonNull Notification notification) {
        Bundle bundle;
        Bundle bundle2;
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 19 && (bundle = notification.extras.getBundle("android.car.EXTENSIONS")) != null && (bundle2 = bundle.getBundle("invisible_actions")) != null) {
            for (int i2 = 0; i2 < bundle2.size(); i2++) {
                arrayList.add(NotificationCompatJellybean.d(bundle2.getBundle(Integer.toString(i2))));
            }
        }
        return arrayList;
    }

    public static boolean getLocalOnly(@NonNull Notification notification) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            return (notification.flags & 256) != 0;
        } else if (i2 >= 19) {
            return notification.extras.getBoolean(NotificationCompatExtras.EXTRA_LOCAL_ONLY);
        } else {
            if (i2 >= 16) {
                return NotificationCompatJellybean.getExtras(notification).getBoolean(NotificationCompatExtras.EXTRA_LOCAL_ONLY);
            }
            return false;
        }
    }

    @Nullable
    public static LocusIdCompat getLocusId(@NonNull Notification notification) {
        LocusId locusId;
        if (Build.VERSION.SDK_INT < 29 || (locusId = notification.getLocusId()) == null) {
            return null;
        }
        return LocusIdCompat.toLocusIdCompat(locusId);
    }

    public static boolean getOngoing(@NonNull Notification notification) {
        return (notification.flags & 2) != 0;
    }

    public static boolean getOnlyAlertOnce(@NonNull Notification notification) {
        return (notification.flags & 8) != 0;
    }

    @NonNull
    public static List<Person> getPeople(@NonNull Notification notification) {
        String[] stringArray;
        ArrayList arrayList = new ArrayList();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            ArrayList parcelableArrayList = notification.extras.getParcelableArrayList(EXTRA_PEOPLE_LIST);
            if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
                Iterator it2 = parcelableArrayList.iterator();
                while (it2.hasNext()) {
                    arrayList.add(Person.fromAndroidPerson((android.app.Person) it2.next()));
                }
            }
        } else if (i2 >= 19 && (stringArray = notification.extras.getStringArray(EXTRA_PEOPLE)) != null && stringArray.length != 0) {
            for (String str : stringArray) {
                arrayList.add(new Person.Builder().setUri(str).build());
            }
        }
        return arrayList;
    }

    @Nullable
    public static Notification getPublicVersion(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.publicVersion;
        }
        return null;
    }

    @Nullable
    public static CharSequence getSettingsText(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getSettingsText();
        }
        return null;
    }

    @Nullable
    public static String getShortcutId(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getShortcutId();
        }
        return null;
    }

    @RequiresApi(19)
    public static boolean getShowWhen(@NonNull Notification notification) {
        return notification.extras.getBoolean(EXTRA_SHOW_WHEN);
    }

    @Nullable
    public static String getSortKey(@NonNull Notification notification) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            return notification.getSortKey();
        }
        if (i2 >= 19) {
            return notification.extras.getString(NotificationCompatExtras.EXTRA_SORT_KEY);
        }
        if (i2 >= 16) {
            return NotificationCompatJellybean.getExtras(notification).getString(NotificationCompatExtras.EXTRA_SORT_KEY);
        }
        return null;
    }

    @Nullable
    @RequiresApi(19)
    public static CharSequence getSubText(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_SUB_TEXT);
    }

    public static long getTimeoutAfter(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getTimeoutAfter();
        }
        return 0L;
    }

    @RequiresApi(19)
    public static boolean getUsesChronometer(@NonNull Notification notification) {
        return notification.extras.getBoolean(EXTRA_SHOW_CHRONOMETER);
    }

    public static int getVisibility(@NonNull Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.visibility;
        }
        return 0;
    }

    public static boolean isGroupSummary(@NonNull Notification notification) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            return (notification.flags & 512) != 0;
        } else if (i2 >= 19) {
            return notification.extras.getBoolean(NotificationCompatExtras.EXTRA_GROUP_SUMMARY);
        } else {
            if (i2 >= 16) {
                return NotificationCompatJellybean.getExtras(notification).getBoolean(NotificationCompatExtras.EXTRA_GROUP_SUMMARY);
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static final class CarExtender implements Extender {
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})

        /* renamed from: d  reason: collision with root package name */
        static final String f3904d = "android.car.EXTENSIONS";

        /* renamed from: e  reason: collision with root package name */
        private static final String f3905e = "large_icon";

        /* renamed from: f  reason: collision with root package name */
        private static final String f3906f = "car_conversation";

        /* renamed from: g  reason: collision with root package name */
        private static final String f3907g = "app_color";
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})

        /* renamed from: h  reason: collision with root package name */
        static final String f3908h = "invisible_actions";

        /* renamed from: i  reason: collision with root package name */
        private static final String f3909i = "author";

        /* renamed from: j  reason: collision with root package name */
        private static final String f3910j = "text";

        /* renamed from: k  reason: collision with root package name */
        private static final String f3911k = "messages";

        /* renamed from: l  reason: collision with root package name */
        private static final String f3912l = "remote_input";

        /* renamed from: m  reason: collision with root package name */
        private static final String f3913m = "on_reply";

        /* renamed from: n  reason: collision with root package name */
        private static final String f3914n = "on_read";

        /* renamed from: o  reason: collision with root package name */
        private static final String f3915o = "participants";

        /* renamed from: p  reason: collision with root package name */
        private static final String f3916p = "timestamp";

        /* renamed from: a  reason: collision with root package name */
        private Bitmap f3917a;

        /* renamed from: b  reason: collision with root package name */
        private UnreadConversation f3918b;

        /* renamed from: c  reason: collision with root package name */
        private int f3919c;

        @Deprecated
        /* loaded from: classes.dex */
        public static class UnreadConversation {

            /* renamed from: a  reason: collision with root package name */
            private final String[] f3920a;

            /* renamed from: b  reason: collision with root package name */
            private final RemoteInput f3921b;

            /* renamed from: c  reason: collision with root package name */
            private final PendingIntent f3922c;

            /* renamed from: d  reason: collision with root package name */
            private final PendingIntent f3923d;

            /* renamed from: e  reason: collision with root package name */
            private final String[] f3924e;

            /* renamed from: f  reason: collision with root package name */
            private final long f3925f;

            /* loaded from: classes.dex */
            public static class Builder {

                /* renamed from: a  reason: collision with root package name */
                private final List<String> f3926a = new ArrayList();

                /* renamed from: b  reason: collision with root package name */
                private final String f3927b;

                /* renamed from: c  reason: collision with root package name */
                private RemoteInput f3928c;

                /* renamed from: d  reason: collision with root package name */
                private PendingIntent f3929d;

                /* renamed from: e  reason: collision with root package name */
                private PendingIntent f3930e;

                /* renamed from: f  reason: collision with root package name */
                private long f3931f;

                public Builder(@NonNull String str) {
                    this.f3927b = str;
                }

                @NonNull
                public Builder addMessage(@Nullable String str) {
                    if (str != null) {
                        this.f3926a.add(str);
                    }
                    return this;
                }

                @NonNull
                public UnreadConversation build() {
                    List<String> list = this.f3926a;
                    return new UnreadConversation((String[]) list.toArray(new String[list.size()]), this.f3928c, this.f3930e, this.f3929d, new String[]{this.f3927b}, this.f3931f);
                }

                @NonNull
                public Builder setLatestTimestamp(long j4) {
                    this.f3931f = j4;
                    return this;
                }

                @NonNull
                public Builder setReadPendingIntent(@Nullable PendingIntent pendingIntent) {
                    this.f3929d = pendingIntent;
                    return this;
                }

                @NonNull
                public Builder setReplyAction(@Nullable PendingIntent pendingIntent, @Nullable RemoteInput remoteInput) {
                    this.f3928c = remoteInput;
                    this.f3930e = pendingIntent;
                    return this;
                }
            }

            UnreadConversation(@Nullable String[] strArr, @Nullable RemoteInput remoteInput, @Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable String[] strArr2, long j4) {
                this.f3920a = strArr;
                this.f3921b = remoteInput;
                this.f3923d = pendingIntent2;
                this.f3922c = pendingIntent;
                this.f3924e = strArr2;
                this.f3925f = j4;
            }

            public long getLatestTimestamp() {
                return this.f3925f;
            }

            @Nullable
            public String[] getMessages() {
                return this.f3920a;
            }

            @Nullable
            public String getParticipant() {
                String[] strArr = this.f3924e;
                if (strArr.length > 0) {
                    return strArr[0];
                }
                return null;
            }

            @Nullable
            public String[] getParticipants() {
                return this.f3924e;
            }

            @Nullable
            public PendingIntent getReadPendingIntent() {
                return this.f3923d;
            }

            @Nullable
            public RemoteInput getRemoteInput() {
                return this.f3921b;
            }

            @Nullable
            public PendingIntent getReplyPendingIntent() {
                return this.f3922c;
            }
        }

        public CarExtender() {
            this.f3919c = 0;
        }

        @RequiresApi(21)
        private static Bundle a(@NonNull UnreadConversation unreadConversation) {
            Bundle bundle = new Bundle();
            String str = (unreadConversation.getParticipants() == null || unreadConversation.getParticipants().length <= 1) ? null : unreadConversation.getParticipants()[0];
            int length = unreadConversation.getMessages().length;
            Parcelable[] parcelableArr = new Parcelable[length];
            for (int i2 = 0; i2 < length; i2++) {
                Bundle bundle2 = new Bundle();
                bundle2.putString(f3910j, unreadConversation.getMessages()[i2]);
                bundle2.putString(f3909i, str);
                parcelableArr[i2] = bundle2;
            }
            bundle.putParcelableArray(f3911k, parcelableArr);
            RemoteInput remoteInput = unreadConversation.getRemoteInput();
            if (remoteInput != null) {
                bundle.putParcelable(f3912l, new RemoteInput.Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras()).build());
            }
            bundle.putParcelable(f3913m, unreadConversation.getReplyPendingIntent());
            bundle.putParcelable(f3914n, unreadConversation.getReadPendingIntent());
            bundle.putStringArray(f3915o, unreadConversation.getParticipants());
            bundle.putLong(f3916p, unreadConversation.getLatestTimestamp());
            return bundle;
        }

        @RequiresApi(21)
        private static UnreadConversation b(@Nullable Bundle bundle) {
            String[] strArr;
            boolean z3;
            RemoteInput remoteInput = null;
            if (bundle == null) {
                return null;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(f3911k);
            if (parcelableArray != null) {
                int length = parcelableArray.length;
                String[] strArr2 = new String[length];
                for (int i2 = 0; i2 < length; i2++) {
                    if (parcelableArray[i2] instanceof Bundle) {
                        strArr2[i2] = ((Bundle) parcelableArray[i2]).getString(f3910j);
                        if (strArr2[i2] != null) {
                        }
                    }
                    z3 = false;
                    break;
                }
                z3 = true;
                if (!z3) {
                    return null;
                }
                strArr = strArr2;
            } else {
                strArr = null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable(f3914n);
            PendingIntent pendingIntent2 = (PendingIntent) bundle.getParcelable(f3913m);
            android.app.RemoteInput remoteInput2 = (android.app.RemoteInput) bundle.getParcelable(f3912l);
            String[] stringArray = bundle.getStringArray(f3915o);
            if (stringArray == null || stringArray.length != 1) {
                return null;
            }
            if (remoteInput2 != null) {
                remoteInput = new RemoteInput(remoteInput2.getResultKey(), remoteInput2.getLabel(), remoteInput2.getChoices(), remoteInput2.getAllowFreeFormInput(), Build.VERSION.SDK_INT >= 29 ? remoteInput2.getEditChoicesBeforeSending() : 0, remoteInput2.getExtras(), null);
            }
            return new UnreadConversation(strArr, remoteInput, pendingIntent2, pendingIntent, stringArray, bundle.getLong(f3916p));
        }

        @Override // androidx.core.app.NotificationCompat.Extender
        @NonNull
        public Builder extend(@NonNull Builder builder) {
            if (Build.VERSION.SDK_INT < 21) {
                return builder;
            }
            Bundle bundle = new Bundle();
            Bitmap bitmap = this.f3917a;
            if (bitmap != null) {
                bundle.putParcelable(f3905e, bitmap);
            }
            int i2 = this.f3919c;
            if (i2 != 0) {
                bundle.putInt(f3907g, i2);
            }
            UnreadConversation unreadConversation = this.f3918b;
            if (unreadConversation != null) {
                bundle.putBundle(f3906f, a(unreadConversation));
            }
            builder.getExtras().putBundle(f3904d, bundle);
            return builder;
        }

        @ColorInt
        public int getColor() {
            return this.f3919c;
        }

        @Nullable
        public Bitmap getLargeIcon() {
            return this.f3917a;
        }

        @Nullable
        @Deprecated
        public UnreadConversation getUnreadConversation() {
            return this.f3918b;
        }

        @NonNull
        public CarExtender setColor(@ColorInt int i2) {
            this.f3919c = i2;
            return this;
        }

        @NonNull
        public CarExtender setLargeIcon(@Nullable Bitmap bitmap) {
            this.f3917a = bitmap;
            return this;
        }

        @NonNull
        @Deprecated
        public CarExtender setUnreadConversation(@Nullable UnreadConversation unreadConversation) {
            this.f3918b = unreadConversation;
            return this;
        }

        public CarExtender(@NonNull Notification notification) {
            this.f3919c = 0;
            if (Build.VERSION.SDK_INT < 21) {
                return;
            }
            Bundle bundle = NotificationCompat.getExtras(notification) == null ? null : NotificationCompat.getExtras(notification).getBundle(f3904d);
            if (bundle != null) {
                this.f3917a = (Bitmap) bundle.getParcelable(f3905e);
                this.f3919c = bundle.getInt(f3907g, 0);
                this.f3918b = b(bundle.getBundle(f3906f));
            }
        }
    }

    /* loaded from: classes.dex */
    public static class InboxStyle extends Style {

        /* renamed from: f  reason: collision with root package name */
        private static final String f3934f = "androidx.core.app.NotificationCompat$InboxStyle";

        /* renamed from: e  reason: collision with root package name */
        private ArrayList<CharSequence> f3935e = new ArrayList<>();

        public InboxStyle() {
        }

        @NonNull
        public InboxStyle addLine(@Nullable CharSequence charSequence) {
            if (charSequence != null) {
                this.f3935e.add(Builder.b(charSequence));
            }
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.f3957b);
                if (this.f3959d) {
                    bigContentTitle.setSummaryText(this.f3958c);
                }
                Iterator<CharSequence> it2 = this.f3935e.iterator();
                while (it2.hasNext()) {
                    bigContentTitle.addLine(it2.next());
                }
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected void b(@NonNull Bundle bundle) {
            super.b(bundle);
            bundle.remove(NotificationCompat.EXTRA_TEXT_LINES);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected String l() {
            return f3934f;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected void n(@NonNull Bundle bundle) {
            super.n(bundle);
            this.f3935e.clear();
            if (bundle.containsKey(NotificationCompat.EXTRA_TEXT_LINES)) {
                Collections.addAll(this.f3935e, bundle.getCharSequenceArray(NotificationCompat.EXTRA_TEXT_LINES));
            }
        }

        @NonNull
        public InboxStyle setBigContentTitle(@Nullable CharSequence charSequence) {
            this.f3957b = Builder.b(charSequence);
            return this;
        }

        @NonNull
        public InboxStyle setSummaryText(@Nullable CharSequence charSequence) {
            this.f3958c = Builder.b(charSequence);
            this.f3959d = true;
            return this;
        }

        public InboxStyle(@Nullable Builder builder) {
            setBuilder(builder);
        }
    }

    /* loaded from: classes.dex */
    public static class MessagingStyle extends Style {
        public static final int MAXIMUM_RETAINED_MESSAGES = 25;

        /* renamed from: j  reason: collision with root package name */
        private static final String f3936j = "androidx.core.app.NotificationCompat$MessagingStyle";

        /* renamed from: e  reason: collision with root package name */
        private final List<Message> f3937e = new ArrayList();

        /* renamed from: f  reason: collision with root package name */
        private final List<Message> f3938f = new ArrayList();

        /* renamed from: g  reason: collision with root package name */
        private Person f3939g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private CharSequence f3940h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private Boolean f3941i;

        MessagingStyle() {
        }

        @Nullable
        public static MessagingStyle extractMessagingStyleFromNotification(@NonNull Notification notification) {
            Style extractStyleFromNotification = Style.extractStyleFromNotification(notification);
            if (extractStyleFromNotification instanceof MessagingStyle) {
                return (MessagingStyle) extractStyleFromNotification;
            }
            return null;
        }

        @Nullable
        private Message o() {
            List<Message> list;
            for (int size = this.f3937e.size() - 1; size >= 0; size--) {
                Message message = this.f3937e.get(size);
                if (message.getPerson() != null && !TextUtils.isEmpty(message.getPerson().getName())) {
                    return message;
                }
            }
            if (this.f3937e.isEmpty()) {
                return null;
            }
            return this.f3937e.get(list.size() - 1);
        }

        private boolean p() {
            for (int size = this.f3937e.size() - 1; size >= 0; size--) {
                Message message = this.f3937e.get(size);
                if (message.getPerson() != null && message.getPerson().getName() == null) {
                    return true;
                }
            }
            return false;
        }

        @NonNull
        private TextAppearanceSpan q(int i2) {
            return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i2), null);
        }

        private CharSequence r(@NonNull Message message) {
            BidiFormatter bidiFormatter = BidiFormatter.getInstance();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean z3 = Build.VERSION.SDK_INT >= 21;
            int i2 = z3 ? -16777216 : -1;
            String name = message.getPerson() == null ? "" : message.getPerson().getName();
            if (TextUtils.isEmpty(name)) {
                name = this.f3939g.getName();
                if (z3 && this.f3956a.getColor() != 0) {
                    i2 = this.f3956a.getColor();
                }
            }
            CharSequence unicodeWrap = bidiFormatter.unicodeWrap(name);
            spannableStringBuilder.append(unicodeWrap);
            spannableStringBuilder.setSpan(q(i2), spannableStringBuilder.length() - unicodeWrap.length(), spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "  ").append(bidiFormatter.unicodeWrap(message.getText() != null ? message.getText() : ""));
            return spannableStringBuilder;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void addCompatExtras(@NonNull Bundle bundle) {
            super.addCompatExtras(bundle);
            bundle.putCharSequence(NotificationCompat.EXTRA_SELF_DISPLAY_NAME, this.f3939g.getName());
            bundle.putBundle(NotificationCompat.EXTRA_MESSAGING_STYLE_USER, this.f3939g.toBundle());
            bundle.putCharSequence(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE, this.f3940h);
            if (this.f3940h != null && this.f3941i.booleanValue()) {
                bundle.putCharSequence(NotificationCompat.EXTRA_CONVERSATION_TITLE, this.f3940h);
            }
            if (!this.f3937e.isEmpty()) {
                bundle.putParcelableArray(NotificationCompat.EXTRA_MESSAGES, Message.a(this.f3937e));
            }
            if (!this.f3938f.isEmpty()) {
                bundle.putParcelableArray(NotificationCompat.EXTRA_HISTORIC_MESSAGES, Message.a(this.f3938f));
            }
            Boolean bool = this.f3941i;
            if (bool != null) {
                bundle.putBoolean(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION, bool.booleanValue());
            }
        }

        @NonNull
        public MessagingStyle addHistoricMessage(@Nullable Message message) {
            if (message != null) {
                this.f3938f.add(message);
                if (this.f3938f.size() > 25) {
                    this.f3938f.remove(0);
                }
            }
            return this;
        }

        @NonNull
        @Deprecated
        public MessagingStyle addMessage(@Nullable CharSequence charSequence, long j4, @Nullable CharSequence charSequence2) {
            this.f3937e.add(new Message(charSequence, j4, new Person.Builder().setName(charSequence2).build()));
            if (this.f3937e.size() > 25) {
                this.f3937e.remove(0);
            }
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            CharSequence text;
            Notification.MessagingStyle messagingStyle;
            setGroupConversation(isGroupConversation());
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                if (i2 >= 28) {
                    messagingStyle = new Notification.MessagingStyle(this.f3939g.toAndroidPerson());
                } else {
                    messagingStyle = new Notification.MessagingStyle(this.f3939g.getName());
                }
                for (Message message : this.f3937e) {
                    messagingStyle.addMessage(message.d());
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    for (Message message2 : this.f3938f) {
                        messagingStyle.addHistoricMessage(message2.d());
                    }
                }
                if (this.f3941i.booleanValue() || Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setConversationTitle(this.f3940h);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setGroupConversation(this.f3941i.booleanValue());
                }
                messagingStyle.setBuilder(notificationBuilderWithBuilderAccessor.getBuilder());
                return;
            }
            Message o3 = o();
            if (this.f3940h != null && this.f3941i.booleanValue()) {
                notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(this.f3940h);
            } else if (o3 != null) {
                notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle("");
                if (o3.getPerson() != null) {
                    notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(o3.getPerson().getName());
                }
            }
            if (o3 != null) {
                Notification.Builder builder = notificationBuilderWithBuilderAccessor.getBuilder();
                if (this.f3940h != null) {
                    text = r(o3);
                } else {
                    text = o3.getText();
                }
                builder.setContentText(text);
            }
            if (i2 >= 16) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                boolean z3 = this.f3940h != null || p();
                for (int size = this.f3937e.size() - 1; size >= 0; size--) {
                    Message message3 = this.f3937e.get(size);
                    CharSequence r3 = z3 ? r(message3) : message3.getText();
                    if (size != this.f3937e.size() - 1) {
                        spannableStringBuilder.insert(0, (CharSequence) "\n");
                    }
                    spannableStringBuilder.insert(0, r3);
                }
                new Notification.BigTextStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(null).bigText(spannableStringBuilder);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected void b(@NonNull Bundle bundle) {
            super.b(bundle);
            bundle.remove(NotificationCompat.EXTRA_MESSAGING_STYLE_USER);
            bundle.remove(NotificationCompat.EXTRA_SELF_DISPLAY_NAME);
            bundle.remove(NotificationCompat.EXTRA_CONVERSATION_TITLE);
            bundle.remove(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE);
            bundle.remove(NotificationCompat.EXTRA_MESSAGES);
            bundle.remove(NotificationCompat.EXTRA_HISTORIC_MESSAGES);
            bundle.remove(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION);
        }

        @Nullable
        public CharSequence getConversationTitle() {
            return this.f3940h;
        }

        @NonNull
        public List<Message> getHistoricMessages() {
            return this.f3938f;
        }

        @NonNull
        public List<Message> getMessages() {
            return this.f3937e;
        }

        @NonNull
        public Person getUser() {
            return this.f3939g;
        }

        @Nullable
        @Deprecated
        public CharSequence getUserDisplayName() {
            return this.f3939g.getName();
        }

        public boolean isGroupConversation() {
            Builder builder = this.f3956a;
            if (builder != null && builder.mContext.getApplicationInfo().targetSdkVersion < 28 && this.f3941i == null) {
                return this.f3940h != null;
            }
            Boolean bool = this.f3941i;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected String l() {
            return f3936j;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected void n(@NonNull Bundle bundle) {
            super.n(bundle);
            this.f3937e.clear();
            if (bundle.containsKey(NotificationCompat.EXTRA_MESSAGING_STYLE_USER)) {
                this.f3939g = Person.fromBundle(bundle.getBundle(NotificationCompat.EXTRA_MESSAGING_STYLE_USER));
            } else {
                this.f3939g = new Person.Builder().setName(bundle.getString(NotificationCompat.EXTRA_SELF_DISPLAY_NAME)).build();
            }
            CharSequence charSequence = bundle.getCharSequence(NotificationCompat.EXTRA_CONVERSATION_TITLE);
            this.f3940h = charSequence;
            if (charSequence == null) {
                this.f3940h = bundle.getCharSequence(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE);
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(NotificationCompat.EXTRA_MESSAGES);
            if (parcelableArray != null) {
                this.f3937e.addAll(Message.c(parcelableArray));
            }
            Parcelable[] parcelableArray2 = bundle.getParcelableArray(NotificationCompat.EXTRA_HISTORIC_MESSAGES);
            if (parcelableArray2 != null) {
                this.f3938f.addAll(Message.c(parcelableArray2));
            }
            if (bundle.containsKey(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION)) {
                this.f3941i = Boolean.valueOf(bundle.getBoolean(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION));
            }
        }

        @NonNull
        public MessagingStyle setConversationTitle(@Nullable CharSequence charSequence) {
            this.f3940h = charSequence;
            return this;
        }

        @NonNull
        public MessagingStyle setGroupConversation(boolean z3) {
            this.f3941i = Boolean.valueOf(z3);
            return this;
        }

        @Deprecated
        public MessagingStyle(@NonNull CharSequence charSequence) {
            this.f3939g = new Person.Builder().setName(charSequence).build();
        }

        /* loaded from: classes.dex */
        public static final class Message {

            /* renamed from: g  reason: collision with root package name */
            static final String f3942g = "text";

            /* renamed from: h  reason: collision with root package name */
            static final String f3943h = "time";

            /* renamed from: i  reason: collision with root package name */
            static final String f3944i = "sender";

            /* renamed from: j  reason: collision with root package name */
            static final String f3945j = "type";

            /* renamed from: k  reason: collision with root package name */
            static final String f3946k = "uri";

            /* renamed from: l  reason: collision with root package name */
            static final String f3947l = "extras";

            /* renamed from: m  reason: collision with root package name */
            static final String f3948m = "person";

            /* renamed from: n  reason: collision with root package name */
            static final String f3949n = "sender_person";

            /* renamed from: a  reason: collision with root package name */
            private final CharSequence f3950a;

            /* renamed from: b  reason: collision with root package name */
            private final long f3951b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private final Person f3952c;

            /* renamed from: d  reason: collision with root package name */
            private Bundle f3953d;
            @Nullable

            /* renamed from: e  reason: collision with root package name */
            private String f3954e;
            @Nullable

            /* renamed from: f  reason: collision with root package name */
            private Uri f3955f;

            public Message(@Nullable CharSequence charSequence, long j4, @Nullable Person person) {
                this.f3953d = new Bundle();
                this.f3950a = charSequence;
                this.f3951b = j4;
                this.f3952c = person;
            }

            @NonNull
            static Bundle[] a(@NonNull List<Message> list) {
                Bundle[] bundleArr = new Bundle[list.size()];
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    bundleArr[i2] = list.get(i2).e();
                }
                return bundleArr;
            }

            @Nullable
            static Message b(@NonNull Bundle bundle) {
                Person build;
                try {
                    if (bundle.containsKey(f3942g) && bundle.containsKey("time")) {
                        if (bundle.containsKey(f3948m)) {
                            build = Person.fromBundle(bundle.getBundle(f3948m));
                        } else if (bundle.containsKey(f3949n) && Build.VERSION.SDK_INT >= 28) {
                            build = Person.fromAndroidPerson((android.app.Person) bundle.getParcelable(f3949n));
                        } else {
                            build = bundle.containsKey(f3944i) ? new Person.Builder().setName(bundle.getCharSequence(f3944i)).build() : null;
                        }
                        Message message = new Message(bundle.getCharSequence(f3942g), bundle.getLong("time"), build);
                        if (bundle.containsKey("type") && bundle.containsKey("uri")) {
                            message.setData(bundle.getString("type"), (Uri) bundle.getParcelable("uri"));
                        }
                        if (bundle.containsKey("extras")) {
                            message.getExtras().putAll(bundle.getBundle("extras"));
                        }
                        return message;
                    }
                } catch (ClassCastException unused) {
                }
                return null;
            }

            @NonNull
            static List<Message> c(@NonNull Parcelable[] parcelableArr) {
                Message b4;
                ArrayList arrayList = new ArrayList(parcelableArr.length);
                for (int i2 = 0; i2 < parcelableArr.length; i2++) {
                    if ((parcelableArr[i2] instanceof Bundle) && (b4 = b((Bundle) parcelableArr[i2])) != null) {
                        arrayList.add(b4);
                    }
                }
                return arrayList;
            }

            @NonNull
            private Bundle e() {
                Bundle bundle = new Bundle();
                CharSequence charSequence = this.f3950a;
                if (charSequence != null) {
                    bundle.putCharSequence(f3942g, charSequence);
                }
                bundle.putLong("time", this.f3951b);
                Person person = this.f3952c;
                if (person != null) {
                    bundle.putCharSequence(f3944i, person.getName());
                    if (Build.VERSION.SDK_INT >= 28) {
                        bundle.putParcelable(f3949n, this.f3952c.toAndroidPerson());
                    } else {
                        bundle.putBundle(f3948m, this.f3952c.toBundle());
                    }
                }
                String str = this.f3954e;
                if (str != null) {
                    bundle.putString("type", str);
                }
                Uri uri = this.f3955f;
                if (uri != null) {
                    bundle.putParcelable("uri", uri);
                }
                Bundle bundle2 = this.f3953d;
                if (bundle2 != null) {
                    bundle.putBundle("extras", bundle2);
                }
                return bundle;
            }

            @NonNull
            @RequiresApi(24)
            @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
            Notification.MessagingStyle.Message d() {
                Notification.MessagingStyle.Message message;
                Person person = getPerson();
                if (Build.VERSION.SDK_INT >= 28) {
                    message = new Notification.MessagingStyle.Message(getText(), getTimestamp(), person != null ? person.toAndroidPerson() : null);
                } else {
                    message = new Notification.MessagingStyle.Message(getText(), getTimestamp(), person != null ? person.getName() : null);
                }
                if (getDataMimeType() != null) {
                    message.setData(getDataMimeType(), getDataUri());
                }
                return message;
            }

            @Nullable
            public String getDataMimeType() {
                return this.f3954e;
            }

            @Nullable
            public Uri getDataUri() {
                return this.f3955f;
            }

            @NonNull
            public Bundle getExtras() {
                return this.f3953d;
            }

            @Nullable
            public Person getPerson() {
                return this.f3952c;
            }

            @Nullable
            @Deprecated
            public CharSequence getSender() {
                Person person = this.f3952c;
                if (person == null) {
                    return null;
                }
                return person.getName();
            }

            @Nullable
            public CharSequence getText() {
                return this.f3950a;
            }

            public long getTimestamp() {
                return this.f3951b;
            }

            @NonNull
            public Message setData(@Nullable String str, @Nullable Uri uri) {
                this.f3954e = str;
                this.f3955f = uri;
                return this;
            }

            @Deprecated
            public Message(@Nullable CharSequence charSequence, long j4, @Nullable CharSequence charSequence2) {
                this(charSequence, j4, new Person.Builder().setName(charSequence2).build());
            }
        }

        @NonNull
        public MessagingStyle addMessage(@Nullable CharSequence charSequence, long j4, @Nullable Person person) {
            addMessage(new Message(charSequence, j4, person));
            return this;
        }

        @NonNull
        public MessagingStyle addMessage(@Nullable Message message) {
            if (message != null) {
                this.f3937e.add(message);
                if (this.f3937e.size() > 25) {
                    this.f3937e.remove(0);
                }
            }
            return this;
        }

        public MessagingStyle(@NonNull Person person) {
            if (!TextUtils.isEmpty(person.getName())) {
                this.f3939g = person;
                return;
            }
            throw new IllegalArgumentException("User's name must not be empty.");
        }
    }
}
