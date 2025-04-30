.class public final Lcom/efs/sdk/base/core/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/core/f/f$a;
    }
.end annotation


# instance fields
.field public a:Lcom/efs/sdk/base/core/f/c;

.field public b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

.field public c:Lcom/efs/sdk/base/core/f/d;

.field public d:Lcom/efs/sdk/base/core/f/g;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/efs/sdk/base/core/f/c;

    invoke-direct {v0}, Lcom/efs/sdk/base/core/f/c;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/core/f/f;->a:Lcom/efs/sdk/base/core/f/c;

    .line 4
    new-instance v0, Lcom/efs/sdk/base/core/f/d;

    invoke-direct {v0}, Lcom/efs/sdk/base/core/f/d;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/core/f/f;->c:Lcom/efs/sdk/base/core/f/d;

    .line 5
    new-instance v0, Lcom/efs/sdk/base/core/f/g;

    invoke-direct {v0}, Lcom/efs/sdk/base/core/f/g;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/core/f/f;->d:Lcom/efs/sdk/base/core/f/g;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/core/f/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lcom/efs/sdk/base/core/f/b;
    .locals 3

    .line 8
    new-instance v0, Lcom/efs/sdk/base/core/f/b;

    iget-object v1, p0, Lcom/efs/sdk/base/core/f/f;->a:Lcom/efs/sdk/base/core/f/c;

    iget-object v1, v1, Lcom/efs/sdk/base/core/f/c;->c:Ljava/lang/String;

    const-string v2, "efs_core"

    invoke-direct {v0, v2, p1, v1}, Lcom/efs/sdk/base/core/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "cver"

    invoke-virtual {v0, p2, p1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    if-eqz v0, :cond_0

    const-string v1, "flow_limit"

    .line 3
    invoke-virtual {p0, v1, p1}, Lcom/efs/sdk/base/core/f/f;->a(Ljava/lang/String;I)Lcom/efs/sdk/base/core/f/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isEnableWaStat()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "flow_limit_type"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/efs/sdk/base/core/f/f;->a(Ljava/lang/String;I)Lcom/efs/sdk/base/core/f/b;

    move-result-object p1

    const-string v0, "code"

    .line 6
    invoke-virtual {p1, v0, p2}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    invoke-virtual {p2, p1}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/f/f;->d:Lcom/efs/sdk/base/core/f/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/efs/sdk/base/core/f/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
