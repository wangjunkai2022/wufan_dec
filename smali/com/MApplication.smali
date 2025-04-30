.class public Lcom/MApplication;
.super Lcom/join/mgps/va/overmind/VApp;
.source "MApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

.field public static E:Z

.field public static F:Ljava/lang/String;

.field public static G:I

.field public static H:I

.field public static I:Lcom/join/mgps/dto/HomeViewSwich;

.field public static J:Lcom/join/mgps/activity/login/LoginCfgsBean;

.field public static K:Z

.field public static n0:Z

.field private static final o:Ljava/lang/String;

.field public static o0:I

.field public static p:Z

.field public static p0:Lcom/join/mgps/dto/GameHeadAd;

.field public static q:Lcom/MApplication;

.field public static q0:Landroid/graphics/Bitmap;

.field public static r:Ljava/lang/String;

.field public static r0:Z

.field public static s:Ljava/lang/String;

.field public static s0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorRunAdTextCfgBean;",
            ">;"
        }
    .end annotation
.end field

.field public static t:Ljava/lang/String;

.field public static t0:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

.field public static u:Ljava/lang/String;

.field public static u0:Lcom/join/mgps/dto/PublicVideoCfgBean;

.field public static v:Ljava/lang/String;

.field public static v0:I

.field public static w:I

.field public static w0:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static x0:Lcom/join/android/app/common/servcie/a;

.field public static y:Ljava/lang/String;

.field public static y0:Z

.field public static z:Ljava/lang/String;

.field public static z0:Z


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field g:Z

.field private final h:Landroid/content/BroadcastReceiver;

.field private i:Lcom/danikula/videocache/i;

.field private j:Landroid/app/Activity;

.field private k:Landroidx/lifecycle/ViewModelStore;

.field l:Lcom/papa91/arc/CContext$IVideoAdListener;

.field m:Lcom/join/mgps/ad/l;

.field n:Lcom/join/mgps/ad/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/MApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/MApplication;->o:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/MApplication;->p:Z

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    const-string v1, ""

    .line 4
    sput-object v1, Lcom/MApplication;->r:Ljava/lang/String;

    .line 5
    sput-object v1, Lcom/MApplication;->s:Ljava/lang/String;

    .line 6
    sput-object v1, Lcom/MApplication;->t:Ljava/lang/String;

    .line 7
    sput-object v1, Lcom/MApplication;->u:Ljava/lang/String;

    .line 8
    sput-object v1, Lcom/MApplication;->v:Ljava/lang/String;

    const/4 v2, 0x0

    .line 9
    sput v2, Lcom/MApplication;->w:I

    .line 10
    sput-object v1, Lcom/MApplication;->x:Ljava/lang/String;

    .line 11
    sput-object v1, Lcom/MApplication;->A:Ljava/lang/String;

    const-string v3, "0"

    .line 12
    sput-object v3, Lcom/MApplication;->B:Ljava/lang/String;

    .line 13
    sput-object v1, Lcom/MApplication;->C:Ljava/lang/String;

    .line 14
    sput-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 15
    sput-boolean v2, Lcom/MApplication;->E:Z

    .line 16
    sput-object v1, Lcom/MApplication;->F:Ljava/lang/String;

    .line 17
    sput v2, Lcom/MApplication;->G:I

    .line 18
    sput v2, Lcom/MApplication;->H:I

    .line 19
    sput-boolean v2, Lcom/MApplication;->K:Z

    .line 20
    sput-boolean v2, Lcom/MApplication;->n0:Z

    .line 21
    sput v2, Lcom/MApplication;->o0:I

    .line 22
    sput-object v0, Lcom/MApplication;->p0:Lcom/join/mgps/dto/GameHeadAd;

    .line 23
    sput-object v0, Lcom/MApplication;->q0:Landroid/graphics/Bitmap;

    .line 24
    sput-boolean v2, Lcom/MApplication;->r0:Z

    const/4 v0, 0x2

    .line 25
    sput v0, Lcom/MApplication;->v0:I

    .line 26
    sput-object v1, Lcom/MApplication;->w0:Ljava/lang/String;

    .line 27
    sput-boolean v2, Lcom/MApplication;->y0:Z

    .line 28
    sput-boolean v2, Lcom/MApplication;->z0:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/va/overmind/VApp;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/MApplication;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/MApplication;->g:Z

    .line 4
    new-instance v0, Lcom/MApplication$c;

    invoke-direct {v0, p0}, Lcom/MApplication$c;-><init>(Lcom/MApplication;)V

    iput-object v0, p0, Lcom/MApplication;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/yg"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static n()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    return-object v0
