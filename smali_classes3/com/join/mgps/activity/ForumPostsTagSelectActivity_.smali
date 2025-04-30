.class public final Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;
.super Lcom/join/mgps/activity/ForumPostsTagSelectActivity;
.source "ForumPostsTagSelectActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;
    }
.end annotation


# static fields
.field public static final w:Ljava/lang/String; = "action"

.field public static final x:Ljava/lang/String; = "post_type"

.field public static final y:Ljava/lang/String; = "pid"


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

.field private final u:Landroid/content/IntentFilter;

.field private final v:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->s:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->t:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->u:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$a;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->v:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->O0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->D0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->E0(I)V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->M0()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->N0()V

    return-void
.end method

.method public static U0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static V0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$i;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->injectExtras_()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->u:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->u:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->v:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->u:Landroid/content/IntentFilter;

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

    const-string v1, "action"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->l:I

    :cond_0
    const-string v1, "post_type"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->m:I

    :cond_1
    const-string v1, "pid"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->n:I

    :cond_2
    return-void
.end method


# virtual methods
.method D0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$e;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method E0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$f;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method M0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$g;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method N0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$h;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method O0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$d;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->t:Ljava/util/Map;

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
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->s:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0038

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090088

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f09013e

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0908a2

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0908e1

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->d:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f090986

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f090d0e

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->f:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$b;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 9
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_$c;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->t:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->s:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->s:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->s:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity_;->injectExtras_()V

    return-void
.end method
