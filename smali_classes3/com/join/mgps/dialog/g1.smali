.class public Lcom/join/mgps/dialog/g1;
.super Landroid/app/AlertDialog;
.source "ModQuestionnaireDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field g:Landroid/os/Handler;

.field private h:Landroid/view/View;

.field i:Landroid/widget/TextView;

.field j:Lcom/join/mgps/pref/PrefDef_;

.field private k:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f12013b

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dialog/g1;->g:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/dialog/g1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/g1;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/dialog/g1;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/dialog/g1;->f()V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/dialog/g1;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/dialog/g1;->h()V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/dialog/g1;Lcom/join/mgps/dto/ModFeedbackBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/g1;->g(Lcom/join/mgps/dto/ModFeedbackBean;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic g(Lcom/join/mgps/dto/ModFeedbackBean;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModFeedbackBean;->getShow_switch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dialog/g1;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/dialog/g1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/join/mgps/Util/z;->S(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ModFeedbackBean;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/g1;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v1}, Lcom/join/mgps/Util/z;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/g1;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/dialog/g1;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/Util/z;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic h()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    .line 5
    :cond_0
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 6
    new-instance v3, Lcom/join/mgps/dto/RequestModFeedbackArgs;

    invoke-direct {v3}, Lcom/join/mgps/dto/RequestModFeedbackArgs;-><init>()V

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/RequestModFeedbackArgs;->setUid(I)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/dialog/g1;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/RequestModFeedbackArgs;->setGameId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/join/mgps/rpc/impl/h;->E(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ModFeedbackBean;

    .line 14
    iget-object v2, p0, Lcom/join/mgps/dialog/g1;->g:Landroid/os/Handler;

    new-instance v3, Lcom/join/mgps/dialog/c1;

    invoke-direct {v3, p0}, Lcom/join/mgps/dialog/c1;-><init>(Lcom/join/mgps/dialog/g1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    iget-object v2, p0, Lcom/join/mgps/dialog/g1;->g:Landroid/os/Handler;

    new-instance v3, Lcom/join/mgps/dialog/e1;

    invoke-direct {v3, p0, v1}, Lcom/join/mgps/dialog/e1;-><init>(Lcom/join/mgps/dialog/g1;Lcom/join/mgps/dto/ModFeedbackBean;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/dialog/g1;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11029b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/g1;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/g1;->j(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public i(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/g1;->f:Ljava/lang/String;

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dialog/g1;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/g1;->e:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/g1;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/dialog/g1;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/g1;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->showmodRunNormal:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    goto :goto_0

    :cond_2
    const-string v2, "0"

    :goto_0
    invoke-virtual {p1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method j(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/g1;->g:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/dialog/f1;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/dialog/f1;-><init>(Lcom/join/mgps/dialog/g1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method k()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/mgps/dialog/d1;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/d1;-><init>(Lcom/join/mgps/dialog/g1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "1"

    const v3, 0x7f090429

    if-ne p1, v3, :cond_1

    .line 2
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/g1;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v3, Lcom/papa/sim/statistic/Event;->modRunNormal:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->modRunNormal:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v2, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_run_state(I)V

    .line 9
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/dialog/g1;->k()V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/g1;->j:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const v3, 0x7f09042a

    const/4 v4, 0x0

    if-ne p1, v3, :cond_5

    .line 12
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const/4 v0, 0x2

    .line 13
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 14
    iget-object v3, p0, Lcom/join/mgps/dialog/g1;->f:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 15
    iget-object v3, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_run_state(I)V

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v3}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v3, Lcom/papa/sim/statistic/Event;->modRunNormal:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->modRunNormal:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v2, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 20
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    move-result v4

    goto :goto_2

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->H(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    iget-object p1, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getVersion()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 24
    :cond_4
    :goto_2
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 25
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x4

    .line 26
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v0, "\u5efa\u8bae\u4e0e\u53cd\u9988"

    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://apphd.5fun.net/static/20210803feedback/index.html?gameid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dialog/g1;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&mod_version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivityNewTask(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/dialog/g1;->j:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    const v3, 0x7f090f00

    if-ne p1, v3, :cond_7

    .line 31
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 32
    invoke-virtual {p1, v4}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 33
    iget-object v3, p0, Lcom/join/mgps/dialog/g1;->f:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 34
    iget-object v3, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_run_state(I)V

    .line 35
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v3}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/join/mgps/dialog/g1;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v3, Lcom/papa/sim/statistic/Event;->modRunNormal:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_3

    .line 38
    :cond_6
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->modRunNormal:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v2, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 39
    :goto_3
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 40
    iget-object p1, p0, Lcom/join/mgps/dialog/g1;->j:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    const v0, 0x7f0907ee

    if-ne p1, v0, :cond_8

    .line 41
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_8
    :goto_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0186

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const p1, 0x7f090acd

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/g1;->i:Landroid/widget/TextView;

    const p1, 0x7f090429

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dialog/g1;->b:Landroid/view/View;

    const p1, 0x7f09042a

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dialog/g1;->c:Landroid/view/View;

    const p1, 0x7f090f00

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dialog/g1;->d:Landroid/view/View;

    const p1, 0x7f0907ee

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dialog/g1;->h:Landroid/view/View;

    const p1, 0x7f090dd1

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/dialog/g1;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0910ed

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/g1;->l:Landroid/widget/TextView;

    .line 12
    iget-object p1, p0, Lcom/join/mgps/dialog/g1;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/dialog/g1;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/dialog/g1;->d:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/dialog/g1;->j:Lcom/join/mgps/pref/PrefDef_;

    return-void
.end method
