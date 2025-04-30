.class public final Lcom/join/mgps/activity/MyGameEditActivity_;
.super Lcom/join/mgps/activity/MyGameEditActivity;
.source "MyGameEditActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyGameEditActivity_$k;
    }
.end annotation


# instance fields
.field private final s:Li3/c;

.field private final t:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGameEditActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity_;->s:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity_;->t:Ljava/util/Map;

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/MyGameEditActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MyGameEditActivity;->S0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/MyGameEditActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->L0()V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/MyGameEditActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->W0()V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/MyGameEditActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->O0()V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/MyGameEditActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MyGameEditActivity;->P0(I)V

    return-void
.end method

.method public static d1(Landroid/content/Context;)Lcom/join/mgps/activity/MyGameEditActivity_$k;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGameEditActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGameEditActivity_$k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static e1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MyGameEditActivity_$k;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGameEditActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGameEditActivity_$k;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method L0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGameEditActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGameEditActivity_$h;-><init>(Lcom/join/mgps/activity/MyGameEditActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGameEditActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGameEditActivity_$j;-><init>(Lcom/join/mgps/activity/MyGameEditActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MyGameEditActivity_$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MyGameEditActivity_$a;-><init>(Lcom/join/mgps/activity/MyGameEditActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method S0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGameEditActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyGameEditActivity_$g;-><init>(Lcom/join/mgps/activity/MyGameEditActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGameEditActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGameEditActivity_$i;-><init>(Lcom/join/mgps/activity/MyGameEditActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity_;->t:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity_;->s:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyGameEditActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c005a

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyGameEditActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f09078b

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0908e1

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->c:Landroid/widget/ListView;

    const v0, 0x7f0903f8

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    const v0, 0x7f090b21

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0903f6

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 6
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0903f7

    .line 7
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 8
    new-instance v2, Lcom/join/mgps/activity/MyGameEditActivity_$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyGameEditActivity_$b;-><init>(Lcom/join/mgps/activity/MyGameEditActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 10
    new-instance v2, Lcom/join/mgps/activity/MyGameEditActivity_$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyGameEditActivity_$c;-><init>(Lcom/join/mgps/activity/MyGameEditActivity_;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 11
    new-instance v0, Lcom/join/mgps/activity/MyGameEditActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGameEditActivity_$d;-><init>(Lcom/join/mgps/activity/MyGameEditActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 13
    new-instance v1, Lcom/join/mgps/activity/MyGameEditActivity_$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyGameEditActivity_$e;-><init>(Lcom/join/mgps/activity/MyGameEditActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 14
    new-instance v0, Lcom/join/mgps/activity/MyGameEditActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGameEditActivity_$f;-><init>(Lcom/join/mgps/activity/MyGameEditActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity_;->t:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity_;->s:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity_;->s:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity_;->s:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method
