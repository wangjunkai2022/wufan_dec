.class public Lcom/join/mgps/dialog/r0;
.super Landroid/app/AlertDialog;
.source "GDTAdVipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/r0$d;,
        Lcom/join/mgps/dialog/r0$e;
    }
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/RelativeLayout;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Lcom/facebook/drawee/view/SimpleDraweeView;

.field i:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

.field private j:Z

.field private k:Lcom/join/mgps/dialog/r0$d;

.field private l:I

.field private m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z

.field r:Lcom/join/mgps/ad/f;

.field s:Landroid/content/Context;

.field t:Z

.field u:Lcom/join/mgps/dialog/r0$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/join/mgps/dto/SingleGameAdCfgBean;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dialog/r0;->j:Z

    .line 3
    iput v0, p0, Lcom/join/mgps/dialog/r0;->l:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/dialog/r0;->q:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/dialog/r0;->t:Z

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/r0;->s:Landroid/content/Context;

    .line 7
    iput p4, p0, Lcom/join/mgps/dialog/r0;->l:I

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 9
    iput-object p3, p0, Lcom/join/mgps/dialog/r0;->n:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/join/mgps/dialog/r0;->o:Ljava/lang/String;

    .line 11
    iput p5, p0, Lcom/join/mgps/dialog/r0;->p:I

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/r0;->i()V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/dialog/r0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/dialog/r0;->l:I

    return p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/r0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/r0;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/dialog/r0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/r0;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/dialog/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/r0;->m()V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/dialog/r0;)Lcom/join/mgps/dialog/r0$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/r0;->k:Lcom/join/mgps/dialog/r0$d;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/dialog/r0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dialog/r0;->q:Z

    return p1
.end method

