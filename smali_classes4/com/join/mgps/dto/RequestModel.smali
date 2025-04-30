.class public Lcom/join/mgps/dto/RequestModel;
.super Ljava/lang/Object;
.source "RequestModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private androidId:Ljava/lang/String;

.field private args:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private channelNum:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private package_type:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private target_version:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wufun"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/RequestModel;->platform:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/RequestModel;->package_type:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 4
    iput-object v0, p0, Lcom/join/mgps/dto/RequestModel;->package_name:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/join/android/app/mgsim/wufun/b;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/RequestModel;->target_version:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wufun"

    .line 7
    iput-object v0, p0, Lcom/join/mgps/dto/RequestModel;->platform:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/dto/RequestModel;->package_type:Ljava/lang/String;

    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/RequestModel;->package_name:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/join/android/app/mgsim/wufun/b;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/RequestModel;->target_version:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    return-void
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModel;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getArgs()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModel;->args:Ljava/lang/Object;

    return-object v0
.end method

.method public getChannelNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModel;->channelNum:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModel;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModel;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModel;->package_type:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModel;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModel;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget_version()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestModel;->target_version:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModel;->version:Ljava/lang/String;

    return-object v0
.end method

.method public makeSign()Lcom/join/mgps/dto/RequestModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/mgps/dto/RequestModel<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/u1;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/RequestModel;->sign:Ljava/lang/String;

    return-object p0
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModel;->androidId:Ljava/lang/String;

    return-void
.end method

.method public setArgs(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModel;->args:Ljava/lang/Object;

    return-void
.end method

.method public setChannelNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModel;->channelNum:Ljava/lang/String;

    return-void
.end method

.method public setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "wufun"

    .line 1
    iput-object v1, p0, Lcom/join/mgps/dto/RequestModel;->platform:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/dto/RequestModel;->channelNum:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v1

    .line 4
    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dto/RequestModel;->version:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/RequestModel;->deviceId:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/dto/RequestModel;->androidId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModel;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModel;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPackage_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModel;->package_type:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModel;->platform:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModel;->sign:Ljava/lang/String;

    return-void
.end method

.method public setTarget_version(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestModel;->target_version:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModel;->version:Ljava/lang/String;

    return-void
.end method
