.class public final Lcom/join/mgps/activity/MGChooseIconActivity_;
.super Lcom/join/mgps/activity/MGChooseIconActivity;
.source "MGChooseIconActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGChooseIconActivity_$m;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String; = "accountBean"

.field public static final r:Ljava/lang/String; = "from"


# instance fields
.field private final o:Li3/c;

.field private final p:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity_;->o:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity_;->p:Ljava/util/Map;

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/MGChooseIconActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->J0()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/MGChooseIconActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->I0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/MGChooseIconActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->H0()V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/MGChooseIconActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->K0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/MGChooseIconActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showLoading()V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/MGChooseIconActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showLodingDismis()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/MGChooseIconActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/MGChooseIconActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->G0()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/MGChooseIconActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->L0(Ljava/lang/String;)V

    return-void
.end method

.method public static V0(Landroid/content/Context;)Lcom/join/mgps/activity/MGChooseIconActivity_$m;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGChooseIconActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGChooseIconActivity_$m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static W0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MGChooseIconActivity_$m;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGChooseIconActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGChooseIconActivity_$m;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MGChooseIconActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "accountBean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountBean;

    iput-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->g:Lcom/join/mgps/dto/AccountBean;

    :cond_0
    const-string v1, "from"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->n:I

    :cond_1
    return-void
.end method


# virtual methods
.method G0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGChooseIconActivity_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGChooseIconActivity_$b;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method H0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGChooseIconActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGChooseIconActivity_$i;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGChooseIconActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity_$h;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGChooseIconActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGChooseIconActivity_$g;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGChooseIconActivity_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity_$j;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGChooseIconActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGChooseIconActivity_$c;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGChooseIconActivity_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity_$a;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity_;->p:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity_;->o:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c03e6

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f090265

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->c:Landroid/widget/GridView;

    const v0, 0x7f091033

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 6
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09013e

    .line 7
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 8
    new-instance v2, Lcom/join/mgps/activity/MGChooseIconActivity_$d;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MGChooseIconActivity_$d;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 9
    new-instance v0, Lcom/join/mgps/activity/MGChooseIconActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGChooseIconActivity_$e;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 10
    new-instance v0, Lcom/join/mgps/activity/MGChooseIconActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGChooseIconActivity_$f;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity_;->p:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity_;->o:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity_;->o:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity_;->o:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MGChooseIconActivity_;->injectExtras_()V

    return-void
.end method

.method showLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGChooseIconActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGChooseIconActivity_$k;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingDismis()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGChooseIconActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGChooseIconActivity_$l;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
