.class public final Lcom/join/mgps/activity/IntroductionActivity_;
.super Lcom/join/mgps/activity/IntroductionActivity;
.source "IntroductionActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/IntroductionActivity_$w;
    }
.end annotation


# static fields
.field public static final C0:Ljava/lang/String; = "intentDataMain"

.field public static final D0:Ljava/lang/String; = "postId"

.field public static final E0:Ljava/lang/String; = "tagId"

.field public static final F0:Ljava/lang/String; = "gameId"

.field public static final G0:Ljava/lang/String; = "params"


# instance fields
.field private final A0:Landroid/content/IntentFilter;

.field private final B0:Landroid/content/BroadcastReceiver;

.field private final y0:Li3/c;

.field private final z0:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity_;->y0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity_;->z0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity_;->A0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$k;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity_;->B0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/IntroductionActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/IntroductionActivity;->dismissLoadingDialog()V

    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/IntroductionActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/IntroductionActivity;->L0()V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/IntroductionActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->s1(Z)V

    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/IntroductionActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/IntroductionActivity;->W0()V

    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/IntroductionActivity_;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/IntroductionActivity;->c1(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static F1(Landroid/content/Context;)Lcom/join/mgps/activity/IntroductionActivity_$w;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$w;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static G1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/IntroductionActivity_$w;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$w;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->y:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity_;->injectExtras_()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity_;->A0:Landroid/content/IntentFilter;

    const-string v0, "com.wufun.finish.activity"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity_;->B0:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity_;->A0:Landroid/content/IntentFilter;

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

    if-eqz v0, :cond_4

    const-string v1, "intentDataMain"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/IntentDataMain;

    iput-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->t:Lcom/join/mgps/dto/IntentDataMain;

    :cond_0
    const-string v1, "postId"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->x:I

    :cond_1
    const-string v1, "tagId"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    :cond_2
    const-string v1, "gameId"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    :cond_3
    const-string v1, "params"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->E:Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;

    :cond_4
    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/activity/IntroductionActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLoding()V

    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/IntroductionActivity_;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->b1(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/activity/IntroductionActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/IntroductionActivity_;Lcom/join/mgps/dto/BbsDetailBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->p1(Lcom/join/mgps/dto/BbsDetailBean;)V

    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/activity/IntroductionActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/IntroductionActivity;->T0()V

    return-void
.end method

.method static synthetic z1(Lcom/join/mgps/activity/IntroductionActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->q1(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method L0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$i;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$f;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/IntroductionActivity_$l;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/IntroductionActivity_$l;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method b1(Ljava/lang/Integer;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/IntroductionActivity_$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/IntroductionActivity_$n;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method c1(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/IntroductionActivity_$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/IntroductionActivity_$m;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method dismissLoadingDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$h;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity_;->z0:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity_;->y0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c02e4

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity_;->B0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/IntroductionActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 8

    const v0, 0x7f0909b5

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f090481

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0908a0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f091270    # 1.8219997E38f

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->i:Landroid/widget/FrameLayout;

    const v0, 0x7f0912cb

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904d4

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->k:Landroid/widget/FrameLayout;

    const v0, 0x7f09081f

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f091161

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0910e1

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f090bff

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->p:Landroid/widget/ProgressBar;

    const v0, 0x7f0904d3

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->q:Landroid/widget/FrameLayout;

    const v0, 0x7f091199

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f090952

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f090cfb

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 16
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090942

    .line 17
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090d11

    .line 18
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090956

    .line 19
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f09091a

    .line 20
    invoke-interface {p1, v5}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09091b

    .line 21
    invoke-interface {p1, v6}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090951

    .line 22
    invoke-interface {p1, v7}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 23
    new-instance v7, Lcom/join/mgps/activity/IntroductionActivity_$o;

    invoke-direct {v7, p0}, Lcom/join/mgps/activity/IntroductionActivity_$o;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 25
    new-instance v7, Lcom/join/mgps/activity/IntroductionActivity_$p;

    invoke-direct {v7, p0}, Lcom/join/mgps/activity/IntroductionActivity_$p;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 26
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$q;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 27
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$r;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 28
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$s;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 29
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$t;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v5, :cond_6

    .line 30
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$u;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz v6, :cond_7

    .line 31
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$v;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->s:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 33
    new-instance v1, Lcom/join/mgps/activity/IntroductionActivity_$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/IntroductionActivity_$a;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 34
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$b;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->afterview()V

    return-void
.end method

.method p1(Lcom/join/mgps/dto/BbsDetailBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/IntroductionActivity_$e;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;Lcom/join/mgps/dto/BbsDetailBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity_;->z0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q1(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/IntroductionActivity_$g;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method s1(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/IntroductionActivity_$j;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity_;->y0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity_;->y0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity_;->y0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$c;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity_$d;-><init>(Lcom/join/mgps/activity/IntroductionActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
