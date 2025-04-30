.class public Lcom/ss/android/downloadad/api/a/b;
.super Ljava/lang/Object;
.source "NativeDownloadModel.java"

# interfaces
.implements Lcom/ss/android/downloadad/api/a/a;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:I

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Z

.field private O:Z

.field private P:I

.field private Q:I
    .annotation build Lcom/ss/android/downloadad/api/constant/AdBaseConstants$FunnelType;
    .end annotation
.end field

.field private R:J

.field private S:J

.field private T:Z

.field private U:Z

.field private V:Ljava/lang/String;

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:J

.field protected a:Z

.field private transient aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field protected b:Z

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:J

.field private v:Lorg/json/JSONObject;

.field private w:I

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/ss/android/downloadad/api/a/b;->h:I

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->t:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/a/b;->x:Z

    .line 5
    iput v1, p0, Lcom/ss/android/downloadad/api/a/b;->y:I

    .line 6
    iput v1, p0, Lcom/ss/android/downloadad/api/a/b;->z:I

    .line 7
    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/a/b;->G:Z

    .line 8
    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/a/b;->I:Z

    .line 9
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->J:Z

    .line 10
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->K:Z

    .line 11
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->a:Z

    .line 12
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->b:Z

    .line 13
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    iput v0, p0, Lcom/ss/android/downloadad/api/a/b;->Q:I

    .line 16
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->T:Z

    const-wide/16 v0, -0x1

    .line 17
    iput-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->Z:J

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ss/android/downloadad/api/a/b;-><init>(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;I)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/ss/android/downloadad/api/a/b;->h:I

    .line 21
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->t:Z

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/a/b;->x:Z

    .line 23
    iput v1, p0, Lcom/ss/android/downloadad/api/a/b;->y:I

    .line 24
    iput v1, p0, Lcom/ss/android/downloadad/api/a/b;->z:I

    .line 25
    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/a/b;->G:Z

    .line 26
    iput-boolean v1, p0, Lcom/ss/android/downloadad/api/a/b;->I:Z

    .line 27
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->J:Z

    .line 28
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->K:Z

    .line 29
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->a:Z

    .line 30
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->b:Z

    .line 31
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    iput v0, p0, Lcom/ss/android/downloadad/api/a/b;->Q:I

    .line 34
    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->T:Z

    const-wide/16 v0, -0x1

    .line 35
    iput-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->Z:J

    .line 36
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->e:J

    .line 37
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getExtraValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->f:J

    .line 38
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->g:Ljava/lang/String;

    .line 39
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->i:Ljava/lang/String;

    .line 40
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getExtra()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->v:Lorg/json/JSONObject;

    .line 41
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->t:Z

    .line 42
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getVersionCode()I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/api/a/b;->p:I

    .line 43
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->q:Ljava/lang/String;

    .line 44
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->j:Ljava/lang/String;

    .line 45
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getDeepLink()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getDeepLink()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/download/api/model/DeepLink;->getOpenUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->k:Ljava/lang/String;

    .line 47
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getDeepLink()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/download/api/model/DeepLink;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->l:Ljava/lang/String;

    .line 48
    :cond_0
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getModelType()I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/api/a/b;->m:I

    .line 49
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->r:Ljava/lang/String;

    .line 50
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getAppIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->s:Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->H:Ljava/lang/String;

    .line 52
    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getClickButtonTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->L:Ljava/lang/String;

    .line 53
    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getRefer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->M:Ljava/lang/String;

    .line 54
    invoke-interface {p2}, Lcom/ss/android/download/api/download/DownloadEventConfig;->isEnableV3Event()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/a/b;->N:Z

    .line 55
    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->isEnableBackDialog()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/a/b;->x:Z

    .line 56
    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->getLinkMode()I

    move-result p2

    iput p2, p0, Lcom/ss/android/downloadad/api/a/b;->n:I

    .line 57
    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->getDownloadMode()I

    move-result p2

    iput p2, p0, Lcom/ss/android/downloadad/api/a/b;->o:I

    .line 58
    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->enableShowComplianceDialog()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/a/b;->T:Z

    .line 59
    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->isAutoDownloadOnCardShow()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/a/b;->U:Z

    .line 60
    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->enableNewActivity()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/a/b;->J:Z

    .line 61
    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->enableAH()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/a/b;->a:Z

    .line 62
    invoke-interface {p3}, Lcom/ss/android/download/api/download/DownloadController;->enableAM()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/api/a/b;->b:Z

    .line 63
    iput p4, p0, Lcom/ss/android/downloadad/api/a/b;->w:I

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/downloadad/api/a/b;->u:J

    .line 65
    iput-wide p2, p0, Lcom/ss/android/downloadad/api/a/b;->A:J

    .line 66
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->shouldDownloadWithPatchApply()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->I:Z

    return-void
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/a/b;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/ss/android/downloadad/api/a/b;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/a/b;-><init>()V

    :try_start_0
    const-string v1, "mId"

    .line 7
    invoke-static {p0, v1}, Lcom/ss/android/download/api/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/api/a/b;->d(J)V

    const-string v1, "mExtValue"

    .line 8
    invoke-static {p0, v1}, Lcom/ss/android/download/api/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/api/a/b;->e(J)V

    const-string v1, "mLogExtra"

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->c(Ljava/lang/String;)V

    const-string v1, "mDownloadStatus"

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->e(I)V

    const-string v1, "mPackageName"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->b(Ljava/lang/String;)V

    const-string v1, "mIsAd"

    const/4 v2, 0x1

    .line 12
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->a(Z)V

    const-string v1, "mTimeStamp"

    .line 13
    invoke-static {p0, v1}, Lcom/ss/android/download/api/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/ss/android/downloadad/api/a/b;->f(J)V

    const-string v1, "mVersionCode"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->f(I)V

    const-string v1, "mVersionName"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->d(Ljava/lang/String;)V

    const-string v1, "mDownloadId"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->g(I)V

    const-string v1, "mIsV3Event"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->b(Z)V

    const-string v1, "mScene"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->h(I)V

    const-string v1, "mEventTag"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->f(Ljava/lang/String;)V

    const-string v1, "mEventRefer"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->g(Ljava/lang/String;)V

    const-string v1, "mDownloadUrl"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->h(Ljava/lang/String;)V

    const-string v1, "mEnableBackDialog"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->c(Z)V

    .line 23
    iget-object v1, v0, Lcom/ss/android/downloadad/api/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "hasSendInstallFinish"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    iget-object v1, v0, Lcom/ss/android/downloadad/api/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "hasSendDownloadFailedFinally"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v1, "mLastFailedErrCode"

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->d(I)V

    const-string v1, "mLastFailedErrMsg"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->a(Ljava/lang/String;)V

    const-string v1, "mOpenUrl"

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->i(Ljava/lang/String;)V

    const-string v1, "mLinkMode"

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->j(I)V

    const-string v1, "mDownloadMode"

    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->k(I)V

    const-string v1, "mModelType"

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->l(I)V

    const-string v1, "mAppName"

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->j(Ljava/lang/String;)V

    const-string v1, "mAppIcon"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->k(Ljava/lang/String;)V

    const-string v1, "mDownloadFailedTimes"

    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->a(I)V

    const-string v1, "mRecentDownloadResumeTime"

    .line 34
    invoke-static {p0, v1}, Lcom/ss/android/download/api/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadad/api/a/b;->a(J)V

    const-string v1, "mClickPauseTimes"

    .line 35
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->b(I)V

    const-string v1, "mJumpInstallTime"

    .line 36
    invoke-static {p0, v1}, Lcom/ss/android/download/api/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadad/api/a/b;->b(J)V

    const-string v1, "mCancelInstallTime"

    .line 37
    invoke-static {p0, v1}, Lcom/ss/android/download/api/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadad/api/a/b;->c(J)V

    const-string v1, "mLastFailedResumeCount"

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->c(I)V

    const-string v1, "downloadFinishReason"

    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->l(Ljava/lang/String;)V

    const-string v1, "clickDownloadSize"

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadad/api/a/b;->i(J)V

    const-string v1, "clickDownloadTime"

    .line 41
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadad/api/a/b;->h(J)V

    const-string v1, "mIsUpdateDownload"

    .line 42
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->h(Z)V

    const-string v1, "mOriginMimeType"

    .line 43
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->m(Ljava/lang/String;)V

    const-string v1, "mIsPatchApplyHandled"

    .line 44
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->i(Z)V

    const-string v1, "installAfterCleanSpace"

    .line 45
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->f(Z)V

    const-string v1, "funnelType"

    .line 46
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->i(I)V

    const-string v1, "webUrl"

    .line 47
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->e(Ljava/lang/String;)V

    const-string v1, "enableShowComplianceDialog"

    .line 48
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->p(Z)V

    const-string v1, "isAutoDownloadOnCardShow"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->q(Z)V

    const-string v1, "enable_new_activity"

    .line 50
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->r(Z)V

    const-string v1, "enable_pause"

    .line 51
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->s(Z)V

    const-string v1, "enable_ah"

    .line 52
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->t(Z)V

    const-string v1, "enable_am"

    .line 53
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/api/a/b;->u(Z)V

    const-string v1, "mExtras"

    .line 54
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadad/api/a/b;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 55
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->s()Lcom/ss/android/download/api/b/a;

    move-result-object v1

    const-string v2, "NativeDownloadModel fromJson"

    invoke-interface {v1, p0, v2}, Lcom/ss/android/download/api/b/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4
    return-object v0
