.class final Lcom/efs/sdk/base/core/controller/ControllerCenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/base/core/controller/ControllerCenter;->b(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/base/protocol/ILogProtocol;

.field final synthetic b:Lcom/efs/sdk/base/core/controller/ControllerCenter;


# direct methods
.method constructor <init>(Lcom/efs/sdk/base/core/controller/ControllerCenter;Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    iput-object p2, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    .line 2
    invoke-static {}, Lcom/efs/sdk/base/core/config/b$a;->a()Lcom/efs/sdk/base/core/config/b;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    .line 4
    invoke-interface {v0, v1}, Lcom/efs/sdk/base/protocol/ILogProtocol;->insertGlobal(Lcom/efs/sdk/base/core/config/a;)V

    const-string/jumbo v0, "wa"

    .line 5
    iget-object v1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-interface {v1}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLogType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-static {v0}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isEnableSendLog()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-static {v0}, Lcom/efs/sdk/base/core/d/b;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)Lcom/efs/sdk/base/core/d/b;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/efs/sdk/base/core/e/d$a;->a()Lcom/efs/sdk/base/core/e/d;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/efs/sdk/base/core/e/d$1;

    invoke-direct {v2, v1, v0}, Lcom/efs/sdk/base/core/e/d$1;-><init>(Lcom/efs/sdk/base/core/e/d;Lcom/efs/sdk/base/core/d/b;)V

    invoke-static {v2}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "efs.base"

    const-string v2, "log send error"

    .line 11
    invoke-static {v1, v2, v0}, Lcom/efs/sdk/base/core/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
