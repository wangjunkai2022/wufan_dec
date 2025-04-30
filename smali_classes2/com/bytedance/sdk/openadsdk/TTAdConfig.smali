.class public final Lcom/bytedance/sdk/openadsdk/TTAdConfig;
.super Ljava/lang/Object;
.source "TTAdConfig.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/AdConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    }
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

.field private o:I

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/bytedance/sdk/openadsdk/TTCustomController;

.field private r:I

.field private s:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    .line 4
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    .line 8
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:Z

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:Z

    .line 10
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:Z

    .line 11
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->o:I

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomController()Lcom/bytedance/sdk/openadsdk/TTCustomController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->q:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectDownloadNetworkType()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->j:[I

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInjectionAuth()Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->s:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedClearTaskReset()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public getSdkInfo()Lcom/bytedance/sdk/openadsdk/AdConfig$SdkInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    return-object v0
.end method

.method public getThemeStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->r:I

    return v0
.end method

.method public getTitleBarTheme()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    return v0
.end method

.method public isAllowShowNotify()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    return v0
.end method

.method public isAllowShowPageWhenScreenLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    return v0
.end method

.method public isAsyncInit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    return v0
.end method

.method public isPaid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    return v0
.end method

.method public isSupportMultiProcess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:Z

    return v0
.end method

.method public isUseTextureView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:Z

    return v0
.end method

.method public removeExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAgeGroup(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "age_group"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAllowShowNotify(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    return-void
.end method

.method public setAllowShowPageWhenScreenLock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public setAsyncInit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:Z

    return-void
.end method

.method public setCustomController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->q:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->e:Ljava/lang/String;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    return-void
.end method

.method public varargs setDirectDownloadNetworkType([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->j:[I

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInjectionAuth(Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->s:Lcom/bytedance/sdk/openadsdk/live/ITTLiveTokenInjectionAuth;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->d:Ljava/lang/String;

    return-void
.end method

.method public varargs setNeedClearTaskReset([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->m:[Ljava/lang/String;

    return-void
.end method

.method public setPaid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    return-void
.end method

.method public setSupportMultiProcess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:Z

    return-void
.end method

.method public setThemeStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->r:I

    return-void
.end method

.method public setTitleBarTheme(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    return-void
.end method

.method public setUseTextureView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:Z

    return-void
.end method
