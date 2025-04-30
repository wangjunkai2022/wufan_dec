.class Lcom/join/mgps/socket/client/a$b;
.super Ljava/lang/Object;
.source "ClientService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/client/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field volatile a:Z

.field final synthetic b:Lcom/join/mgps/socket/client/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/client/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/client/a$b;->b:Lcom/join/mgps/socket/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/socket/client/a$b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/socket/client/a$b;->a:Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/socket/client/a$b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/client/a$b;->b:Lcom/join/mgps/socket/client/a;

    iget-object v0, v0, Lcom/join/mgps/socket/client/a;->h:Lcom/join/mgps/socket/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/b;->k()V

    const-wide/16 v0, 0x3e8

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
