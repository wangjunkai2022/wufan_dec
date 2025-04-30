.class public final Lcom/join/mgps/activity/arena/ArenaGameListActivity_;
.super Lcom/join/mgps/activity/arena/ArenaGameListActivity;
.source "ArenaGameListActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/ArenaGameListActivity_$l;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "mType"


# instance fields
.field private final y:Li3/c;

.field private final z:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->y:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->z:Ljava/util/Map;

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->O0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;Lcom/join/mgps/dto/ResultResMainBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->I0(Lcom/join/mgps/dto/ResultResMainBean;)V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->showLoading()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->N0()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->H0()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->K0()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->M0()V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->L0()V

    return-void
.end method

.method public static X0(Landroid/content/Context;)Lcom/join/mgps/activity/arena/ArenaGameListActivity_$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$l;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static Y0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/arena/ArenaGameListActivity_$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$l;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->l:Lcom/join/mgps/Util/b;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->injectExtras_()V

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

    const-string v1, "mType"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method H0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$j;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0(Lcom/join/mgps/dto/ResultResMainBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/NewArenaGameListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$g;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;Lcom/join/mgps/dto/ResultResMainBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$k;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$k;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method L0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$b;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method M0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$a;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method N0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$i;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$f;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->z:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->y:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0023

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f091033

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0908e7

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->e:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f09089e

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f09013e

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090d11

    .line 7
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e21

    .line 8
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 9
    new-instance v2, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$c;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 10
    new-instance v0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$d;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 11
    new-instance v0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$e;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->z:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->y:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->y:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->y:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_;->injectExtras_()V

    return-void
.end method

.method showLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity_$h;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
