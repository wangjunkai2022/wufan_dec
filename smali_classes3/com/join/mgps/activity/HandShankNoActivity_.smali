.class public final Lcom/join/mgps/activity/HandShankNoActivity_;
.super Lcom/join/mgps/activity/HandShankNoActivity;
.source "HandShankNoActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HandShankNoActivity_$f;
    }
.end annotation


# instance fields
.field private final i:Li3/c;

.field private final j:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankNoActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity_;->i:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity_;->j:Ljava/util/Map;

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/HandShankNoActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HandShankNoActivity;->Y0()V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/HandShankNoActivity_;Lcom/join/mgps/db/tables/HandShankTable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/HandShankNoActivity;->b1(Lcom/join/mgps/db/tables/HandShankTable;)V

    return-void
.end method

.method public static g1(Landroid/content/Context;)Lcom/join/mgps/activity/HandShankNoActivity_$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HandShankNoActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HandShankNoActivity_$f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static h1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/HandShankNoActivity_$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HandShankNoActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HandShankNoActivity_$f;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method Y0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/HandShankNoActivity_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/HandShankNoActivity_$d;-><init>(Lcom/join/mgps/activity/HandShankNoActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method b1(Lcom/join/mgps/db/tables/HandShankTable;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/HandShankNoActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/HandShankNoActivity_$e;-><init>(Lcom/join/mgps/activity/HandShankNoActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/db/tables/HandShankTable;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity_;->j:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity_;->i:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HandShankNoActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c02bd

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankNoActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090d36

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->e:Landroid/widget/Button;

    const v0, 0x7f090bd5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0909d2

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HandShankAdView;

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->g:Lcom/join/mgps/customview/HandShankAdView;

    const v0, 0x7f090166

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090131

    .line 5
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/join/mgps/activity/HandShankNoActivity_$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HandShankNoActivity_$a;-><init>(Lcom/join/mgps/activity/HandShankNoActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Lcom/join/mgps/activity/HandShankNoActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HandShankNoActivity_$b;-><init>(Lcom/join/mgps/activity/HandShankNoActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 9
    new-instance v0, Lcom/join/mgps/activity/HandShankNoActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HandShankNoActivity_$c;-><init>(Lcom/join/mgps/activity/HandShankNoActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankNoActivity;->U0()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity_;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity_;->i:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity_;->i:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity_;->i:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method
