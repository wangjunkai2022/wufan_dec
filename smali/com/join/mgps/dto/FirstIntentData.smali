.class public Lcom/join/mgps/dto/FirstIntentData;
.super Ljava/lang/Object;
.source "FirstIntentData.java"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

.field private isAPKSplashImage:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private isAutoDownload:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private isCustomApk:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isCustomApk"
    .end annotation
.end field

.field private isGoDetail:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private isIntent:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/android_asset/splash.png"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/FirstIntentData;->imageUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isGoDetail:Z

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;ZLcom/join/mgps/Util/IntentDateBean;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/android_asset/splash.png"

    .line 5
    iput-object v0, p0, Lcom/join/mgps/dto/FirstIntentData;->imageUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isGoDetail:Z

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk:Z

    .line 8
    iput-boolean p2, p0, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload:Z

    .line 9
    iput-boolean p3, p0, Lcom/join/mgps/dto/FirstIntentData;->isAPKSplashImage:Z

    .line 10
    iput-object p4, p0, Lcom/join/mgps/dto/FirstIntentData;->imageUrl:Ljava/lang/String;

    .line 11
    iput-boolean p5, p0, Lcom/join/mgps/dto/FirstIntentData;->isIntent:Z

    .line 12
    iput-object p6, p0, Lcom/join/mgps/dto/FirstIntentData;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FirstIntentData;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FirstIntentData;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    return-object v0
.end method

.method public isAPKSplashImage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isAPKSplashImage:Z

    return v0
.end method

.method public isAutoDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload:Z

    return v0
.end method

.method public isCustomApk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk:Z

    return v0
.end method

.method public isGoDetail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isGoDetail:Z

    return v0
.end method

.method public isIntent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FirstIntentData;->isIntent:Z

    return v0
.end method

.method public setAPKSplashImage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FirstIntentData;->isAPKSplashImage:Z

    return-void
.end method

.method public setAutoDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload:Z

    return-void
.end method

.method public setCustomApk(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk:Z

    return-void
.end method

.method public setGoDetail(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FirstIntentData;->isGoDetail:Z

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FirstIntentData;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setIntent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FirstIntentData;->isIntent:Z

    return-void
.end method

.method public setIntentDateBean(Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FirstIntentData;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirstIntentData{isCustomApk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAPKSplashImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/dto/FirstIntentData;->isAPKSplashImage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/FirstIntentData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/dto/FirstIntentData;->isIntent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", intentDateBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/FirstIntentData;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
