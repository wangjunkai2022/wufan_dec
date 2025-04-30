.class public final Lcom/join/mgps/activity/ShareGameActivity_;
.super Lcom/join/mgps/activity/ShareGameActivity;
.source "ShareGameActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ShareGameActivity_$o;
    }
.end annotation


# static fields
.field public static final y0:Ljava/lang/String; = "downloadTask"


# instance fields
.field private final u0:Li3/c;

.field private final v0:Ljava/util/Map;
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

.field private final w0:Landroid/content/IntentFilter;

.field private final x0:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareGameActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->u0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->v0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->w0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$f;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->x0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/ShareGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareGameActivity;->M0()V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/ShareGameActivity_;Lcom/join/mgps/dto/GameShareData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareGameActivity;->W0(Lcom/join/mgps/dto/GameShareData;)V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/ShareGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareGameActivity;->I0()V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/ShareGameActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareGameActivity;->O0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/ShareGameActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareGameActivity;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public static d1(Landroid/content/Context;)Lcom/join/mgps/activity/ShareGameActivity_$o;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$o;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static e1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ShareGameActivity_$o;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$o;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareGameActivity_;->injectExtras_()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity_;->w0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity_;->x0:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->w0:Landroid/content/IntentFilter;

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

    const-string v1, "downloadTask"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_0
    return-void
.end method


# virtual methods
.method I0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ShareGameActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ShareGameActivity_$c;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method M0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$a;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ShareGameActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ShareGameActivity_$e;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method O0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ShareGameActivity_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ShareGameActivity_$d;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method W0(Lcom/join/mgps/dto/GameShareData;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareGameActivity_$b;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;Lcom/join/mgps/dto/GameShareData;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->v0:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->u0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ShareGameActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c006b

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ShareGameActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->x0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 5

    const v0, 0x7f091018

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090132

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090a98

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090a9a

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0900e1

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f090ed5

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f090687

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09122b

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090e34

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f090ecd

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f09100c

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f0902c8

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f090ed6

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f090e33

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f090e39

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f090e09

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->p:Lcom/join/mgps/customview/MStarBar;

    const v0, 0x7f090e0a

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->q:Lcom/join/mgps/customview/MStarBar;

    const v0, 0x7f090e0b

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->r:Lcom/join/mgps/customview/MStarBar;

    const v0, 0x7f090e0c

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->s:Lcom/join/mgps/customview/MStarBar;

    const v0, 0x7f09122c

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->t:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09122d

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->u:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f091019

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09068b

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->w:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09122f

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->x:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f091237

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f091238

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f0902c4

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f0900e6

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->B:Landroid/widget/TextView;

    const v0, 0x7f091239

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f090e0f

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->D:Landroid/widget/TextView;

    const v0, 0x7f09100b

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->E:Lcom/zhy/view/flowlayout/TagFlowLayout;

    const v0, 0x7f091314

    .line 32
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->F:Landroid/widget/ImageView;

    const v0, 0x7f09012c

    .line 33
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->G:Landroid/widget/ImageView;

    const v0, 0x7f090b2c

    .line 34
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->H:Landroid/widget/ImageView;

    const v0, 0x7f0903fd

    .line 35
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->I:Landroid/widget/EditText;

    const v0, 0x7f09028d

    .line 36
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->J:Landroid/widget/ImageView;

    const v0, 0x7f090c9f

    .line 37
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0912d1

    .line 38
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09053f

    .line 39
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090c99

    .line 40
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 41
    iget-object v3, p0, Lcom/join/mgps/activity/ShareGameActivity;->J:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 42
    new-instance v4, Lcom/join/mgps/activity/ShareGameActivity_$g;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/ShareGameActivity_$g;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/ShareGameActivity;->H:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 44
    new-instance v4, Lcom/join/mgps/activity/ShareGameActivity_$h;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/ShareGameActivity_$h;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/ShareGameActivity;->G:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 46
    new-instance v4, Lcom/join/mgps/activity/ShareGameActivity_$i;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/ShareGameActivity_$i;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 47
    new-instance v3, Lcom/join/mgps/activity/ShareGameActivity_$j;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ShareGameActivity_$j;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 48
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$k;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 49
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$l;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 50
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$m;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 52
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$n;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareGameActivity;->afterView()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->v0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity_;->u0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity_;->u0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity_;->u0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareGameActivity_;->injectExtras_()V

    return-void
.end method
