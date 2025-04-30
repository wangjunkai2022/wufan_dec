.class public Lcom/bytedance/sdk/openadsdk/AdSlot;
.super Ljava/lang/Object;
.source "AdSlot.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdSlot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:[I

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->k:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->o:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/AdSlot$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->d:F

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->f:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/TTAdLoadType;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->y:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->g:Z

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;[I)[I
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->p:[I

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->e:F

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->b:I

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->c:I

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->o:Z

    return p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->k:I

    return p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->m:I

    return p1
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->r:I

    return p1
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->l:I

    return p1
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->x:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAdCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->f:I

    return v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAdLoadType()Lcom/bytedance/sdk/openadsdk/TTAdLoadType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->y:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    return-object v0
.end method

.method public getAdType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->l:I

    return v0
.end method

.method public getAdloadSeq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->r:I

    return v0
.end method

.method public getBidAdm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationSlotType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->n:I

    return v0
.end method

.method public getExpressViewAcceptedHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->e:F

    return v0
.end method

.method public getExpressViewAcceptedWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->d:F

    return v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalABVid()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->p:[I

    return-object v0
.end method

.method public getExtraSmartLookParam()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getImgAcceptedHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->c:I

    return v0
.end method

.method public getImgAcceptedWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->b:I

    return v0
.end method

.method public getMediaExtra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeAdType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->m:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->k:I

    return v0
.end method

.method public getPrimeRit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->j:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->o:Z

    return v0
.end method

.method public isSupportDeepLink()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->g:Z

    return v0
.end method

.method public isSupportRenderConrol()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->h:Z

    return v0
.end method

.method public setAdCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->f:I

    return-void
.end method

.method public setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->y:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    return-void
.end method

.method public setDurationSlotType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->n:I

    return-void
.end method

.method public varargs setExternalABVid([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->p:[I

    return-void
.end method

.method public setNativeAdType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->m:I

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->x:Ljava/lang/String;

    return-void
.end method

.method public toJsonObj()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mCodeId"

    .line 2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mIsAutoPlay"

    .line 3
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->o:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mImgAcceptedWidth"

    .line 4
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mImgAcceptedHeight"

    .line 5
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mExpressViewAcceptedWidth"

    .line 6
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->d:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "mExpressViewAcceptedHeight"

    .line 7
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->e:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "mAdCount"

    .line 8
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mSupportDeepLink"

    .line 9
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->g:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mSupportRenderControl"

    .line 10
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->h:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mMediaExtra"

    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mUserID"

    .line 12
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mOrientation"

    .line 13
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mNativeAdType"

    .line 14
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mAdloadSeq"

    .line 15
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->r:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mPrimeRit"

    .line 16
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mExtraSmartLookParam"

    .line 17
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mAdId"

    .line 18
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mCreativeId"

    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mExt"

    .line 20
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mBidAdm"

    .line 21
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mUserData"

    .line 22
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mAdLoadType"

    .line 23
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->y:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdSlot{mCodeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mImgAcceptedWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mImgAcceptedHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mExpressViewAcceptedWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mExpressViewAcceptedHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mAdCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSupportDeepLink="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->g:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSupportRenderControl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mMediaExtra=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mUserID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNativeAdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAutoPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimeRit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAdloadSeq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAdId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCreativeId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAdLoadType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->y:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
