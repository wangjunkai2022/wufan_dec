.class public Lcom/join/mgps/dto/LodingImageMainBean;
.super Ljava/lang/Object;
.source "LodingImageMainBean.java"


# instance fields
.field private isopen:I

.field private pic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/LodingImageBean;",
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

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/LodingImageBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/LodingImageMainBean;->isopen:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/LodingImageMainBean;->pic:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getIsopen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/LodingImageMainBean;->isopen:I

    return v0
.end method

.method public getPic()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/LodingImageBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LodingImageMainBean;->pic:Ljava/util/List;

    return-object v0
.end method

.method public setIsopen(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/LodingImageMainBean;->isopen:I

    return-void
.end method

.method public setPic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/LodingImageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LodingImageMainBean;->pic:Ljava/util/List;

    return-void
.end method
