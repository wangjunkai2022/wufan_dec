.class public final Lcom/efs/sdk/base/core/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://errlog.umeng.com/api/crashsdk/logcollect"

    .line 2
    iput-object v0, p0, Lcom/efs/sdk/base/core/f/c;->a:Ljava/lang/String;

    const-string v0, "28ef1713347d"

    .line 3
    iput-object v0, p0, Lcom/efs/sdk/base/core/f/c;->b:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/efs/sdk/base/core/util/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/base/core/f/c;->c:Ljava/lang/String;

    return-void
.end method
