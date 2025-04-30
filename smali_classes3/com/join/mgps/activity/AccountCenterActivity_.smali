.class public final Lcom/join/mgps/activity/AccountCenterActivity_;
.super Lcom/join/mgps/activity/AccountCenterActivity;
.source "AccountCenterActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/AccountCenterActivity_$e0;
    }
.end annotation


# instance fields
.field private final e1:Li3/c;

.field private final f1:Ljava/util/Map;
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

.field private final g1:Landroid/content/IntentFilter;

.field private final h1:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/AccountCenterActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->e1:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->f1:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->g1:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$k;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->h1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity;->B:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->g1:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->h1:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->g1:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/AccountCenterActivity_;Lcom/join/mgps/dto/RecomCentrebean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity;->P0(Lcom/join/mgps/dto/RecomCentrebean;)V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->b1()V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->d1()V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->touristLogin()V

    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->f1()V

    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->c1()V

    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/activity/AccountCenterActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity;->K0(I)V

    return-void
.end method

.method static synthetic r1(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->Y0()V

    return-void
.end method

.method static synthetic s1(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic t1(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->X0()V

    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/AccountCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->L0()V

    return-void
.end method

.method public static w1(Landroid/content/Context;)Lcom/join/mgps/activity/AccountCenterActivity_$e0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$e0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$e0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static x1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/AccountCenterActivity_$e0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$e0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$e0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method K0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity_$o;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountCenterActivity_$t;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountCenterActivity_$t;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P0(Lcom/join/mgps/dto/RecomCentrebean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity_$j;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Lcom/join/mgps/dto/RecomCentrebean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountCenterActivity_$s;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountCenterActivity_$s;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$p;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountCenterActivity_$u;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountCenterActivity_$u;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method c1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$n;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$l;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$q;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity_$q;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$m;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->f1:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->e1:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c03e4

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->h1:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090126

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0908b4

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090b0c

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f09005d

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f09106b

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0912ad

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090bbb

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0909d6

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f0909e1

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f0909de

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f09104c

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f090a29

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f090e60

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f090bbf

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f09122e

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->o:Landroid/widget/ImageView;

    const v0, 0x7f090b9d

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f09030f

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f090e62

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->r:Landroid/widget/RelativeLayout;

    const v0, 0x7f0909d4

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->s:Landroid/widget/RelativeLayout;

    const v0, 0x7f0908ea

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->t:Landroid/widget/RelativeLayout;

    const v0, 0x7f090bd6

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f090b95

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->v:Landroid/widget/RelativeLayout;

    const v0, 0x7f090841

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->w:Landroid/widget/RelativeLayout;

    const v0, 0x7f091235

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->x:Landroid/widget/FrameLayout;

    const v0, 0x7f0903d7

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->y:Landroid/widget/RelativeLayout;

    const v0, 0x7f09048f

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->z:Landroid/widget/RelativeLayout;

    const v0, 0x7f090bc0

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->A:Landroid/widget/RelativeLayout;

    const v0, 0x7f090dc6

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/PullableScrollView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->G:Lcom/join/mgps/customview/PullableScrollView;

    const v0, 0x7f090140

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->H:Landroid/widget/RelativeLayout;

    const v0, 0x7f09013e

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->I:Landroid/widget/ImageView;

    const v0, 0x7f091033

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->J:Landroid/widget/TextView;

    const v0, 0x7f090abf

    .line 32
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->K:Landroid/widget/RelativeLayout;

    const v0, 0x7f090060

    .line 33
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->o0:Landroid/view/View;

    const v0, 0x7f091247

    .line 34
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->p0:Landroid/widget/ImageView;

    const v0, 0x7f090885

    .line 35
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->q0:Landroid/widget/LinearLayout;

    const v0, 0x7f09005f

    .line 36
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->r0:Landroid/widget/ImageView;

    const v0, 0x7f090061

    .line 37
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->s0:Landroid/widget/ImageView;

    const v0, 0x7f090721

    .line 38
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->t0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09018c

    .line 39
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->u0:Landroid/widget/TextView;

    const v0, 0x7f0912a5

    .line 40
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->v0:Lcom/join/mgps/customview/VipView;

    const v0, 0x7f090f06

    .line 41
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->w0:Lcom/join/mgps/customview/VipView;

    const v0, 0x7f09129b

    .line 42
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->x0:Lcom/join/mgps/customview/VipView;

    const v0, 0x7f09129c

    .line 43
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->y0:Landroid/widget/TextView;

    const v0, 0x7f090b98

    .line 44
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->F0:Landroid/widget/RelativeLayout;

    const v0, 0x7f090b9b

    .line 45
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->G0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090ac7

    .line 46
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->H0:Landroid/widget/RelativeLayout;

    const v0, 0x7f09074e

    .line 47
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->I0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09073c

    .line 48
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->J0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090b97

    .line 49
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->K0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0912ae

    .line 50
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->T0:Landroid/widget/LinearLayout;

    const v0, 0x7f0912af

    .line 51
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->U0:Landroid/widget/LinearLayout;

    const v0, 0x7f0912ab

    .line 52
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->V0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0912ac

    .line 53
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->W0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0912a9

    .line 54
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->X0:Landroid/widget/TextView;

    const v0, 0x7f0912aa

    .line 55
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->Y0:Landroid/widget/TextView;

    const v0, 0x7f090b99

    .line 56
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->Z0:Landroid/widget/TextView;

    const v0, 0x7f090310

    .line 57
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->a1:Landroid/widget/TextView;

    const v0, 0x7f090594

    .line 58
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->b1:Landroid/widget/TextView;

    const v0, 0x7f0912b0

    .line 59
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->c1:Landroid/view/View;

    const v0, 0x7f090479

    .line 60
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->r0:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$v;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$v;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->t:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 64
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$x;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$x;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->I:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 66
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$y;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$y;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 68
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$z;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$z;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->i:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 70
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$a0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$a0;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 72
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$b0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$b0;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->v:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 74
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$c0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$c0;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    .line 76
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$d0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$d0;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->y:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    .line 78
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$a;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    .line 80
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$b;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->A:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    .line 82
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$c;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->H:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    .line 84
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$d;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->r:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c

    .line 86
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$e;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->H0:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    .line 88
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$f;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity;->s:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 90
    new-instance v1, Lcom/join/mgps/activity/AccountCenterActivity_$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$g;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    if-eqz p1, :cond_f

    .line 91
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$h;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity;->k:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_10

    .line 93
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterActivity_$i;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_10
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountCenterActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->f1:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->e1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->e1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity_;->e1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountCenterActivity_$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AccountCenterActivity_$r;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method touristLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountCenterActivity_$w;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountCenterActivity_$w;-><init>(Lcom/join/mgps/activity/AccountCenterActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