.end method


# virtual methods
.method public declared-synchronized A()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ss/android/downloadad/api/a/b;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/downloadad/api/a/b;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public B()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->A:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->u:J

    :cond_0
    return-wide v0
.end method

.method public C()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->B:J

    return-wide v0
.end method

.method public D()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/a/b;->D:I

    return v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/a/b;->E:I

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->F:Ljava/lang/String;

    return-object v0
.end method

.method public G()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/a/b;->h:I

    return v0
.end method

.method public H()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->u:J

    return-wide v0
.end method

.method public I()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/a/b;->p:I

    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public K()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/a/b;->P:I

    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->x:Z

    return v0
.end method

.method public M()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->Z:J

    return-wide v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public O()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/a/b;->n:I

    return v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->V:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->X:Z

    return v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->O:Z

    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->Y:Z

    return v0
.end method

.method public T()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->R:J

    return-wide v0
.end method

.method public U()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->S:J

    return-wide v0
.end method

.method public V()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->G:Z

    return v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->H:Ljava/lang/String;

    return-object v0
.end method

.method public X()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->I:Z

    return v0
.end method

.method public Y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->aa:Z

    return v0
.end method

.method public Z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->ab:Z

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/downloadad/api/a/b;->y:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ss/android/downloadad/api/a/b;->A:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->F:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->v:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->t:Z

    return-void
