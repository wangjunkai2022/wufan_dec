.class public Lcom/join/mgps/service/UpdateLodingService;
.super Landroid/app/Service;
.source "UpdateLodingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/service/UpdateLodingService$c;,
        Lcom/join/mgps/service/UpdateLodingService$d;,
        Lcom/join/mgps/service/UpdateLodingService$b;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:J

.field private c:I

.field private d:Lcom/join/mgps/service/UpdateLodingService$b;

.field private e:Lcom/join/mgps/service/UpdateLodingService$c;

.field f:Lcom/join/mgps/service/UpdateLodingService$d;

.field g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/u;->g:Ljava/lang/String;

    sput-object v0, Lcom/join/mgps/service/UpdateLodingService;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/service/UpdateLodingService;->a:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/service/UpdateLodingService;->b:J

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/service/UpdateLodingService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/service/UpdateLodingService;->c:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/service/UpdateLodingService;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/service/UpdateLodingService;->c:I

    return p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/service/UpdateLodingService;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/join/mgps/service/UpdateLodingService;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/UpdateLodingService;->d:Lcom/join/mgps/service/UpdateLodingService$b;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/service/UpdateLodingService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/service/UpdateLodingService;->a:Z

    return p0
.end method

.method static synthetic g(Lcom/join/mgps/service/UpdateLodingService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/service/UpdateLodingService;->a:Z

    return p1
.end method

.method static synthetic h(Lcom/join/mgps/service/UpdateLodingService;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/service/UpdateLodingService;->b:J

    return-wide v0
.end method

.method static synthetic i(Lcom/join/mgps/service/UpdateLodingService;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/service/UpdateLodingService;->b:J

    return-wide p1
.end method

.method static synthetic j(Lcom/join/mgps/service/UpdateLodingService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/service/UpdateLodingService;->k(Ljava/lang/String;)V

    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/service/UpdateLodingService$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/service/UpdateLodingService$a;-><init>(Lcom/join/mgps/service/UpdateLodingService;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/service/UpdateLodingService;->a:Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public m(Lcom/join/mgps/service/UpdateLodingService$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/UpdateLodingService;->f:Lcom/join/mgps/service/UpdateLodingService$d;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/UpdateLodingService;->e:Lcom/join/mgps/service/UpdateLodingService$c;

    if-nez p1, :cond_0

    new-instance p1, Lcom/join/mgps/service/UpdateLodingService$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/service/UpdateLodingService$c;-><init>(Lcom/join/mgps/service/UpdateLodingService;)V

    iput-object p1, p0, Lcom/join/mgps/service/UpdateLodingService;->e:Lcom/join/mgps/service/UpdateLodingService$c;

    .line 2
    :cond_0
    new-instance p1, Lcom/join/mgps/service/UpdateLodingService$b;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0, p0}, Lcom/join/mgps/service/UpdateLodingService$b;-><init>(Lcom/join/mgps/service/UpdateLodingService;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/service/UpdateLodingService;->d:Lcom/join/mgps/service/UpdateLodingService$b;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/service/UpdateLodingService;->e:Lcom/join/mgps/service/UpdateLodingService$c;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/service/UpdateLodingService$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/service/UpdateLodingService$c;-><init>(Lcom/join/mgps/service/UpdateLodingService;)V

    iput-object v0, p0, Lcom/join/mgps/service/UpdateLodingService;->e:Lcom/join/mgps/service/UpdateLodingService$c;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/service/UpdateLodingService;->g:Landroid/content/Context;

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/service/UpdateLodingService;->a:Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
