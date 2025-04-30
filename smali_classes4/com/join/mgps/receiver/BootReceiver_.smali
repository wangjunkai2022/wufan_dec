.class public final Lcom/join/mgps/receiver/BootReceiver_;
.super Lcom/join/mgps/receiver/BootReceiver;
.source "BootReceiver_.java"


# static fields
.field public static final a:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final b:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final c:Ljava/lang/String; = "android.intent.action.PACKAGE_FULLY_REMOVED"

.field public static final d:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final e:Ljava/lang/String; = "android.intent.action.INSTALL_FAILURE"

.field public static final f:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/receiver/BootReceiver;-><init>()V

    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/receiver/BootReceiver_;->g(Landroid/content/Context;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->e(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->f(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->d(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_3
    const-string v1, "android.intent.action.INSTALL_FAILURE"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_4
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->c(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5
    return-void
.end method
