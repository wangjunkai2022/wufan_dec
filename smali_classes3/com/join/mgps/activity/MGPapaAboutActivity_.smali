.class public final Lcom/join/mgps/activity/MGPapaAboutActivity_;
.super Lcom/join/mgps/activity/MGPapaAboutActivity;
.source "MGPapaAboutActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGPapaAboutActivity_$j;
    }
.end annotation


# instance fields
.field private final g:Li3/c;

.field private final h:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/MGPapaAboutActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGPapaAboutActivity_;->g:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGPapaAboutActivity_;->h:Ljava/util/Map;

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/MGPapaAboutActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGPapaAboutActivity;->J0()V

    return-void
.end method

.method public static N0(Landroid/content/Context;)Lcom/join/mgps/activity/MGPapaAboutActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGPapaAboutActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGPapaAboutActivity_$j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static O0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MGPapaAboutActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGPapaAboutActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGPapaAboutActivity_$j;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method J0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGPapaAboutActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGPapaAboutActivity_$i;-><init>(Lcom/join/mgps/activity/MGPapaAboutActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGPapaAboutActivity_;->h:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGPapaAboutActivity_;->g:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGPapaAboutActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c001c

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGPapaAboutActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 8

    const v0, 0x7f091033

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGPapaAboutActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f09013e

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGPapaAboutActivity;->f:Landroid/widget/ImageView;

    const v0, 0x7f090bbe

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090bc4

    .line 4
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090bc9

    .line 5
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090bc6

    .line 6
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f091310

    .line 7
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090f0a

    .line 8
    invoke-interface {p1, v5}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090acc

    .line 9
    invoke-interface {p1, v6}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 10
    iget-object v6, p0, Lcom/join/mgps/activity/MGPapaAboutActivity;->f:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 11
    new-instance v7, Lcom/join/mgps/activity/MGPapaAboutActivity_$a;

    invoke-direct {v7, p0}, Lcom/join/mgps/activity/MGPapaAboutActivity_$a;-><init>(Lcom/join/mgps/activity/MGPapaAboutActivity_;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 12
    new-instance v6, Lcom/join/mgps/activity/MGPapaAboutActivity_$b;

    invoke-direct {v6, p0}, Lcom/join/mgps/activity/MGPapaAboutActivity_$b;-><init>(Lcom/join/mgps/activity/MGPapaAboutActivity_;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 13
    new-instance v0, Lcom/join/mgps/activity/MGPapaAboutActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGPapaAboutActivity_$c;-><init>(Lcom/join/mgps/activity/MGPapaAboutActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 14
    new-instance v0, Lcom/join/mgps/activity/MGPapaAboutActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGPapaAboutActivity_$d;-><init>(Lcom/join/mgps/activity/MGPapaAboutActivity_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 15
    new-instance v0, Lcom/join/mgps/activity/MGPapaAboutActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGPapaAboutActivity_$e;-><init>(Lcom/join/mgps/activity/MGPapaAboutActivity_;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 16
    new-instance v0, Lcom/join/mgps/activity/MGPapaAboutActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGPapaAboutActivity_$f;-><init>(Lcom/join/mgps/activity/MGPapaAboutActivity_;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v5, :cond_6

    .line 17
    new-instance v0, Lcom/join/mgps/activity/MGPapaAboutActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGPapaAboutActivity_$g;-><init>(Lcom/join/mgps/activity/MGPapaAboutActivity_;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 18
    new-instance v0, Lcom/join/mgps/activity/MGPapaAboutActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGPapaAboutActivity_$h;-><init>(Lcom/join/mgps/activity/MGPapaAboutActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGPapaAboutActivity;->D0()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGPapaAboutActivity_;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGPapaAboutActivity_;->g:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGPapaAboutActivity_;->g:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGPapaAboutActivity_;->g:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method
