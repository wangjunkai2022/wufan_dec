.class public final Lcom/join/mgps/activity/CheckInviteDialogActivity_;
.super Lcom/join/mgps/activity/CheckInviteDialogActivity;
.source "CheckInviteDialogActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;
    }
.end annotation


# static fields
.field public static final y0:Ljava/lang/String; = "data"


# instance fields
.field private final w0:Li3/c;

.field private final x0:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->w0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->x0:Ljava/util/Map;

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/CheckInviteDialogActivity_;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->V0(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/CheckInviteDialogActivity_;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->P0(Lapp/mgsim/arena/ArenaResponse;)V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/CheckInviteDialogActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/CheckInviteDialogActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->S0(I)V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/CheckInviteDialogActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->N0()V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/CheckInviteDialogActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->W0()V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/CheckInviteDialogActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/CheckInviteDialogActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->O0()V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/CheckInviteDialogActivity_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->H0(Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/CheckInviteDialogActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->getData()V

    return-void
.end method

.method public static i1(Landroid/content/Context;)Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->injectExtras_()V

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

    const-string v1, "data"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static j1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$o;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method H0(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/CheckInviteDialogActivity_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$d;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/DetailResultBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method N0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$n;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CheckInviteDialogActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$c;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P0(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$k;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$k;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;Lapp/mgsim/arena/ArenaResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$m;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V0(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$j;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;Lcom/papa91/battle/protocol/GameRoom;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$a;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->x0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CheckInviteDialogActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$e;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
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
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->w0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c04d5

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f09036e

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090365

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->c:Landroid/widget/Button;

    const v0, 0x7f09036b

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->d:Landroid/widget/Button;

    const v0, 0x7f090d84

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090d85

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f090d86

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f090c21

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090c22

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f090c25

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f090591

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->t:Landroid/widget/LinearLayout;

    const v0, 0x7f090d88

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->u:Landroid/widget/LinearLayout;

    const v0, 0x7f090c27

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->v:Landroid/widget/LinearLayout;

    const v0, 0x7f090988

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->w:Landroid/widget/LinearLayout;

    const v0, 0x7f09036f

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f0909b0

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->A:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 17
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->c:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 19
    new-instance v2, Lcom/join/mgps/activity/CheckInviteDialogActivity_$f;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$f;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->d:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 21
    new-instance v2, Lcom/join/mgps/activity/CheckInviteDialogActivity_$g;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$g;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 22
    new-instance v1, Lcom/join/mgps/activity/CheckInviteDialogActivity_$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$h;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 23
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$i;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->x0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->w0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->w0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->w0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_;->injectExtras_()V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$b;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CheckInviteDialogActivity_$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity_$l;-><init>(Lcom/join/mgps/activity/CheckInviteDialogActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
