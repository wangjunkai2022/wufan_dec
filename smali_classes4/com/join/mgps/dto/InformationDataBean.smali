.class public Lcom/join/mgps/dto/InformationDataBean;
.super Ljava/lang/Object;
.source "InformationDataBean.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private top:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
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

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/InformationDataBean;->top:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/InformationDataBean;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationDataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getTop()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationDataBean;->top:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationDataBean;->list:Ljava/util/List;

    return-void
.end method

.method public setTop(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationDataBean;->top:Ljava/util/List;

    return-void
.end method
