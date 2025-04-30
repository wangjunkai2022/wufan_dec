.class public Lcom/join/mgps/dto/ExitBean;
.super Ljava/lang/Object;
.source "ExitBean.java"


# instance fields
.field private info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private isopen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/dto/ExitBean;->isopen:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/ExitBean;->info:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExitBean;->info:Ljava/util/List;

    return-object v0
.end method

.method public getIsopen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ExitBean;->isopen:I

    return v0
.end method

.method public setInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExitBean;->info:Ljava/util/List;

    return-void
.end method

.method public setIsopen(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ExitBean;->isopen:I

    return-void
.end method
