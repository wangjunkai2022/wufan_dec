.class public final Lcom/join/mgps/activity/MyVoucherGameActivity_;
.super Lcom/join/mgps/activity/MyVoucherGameActivity;
.source "MyVoucherGameActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyVoucherGameActivity_$j;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String; = "mVoucher"


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
    invoke-direct {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity_;->o:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity_;->p:Ljava/util/Map;

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/MyVoucherGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->M0()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/MyVoucherGameActivity_;Lcom/join/mgps/dto/ResultMyVoucherGameBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MyVoucherGameActivity;->P0(Lcom/join/mgps/dto/ResultMyVoucherGameBean;)V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/MyVoucherGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->O0()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/MyVoucherGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/MyVoucherGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->L0()V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/MyVoucherGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->F0()V

    return-void
.end method

.method public static X0(Landroid/content/Context;)Lcom/join/mgps/activity/MyVoucherGameActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyVoucherGameActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity_$j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static Y0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MyVoucherGameActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyVoucherGameActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity_$j;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity_;->injectExtras_()V

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

    const-string v1, "mVoucher"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountVoucher;

    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->l:Lcom/join/mgps/dto/AccountVoucher;

    :cond_0
    return-void
.end method


# virtual methods
.method public F0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MyVoucherGameActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyVoucherGameActivity_$i;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method L0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyVoucherGameActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity_$h;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method M0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyVoucherGameActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity_$d;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyVoucherGameActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity_$f;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P0(Lcom/join/mgps/dto/ResultMyVoucherGameBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyVoucherGameActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyVoucherGameActivity_$e;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity_;Lcom/join/mgps/dto/ResultMyVoucherGameBean;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity_;->p:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity_;->o:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyVoucherGameActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0059

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyVoucherGameActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f091033

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0905cd

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0912b8

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0908e7

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->g:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f090f55

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f09013e

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Lcom/join/mgps/activity/MyVoucherGameActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity_$a;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->f:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 9
    new-instance v0, Lcom/join/mgps/activity/MyVoucherGameActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity_$b;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 11
    new-instance v0, Lcom/join/mgps/activity/MyVoucherGameActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity_$c;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity_;->p:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity_;->o:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity_;->o:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity_;->o:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity_;->injectExtras_()V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyVoucherGameActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity_$g;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