.method static synthetic h(Lcom/join/mgps/dialog/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/r0;->k()V

    return-void
.end method

.method private i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->r:Lcom/join/mgps/ad/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dialog/r0$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/r0$c;-><init>(Lcom/join/mgps/dialog/r0;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/r0;->r:Lcom/join/mgps/ad/f;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestInfoArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestInfoArgs;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->s:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestInfoArgs;->setUid(I)V

    .line 3
    new-instance v1, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;-><init>()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;->setTime(J)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;->setType(I)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dialog/r0;->s:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;->setUid(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/http/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestInfoArgs;->setInfo(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->s:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getDefalutRequestBean(Ljava/lang/Object;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/c;->O1()Lq1/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/c;->L1(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/dialog/r0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/r0$b;-><init>(Lcom/join/mgps/dialog/r0;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private m()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dialog/r0;->j:Z

    .line 3
    iget-object v2, p0, Lcom/join/mgps/dialog/r0;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ff6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 6
    iget-object v2, p0, Lcom/join/mgps/dialog/r0;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getFree_receive_vip()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getF_tip_text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getF_btn_text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getB_btn_text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getF_ic_text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getF_ic_text()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 15
    new-instance v1, Lcom/papa91/wrapper/UserPrefs;

    iget-object v2, p0, Lcom/join/mgps/dialog/r0;->s:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v1}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesHasSeeCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4ec5\u9700"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getTip_text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getT_btn_text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getB_btn_text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :catch_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f0805db

    iget-object v2, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getF_play_ic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/dialog/r0;->j:Z

    .line 23
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 25
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 26
    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->b:Landroid/widget/TextView;

    const-string v1, "\u89c2\u770b\u89c6\u9891\u5e7f\u544a\u53ef\u4ee5\u652f\u6301\u609f\u996d\u66f4\u597d\n\u66f4\u5feb\u4e0a\u4f20\u5355\u673a\u6e38\u620f\u8d44\u6e90"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->e:Landroid/widget/TextView;

    const-string v1, "\u5f00\u542f\u7f51\u7edc\u770b\u5e7f\u544a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->g:Landroid/widget/TextView;

    const-string v1, "\u72e0\u5fc3\u62d2\u7edd\uff0c\u79bb\u7ebf\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->i:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/dialog/r0;->i:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iput-object v1, p0, Lcom/join/mgps/dialog/r0;->i:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->u:Lcom/join/mgps/dialog/r0$e;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/dialog/r0;->u:Lcom/join/mgps/dialog/r0$e;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    iput-object v1, p0, Lcom/join/mgps/dialog/r0;->u:Lcom/join/mgps/dialog/r0$e;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->e(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/ad/a;->b()V

    .line 8
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method j()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/r0$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/r0$e;-><init>(Lcom/join/mgps/dialog/r0;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/r0;->u:Lcom/join/mgps/dialog/r0$e;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dialog/r0;->u:Lcom/join/mgps/dialog/r0$e;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public l(Lcom/join/mgps/dialog/r0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/r0;->k:Lcom/join/mgps/dialog/r0$d;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dialog/r0;->dismiss()V

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->c:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_4

    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/dialog/r0;->j:Z

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getFree_receive_vip()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getF_btn_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getT_btn_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.tools.AdBroadcast"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "action"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->m:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getT_btn_url()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->onMemberAdvert23:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_2

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->onAdvert23_offline:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_8

    .line 17
    iget-boolean p1, p0, Lcom/join/mgps/dialog/r0;->j:Z

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/join/mgps/dialog/r0;->q:Z

    if-nez v0, :cond_6

    .line 18
    sget-object p1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {p1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/ad/a;->e(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/a;->g(Landroid/app/Activity;)V

    .line 20
    :cond_5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->onAdvert23:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/dialog/r0;->k:Lcom/join/mgps/dialog/r0$d;

    if-eqz p1, :cond_8

    .line 22
    invoke-interface {p1}, Lcom/join/mgps/dialog/r0$d;->onAdShow()V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 23
    iget-boolean p1, p0, Lcom/join/mgps/dialog/r0;->q:Z

    if-eqz p1, :cond_7

    .line 24
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u89c6\u9891\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_7
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->gameAdvert23_offline:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 26
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/r0;->dismiss()V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/dialog/r0;->k:Lcom/join/mgps/dialog/r0$d;

    if-eqz p1, :cond_8

    .line 28
    invoke-interface {p1}, Lcom/join/mgps/dialog/r0$d;->onAdClose()V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v0, 0x11

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 11
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const p1, 0x7f0c0172

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f0907ee

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/dialog/r0;->a:Landroid/widget/ImageView;

    const p1, 0x7f0910c2

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/r0;->b:Landroid/widget/TextView;

    const p1, 0x7f090d6f

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/dialog/r0;->c:Landroid/widget/RelativeLayout;

    const p1, 0x7f091152

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/r0;->e:Landroid/widget/TextView;

    const p1, 0x7f0910c3

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/r0;->f:Landroid/widget/TextView;

    const p1, 0x7f091151

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/dialog/r0;->g:Landroid/widget/TextView;

    const p1, 0x7f090687

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/dialog/r0;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 21
    iget-object p1, p0, Lcom/join/mgps/dialog/r0;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/dialog/r0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/dialog/r0;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/dialog/r0;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->showAdvert23:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/dialog/r0;->t:Z

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->showAdvert23_offline:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/dialog/r0;->m()V

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/dialog/r0;->i()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/dialog/r0;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->e(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/dialog/r0;->l:I

    iget-object v2, p0, Lcom/join/mgps/dialog/r0;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/dialog/r0;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/dialog/r0;->r:Lcom/join/mgps/ad/f;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/ad/a;->f(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/ad/f;)V

    .line 9
    new-instance v0, Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    invoke-direct {v0}, Lcom/join/mgps/broadcast/NetBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/r0;->i:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 10
    new-instance v1, Lcom/join/mgps/dialog/r0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/r0$a;-><init>(Lcom/join/mgps/dialog/r0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/broadcast/NetBroadcastReceiver;->a(Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;)V

    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dialog/r0;->i:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/dialog/r0;->j()V

    return-void
.end method
