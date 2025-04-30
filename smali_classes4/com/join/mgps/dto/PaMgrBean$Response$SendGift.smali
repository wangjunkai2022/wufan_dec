.class public Lcom/join/mgps/dto/PaMgrBean$Response$SendGift;
.super Ljava/lang/Object;
.source "PaMgrBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendGift"
.end annotation


# instance fields
.field private diamond:I

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiamond()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$SendGift;->diamond:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$SendGift;->status:I

    return v0
.end method

.method public setDiamond(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$SendGift;->diamond:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$SendGift;->status:I

    return-void
.end method
