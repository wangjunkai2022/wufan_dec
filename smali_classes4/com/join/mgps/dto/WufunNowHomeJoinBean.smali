.class public Lcom/join/mgps/dto/WufunNowHomeJoinBean;
.super Ljava/lang/Object;
.source "WufunNowHomeJoinBean.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private times:J

.field private today_tpl_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/WufunNowHomeJoinBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getTimes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/WufunNowHomeJoinBean;->times:J

    return-wide v0
.end method

.method public getToday_tpl_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/WufunNowHomeJoinBean;->today_tpl_type:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/WufunNowHomeJoinBean;->list:Ljava/util/List;

    return-void
.end method

.method public setTimes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/WufunNowHomeJoinBean;->times:J

    return-void
.end method

.method public setToday_tpl_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/WufunNowHomeJoinBean;->today_tpl_type:I

    return-void
.end method
