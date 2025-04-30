.class public final Lcom/join/mgps/activity/NowWufunActivity_;
.super Lcom/join/mgps/activity/NowWufunActivity;
.source "NowWufunActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/NowWufunActivity_$h;
    }
.end annotation


# static fields
.field public static final p:Ljava/lang/String; = "fromTo"


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

.field private final n:Landroid/content/IntentFilter;

.field private final o:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/NowWufunActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity_;->l:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity_;->m:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity_;->n:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/NowWufunActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/NowWufunActivity_$a;-><init>(Lcom/join/mgps/activity/NowWufunActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity_;->o:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static O0(Landroid/content/Context;)Lcom/join/mgps/activity/NowWufunActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/NowWufunActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/NowWufunActivity_$h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static P0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/NowWufunActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/NowWufunActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/NowWufunActivity_$h;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/NowWufunActivity_;->injectExtras_()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity_;->n:Landroid/content/IntentFilter;

    const-string v0, "com.intent.nowwufun.everdaytab"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity_;->o:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity_;->n:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

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

    const-string v1, "fromTo"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->a:I

    :cond_0
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
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity_;->m:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity_;->l:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/NowWufunActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c04fa

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/NowWufunActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity_;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090536

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->b:Landroid/widget/FrameLayout;

    const v0, 0x7f091033

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090b47

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f09043b

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f09018f

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f09103f

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f090f32

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f09013e

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lcom/join/mgps/activity/NowWufunActivity_$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/NowWufunActivity_$b;-><init>(Lcom/join/mgps/activity/NowWufunActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 12
    new-instance v1, Lcom/join/mgps/activity/NowWufunActivity_$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/NowWufunActivity_$c;-><init>(Lcom/join/mgps/activity/NowWufunActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 14
    new-instance v1, Lcom/join/mgps/activity/NowWufunActivity_$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/NowWufunActivity_$d;-><init>(Lcom/join/mgps/activity/NowWufunActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 16
    new-instance v1, Lcom/join/mgps/activity/NowWufunActivity_$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/NowWufunActivity_$e;-><init>(Lcom/join/mgps/activity/NowWufunActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 18
    new-instance v1, Lcom/join/mgps/activity/NowWufunActivity_$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/NowWufunActivity_$f;-><init>(Lcom/join/mgps/activity/NowWufunActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 19
    new-instance v0, Lcom/join/mgps/activity/NowWufunActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/NowWufunActivity_$g;-><init>(Lcom/join/mgps/activity/NowWufunActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/NowWufunActivity;->afterviews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunActivity_;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity_;->l:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity_;->l:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/NowWufunActivity_;->l:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/NowWufunActivity_;->injectExtras_()V

    return-void
.end method
