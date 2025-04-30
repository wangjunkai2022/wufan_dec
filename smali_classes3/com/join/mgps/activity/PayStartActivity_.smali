.class public final Lcom/join/mgps/activity/PayStartActivity_;
.super Lcom/join/mgps/activity/PayStartActivity;
.source "PayStartActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/PayStartActivity_$h;
    }
.end annotation


# static fields
.field public static final t:Ljava/lang/String; = "accountBean"

.field public static final u:Ljava/lang/String; = "intentDataMain"


# instance fields
.field private final r:Li3/c;

.field private final s:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/PayStartActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity_;->r:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity_;->s:Ljava/util/Map;

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/PayStartActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PayStartActivity;->S0()V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/PayStartActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PayStartActivity;->N0()V

    return-void
.end method

.method public static Y0(Landroid/content/Context;)Lcom/join/mgps/activity/PayStartActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PayStartActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayStartActivity_$h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static Z0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/PayStartActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PayStartActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayStartActivity_$h;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/PayStartActivity_;->injectExtras_()V

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

    iput-object v1, p0, Lcom/join/mgps/activity/PayStartActivity;->k:Lcom/join/mgps/dto/AccountBean;

    :cond_0
    const-string v1, "intentDataMain"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/IntentDataMain;

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->l:Lcom/join/mgps/dto/IntentDataMain;

    :cond_1
    return-void
.end method


# virtual methods
.method N0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PayStartActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PayStartActivity_$g;-><init>(Lcom/join/mgps/activity/PayStartActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method S0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PayStartActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayStartActivity_$f;-><init>(Lcom/join/mgps/activity/PayStartActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity_;->s:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity_;->r:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayStartActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0063

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PayStartActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 4

    const v0, 0x7f090ed8

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->a:Landroid/widget/Button;

    const v0, 0x7f091033

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090bcd

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/FlowLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    const v0, 0x7f090bce

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f090bc7

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f090bcf

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f09024e

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->g:Landroid/widget/ImageView;

    const v0, 0x7f090e57

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f09013e

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090cd8

    .line 10
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090b7c

    .line 11
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/PayStartActivity;->a:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 13
    new-instance v3, Lcom/join/mgps/activity/PayStartActivity_$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/PayStartActivity_$a;-><init>(Lcom/join/mgps/activity/PayStartActivity_;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 14
    new-instance v2, Lcom/join/mgps/activity/PayStartActivity_$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PayStartActivity_$b;-><init>(Lcom/join/mgps/activity/PayStartActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 15
    new-instance v0, Lcom/join/mgps/activity/PayStartActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayStartActivity_$c;-><init>(Lcom/join/mgps/activity/PayStartActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 16
    new-instance v0, Lcom/join/mgps/activity/PayStartActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayStartActivity_$d;-><init>(Lcom/join/mgps/activity/PayStartActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity;->g:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 18
    new-instance v0, Lcom/join/mgps/activity/PayStartActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayStartActivity_$e;-><init>(Lcom/join/mgps/activity/PayStartActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayStartActivity;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity_;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity_;->r:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity_;->r:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity_;->r:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/PayStartActivity_;->injectExtras_()V

    return-void
.end method
