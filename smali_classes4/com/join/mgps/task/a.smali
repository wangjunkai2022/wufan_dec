.class public Lcom/join/mgps/task/a;
.super Ljava/lang/Object;
.source "CreateApWifiThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:I = 0x3a98


# instance fields
.field private a:Landroid/content/Context;

.field b:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/task/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/task/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Lcom/join/mgps/task/a$a;

    const-wide/16 v2, 0x3a98

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/task/a$a;-><init>(Lcom/join/mgps/task/a;JJ)V

    iput-object v6, p0, Lcom/join/mgps/task/a;->b:Landroid/os/CountDownTimer;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/task/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/task/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method b()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/event/c;

    invoke-direct {v0}, Lcom/join/mgps/event/c;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/join/mgps/event/c;->a:I

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/task/a;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/task/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/e;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/event/c;

    invoke-direct {v0}, Lcom/join/mgps/event/c;-><init>()V

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lcom/join/mgps/event/c;->a:I

    .line 4
    sget-object v1, Lcom/join/mgps/Util/e;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/event/c;->b:Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/join/mgps/Util/e;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/event/c;->c:Ljava/lang/String;

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/task/a;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/task/a;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
