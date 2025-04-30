.class public Lcom/join/mgps/dto/GiftPackageOperationArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "GiftPackageOperationArgs.java"


# instance fields
.field private game_id:Ljava/lang/String;

.field private gift_package_id:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/GiftPackageOperationArgs;->uid:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/GiftPackageOperationArgs;->gift_package_id:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/GiftPackageOperationArgs;->game_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GiftPackageOperationArgs;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_package_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GiftPackageOperationArgs;->gift_package_id:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GiftPackageOperationArgs;->uid:I

    return v0
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GiftPackageOperationArgs;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGift_package_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GiftPackageOperationArgs;->gift_package_id:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GiftPackageOperationArgs;->uid:I

    return-void
.end method
