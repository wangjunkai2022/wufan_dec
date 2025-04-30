.class public final Lcom/join/mgps/activity/PayNowActivity_;
.super Lcom/join/mgps/activity/PayNowActivity;
.source "PayNowActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/PayNowActivity_$k;
    }
.end annotation


# static fields
.field public static final x0:Ljava/lang/String; = "order"

.field public static final y0:Ljava/lang/String; = "intentDataMain"

.field public static final z0:Ljava/lang/String; = "extBean"


# instance fields
.field private final t0:Li3/c;

.field private final u0:Ljava/util/Map;
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

.field private final v0:Landroid/content/IntentFilter;

.field private final w0:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PayNowActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity_;->t0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity_;->u0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity_;->v0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/PayNowActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayNowActivity_$b;-><init>(Lcom/join/mgps/activity/PayNowActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity_;->w0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/PayNowActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PayNowActivity;->checkToken()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/PayNowActivity;->t:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/PayNowActivity_;->injectExtras_()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity_;->v0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.wechatofficialpapa"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity_;->w0:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity_;->v0:Landroid/content/IntentFilter;

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

    if-eqz v0, :cond_2

    const-string v1, "order"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PapayOrder;

    iput-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->u:Lcom/join/mgps/dto/PapayOrder;

    :cond_0
    const-string v1, "intentDataMain"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/IntentDataMain;

    iput-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->v:Lcom/join/mgps/dto/IntentDataMain;

    :cond_1
    const-string v1, "extBean"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->w:Lcom/join/mgps/dto/ExtBean;

    :cond_2
    return-void
.end method

.method public static j1(Landroid/content/Context;)Lcom/join/mgps/activity/PayNowActivity_$k;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PayNowActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayNowActivity_$k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static k1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/PayNowActivity_$k;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PayNowActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayNowActivity_$k;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method checkToken()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PayNowActivity_$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PayNowActivity_$a;-><init>(Lcom/join/mgps/activity/PayNowActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity_;->u0:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity_;->t0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0062

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PayNowActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity_;->w0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/PayNowActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f090bcb

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f090bfa

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090bef

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f090bee

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->d:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f090bf0

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f090bf5

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f090bf1

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0900c9

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f090b5c

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->i:Landroid/widget/Button;

    const v0, 0x7f0912d2

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f0900b9

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f09120f

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f090316

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f090882

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f0908a6

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f09088a

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f090874

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f090888

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->r:Landroid/widget/LinearLayout;

    const v0, 0x7f090878

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f090ba0

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09066d

    .line 21
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 23
    new-instance v2, Lcom/join/mgps/activity/PayNowActivity_$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PayNowActivity_$c;-><init>(Lcom/join/mgps/activity/PayNowActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->i:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 25
    new-instance v2, Lcom/join/mgps/activity/PayNowActivity_$d;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PayNowActivity_$d;-><init>(Lcom/join/mgps/activity/PayNowActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->j:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 27
    new-instance v2, Lcom/join/mgps/activity/PayNowActivity_$e;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PayNowActivity_$e;-><init>(Lcom/join/mgps/activity/PayNowActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->k:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 29
    new-instance v2, Lcom/join/mgps/activity/PayNowActivity_$f;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PayNowActivity_$f;-><init>(Lcom/join/mgps/activity/PayNowActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->l:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 31
    new-instance v2, Lcom/join/mgps/activity/PayNowActivity_$g;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PayNowActivity_$g;-><init>(Lcom/join/mgps/activity/PayNowActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->m:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 33
    new-instance v2, Lcom/join/mgps/activity/PayNowActivity_$h;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PayNowActivity_$h;-><init>(Lcom/join/mgps/activity/PayNowActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 34
    new-instance v1, Lcom/join/mgps/activity/PayNowActivity_$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PayNowActivity_$i;-><init>(Lcom/join/mgps/activity/PayNowActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 35
    new-instance v0, Lcom/join/mgps/activity/PayNowActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayNowActivity_$j;-><init>(Lcom/join/mgps/activity/PayNowActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity_;->u0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity_;->t0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity_;->t0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity_;->t0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/PayNowActivity_;->injectExtras_()V

    return-void
.end method
