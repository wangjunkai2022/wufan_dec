.class Lcom/join/mgps/socket/fight/arena/b$a;
.super Ljava/lang/Object;
.source "ArenaServiceBinderDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/fight/arena/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/socket/fight/arena/b;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->a:Lcom/join/mgps/socket/fight/arena/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->a:Lcom/join/mgps/socket/fight/arena/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->a(Lcom/join/mgps/socket/fight/arena/b;Z)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->a:Lcom/join/mgps/socket/fight/arena/b;

    check-cast p2, Lcom/join/mgps/socket/fight/arena/ArenaService$b;

    invoke-virtual {p2}, Lcom/join/mgps/socket/fight/arena/ArenaService$b;->getService()Lcom/join/mgps/socket/fight/arena/ArenaService;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/socket/fight/arena/ArenaService_;

    invoke-static {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->b(Lcom/join/mgps/socket/fight/arena/b;Lcom/join/mgps/socket/fight/arena/ArenaService_;)Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->a:Lcom/join/mgps/socket/fight/arena/b;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/b;->c(Lcom/join/mgps/socket/fight/arena/b;)Lcom/join/mgps/socket/fight/arena/b$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->a:Lcom/join/mgps/socket/fight/arena/b;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/b;->c(Lcom/join/mgps/socket/fight/arena/b;)Lcom/join/mgps/socket/fight/arena/b$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/socket/fight/arena/b$b;->c()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->a:Lcom/join/mgps/socket/fight/arena/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->a(Lcom/join/mgps/socket/fight/arena/b;Z)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->a:Lcom/join/mgps/socket/fight/arena/b;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/b;->c(Lcom/join/mgps/socket/fight/arena/b;)Lcom/join/mgps/socket/fight/arena/b$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->a:Lcom/join/mgps/socket/fight/arena/b;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/b;->c(Lcom/join/mgps/socket/fight/arena/b;)Lcom/join/mgps/socket/fight/arena/b$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/socket/fight/arena/b$b;->a()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/b$a;->a:Lcom/join/mgps/socket/fight/arena/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->b(Lcom/join/mgps/socket/fight/arena/b;Lcom/join/mgps/socket/fight/arena/ArenaService_;)Lcom/join/mgps/socket/fight/arena/ArenaService_;

    return-void
.end method
