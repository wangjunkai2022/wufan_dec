.class public Lcom/join/mgps/dto/GameHeadAd;
.super Ljava/lang/Object;
.source "GameHeadAd.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameHeadAd$SubInfo;,
        Lcom/join/mgps/dto/GameHeadAd$GameMain;
    }
.end annotation


# instance fields
.field private main:Lcom/join/mgps/dto/GameHeadAd$GameMain;

.field private sub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameHeadAd$SubInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMain()Lcom/join/mgps/dto/GameHeadAd$GameMain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameHeadAd;->main:Lcom/join/mgps/dto/GameHeadAd$GameMain;

    return-object v0
.end method

.method public getSub()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameHeadAd$SubInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameHeadAd;->sub:Ljava/util/List;

    return-object v0
.end method

.method public setMain(Lcom/join/mgps/dto/GameHeadAd$GameMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameHeadAd;->main:Lcom/join/mgps/dto/GameHeadAd$GameMain;

    return-void
.end method

.method public setSub(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameHeadAd$SubInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameHeadAd;->sub:Ljava/util/List;

    return-void
.end method
