.class public final Lcom/join/mgps/activity/GameTransferActivity_;
.super Lcom/join/mgps/activity/GameTransferActivity;
.source "GameTransferActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameTransferActivity_$k;
    }
.end annotation


# static fields
.field public static final I0:Ljava/lang/String; = "Flag"


# instance fields
.field private final G0:Li3/c;

.field private final H0:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameTransferActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity_;->G0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity_;->H0:Ljava/util/Map;

    return-void
.end method

.method static synthetic Q1(Lcom/join/mgps/activity/GameTransferActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic R1(Lcom/join/mgps/activity/GameTransferActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->I0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic S1(Lcom/join/mgps/activity/GameTransferActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameTransferActivity;->t1()V

    return-void
.end method

.method static synthetic T1(Lcom/join/mgps/activity/GameTransferActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameTransferActivity;->q1()V

    return-void
.end method

.method public static U1(Landroid/content/Context;)Lcom/join/mgps/activity/GameTransferActivity_$k;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameTransferActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameTransferActivity_$k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static V1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GameTransferActivity_$k;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameTransferActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameTransferActivity_$k;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->y:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const-string p1, "power"

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->s0:Landroid/os/PowerManager;

    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/j2;->y(Landroid/content/Context;Ljava/lang/Object;)Lcom/join/mgps/adapter/j2;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    .line 5
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/h2;->x(Landroid/content/Context;Ljava/lang/Object;)Lcom/join/mgps/adapter/h2;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/GameTransferActivity_;->injectExtras_()V

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

    const-string v1, "Flag"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->q:I

    :cond_0
    return-void
.end method


# virtual methods
.method I0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameTransferActivity_$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameTransferActivity_$i;-><init>(Lcom/join/mgps/activity/GameTransferActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity_;->H0:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity_;->G0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0044

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f0905aa

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0905a8

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0905a6

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09059b

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090598

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f090599

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0905a7

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    const v0, 0x7f0905a9

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f0905a2

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f09059c

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->o:Landroid/widget/RelativeLayout;

    const v0, 0x7f0905a3

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090595

    .line 12
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 14
    new-instance v2, Lcom/join/mgps/activity/GameTransferActivity_$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameTransferActivity_$b;-><init>(Lcom/join/mgps/activity/GameTransferActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 16
    new-instance v2, Lcom/join/mgps/activity/GameTransferActivity_$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameTransferActivity_$c;-><init>(Lcom/join/mgps/activity/GameTransferActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 18
    new-instance v2, Lcom/join/mgps/activity/GameTransferActivity_$d;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameTransferActivity_$d;-><init>(Lcom/join/mgps/activity/GameTransferActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 19
    new-instance v1, Lcom/join/mgps/activity/GameTransferActivity_$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameTransferActivity_$e;-><init>(Lcom/join/mgps/activity/GameTransferActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 21
    new-instance v1, Lcom/join/mgps/activity/GameTransferActivity_$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameTransferActivity_$f;-><init>(Lcom/join/mgps/activity/GameTransferActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 22
    new-instance v0, Lcom/join/mgps/activity/GameTransferActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameTransferActivity_$g;-><init>(Lcom/join/mgps/activity/GameTransferActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->S0()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity_;->H0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameTransferActivity_$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameTransferActivity_$a;-><init>(Lcom/join/mgps/activity/GameTransferActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity_;->G0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity_;->G0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity_;->G0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameTransferActivity_;->injectExtras_()V

    return-void
.end method

.method t1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameTransferActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameTransferActivity_$j;-><init>(Lcom/join/mgps/activity/GameTransferActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method toast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameTransferActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameTransferActivity_$h;-><init>(Lcom/join/mgps/activity/GameTransferActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
