.class public Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;
.super Ljava/lang/Object;
.source "RankingInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/RankingInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetGameBean"
.end annotation


# instance fields
.field private count:Ljava/lang/Integer;

.field private position:Ljava/lang/Integer;

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;->position:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;->count:Ljava/lang/Integer;

    return-void
.end method

.method public setPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;->position:Ljava/lang/Integer;

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RankingInfoBean$NetGameBean;->title:Ljava/lang/String;

    return-void
.end method
