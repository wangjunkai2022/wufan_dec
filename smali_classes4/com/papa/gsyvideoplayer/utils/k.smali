.class public Lcom/papa/gsyvideoplayer/utils/k;
.super Ljava/lang/Object;
.source "NetInfoModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/gsyvideoplayer/utils/k$b;,
        Lcom/papa/gsyvideoplayer/utils/k$c;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "NONE"

.field private static final h:Ljava/lang/String; = "UNKNOWN"

.field private static final i:Ljava/lang/String; = "To use NetInfo on Android, add the following to your AndroidManifest.xml:\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

.field private static final j:Ljava/lang/String; = "E_MISSING_PERMISSION"


# instance fields
.field private final a:Landroid/net/ConnectivityManager;

.field private final b:Lcom/papa/gsyvideoplayer/utils/k$b;

.field private c:Lcom/papa/gsyvideoplayer/utils/k$c;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/papa/gsyvideoplayer/utils/k$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/k;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/k;->f:Z

    .line 4
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/k;->e:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/k;->a:Landroid/net/ConnectivityManager;

    .line 6
    new-instance p1, Lcom/papa/gsyvideoplayer/utils/k$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/papa/gsyvideoplayer/utils/k$b;-><init>(Lcom/papa/gsyvideoplayer/utils/k;Lcom/papa/gsyvideoplayer/utils/k$a;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/k;->b:Lcom/papa/gsyvideoplayer/utils/k$b;

    .line 7
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/k;->c:Lcom/papa/gsyvideoplayer/utils/k$c;

    return-void
.end method

.method static synthetic a(Lcom/papa/gsyvideoplayer/utils/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/k;->i()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/k;->c:Lcom/papa/gsyvideoplayer/utils/k$c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/k;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/papa/gsyvideoplayer/utils/k$c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/k;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/k;->d:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/k;->h()V

    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/k;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/k;->b:Lcom/papa/gsyvideoplayer/utils/k$b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/k;->b:Lcom/papa/gsyvideoplayer/utils/k$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/k$b;->b(Z)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/k;->b:Lcom/papa/gsyvideoplayer/utils/k$b;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/k$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/k;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/k;->b:Lcom/papa/gsyvideoplayer/utils/k$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/k;->b:Lcom/papa/gsyvideoplayer/utils/k$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/k$b;->b(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 3

    const-string v0, "UNKNOWN"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/k;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const-string v0, "NONE"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/k;->f:Z

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/k;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "E_MISSING_PERMISSION"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/k;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/k;->a:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Landroidx/core/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/k;->unregisterReceiver()V

    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/k;->registerReceiver()V

    return-void
.end method
