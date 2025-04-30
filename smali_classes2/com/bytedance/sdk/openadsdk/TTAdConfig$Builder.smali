.class public Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
.super Ljava/lang/Object;
.source "TTAdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/TTAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:[I

.field private k:Z

.field private l:Z

.field private m:[Ljava/lang/String;

.field private n:Z

.field private o:Lcom/bytedance/sdk/openadsdk/TTCustomController;

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->c:Z

    .line 3
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->f:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->g:Z

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->h:Z

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->i:Z

    .line 7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->k:Z

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->l:Z

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->n:Z

    const/4 v1, 0x2

    .line 10
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->q:I

    .line 11
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->r:I

    return-void
.end method


# virtual methods
.method public allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->g:Z

    return-object p0
.end method

.method public allowShowPageWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->i:Z

    return-object p0
.end method

.method public appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public asyncInit(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->n:Z

    return-object p0
.end method

.method public build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;)V

    .line 2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAppId(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAppName(Ljava/lang/String;)V

    .line 4
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->c:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setPaid(Z)V

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setKeywords(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setData(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->f:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setTitleBarTheme(I)V

    .line 8
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->g:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAllowShowNotify(Z)V

    .line 9
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->h:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setDebug(Z)V

    .line 10
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->i:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAllowShowPageWhenScreenLock(Z)V

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->j:[I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setDirectDownloadNetworkType([I)V

    .line 12
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->k:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setUseTextureView(Z)V

    .line 13
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->l:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setSupportMultiProcess(Z)V

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->m:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setNeedClearTaskReset([Ljava/lang/String;)V

    .line 15
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->n:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAsyncInit(Z)V

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->o:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setCustomController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    .line 17
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->p:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setThemeStatus(I)V

    .line 18
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plugin_update_conf"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "age_group"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->s:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setInjectionAuth(Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;)V

    return-object v0
.end method

.method public customController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->o:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    return-object p0
.end method

.method public data(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->h:Z

    return-object p0
.end method

.method public varargs directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->j:[I

    return-object p0
.end method

.method public injectionAuth(Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->s:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;

    return-object p0
.end method

.method public keywords(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public varargs needClearTaskReset([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->m:[Ljava/lang/String;

    return-object p0
.end method

.method public paid(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->c:Z

    return-object p0
.end method

.method public setAgeGroup(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->r:I

    return-object p0
.end method

.method public setPluginUpdateConfig(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->q:I

    return-object p0
.end method

.method public supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->l:Z

    return-object p0
.end method

.method public themeStatus(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->p:I

    return-object p0
.end method

.method public titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->f:I

    return-object p0
.end method

.method public useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->k:Z

    return-object p0
.end method
