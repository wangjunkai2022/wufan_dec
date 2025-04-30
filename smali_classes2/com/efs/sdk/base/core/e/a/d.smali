.class public final Lcom/efs/sdk/base/core/e/a/d;
.super Lcom/efs/sdk/base/core/e/a/a;
.source "SourceFile"


# instance fields
.field private b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/core/e/a/a;-><init>()V

    .line 2
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getLogEncryptAction()Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/efs/sdk/base/core/e/b;

    invoke-direct {v0}, Lcom/efs/sdk/base/core/e/b;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/core/e/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getLogEncryptAction()Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/base/core/e/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/core/d/b;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    iget v1, v0, Lcom/efs/sdk/base/core/d/a;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 2
    iget-object v0, v0, Lcom/efs/sdk/base/core/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "wa"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    iget-object v0, v0, Lcom/efs/sdk/base/core/d/a;->a:Ljava/lang/String;

    const-string v1, "startperf"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    iget-byte v1, v0, Lcom/efs/sdk/base/core/d/a;->b:B

    if-ne v3, v1, :cond_1

    .line 7
    iget-object v1, p1, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    iget-boolean v1, v1, Lcom/efs/sdk/base/core/d/c;->a:Z

    if-eqz v1, :cond_2

    .line 8
    :cond_1
    iget v0, v0, Lcom/efs/sdk/base/core/d/a;->c:I

    if-ne v3, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    return-void

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/efs/sdk/base/core/e/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getSecret()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p1, Lcom/efs/sdk/base/core/d/b;->c:[B

    .line 12
    invoke-interface {v0, v1, v2}, Lcom/efs/sdk/base/processor/action/ILogEncryptAction;->encrypt(Ljava/lang/String;[B)[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/d/b;->a([B)V

    .line 14
    iget-object v0, p0, Lcom/efs/sdk/base/core/e/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    invoke-interface {v0}, Lcom/efs/sdk/base/processor/action/ILogEncryptAction;->getDeVal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/d/b;->a(I)V

    .line 15
    :cond_5
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    return-void
.end method
