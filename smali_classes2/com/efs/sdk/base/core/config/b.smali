.class public final Lcom/efs/sdk/base/core/config/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/core/config/b$a;
    }
.end annotation


# instance fields
.field public a:Lcom/efs/sdk/base/core/config/a;

.field public b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/efs/sdk/base/core/config/b;->b:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/core/config/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/b;->a:Lcom/efs/sdk/base/core/config/a;

    const-string v1, "net"

    const-string v2, "disconnected"

    invoke-virtual {v0, v1, v2}, Lcom/efs/sdk/base/core/config/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
