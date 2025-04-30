.class public Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;
.super Ljava/lang/Object;
.source "PreCheckEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/quicklogin/entity/PreCheckEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private ot:I

.field private token:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->ot:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->url:Ljava/lang/String;

    return-object v0
.end method
