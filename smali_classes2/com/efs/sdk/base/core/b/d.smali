.class public final Lcom/efs/sdk/base/core/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/core/b/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/core/d/b;)V
    .locals 3

    .line 6
    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->c:[B

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/efs/sdk/base/core/util/b;->a(Lcom/efs/sdk/base/core/d/b;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v1

    iget-object v1, v1, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/efs/sdk/base/core/util/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    iget-object p1, p1, Lcom/efs/sdk/base/core/d/b;->c:[B

    .line 11
    invoke-static {v2, p1}, Lcom/efs/sdk/base/core/util/b;->a(Ljava/io/File;[B)Z

    .line 12
    invoke-static {}, Lcom/efs/sdk/base/core/f/f$a;->a()Lcom/efs/sdk/base/core/f/f;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/efs/sdk/base/core/f/f;->c:Lcom/efs/sdk/base/core/f/d;

    invoke-virtual {p1}, Lcom/efs/sdk/base/core/f/d;->b()V

    .line 14
    invoke-static {}, Lcom/efs/sdk/base/core/f/f$a;->a()Lcom/efs/sdk/base/core/f/f;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/efs/sdk/base/core/f/f;->c:Lcom/efs/sdk/base/core/f/d;

    invoke-virtual {p1}, Lcom/efs/sdk/base/core/f/d;->c()V

    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/efs/sdk/base/core/util/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/efs/sdk/base/core/util/b;->a(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/io/File;Lcom/efs/sdk/base/core/d/b;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iput-object p1, p2, Lcom/efs/sdk/base/core/d/b;->d:Ljava/io/File;

    .line 4
    invoke-virtual {p2}, Lcom/efs/sdk/base/core/d/b;->c()V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p2, p1}, Lcom/efs/sdk/base/core/d/b;->b(I)V

    return p1
.end method
