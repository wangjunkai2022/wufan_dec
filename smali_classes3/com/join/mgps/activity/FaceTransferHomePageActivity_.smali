.class public final Lcom/join/mgps/activity/FaceTransferHomePageActivity_;
.super Lcom/join/mgps/activity/FaceTransferHomePageActivity;
.source "FaceTransferHomePageActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/FaceTransferHomePageActivity_$e;
    }
.end annotation


# instance fields
.field private final v:Li3/c;

.field private final w:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity_;->v:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity_;->w:Ljava/util/Map;

    return-void
.end method

.method public static R0(Landroid/content/Context;)Lcom/join/mgps/activity/FaceTransferHomePageActivity_$e;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/FaceTransferHomePageActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity_$e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static S0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/FaceTransferHomePageActivity_$e;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/FaceTransferHomePageActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity_$e;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f1103ac

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity_;->w:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity_;->v:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FaceTransferHomePageActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c01d3

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FaceTransferHomePageActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 4

    const v0, 0x7f091033

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f090b25

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f090476

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090477

    .line 4
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09013e

    .line 5
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 7
    new-instance v3, Lcom/join/mgps/activity/FaceTransferHomePageActivity_$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity_$a;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity_;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 8
    new-instance v2, Lcom/join/mgps/activity/FaceTransferHomePageActivity_$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity_$b;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 9
    new-instance v0, Lcom/join/mgps/activity/FaceTransferHomePageActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity_$c;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 10
    new-instance v0, Lcom/join/mgps/activity/FaceTransferHomePageActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity_$d;-><init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->L0()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity_;->w:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method
