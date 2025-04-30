.class public Lcom/mob/tools/utils/NtFetcher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static a:Lcom/mob/tools/utils/NtFetcher;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mob/tools/utils/DeviceHelper;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    .line 4
    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->isSensitiveDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->a()V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v3, "0391fhfm=jNfjgefgEjRgn!gk$fj2n4fghihifggefmgngliiiiifgjgjffghifgkjehnigjlffgjgkglgkif"

    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->b()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "039Jfhfm1jZfjgefgBjHgn]gk,fj6nVfghihifggefmgngliiiiifgjgjffghifgkjehnigjlffgjgkglgkif"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 8
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 9
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->b()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/NtFetcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->c()V

    return-void
.end method

.method private b()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Lcom/mob/tools/utils/NtFetcher$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/NtFetcher$1;-><init>(Lcom/mob/tools/utils/NtFetcher;)V

    return-object v0
.end method

.method private c()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->e:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->f:Ljava/lang/Integer;

    return-void
.end method

.method private d()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "035OfhfmUjJfjgefgVj1gn,gkMfj6n?fghihifggefmgnigifglhkffijjfhnghifffgjgkglgkif"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/k;->e()I

    move-result v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/k;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    return v1
.end method

.method private e()V
    .locals 9

    .line 1
    new-instance v0, Lcom/mob/tools/utils/NtFetcher$2;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/NtFetcher$2;-><init>(Lcom/mob/tools/utils/NtFetcher;)V

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->d:Landroid/content/BroadcastReceiver;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    const-string v2, "016Cfj_k-hhfghiKfk;fjig8kEfi;k2fgClkLfj"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/mob/tools/utils/NtFetcher;->d:Landroid/content/BroadcastReceiver;

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/BroadcastReceiver;

    aput-object v5, v0, v4

    const-class v4, Landroid/content/IntentFilter;

    aput-object v4, v0, v3

    invoke-static {v1, v2, v6, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    const-string v2, "016Kfj\'kFhhfghiGfk fjigFkFfi7kTfg:lkIfj"

    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/mob/tools/utils/NtFetcher;->d:Landroid/content/BroadcastReceiver;

    aput-object v8, v7, v4

    aput-object v0, v7, v3

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v5

    new-array v0, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/BroadcastReceiver;

    aput-object v6, v0, v4

    const-class v4, Landroid/content/IntentFilter;

    aput-object v4, v0, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v5

    invoke-static {v1, v2, v7, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method private f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    const-string v1, "018Bfefmfj<kIhhfghi4fk!fjigRkYfi\'kUfg_lk?fj"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mob/tools/utils/NtFetcher;->d:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    aput-object v4, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->d:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "039]fhfmSjBfjgefg+j=gnVgkMfj4n:fghihifggefmgngliiiiifgjgjffghifgkjehnigjlffgjgkglgkif"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "008kfekVfjfm^kf"

    .line 7
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "005jVfe_nn$fk"

    .line 8
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const-string v0, "009>hegffe6kf?gege8fe"

    .line 9
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    const-string v0, "0050hffg,nBfhfn"

    .line 10
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "004<hffghjfg"

    .line 11
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "002Qjgjm"

    .line 13
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "002Tlkjm"

    .line 15
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 16
    :cond_3
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "0026lejm"

    :goto_0
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "002Vimjm"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_5
    const-string v0, "004?fmgefm%k"

    .line 18
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/NtFetcher;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/tools/utils/NtFetcher;->a:Lcom/mob/tools/utils/NtFetcher;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/tools/utils/NtFetcher;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/NtFetcher;->a:Lcom/mob/tools/utils/NtFetcher;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/tools/utils/NtFetcher;

    invoke-direct {v1, p0}, Lcom/mob/tools/utils/NtFetcher;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/utils/NtFetcher;->a:Lcom/mob/tools/utils/NtFetcher;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/mob/tools/utils/NtFetcher;->a:Lcom/mob/tools/utils/NtFetcher;

    return-object p0
.end method

.method private h()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->k()Z

    move-result v0

    return v0
.end method

.method private i()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v3, "035 fhfm6j.fjgefg?j2gn4gkRfj8nPfghihifggefmgnigifglhkffijjfhnghifffgjgkglgkif"

    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "006e2fefhhf2k8fg"

    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "006Zjffefhhf$kMfg"

    .line 5
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "0060jfgggljeifgi"

    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    const-string v2, "015*hh;kf.gjZk;fj5lOfgfiMk2gj.f:fhTfk"

    .line 7
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "016]hh_kf:jfhfgh.kf[hfgefjflgkfkSgk"

    .line 8
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_2
    return v0
.end method

.method private j()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v3, "035]fhfm9j?fjgefgUjRgn>gk<fjKn*fghihifggefmgnigifglhkffijjfhnghifffgjgkglgkif"

    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const-string v2, "015.hhRkf,gj1kOfj3lDfgfi4kPgj6f1fhOfk"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "010[hhIkfTghfjgjZfHfh4fk"

    .line 4
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method private k()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/mob/tools/a/k;->d()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return v0
.end method

.method private l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/k;->d()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/l;->a()Lcom/mob/tools/a/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/k;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    return v2

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getDtNtType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isSensitiveDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->f:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->f:Ljava/lang/Integer;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNtType()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isSensitiveDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->e:Ljava/lang/String;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public recycle()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->f()V

    return-void
.end method
