.class public Lcom/join/mgps/dto/LiveFourmTopAd;
.super Ljava/lang/Object;
.source "LiveFourmTopAd.java"


# instance fields
.field private hotAnchor:[Ljava/lang/String;

.field private jumpData:Lcom/join/mgps/dto/BannerBean;

.field private redDot:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotAnchor()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LiveFourmTopAd;->hotAnchor:[Ljava/lang/String;

    return-object v0
.end method

.method public getJumpData()Lcom/join/mgps/dto/BannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LiveFourmTopAd;->jumpData:Lcom/join/mgps/dto/BannerBean;

    return-object v0
.end method

.method public getRedDot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/LiveFourmTopAd;->redDot:I

    return v0
.end method

.method public setHotAnchor([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LiveFourmTopAd;->hotAnchor:[Ljava/lang/String;

    return-void
.end method

.method public setJumpData(Lcom/join/mgps/dto/BannerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LiveFourmTopAd;->jumpData:Lcom/join/mgps/dto/BannerBean;

    return-void
.end method

.method public setRedDot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/LiveFourmTopAd;->redDot:I

    return-void
.end method
