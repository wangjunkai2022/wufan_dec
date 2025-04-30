.class public Lcom/join/mgps/dto/RecomDataMessageBean;
.super Ljava/lang/Object;
.source "RecomDataMessageBean.java"


# instance fields
.field private data:Lcom/join/mgps/dto/HomeFloatData;

.field private modeltype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/join/mgps/dto/HomeFloatData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataMessageBean;->data:Lcom/join/mgps/dto/HomeFloatData;

    return-object v0
.end method

.method public getModeltype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataMessageBean;->modeltype:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/join/mgps/dto/HomeFloatData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataMessageBean;->data:Lcom/join/mgps/dto/HomeFloatData;

    return-void
.end method

.method public setModeltype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataMessageBean;->modeltype:Ljava/lang/String;

    return-void
.end method
