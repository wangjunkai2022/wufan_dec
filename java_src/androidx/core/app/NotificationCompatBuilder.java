package androidx.core.app;

import android.app.Notification;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArraySet;
import androidx.core.app.NotificationCompat;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.os.BuildCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class NotificationCompatBuilder implements NotificationBuilderWithBuilderAccessor {

    /* renamed from: a  reason: collision with root package name */
    private final Context f3986a;

    /* renamed from: b  reason: collision with root package name */
    private final Notification.Builder f3987b;

    /* renamed from: c  reason: collision with root package name */
    private final NotificationCompat.Builder f3988c;

    /* renamed from: d  reason: collision with root package name */
    private RemoteViews f3989d;

    /* renamed from: e  reason: collision with root package name */
    private RemoteViews f3990e;

    /* renamed from: f  reason: collision with root package name */
    private final List<Bundle> f3991f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private final Bundle f3992g = new Bundle();

    /* renamed from: h  reason: collision with root package name */
    private int f3993h;

    /* renamed from: i  reason: collision with root package name */
    private RemoteViews f3994i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotificationCompatBuilder(NotificationCompat.Builder builder) {
        int i2;
        Icon icon;
        List<String> list;
        List<String> c4;
        this.f3988c = builder;
        this.f3986a = builder.mContext;
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 26) {
            this.f3987b = new Notification.Builder(builder.mContext, builder.I);
        } else {
            this.f3987b = new Notification.Builder(builder.mContext);
        }
        Notification notification = builder.R;
        this.f3987b.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, builder.f3883f).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(builder.f3879b).setContentText(builder.f3880c).setContentInfo(builder.f3885h).setContentIntent(builder.f3881d).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(builder.f3882e, (notification.flags & 128) != 0).setLargeIcon(builder.f3884g).setNumber(builder.f3886i).setProgress(builder.f3895r, builder.f3896s, builder.f3897t);
        if (i4 < 21) {
            this.f3987b.setSound(notification.sound, notification.audioStreamType);
        }
        if (i4 >= 16) {
            this.f3987b.setSubText(builder.f3892o).setUsesChronometer(builder.f3889l).setPriority(builder.f3887j);
            Iterator<NotificationCompat.Action> it2 = builder.mActions.iterator();
            while (it2.hasNext()) {
                a(it2.next());
            }
            Bundle bundle = builder.B;
            if (bundle != null) {
                this.f3992g.putAll(bundle);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (builder.f3901x) {
                    this.f3992g.putBoolean(NotificationCompatExtras.EXTRA_LOCAL_ONLY, true);
                }
                String str = builder.f3898u;
                if (str != null) {
                    this.f3992g.putString(NotificationCompatExtras.EXTRA_GROUP_KEY, str);
                    if (builder.f3899v) {
                        this.f3992g.putBoolean(NotificationCompatExtras.EXTRA_GROUP_SUMMARY, true);
                    } else {
                        this.f3992g.putBoolean(NotificationManagerCompat.EXTRA_USE_SIDE_CHANNEL, true);
                    }
                }
                String str2 = builder.f3900w;
                if (str2 != null) {
                    this.f3992g.putString(NotificationCompatExtras.EXTRA_SORT_KEY, str2);
                }
            }
            this.f3989d = builder.F;
            this.f3990e = builder.G;
        }
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 17) {
            this.f3987b.setShowWhen(builder.f3888k);
        }
        if (i5 >= 19 && i5 < 21 && (c4 = c(d(builder.mPersonList), builder.mPeople)) != null && !c4.isEmpty()) {
            this.f3992g.putStringArray(NotificationCompat.EXTRA_PEOPLE, (String[]) c4.toArray(new String[c4.size()]));
        }
        if (i5 >= 20) {
            this.f3987b.setLocalOnly(builder.f3901x).setGroup(builder.f3898u).setGroupSummary(builder.f3899v).setSortKey(builder.f3900w);
            this.f3993h = builder.N;
        }
        if (i5 >= 21) {
            this.f3987b.setCategory(builder.A).setColor(builder.C).setVisibility(builder.D).setPublicVersion(builder.E).setSound(notification.sound, notification.audioAttributes);
            if (i5 < 28) {
                list = c(d(builder.mPersonList), builder.mPeople);
            } else {
                list = builder.mPeople;
            }
            if (list != null && !list.isEmpty()) {
                for (String str3 : list) {
                    this.f3987b.addPerson(str3);
                }
            }
            this.f3994i = builder.H;
            if (builder.f3878a.size() > 0) {
                Bundle bundle2 = builder.getExtras().getBundle("android.car.EXTENSIONS");
                bundle2 = bundle2 == null ? new Bundle() : bundle2;
                Bundle bundle3 = new Bundle(bundle2);
                Bundle bundle4 = new Bundle();
                for (int i6 = 0; i6 < builder.f3878a.size(); i6++) {
                    bundle4.putBundle(Integer.toString(i6), NotificationCompatJellybean.g(builder.f3878a.get(i6)));
                }
                bundle2.putBundle("invisible_actions", bundle4);
                bundle3.putBundle("invisible_actions", bundle4);
                builder.getExtras().putBundle("android.car.EXTENSIONS", bundle2);
                this.f3992g.putBundle("android.car.EXTENSIONS", bundle3);
            }
        }
        int i7 = Build.VERSION.SDK_INT;
        if (i7 >= 23 && (icon = builder.T) != null) {
            this.f3987b.setSmallIcon(icon);
        }
        if (i7 >= 24) {
            this.f3987b.setExtras(builder.B).setRemoteInputHistory(builder.f3894q);
            RemoteViews remoteViews = builder.F;
            if (remoteViews != null) {
                this.f3987b.setCustomContentView(remoteViews);
            }
            RemoteViews remoteViews2 = builder.G;
            if (remoteViews2 != null) {
                this.f3987b.setCustomBigContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = builder.H;
            if (remoteViews3 != null) {
                this.f3987b.setCustomHeadsUpContentView(remoteViews3);
            }
        }
        if (i7 >= 26) {
            this.f3987b.setBadgeIconType(builder.J).setSettingsText(builder.f3893p).setShortcutId(builder.K).setTimeoutAfter(builder.M).setGroupAlertBehavior(builder.N);
            if (builder.f3903z) {
                this.f3987b.setColorized(builder.f3902y);
            }
            if (!TextUtils.isEmpty(builder.I)) {
                this.f3987b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i7 >= 28) {
            Iterator<Person> it3 = builder.mPersonList.iterator();
            while (it3.hasNext()) {
                this.f3987b.addPerson(it3.next().toAndroidPerson());
            }
        }
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 29) {
            this.f3987b.setAllowSystemGeneratedContextualActions(builder.P);
            this.f3987b.setBubbleMetadata(NotificationCompat.BubbleMetadata.toPlatform(builder.Q));
            LocusIdCompat locusIdCompat = builder.L;
            if (locusIdCompat != null) {
                this.f3987b.setLocusId(locusIdCompat.toLocusId());
            }
        }
        if (BuildCompat.isAtLeastS() && (i2 = builder.O) != 0) {
            this.f3987b.setForegroundServiceBehavior(i2);
        }
        if (builder.S) {
            if (this.f3988c.f3899v) {
                this.f3993h = 2;
            } else {
                this.f3993h = 1;
            }
            this.f3987b.setVibrate(null);
            this.f3987b.setSound(null);
            int i9 = notification.defaults & (-2);
            notification.defaults = i9;
            int i10 = i9 & (-3);
            notification.defaults = i10;
            this.f3987b.setDefaults(i10);
            if (i8 >= 26) {
                if (TextUtils.isEmpty(this.f3988c.f3898u)) {
                    this.f3987b.setGroup(NotificationCompat.GROUP_KEY_SILENT);
                }
                this.f3987b.setGroupAlertBehavior(this.f3993h);
            }
        }
    }

    private void a(NotificationCompat.Action action) {
        Notification.Action.Builder builder;
        Bundle bundle;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 20) {
            if (i2 >= 16) {
                this.f3991f.add(NotificationCompatJellybean.writeActionAndGetExtras(this.f3987b, action));
                return;
            }
            return;
        }
        IconCompat iconCompat = action.getIconCompat();
        if (i2 >= 23) {
            builder = new Notification.Action.Builder(iconCompat != null ? iconCompat.toIcon() : null, action.getTitle(), action.getActionIntent());
        } else {
            builder = new Notification.Action.Builder(iconCompat != null ? iconCompat.getResId() : 0, action.getTitle(), action.getActionIntent());
        }
        if (action.getRemoteInputs() != null) {
            for (android.app.RemoteInput remoteInput : RemoteInput.b(action.getRemoteInputs())) {
                builder.addRemoteInput(remoteInput);
            }
        }
        if (action.getExtras() != null) {
            bundle = new Bundle(action.getExtras());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", action.getAllowGeneratedReplies());
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 24) {
            builder.setAllowGeneratedReplies(action.getAllowGeneratedReplies());
        }
        bundle.putInt("android.support.action.semanticAction", action.getSemanticAction());
        if (i4 >= 28) {
            builder.setSemanticAction(action.getSemanticAction());
        }
        if (i4 >= 29) {
            builder.setContextual(action.isContextual());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", action.getShowsUserInterface());
        builder.addExtras(bundle);
        this.f3987b.addAction(builder.build());
    }

    @Nullable
    private static List<String> c(@Nullable List<String> list, @Nullable List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        ArraySet arraySet = new ArraySet(list.size() + list2.size());
        arraySet.addAll(list);
        arraySet.addAll(list2);
        return new ArrayList(arraySet);
    }

    @Nullable
    private static List<String> d(@Nullable List<Person> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (Person person : list) {
            arrayList.add(person.resolveToLegacyUri());
        }
        return arrayList;
    }

    private void e(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        int i2 = notification.defaults & (-2);
        notification.defaults = i2;
        notification.defaults = i2 & (-3);
    }

    protected Notification b() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            return this.f3987b.build();
        }
        if (i2 >= 24) {
            Notification build = this.f3987b.build();
            if (this.f3993h != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && this.f3993h == 2) {
                    e(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.f3993h == 1) {
                    e(build);
                }
            }
            return build;
        } else if (i2 >= 21) {
            this.f3987b.setExtras(this.f3992g);
            Notification build2 = this.f3987b.build();
            RemoteViews remoteViews = this.f3989d;
            if (remoteViews != null) {
                build2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f3990e;
            if (remoteViews2 != null) {
                build2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.f3994i;
            if (remoteViews3 != null) {
                build2.headsUpContentView = remoteViews3;
            }
            if (this.f3993h != 0) {
                if (build2.getGroup() != null && (build2.flags & 512) != 0 && this.f3993h == 2) {
                    e(build2);
                }
                if (build2.getGroup() != null && (build2.flags & 512) == 0 && this.f3993h == 1) {
                    e(build2);
                }
            }
            return build2;
        } else if (i2 >= 20) {
            this.f3987b.setExtras(this.f3992g);
            Notification build3 = this.f3987b.build();
            RemoteViews remoteViews4 = this.f3989d;
            if (remoteViews4 != null) {
                build3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f3990e;
            if (remoteViews5 != null) {
                build3.bigContentView = remoteViews5;
            }
            if (this.f3993h != 0) {
                if (build3.getGroup() != null && (build3.flags & 512) != 0 && this.f3993h == 2) {
                    e(build3);
                }
                if (build3.getGroup() != null && (build3.flags & 512) == 0 && this.f3993h == 1) {
                    e(build3);
                }
            }
            return build3;
        } else if (i2 >= 19) {
            SparseArray<Bundle> buildActionExtrasMap = NotificationCompatJellybean.buildActionExtrasMap(this.f3991f);
            if (buildActionExtrasMap != null) {
                this.f3992g.putSparseParcelableArray(NotificationCompatExtras.EXTRA_ACTION_EXTRAS, buildActionExtrasMap);
            }
            this.f3987b.setExtras(this.f3992g);
            Notification build4 = this.f3987b.build();
            RemoteViews remoteViews6 = this.f3989d;
            if (remoteViews6 != null) {
                build4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f3990e;
            if (remoteViews7 != null) {
                build4.bigContentView = remoteViews7;
            }
            return build4;
        } else if (i2 >= 16) {
            Notification build5 = this.f3987b.build();
            Bundle extras = NotificationCompat.getExtras(build5);
            Bundle bundle = new Bundle(this.f3992g);
            for (String str : this.f3992g.keySet()) {
                if (extras.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            extras.putAll(bundle);
            SparseArray<Bundle> buildActionExtrasMap2 = NotificationCompatJellybean.buildActionExtrasMap(this.f3991f);
            if (buildActionExtrasMap2 != null) {
                NotificationCompat.getExtras(build5).putSparseParcelableArray(NotificationCompatExtras.EXTRA_ACTION_EXTRAS, buildActionExtrasMap2);
            }
            RemoteViews remoteViews8 = this.f3989d;
            if (remoteViews8 != null) {
                build5.contentView = remoteViews8;
            }
            RemoteViews remoteViews9 = this.f3990e;
            if (remoteViews9 != null) {
                build5.bigContentView = remoteViews9;
            }
            return build5;
        } else {
            return this.f3987b.getNotification();
        }
    }

    public Notification build() {
        Bundle extras;
        RemoteViews makeHeadsUpContentView;
        RemoteViews makeBigContentView;
        NotificationCompat.Style style = this.f3988c.f3891n;
        if (style != null) {
            style.apply(this);
        }
        RemoteViews makeContentView = style != null ? style.makeContentView(this) : null;
        Notification b4 = b();
        if (makeContentView != null) {
            b4.contentView = makeContentView;
        } else {
            RemoteViews remoteViews = this.f3988c.F;
            if (remoteViews != null) {
                b4.contentView = remoteViews;
            }
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 16 && style != null && (makeBigContentView = style.makeBigContentView(this)) != null) {
            b4.bigContentView = makeBigContentView;
        }
        if (i2 >= 21 && style != null && (makeHeadsUpContentView = this.f3988c.f3891n.makeHeadsUpContentView(this)) != null) {
            b4.headsUpContentView = makeHeadsUpContentView;
        }
        if (i2 >= 16 && style != null && (extras = NotificationCompat.getExtras(b4)) != null) {
            style.addCompatExtras(extras);
        }
        return b4;
    }

    @Override // androidx.core.app.NotificationBuilderWithBuilderAccessor
    public Notification.Builder getBuilder() {
        return this.f3987b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context getContext() {
        return this.f3986a;
    }
}
