.class public Lcom/netease/nis/quicklogin/entity/CTLoginAuth$ResponseData;
.super Ljava/lang/Object;
.source "CTLoginAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/quicklogin/entity/CTLoginAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseData"
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private atExpiresIn:J

.field private ipRiskRating:Ljava/lang/String;

.field private loginMode:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private rfExpiresIn:Ljava/lang/String;

.field private timeStamp:J

.field private userRiskRating:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/CTLoginAuth$ResponseData;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAtExpiresIn()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/netease/nis/quicklogin/entity/CTLoginAuth$ResponseData;->atExpiresIn:J

    return-wide v0
.end method

.method public getIpRiskRating()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/CTLoginAuth$ResponseData;->ipRiskRating:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/CTLoginAuth$ResponseData;->loginMode:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/CTLoginAuth$ResponseData;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/CTLoginAuth$ResponseData;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRfExpiresIn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/CTLoginAuth$ResponseData;->rfExpiresIn:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/netease/nis/quicklogin/entity/CTLoginAuth$ResponseData;->timeStamp:J

    return-wide v0
.end method

.method public getUserRiskRating()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/CTLoginAuth$ResponseData;->userRiskRating:Ljava/lang/String;

    return-object v0
.end method
