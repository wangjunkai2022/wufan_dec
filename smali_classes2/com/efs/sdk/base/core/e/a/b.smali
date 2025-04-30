.class public final Lcom/efs/sdk/base/core/e/a/b;
.super Lcom/efs/sdk/base/core/e/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/core/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/core/d/b;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    iget-boolean v0, v0, Lcom/efs/sdk/base/core/d/c;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/e/a/a;->b(Lcom/efs/sdk/base/core/d/b;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/core/b/a$b;->a()Lcom/efs/sdk/base/core/b/a;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    iget-object v1, v1, Lcom/efs/sdk/base/core/d/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "wa"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/efs/sdk/base/core/b/c;->a()Lcom/efs/sdk/base/core/b/c;

    move-result-object v1

    .line 6
    iget-boolean v1, v1, Lcom/efs/sdk/base/core/b/c;->a:Z

    if-nez v1, :cond_3

    .line 7
    iget-boolean p1, v0, Lcom/efs/sdk/base/core/b/a;->a:Z

    if-nez p1, :cond_2

    .line 8
    invoke-static {}, Lcom/efs/sdk/base/core/f/f$a;->a()Lcom/efs/sdk/base/core/f/f;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    .line 11
    iget v1, v1, Lcom/efs/sdk/base/core/config/a/b;->a:I

    .line 12
    iget-object v2, p1, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isEnableWaStat()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    :cond_1
    iget-object v2, p1, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    const-string v3, "disk_limit"

    invoke-virtual {p1, v3, v1}, Lcom/efs/sdk/base/core/f/f;->a(Ljava/lang/String;I)Lcom/efs/sdk/base/core/f/b;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    :cond_2
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, v0, Lcom/efs/sdk/base/core/b/a;->a:Z

    return-void

    .line 15
    :cond_3
    iget-object v1, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    iget v2, v1, Lcom/efs/sdk/base/core/d/a;->c:I

    if-nez v2, :cond_5

    .line 16
    iget-object v2, p1, Lcom/efs/sdk/base/core/d/b;->c:[B

    if-eqz v2, :cond_4

    .line 17
    array-length v2, v2

    if-nez v2, :cond_5

    :cond_4
    return-void

    .line 18
    :cond_5
    iget-object v0, v0, Lcom/efs/sdk/base/core/b/a;->c:Lcom/efs/sdk/base/core/b/b;

    .line 19
    iget-byte v1, v1, Lcom/efs/sdk/base/core/d/a;->b:B

    .line 20
    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/core/b/b;->a(B)Lcom/efs/sdk/base/core/b/e;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 21
    invoke-interface {v0, p1}, Lcom/efs/sdk/base/core/b/e;->a(Lcom/efs/sdk/base/core/d/b;)V

    :cond_6
    return-void
.end method