.end method

.method private o(Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;I)",
            "Lcom/join/mgps/dto/PlayCfgBean;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PlayCfgBean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static p(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/MApplication;

    .line 2
    iget-object v0, p0, Lcom/MApplication;->i:Lcom/danikula/videocache/i;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/MApplication;->x()Lcom/danikula/videocache/i;

    move-result-object v0

    iput-object v0, p0, Lcom/MApplication;->i:Lcom/danikula/videocache/i;

    :cond_0
    return-object v0
.end method

.method private s()V
    .locals 1

    .line 1
    new-instance v0, Lcom/MApplication$d;

    invoke-direct {v0, p0}, Lcom/MApplication$d;-><init>(Lcom/MApplication;)V

    iput-object v0, p0, Lcom/MApplication;->l:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/CContext;->setVideoAdListener(Lcom/papa91/arc/CContext$IVideoAdListener;)V

    return-void
.end method

.method private x()Lcom/danikula/videocache/i;
    .locals 3

    .line 1
    new-instance v0, Lcom/danikula/videocache/i$b;

    invoke-direct {v0, p0}, Lcom/danikula/videocache/i$b;-><init>(Landroid/content/Context;)V

    const-wide/32 v1, 0x40000000

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/danikula/videocache/i$b;->i(J)Lcom/danikula/videocache/i$b;

    move-result-object v0

    const/16 v1, 0x14

    .line 3
    invoke-virtual {v0, v1}, Lcom/danikula/videocache/i$b;->h(I)Lcom/danikula/videocache/i$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/danikula/videocache/i$b;->b()Lcom/danikula/videocache/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/MApplication;->m:Lcom/join/mgps/ad/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/c;->q(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/va/overmind/VApp;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/MApplication;->j:Landroid/app/Activity;

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/MApplication;->k:Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method

.method public k(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 2
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/MApplication;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/MApplication;->j:Landroid/app/Activity;

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/MApplication;->j:Landroid/app/Activity;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/MApplication;->j:Landroid/app/Activity;

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/join/mgps/va/overmind/VApp;->onCreate()V

    .line 2
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Lcom/MApplication;->k:Landroidx/lifecycle/ViewModelStore;

    const-string v0, "55af129367e58e94ba0025b7"

    const-string v1, "channel_1028"

    .line 3
    invoke-static {p0, v0, v1}, Lcom/umeng/commonsdk/UMConfigure;->preInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v2

    sput-object v2, Lcom/MApplication;->x0:Lcom/join/android/app/common/servcie/a;

    .line 5
    sget-object v2, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v2}, Lcom/join/mgps/va/overmind/e$a;->e()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, "1"

    :goto_0
    sput-object v2, Lcom/MApplication;->B:Ljava/lang/String;

    .line 6
    sput-object p0, Lcom/MApplication;->q:Lcom/MApplication;

    .line 7
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->init(Landroid/content/Context;)V

    .line 8
    invoke-static {p0}, Lcom/join/android/app/common/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", process:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/VApp;->g()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {p0}, Lcom/MApplication;->s()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/VApp;->f()Z

    move-result v3

    const-string v4, "mgdb"

    const/4 v5, 0x1

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/VApp;->g()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iput-boolean v5, p0, Lcom/MApplication;->g:Z

    .line 14
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v0}, Lcom/join/mgps/Util/u;->e(Landroid/content/Context;)V

    .line 15
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lg1/e;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :cond_2
    :goto_1
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v0}, Lcom/join/mgps/Util/q1;->a(Landroid/content/Context;)Ljava/util/List;

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before onCreate:processName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 20
    :cond_4
    invoke-virtual {p0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 21
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v2

    sput-object v2, Lcom/MApplication;->x0:Lcom/join/android/app/common/servcie/a;

    .line 22
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v2}, Lcom/join/mgps/Util/u;->e(Landroid/content/Context;)V

    .line 23
    :try_start_1
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v2}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v2

    invoke-virtual {v2, v4}, Lg1/e;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_2
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v2}, Lcom/join/mgps/Util/q1;->a(Landroid/content/Context;)Ljava/util/List;

    const/4 v2, 0x0

    .line 26
    sput-boolean v2, Lcom/join/mgps/Util/y1;->T0:Z

    .line 27
    invoke-static {p0}, Lcom/join/android/app/component/album/lib/ImageLoader;->u(Landroid/content/Context;)V

    .line 28
    invoke-static {p0}, Lcom/join/android/app/component/optimizetext/a;->m(Landroid/content/Context;)V

    .line 29
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/pref/h;->w()Lcom/join/mgps/dto/HomeViewSwich;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 30
    sput-object v2, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;

    .line 31
    :cond_5
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/pref/h;->J()Lcom/join/mgps/activity/login/LoginCfgsBean;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 32
    sput-object v3, Lcom/MApplication;->J:Lcom/join/mgps/activity/login/LoginCfgsBean;

    .line 33
    :cond_6
    invoke-static {p0}, Lcom/join/mgps/Util/b1;->b(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_7

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_7

    goto :goto_3

    .line 34
    :cond_7
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/android/app/common/servcie/DownloadService_;->M(Landroid/content/Context;)Lcom/join/android/app/common/servcie/DownloadService_$l;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 35
    :goto_3
    new-instance v2, Lcom/MApplication$a;

    invoke-direct {v2, p0}, Lcom/MApplication$a;-><init>(Lcom/MApplication;)V

    .line 36
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 37
    invoke-static {}, Lcom/join/android/app/common/exception/a;->e()Lcom/join/android/app/common/exception/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/join/android/app/common/exception/a;->j(Landroid/content/Context;)V

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applicationcreatFinish time ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 39
    :try_start_2
    new-instance v2, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v2, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    .line 40
    invoke-static {p0, v0, v1, v5, v2}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setPageCollectionMode(Lcom/umeng/analytics/MobclickAgent$PageMode;)V

    const-string v0, "563efaa5a8fe"

    const-string v1, "47378ac7ef1e9db5870c9cf62ee34a1d"

    .line 42
    invoke-static {p0, v0, v1}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p0}, Lcom/join/android/app/common/utils/h;->o(Landroid/content/Context;)V

    .line 44
    invoke-static {p0}, Lcom/join/mgps/Util/a2;->b(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 45
    :try_start_3
    new-instance v0, Lcom/join/android/app/common/http/MiitHelper;

    new-instance v1, Lcom/MApplication$b;

    invoke-direct {v1, p0}, Lcom/MApplication$b;-><init>(Lcom/MApplication;)V

    invoke-direct {v0, v1}, Lcom/join/android/app/common/http/MiitHelper;-><init>(Lcom/join/android/app/common/http/MiitHelper$a;)V

    .line 46
    invoke-virtual {v0, p0}, Lcom/join/android/app/common/http/MiitHelper;->getDeviceIds(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 47
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 48
    :catch_3
    :cond_8
    :goto_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.intent.downloadService.destroyed"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/MApplication;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    :try_start_5
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 53
    sput-object v0, Lcom/MApplication;->C:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/android/app/common/http/DNSDataResult;

    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/common/http/DNSDataResult;

    .line 55
    invoke-virtual {v0}, Lcom/join/android/app/common/http/DNSDataResult;->updateRpcConstant()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :cond_9
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 2
    iget-boolean v0, p0, Lcom/MApplication;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/MApplication;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/MApplication;->w0:Ljava/lang/String;

    return-object v0
.end method

.method public r()V
    .locals 4

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/q0;->j(Landroid/content/Context;I)V

    .line 2
    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/j;->i()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/MApplication;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 3
    :try_start_1
    invoke-static {v1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/MApplication;->r:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v1}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/MApplication;->s:Ljava/lang/String;

    .line 6
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->y()Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/MApplication;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    sget-object v3, Lcom/MApplication;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-1"

    sget-object v3, Lcom/MApplication;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    sget-object v2, Lcom/MApplication;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/pref/h;->m0(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    sget-object v2, Lcom/MApplication;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/pref/h;->l0(Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/j;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/MApplication;->y:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 11
    :try_start_3
    sput-object v1, Lcom/MApplication;->z:Ljava/lang/String;

    .line 12
    invoke-static {v1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/MApplication;->y:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 13
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_1
    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/j;->o()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/MApplication;->t:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 15
    :try_start_5
    invoke-static {v1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/MApplication;->t:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 16
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_2
    invoke-static {}, Lcom/join/mgps/Util/l0;->e()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/MApplication;->u:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 18
    :try_start_7
    invoke-static {v1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/MApplication;->u:Ljava/lang/String;

    .line 19
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/MApplication;->v:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 20
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :goto_3
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/MApplication;->x:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v0}, Lcom/constant/a;->b(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/MApplication;->w:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/MApplication;->n:Lcom/join/mgps/ad/d;

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/MApplication$f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/MApplication$f;-><init>(Lcom/MApplication;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/MApplication;->n:Lcom/join/mgps/ad/d;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->e()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/MApplication;->n:Lcom/join/mgps/ad/d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/d;->h(Z)V

    :goto_0
    return-void
.end method

.method public u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/MApplication;->m:Lcom/join/mgps/ad/l;

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/MApplication$e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/MApplication$e;-><init>(Lcom/MApplication;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/MApplication;->m:Lcom/join/mgps/ad/l;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/l;->e()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/MApplication;->m:Lcom/join/mgps/ad/l;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/join/mgps/ad/l;->h(Z)V

    :goto_0
    return-void
.end method

.method public v(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/MApplication;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/MApplication;->u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public y()V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->H()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".papakey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_2

    .line 6
    :try_start_1
    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 7
    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/f0;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/k;->b([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/k;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 10
    :cond_2
    :goto_0
    sget-object v0, Lcom/MApplication;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/MApplication;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/MApplication;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/MApplication;->r()V

    .line 12
    :cond_4
    new-instance v0, Lcom/papa91/arc/bean/RequestHeaders;

    invoke-direct {v0}, Lcom/papa91/arc/bean/RequestHeaders;-><init>()V

    .line 13
    invoke-virtual {v0, v2}, Lcom/papa91/arc/bean/RequestHeaders;->setWufankey(Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcom/MApplication;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_d(Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/MApplication;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_a(Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/MApplication;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_ad(Ljava/lang/String;)V

    .line 17
    sget-object v1, Lcom/MApplication;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_m(Ljava/lang/String;)V

    .line 18
    sget-object v1, Lcom/MApplication;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_i(Ljava/lang/String;)V

    .line 19
    sget-object v1, Lcom/MApplication;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_pm(Ljava/lang/String;)V

    .line 20
    sget-object v1, Lcom/MApplication;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestHeaders;->setAndroid_ver(Ljava/lang/String;)V

    .line 21
    sget-object v1, Lcom/MApplication;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_o(Ljava/lang/String;)V

    .line 22
    sget-object v1, Lcom/MApplication;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestHeaders;->setArm64(Ljava/lang/String;)V

    .line 23
    sget v1, Lcom/MApplication;->w:I

    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestHeaders;->setWf_single(I)V

    .line 24
    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/pref/h;->p0(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v0}, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->getInstance(Landroid/content/Context;)Lcom/psk/eventmodule/net/util/DeviceIdUtil;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/MApplication;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->setOaid(Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/MApplication;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->setImei(Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v1}, Lcom/umeng/commonsdk/UMConfigure;->getUMIDString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/psk/eventmodule/net/util/DeviceIdUtil;->setUmengKey(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eventName"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "gameId"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
