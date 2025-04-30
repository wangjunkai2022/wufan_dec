.class public Lcom/join/mgps/activity/DeveloperActivity;
.super Lcom/BaseActivity;
.source "DeveloperActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c002d
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "DeveloperActivity"


# instance fields
.field a:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Z

.field d:Lcom/join/mgps/ad/m;

.field e:Lcom/join/mgps/ad/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const-string v0, "/sdcard/testom1.apk"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/DeveloperActivity;->c:Z

    return-void
.end method

.method private K0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call method getPackageName, packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :cond_1
    return-object v0
.end method


# virtual methods
.method E0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090190
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method F0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0901af
        }
    .end annotation

    return-void
.end method

.method G0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const v0, 0x7f09112c

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u7a7a\u964d1:05\u572810:05\u5904\u6709\u5f69\u86cb,\u55ef\u545001:02\uff0c\u4e0d\u95191:01:02\uff0c\u975e\u5e38\u68d201:01:02\uff0c\u6700\u540e\u4e00\u4e2a10:02:03,\u8fd9\u4e9b\u5730\u65b990:72:61,90:12:61,09:72:59,1111111\u6ca1\u6709\u770b\u70b9"

    const-string v2, "(\\d{0,2}:[0-5][0-9]:[0-5][0-9])|([0-5][0-9]:[0-5][0-9])"

    invoke-virtual {p0, v0, v1, v2}, Lcom/join/mgps/activity/DeveloperActivity;->Q0(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method H0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0901cc
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/testabc/test2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    return-void
.end method

.method I0()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0901e3
        }
    .end annotation

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080690

    .line 3
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/join/mgps/receiver/NotifcationReceiver;

    const-string v6, "com.wufun.down.notify.start.gamemanager"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    long-to-int v6, v5

    const/high16 v5, 0x8000000

    .line 7
    invoke-static {p0, v6, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 8
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v5, "\u6b63\u5728\u4e0b\u8f7d"

    .line 9
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v4, "channel_1"

    .line 14
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v4, 0x4

    .line 15
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 16
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method J0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0901d1
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/e;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/e;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dialog/e;->show()V

    return-void
.end method

.method public L0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity;->e:Lcom/join/mgps/ad/l;

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/activity/DeveloperActivity$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/DeveloperActivity$b;-><init>(Lcom/join/mgps/activity/DeveloperActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity;->e:Lcom/join/mgps/ad/l;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/DeveloperActivity;->e:Lcom/join/mgps/ad/l;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/l;->h(Z)V

    :goto_0
    return-void
.end method

.method M0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f09076f
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8f93\u5165\u5b89\u88c5\u5305\u8def\u5f84"

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/activity/DeveloperActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u5b89\u88c5\u5305\u4e0d\u5b58\u5728"

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity;->b:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/DeveloperActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/e;->z(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    return-void
.end method

.method N0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0901dd
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/storage/emulated/0/Android/data/com.join.android.app.mgsim.wufun/files/wufan91/46/roms/test_new.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

.method O0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0901de
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/storage/emulated/0/Android/data/com.join.android.app.mgsim.wufun/files/wufan91/46/roms/test_old.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

.method P0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090867
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DeveloperActivity;->K0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/va/overmind/e;->V(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public Q0(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 2
    invoke-static {p3, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p3

    .line 3
    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 4
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p2, p3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    .line 6
    invoke-virtual {p2, p3}, Ljava/util/regex/Matcher;->end(I)I

    move-result p3

    .line 7
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/high16 v3, -0x10000

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v1, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method R0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090ab9
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method S0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f09019b
        }
    .end annotation

    const-string v0, "5311400"

    const-string v1, "949085233"

    .line 1
    invoke-virtual {p0, p0, v0, v1}, Lcom/join/mgps/activity/DeveloperActivity;->L0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method T0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f09019c
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity;->e:Lcom/join/mgps/ad/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/ad/c;->p(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method U0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0901a8
        }
    .end annotation

    const-string v0, "5311400"

    const-string v1, "949129415"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/join/mgps/activity/DeveloperActivity;->initTTAd(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method V0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0901a9
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity;->d:Lcom/join/mgps/ad/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/ad/c;->p(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method W0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090edb
        }
    .end annotation

    const-string v0, "com.rockstargames.gtavc"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    const-string v1, "com.rockstar.gta3"

    invoke-static {p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->X(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    .line 4
    :try_start_1
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method afterViews()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public initTTAd(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity;->d:Lcom/join/mgps/ad/m;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/activity/DeveloperActivity$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/DeveloperActivity$a;-><init>(Lcom/join/mgps/activity/DeveloperActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity;->d:Lcom/join/mgps/ad/m;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/m;->e()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/DeveloperActivity;->d:Lcom/join/mgps/ad/m;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/m;->h(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
