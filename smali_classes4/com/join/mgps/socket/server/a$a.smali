.class Lcom/join/mgps/socket/server/a$a;
.super Ljava/lang/Object;
.source "SocketService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/server/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/socket/server/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/server/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/server/a$a;->a:Lcom/join/mgps/socket/server/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/server/a$a;->a:Lcom/join/mgps/socket/server/a;

    invoke-virtual {v0}, Lcom/join/mgps/socket/server/a;->c()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/socket/server/a$a;->a:Lcom/join/mgps/socket/server/a;

    invoke-virtual {v0}, Lcom/join/mgps/socket/server/a;->d()V

    return-void
.end method
