.class public Lcom/join/mgps/dto/PanelSwitch;
.super Ljava/lang/Object;
.source "PanelSwitch.java"


# instance fields
.field private community:I

.field private discount:I

.field private taste:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommunity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PanelSwitch;->community:I

    return v0
.end method

.method public getDiscount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PanelSwitch;->discount:I

    return v0
.end method

.method public getTaste()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PanelSwitch;->taste:I

    return v0
.end method

.method public setCommunity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PanelSwitch;->community:I

    return-void
.end method

.method public setDiscount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PanelSwitch;->discount:I

    return-void
.end method

.method public setTaste(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PanelSwitch;->taste:I

    return-void
.end method
