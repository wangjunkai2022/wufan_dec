.class public Lcom/join/mgps/dto/GameDetialAuxiliaryBean;
.super Ljava/lang/Object;
.source "GameDetialAuxiliaryBean.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;",
            ">;"
        }
    .end annotation
.end field

.field private more_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetialAuxiliaryBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getMore_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetialAuxiliaryBean;->more_url:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetialAuxiliaryBean;->data:Ljava/util/List;

    return-void
.end method

.method public setMore_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetialAuxiliaryBean;->more_url:Ljava/lang/String;

    return-void
.end method
