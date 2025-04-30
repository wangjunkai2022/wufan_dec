.class public Lcom/join/mgps/Util/IntentUtil;
.super Ljava/lang/Object;
.source "IntentUtil.java"


# static fields
.field private static ourInstance:Lcom/join/mgps/Util/IntentUtil;


# instance fields
.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private gameid:Ljava/lang/String;

.field private intent2:Landroid/content/Intent;

.field private splashActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/join/mgps/Util/IntentUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/IntentUtil;->ourInstance:Lcom/join/mgps/Util/IntentUtil;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/IntentUtil;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentUtil;-><init>()V

    sput-object v0, Lcom/join/mgps/Util/IntentUtil;->ourInstance:Lcom/join/mgps/Util/IntentUtil;

    .line 3
    :cond_0
    sget-object v0, Lcom/join/mgps/Util/IntentUtil;->ourInstance:Lcom/join/mgps/Util/IntentUtil;

    return-object v0
.end method

.method private goLogin(Landroid/content/Context;I)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object p1

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    const/4 p1, 0x1

    return p1
.end method

.method private showUserNotLogin(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f11010d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkRealNameAndIntent(Landroid/content/Context;Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/mgps/Util/IntentUtil;->startGameCheckRealnameHasIntent(Landroid/content/Context;Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    invoke-virtual {p2, p4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    const-string p3, "login"

    .line 4
    invoke-static {p1, p2, p3}, Lcom/join/mgps/Util/UtilsMy;->f3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getSplashActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentUtil;->splashActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public goAccountCenterActivity(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/AccountCenterNewActivity_;->D0(Landroid/content/Context;)Lcom/join/mgps/activity/AccountCenterNewActivity_$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goAccountUpgradeActivity(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    return-void
.end method

.method public goBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goBuildQRCodeActivity(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/BuildQRCodeActivity_;->X0(Landroid/content/Context;)Lcom/join/mgps/activity/BuildQRCodeActivity_$c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goChangeNickname(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goCheckIn(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v1, "\u7b7e\u5230"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 5
    sget-object v1, Lcom/join/mgps/rpc/g;->M0:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method

.method public goCodesBoxActivity(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method public goCollectionCommentActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/CollectionCommentActivity_;->m1(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionCommentActivity_$u;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CollectionCommentActivity_$u;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionCommentActivity_$u;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goColloctionList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goCommentDetailActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity_;->k2(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    const-string p2, "green"

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goCommentSelfListActivity(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->f1(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivityv2_$k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method public goDownloadCenterActivity(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method public goDownloadSettingActivity(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/DownloadSettingActivity_;->Z0(Landroid/content/Context;)Lcom/join/mgps/activity/DownloadSettingActivity_$s;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goFaceTransferHomePageActivity(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/FaceTransferHomePageActivity_;->R0(Landroid/content/Context;)Lcom/join/mgps/activity/FaceTransferHomePageActivity_$e;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goFeedback(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const v1, 0x7f11024c

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/papa_help"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method

.method public goFormDetial(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goForumAndPrfileActivity(ILandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/GameAndProfileActivity_;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public goForumFid(Landroid/content/Context;I)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/ForumBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 3
    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public goForumGroupActivity(Landroid/content/Context;)V
    .locals 3

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/static/group/group_square.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public goForumGroupActivity(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/ForumActivity_;->s1(Landroid/content/Context;)Lcom/join/mgps/activity/ForumActivity_$q;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumActivity_$q;->a(I)Lcom/join/mgps/activity/ForumActivity_$q;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ForumActivity_$q;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goForumGroupActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/ForumActivity_;->s1(Landroid/content/Context;)Lcom/join/mgps/activity/ForumActivity_$q;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumActivity_$q;->a(I)Lcom/join/mgps/activity/ForumActivity_$q;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/ForumActivity_$q;->b(Ljava/lang/String;)Lcom/join/mgps/activity/ForumActivity_$q;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ForumActivity_$q;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goForumGroupMemberActivity(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity_;->Z0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumGroupMemberActivity_$j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumGroupMemberActivity_$j;->a(I)Lcom/join/mgps/activity/ForumGroupMemberActivity_$j;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ForumGroupMemberActivity_$j;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goForumMyDynamicActivity(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/ForumMyActivity_;->S0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumMyActivity_$h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method public goForumMyPostsActivity(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/join/mgps/activity/ForumMyPostsActivity_;->t1(Landroid/content/Context;)Lcom/join/mgps/activity/ForumMyPostsActivity_$p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method public goForumPostsTagSelectActivity(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->U0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;->a(I)Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;->b(I)Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;

    move-result-object p1

    const-string p2, "selectedTags"

    invoke-virtual {p1, p2, p4}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;

    invoke-virtual {p1, p5}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;->c(I)Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;

    move-result-object p1

    const/16 p2, 0x2711

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;->startForResult(I)Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goForumProfileCommentActivity(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->d1(Landroid/content/Context;)Lcom/join/mgps/activity/ForumProfileCommentActivity_$j;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method public goForumProfileFavoritesActivity(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->u2(Landroid/content/Context;)Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$a0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method public goForumProfileMessageActivity(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/message/MessageMainActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method public goFullScrVideoPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    invoke-direct {p2}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;-><init>()V

    .line 2
    invoke-virtual {p2, p3}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->n(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/FullScreenActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/FullScreenActivity_$b;->a(Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 21
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 23
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 24
    new-instance p2, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 25
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 26
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 6
    new-instance p2, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 7
    invoke-virtual {p2, p5}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 8
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 10
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 12
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p4}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 15
    new-instance p2, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 16
    invoke-virtual {p2, p7}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 17
    invoke-virtual {p2, p6}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 18
    invoke-virtual {p2, p5}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goGameDetialActivityBYDownloadTAsk(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tpl_two_position()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 6
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result p2

    invoke-direct {v1, p2}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goGameMainActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivity3_;->k3(Landroid/content/Context;)Lcom/join/mgps/activity/GameMainActivity3_$i0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/GameMainActivity3_$i0;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameMainActivity3_$i0;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/GameMainActivity3_$i0;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GameMainActivity3_$i0;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/GameMainActivity3_$i0;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goJoystickManager(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u4f60\u7684\u624b\u673a\u6682\u4e0d\u652f\u6301"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/high16 v1, 0x4000000

    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/join/mgps/activity/HandShankOverActivity_;->F0(Landroid/content/Context;)Lcom/join/mgps/activity/HandShankOverActivity_$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/HandShankOverActivity_$b;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Ln1/x;->p()Ln1/x;

    move-result-object v0

    invoke-virtual {v0}, Ln1/x;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/join/mgps/activity/HandShankYesActivity_;->m1(Landroid/content/Context;)Lcom/join/mgps/activity/HandShankYesActivity_$g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/HandShankYesActivity_$g;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/activity/HandShankNoActivity_;->g1(Landroid/content/Context;)Lcom/join/mgps/activity/HandShankNoActivity_$f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/HandShankNoActivity_$f;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_1
    return-void
.end method

.method public goLabelGroupActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/group/posts/forum_tags/tagSquare?fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public goLogin(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method public goLoginBattle(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method public goLoginInteractive(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method public goLoginNetGame(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method public goMGMainActivity2Front(Landroid/content/Context;)V
    .locals 2

    .line 10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    const-class v1, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goMGMainActivity2Front(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-class v1, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v2, "MainPos"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "classiFy"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz p4, :cond_1

    .line 7
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "classifyPrimaryIndex"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goMGSettingActivity(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/MGSettingActivity_;->O0(Landroid/content/Context;)Lcom/join/mgps/activity/MGSettingActivity_$j;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goMYAccountDetialActivity(Landroid/content/Context;Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/MYAccountDetialActivity_;->r1(Landroid/content/Context;)Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goMainLabelActivity(Landroid/content/Context;I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method

.method public goMainLabelActivity(Landroid/content/Context;IILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/join/mgps/activity/label/MainLabelActivity_;->j1(Landroid/content/Context;)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->d(I)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->b(I)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->a(I)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->c(Ljava/lang/String;)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goMainLabelActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method

.method public goMainLabelActivity(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/label/MainLabelActivity_;->j1(Landroid/content/Context;)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->d(I)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->e(Ljava/lang/String;)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->b(I)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goMyAccountLoginActivity(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;II)V

    return-void
.end method

.method public goMyAccountLoginActivity(Landroid/content/Context;II)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goMyAccountLoginActivityNewTask(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goMyGameManagerActivity(Landroid/content/Context;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/join/mgps/activity/MGMainActivity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/activity/MyGameManagerActivity_;->E0(Landroid/content/Context;)Lcom/join/mgps/activity/MyGameManagerActivity_$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goMyVoucherActivity(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method public goPAPayCenterActivity(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/PAPayCenterActivity_;->S0(Landroid/content/Context;)Lcom/join/mgps/activity/PAPayCenterActivity_$h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method public goQQChart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mqqwpa://im/chat?chat_type=wpa&uin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&version=1"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public goQQGroup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/Util/IntentUtil;->joinQQGroup(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public goSearchHintActivity(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goSearchHintActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/SearchHintActivity_$y;->c(Ljava/lang/String;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goSearchHintActivity(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 0
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/SearchHintActivity_$y;->d(Ljava/util/ArrayList;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/SearchHintActivity_$y;->b(I)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goSearchListActivity(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/SearchListActivity1_;->s1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/SearchListActivity1_$o;->d(Ljava/lang/String;)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/SearchListActivity1_$o;->c(Z)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goShareWebActivityNewTask(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x10000000

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "intentdate"

    .line 3
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "com.join.mgps.activity.ShareWebActivity_"

    .line 5
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/ShareWebActivity_$f0;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public goSmashGoldenEgg(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v1, "\u7838\u91d1\u86cb"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 5
    sget-object v1, Lcom/join/mgps/rpc/g;->N0:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method

.method public goSvip(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member/vip_view/welcome?go=svip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public goTagGameListActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/TagGameListActivity_;->d1(Landroid/content/Context;)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$r;->b(I)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/TagGameListActivity_$r;->e(I)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/TagGameListActivity_$r;->d(Ljava/lang/String;)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public goVip(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member/vip_view/welcome?go=vip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public goVipCdk(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member/vip_view/welfare/cdk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public goVipForum(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member/vip_view/welfare/forum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public goVipMessage(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member/vip_view/welfare/ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public goWirelessSettings(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  intentActivity"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "info"

    invoke-static {v4, v0}, Lcom/join/mgps/Util/t0;->h(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v0

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "\\|"

    const-string v8, "\u6e38\u620f\u672a\u4e0b\u8f7d,\u8bf7\u5148\u4e0b\u8f7d\u6e38\u620f."

    const-string v9, "gameId"

    const-string v10, "com.join.downloadbygameid.action.broadcast"

    const-string v11, ""

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    :pswitch_1
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;

    invoke-virtual {v0, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->getGame_id()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->getPost_id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 7
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/IntroductionActivity_;->F1(Landroid/content/Context;)Lcom/join/mgps/activity/IntroductionActivity_$w;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/IntroductionActivity_$w;->e(I)Lcom/join/mgps/activity/IntroductionActivity_$w;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/join/mgps/activity/IntroductionActivity_$w;->a(Ljava/lang/String;)Lcom/join/mgps/activity/IntroductionActivity_$w;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/IntroductionActivity_$w;->c(Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;)Lcom/join/mgps/activity/IntroductionActivity_$w;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/join/mgps/activity/IntroductionActivity_$w;->d(I)Lcom/join/mgps/activity/IntroductionActivity_$w;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/IntroductionActivity_$w;->c(Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;)Lcom/join/mgps/activity/IntroductionActivity_$w;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 9
    :pswitch_2
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v15, v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_3
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->autodown(Z)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->extBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 13
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 15
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 16
    array-length v3, v0

    if-le v3, v7, :cond_26

    .line 17
    aget-object v3, v0, v15

    .line 18
    aget-object v0, v0, v7

    .line 19
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_;->o0(Landroid/content/Context;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->a(Ljava/lang/String;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;->b(I)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 20
    :pswitch_4
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 22
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 23
    array-length v3, v0

    if-lez v3, :cond_26

    .line 24
    aget-object v3, v0, v15

    .line 25
    array-length v4, v0

    if-le v4, v7, :cond_4

    .line 26
    aget-object v11, v0, v7

    .line 27
    :cond_4
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 29
    :goto_1
    invoke-static {v11}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 30
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 31
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/label/MainLabelActivity_;->j1(Landroid/content/Context;)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->a(I)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->b(I)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->d(I)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    goto/16 :goto_9

    .line 32
    :pswitch_5
    new-instance v0, Lcom/join/mgps/dto/GameInfoBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/GameInfoBean;->setGame_name(Ljava/lang/String;)V

    .line 35
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->v4(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->c(Lcom/join/mgps/dto/GameInfoBean;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 37
    :pswitch_6
    new-instance v4, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;-><init>()V

    .line 38
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->setTid(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :goto_2
    invoke-static {v2, v4}, Lcom/join/mgps/Util/i0;->D0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V

    goto/16 :goto_9

    .line 41
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    .line 42
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v3, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_8

    .line 43
    invoke-static {v2, v0}, Lcom/join/mgps/Util/UtilsMy;->d0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_9

    .line 44
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    .line 45
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    iget-object v3, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 49
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    .line 50
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v3, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_9

    .line 51
    invoke-static {v2, v0}, Lcom/join/mgps/Util/UtilsMy;->d0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_9

    .line 52
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    .line 53
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    iget-object v3, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 57
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    .line 58
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v3, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_a

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "  checkupdate"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/join/mgps/Util/t0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v2, v0}, Lcom/join/mgps/Util/UtilsMy;->d0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_9

    .line 61
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    .line 62
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    iget-object v3, v1, Lcom/join/mgps/Util/IntentUtil;->gameid:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v0, v1, Lcom/join/mgps/Util/IntentUtil;->intent2:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 66
    :pswitch_a
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    :goto_3
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 69
    invoke-virtual {v0, v15}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/join/mgps/Util/i0;->w0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ExtBean;)V

    goto/16 :goto_9

    .line 71
    :pswitch_b
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    :goto_4
    :try_start_6
    new-instance v0, Lcom/join/mgps/dto/ForumBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 74
    invoke-virtual {v0, v15}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/join/mgps/Util/i0;->s0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;Lcom/join/mgps/dto/ExtBean;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_9

    :catch_5
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 77
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    goto :goto_5

    .line 79
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 81
    :cond_c
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/GameInformationActivityV2_;->M1(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/GameInformationActivityV2_$y;->c(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/join/mgps/activity/GameInformationActivityV2_$y;->d(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/join/mgps/activity/GameInformationActivityV2_$y;->a(Z)Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/GameInformationActivityV2_$y;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 82
    :pswitch_d
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 85
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef"

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 86
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 87
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 88
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_9

    :catch_6
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 90
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, ".taobao.com/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, ".tmall.com/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v4

    const-string v6, "com.taobao.taobao"

    invoke-virtual {v4, v2, v6}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 92
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 93
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 95
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "com.taobao.tao.detail.activity.DetailActivity"

    .line 96
    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 98
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    :pswitch_f
    const/16 v0, 0xa

    .line 99
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->A1(I)I

    .line 100
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->B1(I)Ljava/lang/String;

    .line 101
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getJump_type()I

    move-result v4

    const-string v5, "MainPos"

    const/high16 v6, 0x24000000

    if-eq v4, v7, :cond_1b

    if-eq v4, v14, :cond_18

    if-eq v4, v13, :cond_17

    if-eq v4, v12, :cond_16

    const/4 v8, 0x6

    if-eq v4, v8, :cond_15

    const/4 v8, 0x7

    if-eq v4, v8, :cond_14

    const/16 v9, 0x8

    if-eq v4, v9, :cond_13

    const/16 v9, 0x23

    if-eq v4, v9, :cond_12

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    const-string v7, "title"

    packed-switch v4, :pswitch_data_3

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    const-class v3, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 106
    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 108
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 109
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/SimulatorFastEntryActivity_;->L0(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorFastEntryActivity_$j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 110
    :pswitch_11
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 112
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    :cond_10
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 115
    :pswitch_12
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    :cond_11
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :pswitch_13
    const/16 v0, 0xe

    .line 120
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->A1(I)I

    move-result v3

    .line 121
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->B1(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/SimulatorAreaActivity_;->Y0(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/SimulatorAreaActivity_$n;->b(I)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity_$n;->a(Ljava/lang/String;)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    :pswitch_14
    const/16 v0, 0xc

    .line 123
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->A1(I)I

    move-result v3

    .line 124
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->B1(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/SimulatorAreaActivity_;->Y0(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/SimulatorAreaActivity_$n;->b(I)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity_$n;->a(Ljava/lang/String;)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    :pswitch_15
    const/16 v0, 0xb

    .line 126
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->A1(I)I

    move-result v3

    .line 127
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->B1(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/SimulatorAreaActivity_;->Y0(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/SimulatorAreaActivity_$n;->b(I)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity_$n;->a(Ljava/lang/String;)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 129
    :pswitch_16
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->A1(I)I

    move-result v3

    .line 130
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->B1(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/SimulatorAreaActivity_;->Y0(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/SimulatorAreaActivity_$n;->b(I)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity_$n;->a(Ljava/lang/String;)Lcom/join/mgps/activity/SimulatorAreaActivity_$n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 132
    :pswitch_17
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity_;->K0(Landroid/content/Context;)Lcom/join/mgps/activity/PaPaStandAloneV2Activity_$f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 133
    :pswitch_18
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/vipzone/VipCenterActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 134
    :pswitch_19
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    move-result-object v0

    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;->boardId(I)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 135
    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    move-result-object v0

    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;->boardId(I)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 136
    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    move-result-object v0

    const/16 v2, 0x35

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;->boardId(I)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 137
    :pswitch_1c
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    move-result-object v0

    const/16 v2, 0x34

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;->boardId(I)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 138
    :pswitch_1d
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/r;->i(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 139
    :pswitch_1e
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goMGSettingActivity(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 140
    :pswitch_1f
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goSvip(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 141
    :pswitch_20
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 142
    invoke-virtual {v0, v12}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 143
    sget-object v3, Lcom/join/mgps/rpc/g;->s:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 144
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 145
    :pswitch_21
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 146
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goMYAccountDetialActivity(Landroid/content/Context;Lcom/join/mgps/dto/AccountBean;)V

    goto/16 :goto_9

    .line 147
    :pswitch_22
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/GameDiscoverActivity_;->P0(Landroid/content/Context;)Lcom/join/mgps/activity/GameDiscoverActivity_$h;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/GameDiscoverActivity_$h;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/GameDiscoverActivity_$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 148
    :pswitch_23
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 149
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2_;->f1(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivityv2_$k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 150
    :pswitch_24
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->H0(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;->b(I)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 151
    :pswitch_25
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/LargeSingePlayerGameActivity_;->I0(Landroid/content/Context;)Lcom/join/mgps/activity/LargeSingePlayerGameActivity_$g;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/join/mgps/activity/LargeSingePlayerGameActivity_$g;->a(I)Lcom/join/mgps/activity/LargeSingePlayerGameActivity_$g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 152
    :pswitch_26
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goDownloadSettingActivity(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 153
    :pswitch_27
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goFeedback(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 154
    :pswitch_28
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goDownloadSettingActivity(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 155
    :pswitch_29
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/rpc/g;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Auxiliary_tool"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 156
    :pswitch_2a
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goJoystickManager(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 157
    :pswitch_2b
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goFaceTransferHomePageActivity(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 158
    :pswitch_2c
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 159
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 160
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 161
    :pswitch_2d
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 162
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/static/vip2020/v2/index.html#/giftCenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 163
    :pswitch_2e
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    .line 164
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 165
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goPAPayCenterActivity(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 166
    :pswitch_2f
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, v15, v2}, Lcom/join/mgps/Util/IntentUtil;->goForumAndPrfileActivity(ILandroid/content/Context;)V

    goto/16 :goto_9

    .line 167
    :pswitch_30
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goForumMyDynamicActivity(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 168
    :pswitch_31
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goForumProfileMessageActivity(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 169
    :pswitch_32
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->H0(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;->b(I)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 170
    :pswitch_33
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goCodesBoxActivity(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 171
    :pswitch_34
    invoke-direct/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 172
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 173
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 174
    :pswitch_35
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 175
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/PAPayCenterActivity_;->S0(Landroid/content/Context;)Lcom/join/mgps/activity/PAPayCenterActivity_$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 176
    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/DocumentManageActivity_;->q1(Landroid/content/Context;)Lcom/join/mgps/activity/DocumentManageActivity_$u;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/join/mgps/activity/DocumentManageActivity_$u;->a(I)Lcom/join/mgps/activity/DocumentManageActivity_$u;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/DocumentManageActivity_$u;->b(Ljava/lang/String;)Lcom/join/mgps/activity/DocumentManageActivity_$u;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 177
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v4, Lcom/papa/sim/statistic/Event;->startArchiveManagement:Lcom/papa/sim/statistic/Event;

    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    const-string v5, "2"

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/papa/sim/statistic/p;->U0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 178
    :cond_13
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/MGInformationActivity_;->T0(Landroid/content/Context;)Lcom/join/mgps/activity/MGInformationActivity_$l;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/MGInformationActivity_$l;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/MGInformationActivity_$l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 179
    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/GameDiscoverActivity_;->P0(Landroid/content/Context;)Lcom/join/mgps/activity/GameDiscoverActivity_$h;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/GameDiscoverActivity_$h;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/GameDiscoverActivity_$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 180
    :cond_15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    const-class v3, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 182
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 184
    invoke-virtual {v3, v5, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 186
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 187
    :cond_16
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/ForumIndexActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 188
    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/NewArenaMainActivty_;->F1(Landroid/content/Context;)Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 189
    :cond_18
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 190
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    const/4 v0, 0x1

    :goto_6
    if-ne v0, v7, :cond_1a

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "typeId"

    .line 193
    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "tagId"

    const-string v4, "0"

    .line 194
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "tagName"

    const-string v4, "\u5168\u90e8\u6e38\u620f"

    .line 195
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 197
    :cond_1a
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "typeId"

    .line 198
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->A1(I)I

    move-result v0

    const-string v5, "tagId"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExt1()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tagName"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 202
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    const-class v3, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 204
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 206
    invoke-virtual {v3, v5, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 208
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 209
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_26

    .line 210
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v14, :cond_1f

    if-eq v0, v13, :cond_1e

    if-eq v0, v12, :cond_1d

    const/4 v4, 0x6

    if-eq v0, v4, :cond_1c

    goto/16 :goto_9

    .line 211
    :cond_1c
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->j1(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleSixActivity_$x;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$x;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionModuleSixActivity_$x;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$x;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/CollectionModuleSixActivity_$x;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 212
    :cond_1d
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/CollectionModuleFourActivity_;->c1(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleFourActivity_$s;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleFourActivity_$s;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionModuleFourActivity_$s;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleFourActivity_$s;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/CollectionModuleFourActivity_$s;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 213
    :cond_1e
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->N0(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 214
    :cond_1f
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->e1(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_9

    .line 215
    :pswitch_37
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v4, 0x0

    goto :goto_7

    :cond_20
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move v4, v0

    .line 216
    :goto_7
    :try_start_a
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 217
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    .line 218
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    :cond_21
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v0

    if-nez v0, :cond_22

    .line 220
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    invoke-virtual {v3, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    :cond_22
    if-eq v4, v7, :cond_24

    if-eq v4, v13, :cond_23

    .line 221
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->autodown(Z)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->extBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_9

    .line 222
    :cond_23
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->autodown(Z)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->extBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_9

    .line 223
    :cond_24
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getJump_type()I

    move-result v0

    if-nez v0, :cond_25

    .line 224
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/MGGameDetailActivity_;->E3(Landroid/content/Context;)Lcom/join/mgps/activity/MGGameDetailActivity_$m1;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/MGGameDetailActivity_$m1;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/MGGameDetailActivity_$m1;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/MGGameDetailActivity_$m1;->a(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/MGGameDetailActivity_$m1;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_9

    .line 225
    :cond_25
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->autodown(Z)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;->extBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_a
    :cond_26
    :goto_9
    :pswitch_38
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_38
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2f
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/IntentUtil;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isTourist(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p1

    return p1
.end method

.method public joinQQGroup(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSplashActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentUtil;->splashActivity:Landroid/app/Activity;

    return-void
.end method

.method public startGameCheckRealnameHasIntent(Landroid/content/Context;Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/MApplication;->J:Lcom/join/mgps/activity/login/LoginCfgsBean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getIs_open_certify()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 2
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastShowRealNameTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 4
    invoke-static {v3, v4}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    sget-object v3, Lcom/MApplication;->J:Lcom/join/mgps/activity/login/LoginCfgsBean;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->todayShowRealNameCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    sget-object v4, Lcom/MApplication;->J:Lcom/join/mgps/activity/login/LoginCfgsBean;

    invoke-virtual {v4}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getDaily_show_count()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->startgametimes_open_certify()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v3

    sget-object v4, Lcom/MApplication;->J:Lcom/join/mgps/activity/login/LoginCfgsBean;

    invoke-virtual {v4}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getTimes_open_certify()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getIs_real_name()I

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lcom/MApplication;->J:Lcom/join/mgps/activity/login/LoginCfgsBean;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getIs_open_certify()I

    move-result p2

    if-ne p2, v2, :cond_7

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->startgametimes_open_certify()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->startgametimes_open_certify()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p1

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    sget-object p2, Lcom/MApplication;->J:Lcom/join/mgps/activity/login/LoginCfgsBean;

    invoke-virtual {p2}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getCertify_is_allow_skip()I

    move-result p2

    const-string v3, "&gameId="

    const-string v4, "/user/activity/real_name/index?from="

    if-nez p2, :cond_3

    .line 13
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/rpc/g;->G:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->todayShowRealNameCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_4

    .line 15
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/rpc/g;->G:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->todayShowRealNameCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p1

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastShowRealNameTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return v1

    .line 18
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastShowRealNameTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->startgametimes_open_certify()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_6

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->startgametimes_open_certify()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p1

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return v1

    .line 21
    :cond_6
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return v2

    :cond_7
    return v1
.end method
