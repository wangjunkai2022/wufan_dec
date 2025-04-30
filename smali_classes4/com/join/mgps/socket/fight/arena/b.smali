.class public Lcom/join/mgps/socket/fight/arena/b;
.super Ljava/lang/Object;
.source "ArenaServiceBinderDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/fight/arena/b$b;,
        Lcom/join/mgps/socket/fight/arena/b$c;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/join/mgps/socket/fight/arena/ArenaService_;

.field private c:Lcom/join/mgps/socket/fight/arena/b$b;

.field private volatile d:Z

.field private final e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/b$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/b;->d:Z

    .line 3
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/socket/fight/arena/b$a;-><init>(Lcom/join/mgps/socket/fight/arena/b;)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/b;->e:Landroid/content/ServiceConnection;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/app/Activity;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/b;->c:Lcom/join/mgps/socket/fight/arena/b$b;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/socket/fight/arena/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/socket/fight/arena/b;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/join/mgps/socket/fight/arena/b;Lcom/join/mgps/socket/fight/arena/ArenaService_;)Lcom/join/mgps/socket/fight/arena/ArenaService_;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/b;->b:Lcom/join/mgps/socket/fight/arena/ArenaService_;

    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/socket/fight/arena/b;)Lcom/join/mgps/socket/fight/arena/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/b;->c:Lcom/join/mgps/socket/fight/arena/b$b;

    return-object p0
.end method


# virtual methods
.method public bindService()V
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/b;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/app/Activity;

    const-class v2, Lcom/join/mgps/socket/fight/arena/ArenaService_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/b;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 5
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Lcom/join/mgps/socket/fight/arena/ArenaService_;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/b;->b:Lcom/join/mgps/socket/fight/arena/ArenaService_;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/b;->b:Lcom/join/mgps/socket/fight/arena/ArenaService_;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService_;->C(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/socket/fight/arena/b;->d:Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b;->c:Lcom/join/mgps/socket/fight/arena/b$b;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/join/mgps/socket/fight/arena/b$b;->a()V

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/b;->b:Lcom/join/mgps/socket/fight/arena/ArenaService_;

    :cond_2
    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/b;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/b;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/b;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public stopService()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/app/Activity;

    const-class v2, Lcom/join/mgps/socket/fight/arena/ArenaService_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/b;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
