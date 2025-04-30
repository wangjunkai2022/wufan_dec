.class public Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;
.super Ljava/lang/Object;
.source "CTPrefetchNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;
    }
.end annotation


# instance fields
.field private data:Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;

.field private msg:Ljava/lang/String;

.field private reqId:Ljava/lang/String;

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->data:Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->reqId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->result:I

    return v0
.end method
