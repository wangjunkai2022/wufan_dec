.class public Lcom/bytedance/sdk/openadsdk/live/b;
.super Lcom/bytedance/sdk/openadsdk/downloadnew/a;
.source "TTLiveSDkBridge.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

.field private static final b:Lcom/bytedance/sdk/openadsdk/live/b;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

.field private h:Lorg/json/JSONObject;

.field private i:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/live/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/live/b;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->b:Lcom/bytedance/sdk/openadsdk/live/b;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 3
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->h:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    .line 9
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Landroid/os/Bundle;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/live/b;
    .locals 1

    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->b:Lcom/bytedance/sdk/openadsdk/live/b;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/live/b;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/live/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :try_start_0
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getBiddingToken(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/live/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/live/b;->d()V

    return-void
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasLiveSDKInited\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasLiveInstalled\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/live/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TTLiveSDkBridge"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GeneralAppId\uff1a"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getGeneralAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff0cisValid\uff1a"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->isValid()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v0, "com.byted.live.lite"

    .line 6
    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 7
    :cond_4
    sget-object v1, Lcom/bytedance/sdk/openadsdk/live/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v2

    int-to-long v5, v2

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/live/a;->c(J)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_6

    const-string v2, "live sdk init crash more than consecutive 5 times , live plugin had uninstalled ! App cold start will request new live plugin \uff01"

    .line 10
    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/live/a;->d(J)V

    .line 12
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 13
    :cond_6
    new-instance v2, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    invoke-direct {v2}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;-><init>()V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 14
    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setAppName(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 15
    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setChannel(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 16
    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->isDebug()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setIsDebug(Z)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 17
    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getECHostAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setECHostAppId(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 18
    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getPartner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setPartner(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v2

    new-instance v6, Lcom/bytedance/sdk/openadsdk/live/b$1;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/live/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/live/b;)V

    .line 19
    invoke-virtual {v2, v6}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->provideMethodChannel(Lcom/bytedance/android/live/base/api/MethodChannelService;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 20
    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getPartnerSecret()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setPartnerSecret(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 21
    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getHostPermission()Lcom/bytedance/sdk/openadsdk/live/core/TTHostPermissionInner;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setHostPermission(Lcom/bytedance/android/live/base/api/IHostPermission;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v2

    new-instance v6, Lcom/bytedance/sdk/openadsdk/live/core/a;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 22
    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getLiveHostAction()Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveHostAction;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bytedance/sdk/openadsdk/live/core/a;-><init>(Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveHostAction;)V

    invoke-virtual {v2, v6}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setHostActionParam(Lcom/bytedance/android/live/base/api/ILiveHostActionParam;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v2

    .line 23
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/live/b;->i:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;

    if-eqz v6, :cond_7

    .line 24
    new-instance v6, Lcom/bytedance/sdk/openadsdk/live/core/b;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/live/b;->i:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;

    invoke-direct {v6, v7}, Lcom/bytedance/sdk/openadsdk/live/core/b;-><init>(Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;)V

    invoke-virtual {v2, v6}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setInjectionAuth(Lcom/bytedance/android/livehostapi/platform/IHostTokenInjectionAuth;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    .line 25
    :cond_7
    new-instance v6, Lcom/bytedance/sdk/openadsdk/live/b$2;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/live/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/live/b;)V

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Landroid/app/Application;

    if-eqz v7, :cond_8

    .line 27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Application;

    invoke-virtual {v2, v7}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setContext(Landroid/app/Application;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    .line 28
    :cond_8
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/live/a;->a(J)V

    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "execute live sdk initLive method start, GeneralAppId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    if-eqz v8, :cond_9

    invoke-interface {v8}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getGeneralAppId()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_9
    move-object v8, v4

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    if-eqz v8, :cond_a

    .line 31
    invoke-interface {v8}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getGeneralAppId()Ljava/lang/String;

    move-result-object v4

    .line 32
    :cond_a
    invoke-static {v7, v4, v2, v6}, Lcom/bytedance/sdk/openadsdk/live/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;Lcom/bytedance/android/live/base/api/ILiveInitCallback;)Z

    move-result v2

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute live sdk initLive method end, (\u65b9\u6cd5\u987a\u5229\u6267\u884c\u7ed3\u679c)result: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 35
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/live/a;->b(J)V

    :cond_b
    :goto_2
    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "live_plugin_installed"

    .line 3
    sget-object v2, Lcom/bytedance/sdk/openadsdk/live/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "live_plugin_inited"

    .line 4
    sget-object v2, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    sget-object v1, Lcom/bytedance/sdk/openadsdk/live/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdEvent;->onEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getContext(Ljava/lang/Object;)Landroid/content/Context;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/content/Context;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/b;->i:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;

    return-void
.end method

.method public callMethod(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->callMethod(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1

    .line 3
    :cond_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/live/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "context"

    .line 5
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/live/b;->getContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "bundle"

    .line 6
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/live/b;->a(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/live/a;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x2

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getObj(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->getObj(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->init(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getGeneralAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getPartner()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;->getPartnerSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TTLiveSDkBridge"

    const-string v0, "The configuration has been obtained. Do not repeat initialization"

    .line 6
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "liveInitConfig"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->g:Lcom/bytedance/sdk/openadsdk/live/core/ITTLiveConfig;

    .line 10
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "liveInitExtra"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b;->h:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/live/b;->c()V

    return-void
.end method

.method public subscribe(Lcom/bytedance/sdk/openadsdk/TTAdEvent;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/bytedance/sdk/openadsdk/live/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/live/b;->d()V

    return-void
.end method
