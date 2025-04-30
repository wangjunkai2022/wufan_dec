.class public Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;
.super Ljava/lang/Object;
.source "UserCenterBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/UserCenterBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserCenterItem"
.end annotation


# instance fields
.field private isEmpty:Z

.field private isPlaceHolder:Z

.field private main:Lcom/join/mgps/dto/UserCenterItemBean;

.field private sub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/JumpInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private unReadCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMain()Lcom/join/mgps/dto/UserCenterItemBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->main:Lcom/join/mgps/dto/UserCenterItemBean;

    return-object v0
.end method

.method public getSub()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/JumpInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->sub:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUnReadCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->unReadCount:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isEmpty:Z

    return v0
.end method

.method public isPlaceHolder()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isPlaceHolder:Z

    return v0
.end method

.method public setEmpty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isEmpty:Z

    return-void
.end method

.method public setMain(Lcom/join/mgps/dto/UserCenterItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->main:Lcom/join/mgps/dto/UserCenterItemBean;

    return-void
.end method

.method public setPlaceHolder(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isPlaceHolder:Z

    return-void
.end method

.method public setSub(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/JumpInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->sub:Ljava/util/ArrayList;

    return-void
.end method

.method public setUnReadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->unReadCount:I

    return-void
.end method
