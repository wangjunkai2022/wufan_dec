.class public Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
.super Ljava/lang/Object;
.source "AdSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/AdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:F

.field private n:F

.field private o:Z

.field private p:[I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x280

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->b:I

    const/16 v0, 0x140

    .line 3
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->c:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->d:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->e:Z

    .line 6
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->f:I

    const-string v1, "defaultUser"

    .line 7
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->h:Ljava/lang/String;

    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->i:I

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->o:Z

    .line 10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->UNKNOWN:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->u:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;-><init>(Lcom/bytedance/sdk/openadsdk/AdSlot$1;)V

    .line 2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->f:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 4
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->d:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    .line 5
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->e:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    .line 6
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->b:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 7
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->c:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 8
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->m:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 9
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->b:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    .line 10
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->c:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    .line 12
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->n:F

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->i:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->d(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 16
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->j:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->e(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 17
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->o:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->p:[I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;[I)[I

    .line 19
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->q:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->f(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->d(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->e(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->f(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->g(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->h(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->l:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->g(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->i(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->j(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->u:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    return-object v0
.end method

.method public setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 2

    const-string v0, "TT_AD_SDK"

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    const-string v1, "setAdCount: adCount must greater than 0 "

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x14

    if-le p1, v1, :cond_1

    const-string p1, "setAdCount: adCount must less than or equal to 20 "

    .line 2
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x14

    .line 3
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->f:I

    return-object p0
.end method

.method public setAdId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->v:Ljava/lang/String;

    return-object p0
.end method

.method public setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->u:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    return-object p0
.end method

.method public setAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->l:I

    return-object p0
.end method

.method public setAdloadSeq(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->q:I

    return-object p0
.end method

.method public setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setCreativeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->w:Ljava/lang/String;

    return-object p0
.end method

.method public setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->m:F

    .line 2
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->n:F

    return-object p0
.end method

.method public setExt(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->x:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setExternalABVid([I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->p:[I

    return-object p0
.end method

.method public setExtraParam(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->b:I

    .line 2
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->c:I

    return-object p0
.end method

.method public setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->o:Z

    return-object p0
.end method

.method public setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->j:I

    return-object p0
.end method

.method public setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->i:I

    return-object p0
.end method

.method public setPrimeRit(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->r:Ljava/lang/String;

    return-object p0
.end method

.method public setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->d:Z

    return-object p0
.end method

.method public setUserData(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->t:Ljava/lang/String;

    return-object p0
.end method

.method public setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public supportRenderControl()Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->e:Z

    return-object p0
.end method

.method public withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->s:Ljava/lang/String;

    return-object p0
.end method