.end method

.method public aa()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->ad:Z

    return v0
.end method

.method public ab()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->ac:Z

    return v0
.end method

.method public ac()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->ae:Z

    return v0
.end method

.method public ad()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->af:Z

    return v0
.end method

.method public ae()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mId"

    .line 2
    iget-wide v2, p0, Lcom/ss/android/downloadad/api/a/b;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mExtValue"

    .line 3
    iget-wide v2, p0, Lcom/ss/android/downloadad/api/a/b;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mLogExtra"

    .line 4
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mDownloadStatus"

    .line 5
    iget v2, p0, Lcom/ss/android/downloadad/api/a/b;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mPackageName"

    .line 6
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mIsAd"

    .line 7
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/a/b;->t:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mTimeStamp"

    .line 8
    iget-wide v2, p0, Lcom/ss/android/downloadad/api/a/b;->u:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mExtras"

    .line 9
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->v:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mVersionCode"

    .line 10
    iget v2, p0, Lcom/ss/android/downloadad/api/a/b;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mVersionName"

    .line 11
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mDownloadId"

    .line 12
    iget v2, p0, Lcom/ss/android/downloadad/api/a/b;->w:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mIsV3Event"

    .line 13
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/a/b;->N:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mScene"

    .line 14
    iget v2, p0, Lcom/ss/android/downloadad/api/a/b;->P:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mEventTag"

    .line 15
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mEventRefer"

    .line 16
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->M:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mDownloadUrl"

    .line 17
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mEnableBackDialog"

    .line 18
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/a/b;->x:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hasSendInstallFinish"

    .line 19
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hasSendDownloadFailedFinally"

    .line 20
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mLastFailedErrCode"

    .line 21
    iget v2, p0, Lcom/ss/android/downloadad/api/a/b;->E:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mLastFailedErrMsg"

    .line 22
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mOpenUrl"

    .line 23
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mLinkMode"

    .line 24
    iget v2, p0, Lcom/ss/android/downloadad/api/a/b;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mDownloadMode"

    .line 25
    iget v2, p0, Lcom/ss/android/downloadad/api/a/b;->o:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mModelType"

    .line 26
    iget v2, p0, Lcom/ss/android/downloadad/api/a/b;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mAppName"

    .line 27
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mAppIcon"

    .line 28
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mDownloadFailedTimes"

    .line 29
    iget v2, p0, Lcom/ss/android/downloadad/api/a/b;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mRecentDownloadResumeTime"

    .line 30
    iget-wide v2, p0, Lcom/ss/android/downloadad/api/a/b;->A:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lcom/ss/android/downloadad/api/a/b;->u:J

    :cond_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mClickPauseTimes"

    .line 31
    iget v2, p0, Lcom/ss/android/downloadad/api/a/b;->z:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mJumpInstallTime"

    .line 32
    iget-wide v2, p0, Lcom/ss/android/downloadad/api/a/b;->B:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mCancelInstallTime"

    .line 33
    iget-wide v2, p0, Lcom/ss/android/downloadad/api/a/b;->C:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mLastFailedResumeCount"

    .line 34
    iget v2, p0, Lcom/ss/android/downloadad/api/a/b;->D:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mIsUpdateDownload"

    .line 35
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/a/b;->G:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mOriginMimeType"

    .line 36
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mIsPatchApplyHandled"

    .line 37
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/a/b;->I:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "downloadFinishReason"

    .line 38
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->V:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clickDownloadTime"

    .line 39
    iget-wide v2, p0, Lcom/ss/android/downloadad/api/a/b;->R:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "clickDownloadSize"

    .line 40
    iget-wide v2, p0, Lcom/ss/android/downloadad/api/a/b;->S:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "installAfterCleanSpace"

    .line 41
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/a/b;->O:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "funnelType"

    .line 42
    iget v2, p0, Lcom/ss/android/downloadad/api/a/b;->Q:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "webUrl"

    .line 43
    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enableShowComplianceDialog"

    .line 44
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/a/b;->T:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isAutoDownloadOnCardShow"

    .line 45
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/a/b;->U:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "enable_new_activity"

    .line 46
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/a/b;->J:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enable_pause"

    .line 47
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/a/b;->K:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enable_ah"

    .line 48
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/a/b;->a:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enable_am"

    .line 49
    iget-boolean v2, p0, Lcom/ss/android/downloadad/api/a/b;->b:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 50
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->s()Lcom/ss/android/download/api/b/a;

    move-result-object v2

    const-string v3, "NativeDownloadModel toJson"

    invoke-interface {v2, v1, v3}, Lcom/ss/android/download/api/b/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4
    return-object v0
