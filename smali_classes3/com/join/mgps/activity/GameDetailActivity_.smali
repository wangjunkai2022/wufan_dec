.class public final Lcom/join/mgps/activity/GameDetailActivity_;
.super Lcom/join/mgps/activity/GameDetailActivity;
.source "GameDetailActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameDetailActivity_$g0;
    }
.end annotation


# instance fields
.field private final Y0:Li3/c;

.field private final Z0:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDetailActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity_;->Y0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity_;->Z0:Ljava/util/Map;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->showLoding()V

    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->X0()V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/GameDetailActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->L0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/GameDetailActivity_;Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/join/mgps/activity/GameDetailActivity;->f1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->H0()V

    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->d1()V

    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->a1()V

    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->M0()V

    return-void
.end method

.method static synthetic J1(Lcom/join/mgps/activity/GameDetailActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->b1(I)V

    return-void
.end method

.method static synthetic K1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->J0()V

    return-void
.end method

.method static synthetic L1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->r1()V

    return-void
.end method

.method static synthetic M1(Lcom/join/mgps/activity/GameDetailActivity_;Lcom/join/mgps/dto/ForumResponseGame;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->n1(Lcom/join/mgps/dto/ForumResponseGame;)V

    return-void
.end method

.method static synthetic N1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->o1()V

    return-void
.end method

.method static synthetic O1(Lcom/join/mgps/activity/GameDetailActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->U0(I)V

    return-void
.end method

.method static synthetic P1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->c1()V

    return-void
.end method

.method public static Q1(Landroid/content/Context;)Lcom/join/mgps/activity/GameDetailActivity_$g0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$g0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static R1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GameDetailActivity_$g0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$g0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method static synthetic t1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->Z0()V

    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/activity/GameDetailActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->G0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->K0()V

    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/activity/GameDetailActivity_;Lcom/join/mgps/dto/ForumResponseGame;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->I0(Lcom/join/mgps/dto/ForumResponseGame;)V

    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/GameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetailActivity;->T0()V

    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/activity/GameDetailActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->g1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic z1(Lcom/join/mgps/activity/GameDetailActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->F0(I)V

    return-void
.end method


# virtual methods
.method F0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetailActivity_$p;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method G0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameListItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetailActivity_$l;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetailActivity_$w;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetailActivity_$w;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method I0(Lcom/join/mgps/dto/ForumResponseGame;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetailActivity_$m;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;Lcom/join/mgps/dto/ForumResponseGame;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$e;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$b;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$s;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetailActivity_$s;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method M0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetailActivity_$y;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetailActivity_$y;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method T0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$n;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetailActivity_$i;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$r;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$a;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetailActivity_$x;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetailActivity_$x;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method b1(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetailActivity_$d;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$j;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$c;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/GameDetailActivity_$u;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/GameDetailActivity_$u;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v8, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g1(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetailActivity_$o;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity_;->Z0:Ljava/util/Map;

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

.method n1(Lcom/join/mgps/dto/ForumResponseGame;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetailActivity_$g;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;Lcom/join/mgps/dto/ForumResponseGame;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method o1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$h;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity_;->Y0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c003b

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090817

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0912f5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const v0, 0x7f090acb

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0908e7

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->d:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b5

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090e21

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->g:Landroid/widget/Button;

    const v0, 0x7f0907e0

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f090e8a

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09113e

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f091190

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f0910da

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f090826

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f09110a

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f091138

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f09092e

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f09104f

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0909eb

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->r:Landroid/widget/LinearLayout;

    const v0, 0x7f090d55

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->s:Landroid/widget/RelativeLayout;

    const v0, 0x7f090d11

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->t:Landroid/widget/ImageView;

    const v0, 0x7f09100f

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f090241

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f090f6e

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f090481

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->x:Landroid/widget/TextView;

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->t:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 26
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$k;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->v:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 28
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$v;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->h:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    .line 30
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$z;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->m:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 32
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$a0;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz p1, :cond_4

    .line 34
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$b0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$b0;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 36
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$c0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$c0;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 38
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$d0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$d0;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->g:Landroid/widget/Button;

    if-eqz p1, :cond_7

    .line 40
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$e0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$e0;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 42
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$f0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$f0;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->E0()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity_;->Z0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method r1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$f;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity_;->Y0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity_;->Y0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity_;->Y0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$q;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity_$t;-><init>(Lcom/join/mgps/activity/GameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
