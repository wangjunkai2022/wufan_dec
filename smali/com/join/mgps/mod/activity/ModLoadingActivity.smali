.class public Lcom/join/mgps/mod/activity/ModLoadingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ModLoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/mod/activity/ModLoadingActivity$f;
    }
.end annotation


# static fields
.field static A:Lcom/github/snowdream/android/app/downloader/b$b; = null

.field private static B:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/c;",
            ">;"
        }
    .end annotation
.end field

.field public static C:I = 0x0

.field public static final D:I = 0x2

.field public static final y:Ljava/lang/String; = "_mod_info"

.field private static z:Lcom/github/snowdream/android/app/downloader/b;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:I

.field h:Lcom/join/mgps/mod/activity/ModLoadingActivity$f;

.field i:Z

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field l:Z

.field private m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/ProgressBar;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:J

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/TextView;

.field private w:Ljava/util/concurrent/Executor;

.field x:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/Map;

    .line 2
    sput v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->C:I

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->i:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->j:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->k:Ljava/util/List;

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->l:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->r:Z

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->s:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:J

    .line 9
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->w:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic C0(Lcom/join/mgps/mod/activity/ModLoadingActivity;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->d1(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic D0(Lcom/join/mgps/mod/activity/ModLoadingActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->e1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic E0(Lcom/join/mgps/mod/activity/ModLoadingActivity;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->c1(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic F0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b1()V

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->g1()V

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->Y0()V

    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:J

    return-wide v0
.end method

.method static synthetic J0(Lcom/join/mgps/mod/activity/ModLoadingActivity;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t:J

    return-wide p1
.end method

.method static synthetic K0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->V0()V

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->r:Z

    return p0
.end method

.method static synthetic M0(Lcom/join/mgps/mod/activity/ModLoadingActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->r:Z

    return p1
.end method

.method static synthetic N0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic O0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->n:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic P0()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic Q0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->o:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic R0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic S0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic T0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method

.method static synthetic U0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->s:Ljava/lang/String;

    return-object p0
.end method

.method private V0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private declared-synchronized Y0()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private Z0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "gameId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "modPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "modVersion"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "modCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->e:I

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "modType"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->f:I

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->g:I

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_mod_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->s:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const v0, 0x7f090923

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f090bff

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->o:Landroid/widget/ProgressBar;

    const v0, 0x7f091162

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f091163

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f091125

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f09080b

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->u:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->x:Landroid/graphics/drawable/AnimationDrawable;

    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 21
    new-instance v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    iput-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Lcom/join/mgps/mod/activity/ModLoadingActivity$f;

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.join.android.app.mgsim.wufun.soCopyStart"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.join.android.app.mgsim.wufun.soCopyFail"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.join.android.app.mgsim.wufun.loadMod"

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Lcom/join/mgps/mod/activity/ModLoadingActivity$f;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->W0(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h1()V

    return-void
.end method

.method private synthetic b1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic c1(Landroid/os/Handler;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/e;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    sget-object v2, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Lcom/join/mgps/va/overmind/f;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Lcom/join/mgps/va/overmind/f;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/va/overmind/f;->W()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 6
    aget-object v2, v1, v4

    .line 7
    invoke-static {v2}, Lcom/join/mgps/Util/g0;->i(Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/join/mgps/mod/activity/a;

    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/a;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic d1(Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->l:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->g:I

    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/join/mgps/va/overmind/e;->S(Landroid/content/Context;ILjava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/mgps/mod/activity/c;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/mod/activity/c;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic e1(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method private g1()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/client/frameworks/f;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    iget v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->g:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/xinzhu/overmind/client/frameworks/f;->f(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v3}, Lcom/join/mgps/va/overmind/e$a;->e()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    .line 5
    iget-object v6, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/join/mgps/va/overmind/c;->d(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 6
    :goto_0
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->d(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 7
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 8
    invoke-interface {v7, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-interface {v7, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 10
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_11

    if-eqz v3, :cond_3

    .line 11
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->a(Ljava/util/Set;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->b(Ljava/util/Set;)Z

    move-result v6

    if-nez v6, :cond_4

    :goto_1
    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 12
    :goto_2
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_7

    if-eqz v3, :cond_5

    .line 13
    invoke-static {v7}, Lcom/join/mgps/va/overmind/c;->a(Ljava/util/Set;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_5
    invoke-static {v7}, Lcom/join/mgps/va/overmind/c;->b(Ljava/util/Set;)Z

    move-result v6

    if-nez v6, :cond_6

    :goto_3
    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :cond_7
    :goto_4
    new-array v8, v4, [Ljava/lang/String;

    new-array v9, v4, [Ljava/lang/String;

    .line 14
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_8

    .line 15
    sget-object v8, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 16
    sget-object v9, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    :cond_8
    const/4 v10, 0x0

    if-eqz v6, :cond_a

    if-eqz v3, :cond_9

    .line 17
    invoke-static {v9, v7}, Lcom/join/mgps/va/overmind/c;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_9
    invoke-static {v8, v7}, Lcom/join/mgps/va/overmind/c;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    move-object v10, v2

    goto :goto_6

    :cond_a
    if-eqz v3, :cond_b

    .line 18
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->a(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 19
    invoke-static {v8, v7}, Lcom/join/mgps/va/overmind/c;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    .line 20
    :cond_b
    invoke-static {v2}, Lcom/join/mgps/va/overmind/c;->b(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 21
    invoke-static {v9, v7}, Lcom/join/mgps/va/overmind/c;->c([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v10

    .line 22
    :cond_c
    :goto_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-void

    .line 23
    :cond_d
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abiOverride:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/join/mgps/va/overmind/e;->g0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 26
    :cond_e
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/join/mgps/va/overmind/e;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/xinzhu/overmind/a;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 27
    :goto_7
    invoke-static {}, Lcom/xinzhu/overmind/a;->W()V

    .line 28
    new-instance v2, Ljava/io/File;

    invoke-static {v10}, Lcom/xinzhu/overmind/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 31
    :cond_10
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/join/mgps/va/overmind/e;->g0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_8
    return-void
.end method


# virtual methods
.method W0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u6e38\u620f\u4fe1\u606f[ID]\u7f3a\u5931"

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->showToast(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/g0;->x(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->f1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->j1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->i1()V

    return-void
.end method

.method declared-synchronized X0()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2
    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    new-instance v1, Lcom/join/mgps/mod/activity/b;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/mod/activity/b;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;Landroid/os/Handler;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public a1()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/snowdream/android/app/downloader/b;->e()Lcom/github/snowdream/android/app/downloader/b;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->z:Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    new-instance v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    sput-object v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->A:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 3
    sget-object v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->z:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    return-void
.end method

.method f1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getStatus()I

    move-result p1

    if-ne p1, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    .line 5
    :cond_3
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getStatus()I

    move-result p1

    if-ne p1, v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_1
    return v0
.end method

.method h1()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$a;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->w:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method i1()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->w:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method j1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->a1()V

    const-string v0, ""

    .line 2
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v3, v0

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mod url null error, vm="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->i1()V

    return-void

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mod"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/Util/u;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mod/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    new-instance p1, Lcom/github/snowdream/android/app/downloader/c;

    const-wide/16 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 13
    sget-object v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->z:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/Map;

    if-nez v0, :cond_3

    return-void

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->l()Ljava/lang/String;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    return-void

    .line 18
    :cond_5
    sget-object v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/Map;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v2, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0058

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->Z0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->l:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Lcom/join/mgps/mod/activity/ModLoadingActivity$f;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->x:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->Z0()V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/mod/activity/d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/mod/activity/d;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
