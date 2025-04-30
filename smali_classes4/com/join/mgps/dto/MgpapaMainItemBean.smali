.class public Lcom/join/mgps/dto/MgpapaMainItemBean;
.super Ljava/lang/Object;
.source "MgpapaMainItemBean.java"


# instance fields
.field private hasExposure:Z

.field private moreType:I

.field private moreType2:Ljava/lang/String;

.field private object:Ljava/lang/Object;

.field private page:I

.field private reMarks:Ljava/lang/String;

.field private recomDatabeanLeft:Lcom/join/mgps/business/RecomDatabeanBusiness;

.field private recomDatabeanRight:Lcom/join/mgps/business/RecomDatabeanBusiness;

.field private recomDatabeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private recomDatabeans2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private recomDatabeans3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private showtype:I


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
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->showtype:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeans:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->showtype:I

    .line 7
    iput-object p2, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeans:Ljava/util/List;

    .line 8
    iput-object p3, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeans2:Ljava/util/List;

    .line 9
    iput-object p4, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeans3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMoreType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->moreType:I

    return v0
.end method

.method public getMoreType2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->moreType2:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->page:I

    return v0
.end method

.method public getReMarks()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->reMarks:Ljava/lang/String;

    return-object v0
.end method

.method public getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeanLeft:Lcom/join/mgps/business/RecomDatabeanBusiness;

    return-object v0
.end method

.method public getRecomDatabeanRight()Lcom/join/mgps/business/RecomDatabeanBusiness;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeanRight:Lcom/join/mgps/business/RecomDatabeanBusiness;

    return-object v0
.end method

.method public getRecomDatabeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeans:Ljava/util/List;

    return-object v0
.end method

.method public getRecomDatabeans2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeans2:Ljava/util/List;

    return-object v0
.end method

.method public getRecomDatabeans3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeans3:Ljava/util/List;

    return-object v0
.end method

.method public getShowtype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->showtype:I

    return v0
.end method

.method public isHasExposure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->hasExposure:Z

    return v0
.end method

.method public setHasExposure(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->hasExposure:Z

    return-void
.end method

.method public setMoreType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->moreType:I

    return-void
.end method

.method public setMoreType2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->moreType2:Ljava/lang/String;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->object:Ljava/lang/Object;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->page:I

    return-void
.end method

.method public setReMarks(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->reMarks:Ljava/lang/String;

    return-void
.end method

.method public setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeanLeft:Lcom/join/mgps/business/RecomDatabeanBusiness;

    return-void
.end method

.method public setRecomDatabeanRight(Lcom/join/mgps/business/RecomDatabeanBusiness;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeanRight:Lcom/join/mgps/business/RecomDatabeanBusiness;

    return-void
.end method

.method public setRecomDatabeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeans:Ljava/util/List;

    return-void
.end method

.method public setRecomDatabeans2(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeans2:Ljava/util/List;

    return-void
.end method

.method public setRecomDatabeans3(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->recomDatabeans3:Ljava/util/List;

    return-void
.end method

.method public setShowtype(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MgpapaMainItemBean;->showtype:I

    return-void
.end method
