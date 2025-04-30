.class public Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;
.super Lcom/join/mgps/dto/AppBean;
.source "CheckGameVersionResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/CheckGameVersionResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field private ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

.field private game_upgrade_state:I

.field private packageName:Ljava/lang/String;

.field private resource_size:J

.field private resource_url_remote:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/AppBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    return-object v0
.end method

.method public getGame_upgrade_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->game_upgrade_state:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResource_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->resource_size:J

    return-wide v0
.end method

.method public getResource_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->resource_url_remote:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_info(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    return-void
.end method

.method public setGame_upgrade_state(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->game_upgrade_state:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setResource_size(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->resource_size:J

    return-void
.end method

.method public setResource_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;->resource_url_remote:Ljava/lang/String;

    return-void
.end method
