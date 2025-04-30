.class public Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Lcom/tencent/cos/task/listener/ITaskStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/task/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TaskStateChanageOperator"
.end annotation


# instance fields
.field private listTask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation
.end field

.field private task:Lcom/tencent/cos/task/Task;

.field final synthetic this$0:Lcom/tencent/cos/task/TaskManager;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/task/TaskManager;Ljava/util/List;Lcom/tencent/cos/task/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;",
            "Lcom/tencent/cos/task/Task;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->this$0:Lcom/tencent/cos/task/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->listTask:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    sget-object v1, Lcom/tencent/cos/task/TaskState;->CANCEL:Lcom/tencent/cos/task/TaskState;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 2
    invoke-static {}, Lcom/tencent/cos/task/TaskManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/cos/task/TaskState;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFail()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    sget-object v1, Lcom/tencent/cos/task/TaskState;->FAILED:Lcom/tencent/cos/task/TaskState;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->listTask:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/tencent/cos/task/TaskManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/cos/task/TaskState;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    sget-object v1, Lcom/tencent/cos/task/TaskState;->PAUSE:Lcom/tencent/cos/task/TaskState;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 2
    invoke-static {}, Lcom/tencent/cos/task/TaskManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/cos/task/TaskState;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/tencent/cos/model/COSResult;)V
    .locals 0

    return-void
.end method

.method public onRetry()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    sget-object v1, Lcom/tencent/cos/task/TaskState;->RETRY:Lcom/tencent/cos/task/TaskState;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 2
    invoke-static {}, Lcom/tencent/cos/task/TaskManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/cos/task/TaskState;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSendBegin()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    sget-object v1, Lcom/tencent/cos/task/TaskState;->SENDING:Lcom/tencent/cos/task/TaskState;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 2
    invoke-static {}, Lcom/tencent/cos/task/TaskManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/cos/task/TaskState;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSendFinish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    sget-object v1, Lcom/tencent/cos/task/TaskState;->FINISH:Lcom/tencent/cos/task/TaskState;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/task/Task;->setTaskState(Lcom/tencent/cos/task/TaskState;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->listTask:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/cos/task/TaskManager$TaskStateChanageOperator;->task:Lcom/tencent/cos/task/Task;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/tencent/cos/task/TaskManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/cos/task/TaskState;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    return-void
.end method
