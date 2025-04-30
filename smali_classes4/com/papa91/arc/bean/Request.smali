.class public Lcom/papa91/arc/bean/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "TT;"
        }
    .end annotation
.end field

.field private channelNum:I

.field private deviceId:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private package_type:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private target_version:I

.field private version:Ljava/lang/String;

.field private wf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/papa91/arc/bean/Request;->androidId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/papa91/arc/bean/Request;->deviceId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 5
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 6
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/arc/bean/Request;->version:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, p0, Lcom/papa91/arc/bean/Request;->target_version:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 10
    :goto_0
    invoke-static {p1}, Lcom/papa91/arc/http/utils/MetaUtils;->getAd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/papa91/arc/bean/Request;->channelNum:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 13
    :catch_1
    iput v0, p0, Lcom/papa91/arc/bean/Request;->channelNum:I

    goto :goto_1

    .line 14
    :cond_0
    iput v0, p0, Lcom/papa91/arc/bean/Request;->channelNum:I

    :goto_1
    return-void
.end method

.method public static getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "TT;)",
            "Lcom/papa91/arc/bean/Request<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa91/arc/bean/Request;

    invoke-direct {v0, p0}, Lcom/papa91/arc/bean/Request;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa91/arc/bean/Request;->setArgs(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/Request;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getArgs()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/Request;->args:Ljava/lang/Object;

    return-object v0
.end method

.method public getChannelNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/Request;->channelNum:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/Request;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/Request;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/Request;->package_type:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/Request;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/Request;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget_version()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/Request;->target_version:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/Request;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isWf()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/bean/Request;->wf:Z

    return v0
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/Request;->androidId:Ljava/lang/String;

    return-void
.end method

.method public setArgs(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/Request;->args:Ljava/lang/Object;

    return-void
.end method

.method public setChannelNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/Request;->channelNum:I

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/Request;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/Request;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPackage_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/Request;->package_type:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/Request;->platform:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/Request;->sign:Ljava/lang/String;

    return-void
.end method

.method public setTarget_version(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/Request;->target_version:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/Request;->version:Ljava/lang/String;

    return-void
.end method

.method public setWf(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/bean/Request;->wf:Z

    return-void
.end method
