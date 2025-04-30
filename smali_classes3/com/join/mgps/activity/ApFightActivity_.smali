.class public final Lcom/join/mgps/activity/ApFightActivity_;
.super Lcom/join/mgps/activity/ApFightActivity;
.source "ApFightActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ApFightActivity_$r;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "gameId"


# instance fields
.field private final a:Li3/c;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/IntentFilter;

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->a:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->c:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$i;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->afterStartGame()V

    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->startGameServer()V

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->startGameClient()V

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->startGameClientWifi()V

    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightAPClient()V

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightClient()V

    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->fightStartClicked()V

    return-void
.end method

.method public static L0(Landroid/content/Context;)Lcom/join/mgps/activity/ApFightActivity_$r;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$r;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static M0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ApFightActivity_$r;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$r;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity_;->injectExtras_()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity_;->c:Landroid/content/IntentFilter;

    const-string v0, "FIGHT_JOIN_SERVER"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity_;->d:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->c:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->gameId:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method afterStartGame()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$b;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method disConnectWifiFightAPClient()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ApFightActivity_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ApFightActivity_$f;-><init>(Lcom/join/mgps/activity/ApFightActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method disConnectWifiFightClient()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ApFightActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ApFightActivity_$g;-><init>(Lcom/join/mgps/activity/ApFightActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method fightStartClicked()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ApFightActivity_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ApFightActivity_$h;-><init>(Lcom/join/mgps/activity/ApFightActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->a:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ApFightActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c01dc

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ApFightActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090656

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    const v0, 0x7f0908a9

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    const v0, 0x7f09012c

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->back:Landroid/widget/ImageView;

    const v0, 0x7f0904a6

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    const v0, 0x7f090495

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    const v0, 0x7f0904a5

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    const v0, 0x7f090a63

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconAP:Landroid/widget/ImageView;

    const v0, 0x7f090a64

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconWifi:Landroid/widget/ImageView;

    const v0, 0x7f0912c6

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    const v0, 0x7f090e1b

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    const v0, 0x7f090280

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    const v0, 0x7f090b4d

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    const v0, 0x7f090e1d

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    const v0, 0x7f090282

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    const v0, 0x7f091315

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    const v0, 0x7f090b90

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->p1status_btn_around_img:Landroid/widget/ImageView;

    const v0, 0x7f0900cc

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap_net_match_info_1p_frame:Landroid/widget/ImageView;

    const v0, 0x7f0900cd

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap_net_match_info_2p_frame:Landroid/widget/ImageView;

    const v0, 0x7f090ebc

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ssidTxt:Landroid/widget/TextView;

    const v0, 0x7f09077e

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ipTxt:Landroid/widget/TextView;

    const v0, 0x7f091317

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingImg:Landroid/widget/ImageView;

    const v0, 0x7f09131c

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

    const v0, 0x7f09131d

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    const v0, 0x7f091319

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingTip1:Landroid/widget/TextView;

    const v0, 0x7f09131a

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingTip2:Landroid/widget/TextView;

    const v0, 0x7f091008

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->tipWifi:Landroid/widget/TextView;

    const v0, 0x7f0900ce

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->apfight_zxing_content_lay:Landroid/widget/RelativeLayout;

    const v0, 0x7f091007

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->tipTxt2:Landroid/widget/TextView;

    const v0, 0x7f091006

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->tipTxt1:Landroid/widget/TextView;

    const v0, 0x7f09077f

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ip_lay:Landroid/widget/LinearLayout;

    const v0, 0x7f09131b

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f091316

    .line 32
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity_$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ApFightActivity_$j;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 34
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$k;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 36
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$l;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    if-eqz p1, :cond_3

    .line 38
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$m;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 40
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$n;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->back:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 42
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$o;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 44
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$p;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconAP:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    .line 46
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$q;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconWifi:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    .line 48
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$a;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->afterViews()V

    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity_;->a:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity_;->a:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity_;->a:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity_;->injectExtras_()V

    return-void
.end method

.method startGameClient()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$d;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method startGameClientWifi()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$e;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method startGameServer()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$c;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
