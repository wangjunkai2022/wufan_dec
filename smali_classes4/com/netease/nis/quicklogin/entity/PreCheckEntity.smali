.class public Lcom/netease/nis/quicklogin/entity/PreCheckEntity;
.super Ljava/lang/Object;
.source "PreCheckEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/lang/String;

.field private extData:Lorg/json/JSONObject;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->code:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getExtData()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->extData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->msg:Ljava/lang/String;

    return-object v0
.end method
