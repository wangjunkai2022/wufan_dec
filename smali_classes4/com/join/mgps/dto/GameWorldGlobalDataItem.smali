.class public Lcom/join/mgps/dto/GameWorldGlobalDataItem;
.super Ljava/lang/Object;
.source "GameWorldGlobalDataItem.java"


# instance fields
.field avatarSrc:Ljava/lang/String;

.field uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarSrc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldGlobalDataItem;->avatarSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldGlobalDataItem;->uid:I

    return v0
.end method

.method public setAvatarSrc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldGlobalDataItem;->avatarSrc:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldGlobalDataItem;->uid:I

    return-void
.end method
