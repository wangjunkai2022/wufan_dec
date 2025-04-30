.class public Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;
.super Ljava/lang/Object;
.source "PaMgrBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftsBean"
.end annotation


# instance fields
.field private animate:Ljava/lang/String;

.field private id:I

.field private isCombo:Z

.field private name:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private price:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;->animate:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;->price:I

    return v0
.end method

.method public isIsCombo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;->isCombo:Z

    return v0
.end method

.method public setAnimate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;->animate:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;->id:I

    return-void
.end method

.method public setIsCombo(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;->isCombo:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;->pic:Ljava/lang/String;

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList$GiftsBean;->price:I

    return-void
.end method
