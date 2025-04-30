.class public final Lcom/join/mgps/activity/ModGameIndexActivity_;
.super Lcom/join/mgps/activity/ModGameIndexActivity;
.source "ModGameIndexActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ModGameIndexActivity_$b0;
    }
.end annotation


# static fields
.field public static final d1:Ljava/lang/String; = "gameId"

.field public static final e1:Ljava/lang/String; = "standGameId"

.field public static final f1:Ljava/lang/String; = "from"


# instance fields
.field private final Z0:Li3/c;

.field private final a1:Ljava/util/Map;
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

.field private final b1:Landroid/content/IntentFilter;

.field private final c1:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->Z0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->a1:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->b1:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$k;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->c1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A2(Lcom/join/mgps/activity/ModGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->A1()V

    return-void
.end method

.method static synthetic B2(Lcom/join/mgps/activity/ModGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic C2(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->q2(Lcom/join/mgps/dto/ModGameDetailBean;)V

    return-void
.end method

.method static synthetic D2(Lcom/join/mgps/activity/ModGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showLoding()V

    return-void
.end method

.method static synthetic E2(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->b2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic F2(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->a2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic G2(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->l2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    return-void
.end method

.method public static H2(Landroid/content/Context;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static I2(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->w0:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity_;->injectExtras_()V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->b1:Landroid/content/IntentFilter;

    const-string v0, "com.wufun.game.start.std.game"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->c1:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->b1:Landroid/content/IntentFilter;

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

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->H:Ljava/lang/String;

    :cond_0
    const-string v1, "standGameId"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->I:Ljava/lang/String;

    :cond_1
    const-string v1, "from"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->J:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method static synthetic r2(Lcom/join/mgps/activity/ModGameIndexActivity_;ZLcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->t1(ZLcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic s2(Lcom/join/mgps/activity/ModGameIndexActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->o2(Z)V

    return-void
.end method

.method static synthetic t2(Lcom/join/mgps/activity/ModGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->P1()V

    return-void
.end method

.method static synthetic u2(Lcom/join/mgps/activity/ModGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->u1()V

    return-void
.end method

.method static synthetic v2(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->r1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic w2(Lcom/join/mgps/activity/ModGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->getDetialData()V

    return-void
.end method

.method static synthetic x2(Lcom/join/mgps/activity/ModGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->x1()V

    return-void
.end method

.method static synthetic y2(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->s1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic z2(Lcom/join/mgps/activity/ModGameIndexActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->c2()V

    return-void
.end method


# virtual methods
.method A1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$f;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$d;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity_$l;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity_$j;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$e;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->a1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDetialData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ModGameIndexActivity_$q;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ModGameIndexActivity_$q;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method l2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$m;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity_$m;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method o2(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity_$n;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x3e8

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->Z0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0057

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->c1:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 4

    const v0, 0x7f0907e0

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f091104

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090dd1

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090941

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f090960

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f090811

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->f:Landroid/widget/ImageView;

    const v0, 0x7f091136

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f091144

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f091182

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f091180

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f09114d

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09082a

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f090810

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f091181

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f091134

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f09026d

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f09112f

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f090dd3

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f091280

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->s:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090f0d

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->t:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f090d39

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->u:Landroid/view/View;

    const v0, 0x7f0909b5

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->v:Landroid/view/View;

    const v0, 0x7f0909b0

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->w:Landroid/view/View;

    const v0, 0x7f09010c

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->x:Landroid/view/View;

    const v0, 0x7f090da4

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->y:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090da3

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0901a6

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f0901a5

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->B:Landroid/widget/ImageView;

    const v0, 0x7f0904cf

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MyTouchFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->C:Lcom/join/mgps/customview/MyTouchFrameLayout;

    const v0, 0x7f0904ce

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MyTouchFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->D:Lcom/join/mgps/customview/MyTouchFrameLayout;

    const v0, 0x7f09044a

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->E:Landroid/view/View;

    const v0, 0x7f0908f2

    .line 32
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->F:Landroid/widget/LinearLayout;

    const v0, 0x7f0910b5

    .line 33
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->G:Landroid/widget/TextView;

    const v0, 0x7f09015c

    .line 34
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090d11

    .line 35
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e21

    .line 36
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 37
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 38
    new-instance v3, Lcom/join/mgps/activity/ModGameIndexActivity_$t;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$t;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->d:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 40
    new-instance v3, Lcom/join/mgps/activity/ModGameIndexActivity_$u;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$u;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->e:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 42
    new-instance v3, Lcom/join/mgps/activity/ModGameIndexActivity_$v;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$v;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->A:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 44
    new-instance v3, Lcom/join/mgps/activity/ModGameIndexActivity_$w;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$w;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->B:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 46
    new-instance v3, Lcom/join/mgps/activity/ModGameIndexActivity_$x;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$x;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->E:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 48
    new-instance v3, Lcom/join/mgps/activity/ModGameIndexActivity_$y;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$y;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 49
    new-instance v2, Lcom/join/mgps/activity/ModGameIndexActivity_$z;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$z;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_7

    .line 51
    new-instance v2, Lcom/join/mgps/activity/ModGameIndexActivity_$a0;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$a0;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    if-eqz v1, :cond_8

    .line 52
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$a;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 53
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$b;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ModGameIndexActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->a1:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q2(Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity_$h;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/join/mgps/dto/ModGameDetailBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method r1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ModGameIndexActivity_$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ModGameIndexActivity_$p;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method s1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ModGameIndexActivity_$s;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ModGameIndexActivity_$s;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->Z0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->Z0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_;->Z0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ModGameIndexActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$i;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$g;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method t1(ZLcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity_$c;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;ZLcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ModGameIndexActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ModGameIndexActivity_$o;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method x1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ModGameIndexActivity_$r;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ModGameIndexActivity_$r;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