.end method

.method public af()Lcom/ss/android/downloadad/api/download/AdDownloadModel;
    .locals 5

    .line 1
    new-instance v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;-><init>()V

    iget-wide v1, p0, Lcom/ss/android/downloadad/api/a/b;->e:J

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAdId(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadad/api/a/b;->f:J

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setExtraValue(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/a/b;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setLogExtra(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/a/b;->i:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setPackageName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/a/b;->v:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setExtra(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/api/a/b;->t:Z

    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setIsAd(Z)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/api/a/b;->p:I

    .line 8
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setVersionCode(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/a/b;->q:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setVersionName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/a/b;->j:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setDownloadUrl(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/api/a/b;->m:I

    .line 11
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setModelType(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/a/b;->H:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setMimeType(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/a/b;->r:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAppName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/a/b;->s:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setAppIcon(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    new-instance v1, Lcom/ss/android/download/api/model/DeepLink;

    iget-object v2, p0, Lcom/ss/android/downloadad/api/a/b;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/downloadad/api/a/b;->l:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/ss/android/download/api/model/DeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->setDeepLink(Lcom/ss/android/download/api/model/DeepLink;)Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadModel$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    move-result-object v0

    return-object v0
.end method

.method public ag()Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/downloadad/api/a/b;->L:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickButtonTag(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/api/a/b;->M:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setRefer(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/api/a/b;->N:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setIsEnableV3Event(Z)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;

    move-result-object v0

    return-object v0
.end method

.method public ah()Lcom/ss/android/downloadad/api/download/AdDownloadController;
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;-><init>()V

    iget-boolean v1, p0, Lcom/ss/android/downloadad/api/a/b;->x:Z

    .line 2
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setIsEnableBackDialog(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/api/a/b;->n:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setLinkMode(I)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/api/a/b;->o:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setDownloadMode(I)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/api/a/b;->T:Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setEnableShowComplianceDialog(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/api/a/b;->a:Z

    .line 6
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setEnableAH(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/api/a/b;->b:Z

    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setEnableAM(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->e:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/downloadad/api/a/b;->z:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ss/android/downloadad/api/a/b;->B:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->i:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->N:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ss/android/downloadad/api/a/b;->D:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/android/downloadad/api/a/b;->C:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->g:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->x:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->t:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/downloadad/api/a/b;->E:I

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ss/android/downloadad/api/a/b;->e:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->q:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->W:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ss/android/downloadad/api/a/b;->h:I

    return-void
.end method

.method public e(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/android/downloadad/api/a/b;->f:J

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->l:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->X:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ss/android/downloadad/api/a/b;->p:I

    return-void
.end method

.method public f(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    iput-wide p1, p0, Lcom/ss/android/downloadad/api/a/b;->u:J

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->L:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->O:Z

    return-void
.end method

.method public g()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->v:Lorg/json/JSONObject;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ss/android/downloadad/api/a/b;->w:I

    return-void
.end method

.method public g(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/ss/android/downloadad/api/a/b;->Z:J

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->M:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->Y:Z

    return-void
.end method

.method public h()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/ss/android/downloadad/api/a/b;->Q:I

    return v0
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/downloadad/api/a/b;->P:I

    return-void
.end method

.method public h(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/ss/android/downloadad/api/a/b;->R:J

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->j:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->G:Z

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->M:Ljava/lang/String;

    return-object v0
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/downloadad/api/a/b;->Q:I

    return-void
.end method

.method public i(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/ss/android/downloadad/api/a/b;->S:J

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->k:Ljava/lang/String;

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->I:Z

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadad/api/a/b;->L:Ljava/lang/String;

    return-object v0
.end method

.method public j(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/ss/android/downloadad/api/a/b;->n:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->r:Ljava/lang/String;

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->aa:Z

    return-void
.end method

.method public k()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ss/android/downloadad/api/a/b;->o:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->s:Ljava/lang/String;

    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->ab:Z

    return-void
.end method

.method public l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadad/api/a/b;->f:J

    return-wide v0
.end method

.method public l(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ss/android/downloadad/api/a/b;->m:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->V:Ljava/lang/String;

    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->ad:Z

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/downloadad/api/a/b;->H:Ljava/lang/String;

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->ac:Z

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->N:Z

    return v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->ae:Z

    return-void
.end method

.method public o()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->af:Z

    return-void
.end method

.method public p()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->T:Z

    return-void
.end method

.method public q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->U:Z

    return-void
.end method

.method public q()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/ss/android/downloadad/api/a/b;->J:Z

    return v0
.end method

.method public r()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->J:Z

    return-void
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/a/b;->w:I

    return v0
.end method

.method public s(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->K:Z

    return-void
.end method

.method public t()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public t(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->a:Z

    return-void
.end method

.method public u()Lcom/ss/android/download/api/download/DownloadModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/a/b;->af()Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    move-result-object v0

    return-object v0
.end method

.method public u(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadad/api/a/b;->b:Z

    return-void
.end method

.method public v()Lcom/ss/android/download/api/download/DownloadEventConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/a/b;->ag()Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/ss/android/download/api/download/DownloadController;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/downloadad/api/a/b;->ah()Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/a/b;->y:I

    return v0
.end method

.method public declared-synchronized y()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ss/android/downloadad/api/a/b;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/downloadad/api/a/b;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/api/a/b;->z:I

    return v0
.end method
