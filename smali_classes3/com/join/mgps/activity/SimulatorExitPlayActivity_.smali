.class public final Lcom/join/mgps/activity/SimulatorExitPlayActivity_;
.super Lcom/join/mgps/activity/SimulatorExitPlayActivity;
.source "SimulatorExitPlayActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SimulatorExitPlayActivity_$p;
    }
.end annotation


# static fields
.field public static final B:Ljava/lang/String; = "gameId"

.field public static final C:Ljava/lang/String; = "time"

.field public static final D:Ljava/lang/String; = "hideLevel"

.field public static final E:Ljava/lang/String; = "level"

.field public static final F:Ljava/lang/String; = "progress"

.field public static final G:Ljava/lang/String; = "max"

.field public static final H:Ljava/lang/String; = "levelUrl"

.field public static final I:Ljava/lang/String; = "battleUids"


# instance fields
.field private final A:Landroid/content/BroadcastReceiver;

.field private final x:Li3/c;

.field private final y:Ljava/util/Map;
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

.field private final z:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->x:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->y:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->z:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$g;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->A:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->Q0()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->updateTitle()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->P0(Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->E0(I)V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->K0(I)V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->L0()V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->afterLogin()V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->add(I)V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->J0(I)V

    return-void
.end method

.method public static c1(Landroid/content/Context;)Lcom/join/mgps/activity/SimulatorExitPlayActivity_$p;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$p;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static d1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/SimulatorExitPlayActivity_$p;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$p;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->w:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->injectExtras_()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->z:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->A:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->z:Landroid/content/IntentFilter;

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

    if-eqz v0, :cond_7

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->n:Ljava/lang/String;

    :cond_0
    const-string v1, "time"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->o:I

    :cond_1
    const-string v1, "hideLevel"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->p:Z

    :cond_2
    const-string v1, "level"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->q:I

    :cond_3
    const-string v1, "progress"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->r:I

    :cond_4
    const-string v1, "max"

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->s:I

    :cond_5
    const-string v1, "levelUrl"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->t:Ljava/lang/String;

    :cond_6
    const-string v1, "battleUids"

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->u:[I

    :cond_7
    return-void
.end method


# virtual methods
.method E0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$a;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public J0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$f;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$b;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$c;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P0(Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$n;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$l;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method add(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$e;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method afterLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$d;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->y:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->x:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c006d

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f09100f

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f090091

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090096

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090cf3

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090db0

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->e:Landroid/view/View;

    const v0, 0x7f09075e

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->f:Landroid/view/View;

    const v0, 0x7f0908b7

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f090c68

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0908b5

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f090c59

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->j:Landroid/widget/ProgressBar;

    const v0, 0x7f090d29

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090444

    .line 12
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->e:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 14
    new-instance v2, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$h;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$h;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->f:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 16
    new-instance v2, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$i;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$i;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 17
    new-instance v1, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$j;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 18
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$k;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->y:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->x:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->x:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->x:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;->injectExtras_()V

    return-void
.end method

.method toast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$o;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateTitle()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity_$m;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
