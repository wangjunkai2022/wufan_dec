.class Lcom/join/mgps/socket/c$a;
.super Ljava/lang/Thread;
.source "SocketReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field volatile a:Z

.field final synthetic b:Lcom/join/mgps/socket/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/c$a;->b:Lcom/join/mgps/socket/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/socket/c$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/socket/c$a;->a:Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/socket/c$a;->a:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/c$a;->b:Lcom/join/mgps/socket/c;

    invoke-virtual {v0}, Lcom/join/mgps/socket/c;->d()V

    const-wide/16 v0, 0x3e8

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
