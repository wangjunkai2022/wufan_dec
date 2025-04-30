.class public Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;
.super Ljava/lang/Object;
.source "PaMgrBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendGift"
.end annotation


# instance fields
.field giftCount:Ljava/lang/String;

.field giftId:Ljava/lang/String;

.field private isCombo:I

.field private liveUserId:Ljava/lang/String;

.field token:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGiftCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;->giftCount:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;->giftId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCombo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;->isCombo:I

    return v0
.end method

.method public getLiveUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;->liveUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setGiftCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;->giftCount:Ljava/lang/String;

    return-void
.end method

.method public setGiftId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;->giftId:Ljava/lang/String;

    return-void
.end method

.method public setIsCombo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;->isCombo:I

    return-void
.end method

.method public setLiveUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;->liveUserId:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Request$SendGift;->userId:Ljava/lang/String;

    return-void
.end method
