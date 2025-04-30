.class public Lcom/join/mgps/dto/InformationCommentBack;
.super Ljava/lang/Object;
.source "InformationCommentBack.java"


# instance fields
.field private all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private hot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
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
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBack;->hot:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/InformationCommentBack;->all:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBack;->all:Ljava/util/List;

    return-object v0
.end method

.method public getHot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationCommentBack;->hot:Ljava/util/List;

    return-object v0
.end method

.method public setAll(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBack;->all:Ljava/util/List;

    return-void
.end method

.method public setHot(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationCommentBack;->hot:Ljava/util/List;

    return-void
.end method
