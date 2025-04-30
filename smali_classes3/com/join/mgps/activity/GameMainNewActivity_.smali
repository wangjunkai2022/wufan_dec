.class public final Lcom/join/mgps/activity/GameMainNewActivity_;
.super Lcom/join/mgps/activity/GameMainNewActivity;
.source "GameMainNewActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameMainNewActivity_$z;
    }
.end annotation


# static fields
.field public static final P0:Ljava/lang/String; = "gameId"

.field public static final Q0:Ljava/lang/String; = "from"


# instance fields
.field private final N0:Li3/c;

.field private final O0:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity_;->N0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity_;->O0:Ljava/util/Map;

    return-void
.end method

.method static synthetic a0(Lcom/join/mgps/activity/GameMainNewActivity_;Lcom/join/mgps/dto/GameMainV3DataBean;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/GameMainNewActivity;->Z(Lcom/join/mgps/dto/GameMainV3DataBean;Z)V

    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->A()V

    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->W()V

    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->z()V

    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->y()V

    return-void
.end method

.method static synthetic g0(Lcom/join/mgps/activity/GameMainNewActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainNewActivity;->E(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->B()V

    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->D()V

    return-void
.end method

.method static synthetic j0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->F()V

    return-void
.end method

.method static synthetic k0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->O()V

    return-void
.end method

.method static synthetic l0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->P()V

    return-void
.end method

.method static synthetic m0(Lcom/join/mgps/activity/GameMainNewActivity_;Lcom/join/mgps/dto/GameMainV3DataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainNewActivity;->Q(Lcom/join/mgps/dto/GameMainV3DataBean;)V

    return-void
.end method

.method static synthetic n0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->K()V

    return-void
.end method

.method static synthetic o0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->S()V

    return-void
.end method

.method static synthetic p0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->l()V

    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/activity/GameMainNewActivity_;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainNewActivity;->J(Lapp/mgsim/arena/ArenaResponse;)V

    return-void
.end method

.method static synthetic r0(Lcom/join/mgps/activity/GameMainNewActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->H()V

    return-void
.end method

.method private s0(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->G0:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity_;->t0()V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    return-void
.end method

.method private t0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->C:Ljava/lang/String;

    :cond_0
    const-string v1, "from"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->D:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static u0(Landroid/content/Context;)Lcom/join/mgps/activity/GameMainNewActivity_$z;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$z;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static v0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GameMainNewActivity_$z;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$z;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method A()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainNewActivity_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainNewActivity_$j;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method B()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainNewActivity_$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainNewActivity_$o;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method D()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainNewActivity_$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainNewActivity_$p;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method E(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GameMainNewActivity_$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameMainNewActivity_$n;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method F()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainNewActivity_$q;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainNewActivity_$q;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method H()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainNewActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x5dc

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainNewActivity_$i;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method J(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameMainNewActivity_$h;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;Lapp/mgsim/arena/ArenaResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$e;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$b;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$c;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q(Lcom/join/mgps/dto/GameMainV3DataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameMainNewActivity_$d;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;Lcom/join/mgps/dto/GameMainV3DataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$f;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$a;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z(Lcom/join/mgps/dto/GameMainV3DataBean;Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity_$y;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/GameMainNewActivity_$y;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;Lcom/join/mgps/dto/GameMainV3DataBean;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity_;->O0:Ljava/util/Map;

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

.method l()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$g;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity_;->N0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameMainNewActivity_;->s0(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c003f

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameMainNewActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f090938

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->a:Landroid/view/View;

    const v0, 0x7f090575

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090572

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090576

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f090577

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f09057a

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f09057b

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f090a20

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090571

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f09103a

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f09057d

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f09057c

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f090574

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f09056f

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f0908c0

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->o:Landroid/view/View;

    const v0, 0x7f090570

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f0908c1

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->q:Landroid/view/View;

    const v0, 0x7f090578

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090573

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->s:Landroid/widget/GridView;

    const v0, 0x7f09056e

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->t:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0907c4

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->u:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0908af

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->v:Landroid/widget/RelativeLayout;

    const v0, 0x7f090d3a

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->w:Landroid/widget/LinearLayout;

    const v0, 0x7f09038a

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->x:Landroid/widget/RelativeLayout;

    const v0, 0x7f090389

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->y:Landroid/widget/RelativeLayout;

    const v0, 0x7f090e87

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->z:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090d72

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->A:Landroid/widget/RelativeLayout;

    const v0, 0x7f09065b

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->B:Landroid/widget/LinearLayout;

    const v0, 0x7f09056d

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090579

    .line 30
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->x:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 32
    new-instance v2, Lcom/join/mgps/activity/GameMainNewActivity_$k;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$k;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 34
    new-instance v2, Lcom/join/mgps/activity/GameMainNewActivity_$r;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$r;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 36
    new-instance v2, Lcom/join/mgps/activity/GameMainNewActivity_$s;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$s;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->n:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 38
    new-instance v2, Lcom/join/mgps/activity/GameMainNewActivity_$t;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$t;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 40
    new-instance v2, Lcom/join/mgps/activity/GameMainNewActivity_$u;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$u;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 41
    new-instance v1, Lcom/join/mgps/activity/GameMainNewActivity_$v;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$v;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity;->i:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 43
    new-instance v1, Lcom/join/mgps/activity/GameMainNewActivity_$w;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$w;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 44
    new-instance v0, Lcom/join/mgps/activity/GameMainNewActivity_$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainNewActivity_$x;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainNewActivity;->j()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity_;->O0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity_;->N0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity_;->N0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity_;->N0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainNewActivity_;->t0()V

    return-void
.end method

.method y()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainNewActivity_$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainNewActivity_$m;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method z()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainNewActivity_$l;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainNewActivity_$l;-><init>(Lcom/join/mgps/activity/GameMainNewActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
