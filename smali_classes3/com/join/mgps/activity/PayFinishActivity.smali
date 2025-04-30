.class public Lcom/join/mgps/activity/PayFinishActivity;
.super Lcom/BaseActivity;
.source "PayFinishActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c052c
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/PapayResult;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field c:Lcom/join/mgps/rpc/d;

.field d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method E0(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    .line 4
    :cond_0
    new-instance v2, Lcom/join/mgps/dto/RequestAppDetialArgs;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestAppDetialArgs;-><init>()V

    const-string v3, ""

    .line 5
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setDeviceid(Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/PayFinishActivity;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/PayFinishActivity;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setVersion(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setGame_id(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setUid(I)V

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestAppDetialArgs;->setToken(Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/join/mgps/activity/PayFinishActivity$a;

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/activity/PayFinishActivity$a;-><init>(Lcom/join/mgps/activity/PayFinishActivity;Z)V

    invoke-static {v2, p1}, Lcom/join/mgps/rpc/m;->c(Lcom/join/mgps/dto/RequestAppDetialArgs;Lcom/join/android/app/common/http/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PayFinishActivity;->H0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PayFinishActivity;->H0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method F0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayFinishActivity;->a:Lcom/join/mgps/dto/PapayResult;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayResult;->getGameid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PayFinishActivity;->E0(Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method G0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayFinishActivity;->a:Lcom/join/mgps/dto/PapayResult;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayResult;->getGameid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PayFinishActivity;->E0(Ljava/lang/String;Z)V

    return-void
.end method

.method H0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method afterview()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/PayFinishActivity;->d:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PayFinishActivity;->c:Lcom/join/mgps/rpc/d;

    return-void
.end method
