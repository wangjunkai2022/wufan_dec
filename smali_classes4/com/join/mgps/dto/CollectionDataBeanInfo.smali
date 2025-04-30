.class public Lcom/join/mgps/dto/CollectionDataBeanInfo;
.super Ljava/lang/Object;
.source "CollectionDataBeanInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private main:Lcom/join/mgps/dto/BreakBeanMain;

.field private sub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
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

.method public constructor <init>(Lcom/join/mgps/dto/BreakBeanMain;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/BreakBeanMain;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionDataBeanInfo;->main:Lcom/join/mgps/dto/BreakBeanMain;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/CollectionDataBeanInfo;->sub:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMain()Lcom/join/mgps/dto/BreakBeanMain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionDataBeanInfo;->main:Lcom/join/mgps/dto/BreakBeanMain;

    return-object v0
.end method

.method public getSub()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionDataBeanInfo;->sub:Ljava/util/List;

    return-object v0
.end method

.method public setMain(Lcom/join/mgps/dto/BreakBeanMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionDataBeanInfo;->main:Lcom/join/mgps/dto/BreakBeanMain;

    return-void
.end method

.method public setSub(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionDataBeanInfo;->sub:Ljava/util/List;

    return-void
.end method
