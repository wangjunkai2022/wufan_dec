.class public Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveModeReceiver.java"


# static fields
.field private static a:Z = false

.field private static b:Z = false

.field private static final c:Ljava/lang/String; = "PowerSaveModeReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->f(Landroid/content/Context;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "1"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "user_powersaver_enable"

    .line 1
    invoke-static {p0, v0}, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "powersaving_switch"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v4, ""

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "psm_switch"

    .line 4
    invoke-static {p0, v0}, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0, v2}, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return v1

    :cond_4
    return v3
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "power"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 2
    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->f(Landroid/content/Context;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver$a;-><init>(Landroid/os/Handler;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->d(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->a:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->c(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->a:Z

    .line 4
    :goto_0
    sget-boolean p0, Lorg/ppsspp/ppsspp/PpssppActivity;->libraryLoaded:Z

    if-nez p0, :cond_1

    return-void

    .line 5
    :cond_1
    :try_start_0
    sget-boolean p0, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "core_powerSaving"

    if-nez p0, :cond_3

    :try_start_1
    sget-boolean p0, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->a:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "false"

    .line 6
    invoke-static {v0, p0}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, "true"

    .line 7
    invoke-static {v0, p0}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in sendPowerSaving: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BATTERY_LOW"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 3
    sput-boolean p2, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->b:Z

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.BATTERY_OKAY"

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 5
    sput-boolean p2, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->b:Z

    .line 6
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->f(Landroid/content/Context;)V

    return-void
.end method
