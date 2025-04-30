.class public final Lcom/join/mgps/activity/AccountUpgradeActivity_;
.super Lcom/join/mgps/activity/AccountUpgradeActivity;
.source "AccountUpgradeActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/AccountUpgradeActivity_$n;
    }
.end annotation


# instance fields
.field private final l:Li3/c;

.field private final m:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_;->l:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_;->m:Ljava/util/Map;

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->M0()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/AccountUpgradeActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->L0()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->K0()V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->O0()V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/AccountUpgradeActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/join/mgps/activity/AccountUpgradeActivity;->P0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/AccountUpgradeActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/join/mgps/activity/AccountUpgradeActivity;->R0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->touristLogin()V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/AccountUpgradeActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public static b1(Landroid/content/Context;)Lcom/join/mgps/activity/AccountUpgradeActivity_$n;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountUpgradeActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity_$n;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static c1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/AccountUpgradeActivity_$n;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountUpgradeActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity_$n;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method H0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/AccountUpgradeActivity_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/AccountUpgradeActivity_$d;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountUpgradeActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity_$l;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountUpgradeActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity_$k;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method M0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountUpgradeActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity_$i;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountUpgradeActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity_$m;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/AccountUpgradeActivity_$a;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v7, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 1
    new-instance v11, Lcom/join/mgps/activity/AccountUpgradeActivity_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v11

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/join/mgps/activity/AccountUpgradeActivity_$b;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v11}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountUpgradeActivity_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity_$j;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_;->m:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_;->l:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c03e5

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountUpgradeActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f0908a2

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f090b0c

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f090be2

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f090c08

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f091256

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0905db

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->f:Landroid/widget/Button;

    const v0, 0x7f090efd

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->g:Landroid/widget/Button;

    const v0, 0x7f0900c1

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f09013e

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    new-instance v0, Lcom/join/mgps/activity/AccountUpgradeActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity_$e;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->h:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 12
    new-instance v0, Lcom/join/mgps/activity/AccountUpgradeActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity_$f;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->g:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 14
    new-instance v0, Lcom/join/mgps/activity/AccountUpgradeActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity_$g;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity;->f:Landroid/widget/Button;

    if-eqz p1, :cond_3

    .line 16
    new-instance v0, Lcom/join/mgps/activity/AccountUpgradeActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountUpgradeActivity_$h;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountUpgradeActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_;->l:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_;->l:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity_;->l:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method touristLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountUpgradeActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountUpgradeActivity_$c;-><init>(Lcom/join/mgps/activity/AccountUpgradeActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
