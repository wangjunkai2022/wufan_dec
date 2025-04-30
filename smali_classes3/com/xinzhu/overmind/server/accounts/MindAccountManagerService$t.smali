.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;
.super Landroid/os/Handler;
.source "MindAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "t"
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "looper"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;->a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;->a:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/Account;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;

    .line 5
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onTimedOut()V

    :goto_0
    return-void
.end method
