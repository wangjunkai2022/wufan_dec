.class public Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;
.super Ljava/lang/Object;
.source "SimulatorAreaDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionInfoBean"
.end annotation


# instance fields
.field private collection_id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollection_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;->collection_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCollection_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;->collection_id:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;->title:Ljava/lang/String;

    return-void
.end method
