.class public Lcom/join/mgps/dto/ShowViewDataBean;
.super Ljava/lang/Object;
.source "ShowViewDataBean.java"


# instance fields
.field private begin_times:Ljava/lang/String;

.field private end_times:Ljava/lang/String;

.field private id:I

.field private imagePath:Ljava/lang/String;

.field private isNeedDelt:Z

.field private is_force:Ljava/lang/String;

.field private jump_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SplashIntentBean;",
            ">;"
        }
    .end annotation
.end field

.field private show_time:J

.field private strategy_id:Ljava/lang/String;

.field private strategy_name:Ljava/lang/String;

.field private tag_show:I

.field private up_times:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SplashIntentBean;",
            ">;J)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x1

    .line 4
    iput-boolean p5, p0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    .line 5
    iput p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->id:I

    .line 6
    iput-object p2, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_id:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_name:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/join/mgps/dto/ShowViewDataBean;->up_times:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/join/mgps/dto/ShowViewDataBean;->begin_times:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/join/mgps/dto/ShowViewDataBean;->end_times:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Lcom/join/mgps/dto/ShowViewDataBean;->is_force:Ljava/lang/String;

    .line 12
    iput-object p9, p0, Lcom/join/mgps/dto/ShowViewDataBean;->imagePath:Ljava/lang/String;

    .line 13
    iput p10, p0, Lcom/join/mgps/dto/ShowViewDataBean;->tag_show:I

    .line 14
    iput-boolean p11, p0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    .line 15
    iput-object p12, p0, Lcom/join/mgps/dto/ShowViewDataBean;->jump_info:Ljava/util/List;

    .line 16
    iput-wide p13, p0, Lcom/join/mgps/dto/ShowViewDataBean;->show_time:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SplashIntentBean;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x1

    .line 18
    iput-boolean p5, p0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    .line 19
    iput p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->id:I

    .line 20
    iput-object p2, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_id:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_name:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/join/mgps/dto/ShowViewDataBean;->up_times:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/join/mgps/dto/ShowViewDataBean;->begin_times:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/join/mgps/dto/ShowViewDataBean;->end_times:Ljava/lang/String;

    .line 25
    iput-object p8, p0, Lcom/join/mgps/dto/ShowViewDataBean;->is_force:Ljava/lang/String;

    .line 26
    iput-object p9, p0, Lcom/join/mgps/dto/ShowViewDataBean;->imagePath:Ljava/lang/String;

    .line 27
    iput p10, p0, Lcom/join/mgps/dto/ShowViewDataBean;->tag_show:I

    .line 28
    iput-boolean p11, p0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    .line 29
    iput-object p12, p0, Lcom/join/mgps/dto/ShowViewDataBean;->jump_info:Ljava/util/List;

    .line 30
    iput-wide p13, p0, Lcom/join/mgps/dto/ShowViewDataBean;->show_time:J

    return-void
.end method


# virtual methods
.method public getBegin_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->begin_times:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->end_times:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->id:I

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_force()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->is_force:Ljava/lang/String;

    return-object v0
.end method

.method public getJump_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SplashIntentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->jump_info:Ljava/util/List;

    return-object v0
.end method

.method public getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/join/mgps/dto/ShowViewDataBean;->jump_info:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 2
    new-instance v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    iget v4, v0, Lcom/join/mgps/dto/ShowViewDataBean;->id:I

    iget-object v5, v0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_id:Ljava/lang/String;

    iget-object v6, v0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_name:Ljava/lang/String;

    iget-object v7, v0, Lcom/join/mgps/dto/ShowViewDataBean;->up_times:Ljava/lang/String;

    iget-object v9, v0, Lcom/join/mgps/dto/ShowViewDataBean;->begin_times:Ljava/lang/String;

    iget-object v10, v0, Lcom/join/mgps/dto/ShowViewDataBean;->end_times:Ljava/lang/String;

    iget-object v11, v0, Lcom/join/mgps/dto/ShowViewDataBean;->is_force:Ljava/lang/String;

    iget-object v12, v0, Lcom/join/mgps/dto/ShowViewDataBean;->imagePath:Ljava/lang/String;

    iget v13, v0, Lcom/join/mgps/dto/ShowViewDataBean;->tag_show:I

    iget-boolean v14, v0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    iget-wide v2, v0, Lcom/join/mgps/dto/ShowViewDataBean;->show_time:J

    const-string v8, ""

    move-wide/from16 v16, v2

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;J)V

    return-object v1
.end method

.method public getShow_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->show_time:J

    return-wide v0
.end method

.method public getStrategy_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategy_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_show()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->tag_show:I

    return v0
.end method

.method public getUp_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->up_times:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedDelt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    return v0
.end method

.method public setBegin_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->begin_times:Ljava/lang/String;

    return-void
.end method

.method public setEnd_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->end_times:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->id:I

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public setIs_force(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->is_force:Ljava/lang/String;

    return-void
.end method

.method public setJump_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SplashIntentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->jump_info:Ljava/util/List;

    return-void
.end method

.method public setNeedDelt(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    return-void
.end method

.method public setShow_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->show_time:J

    return-void
.end method

.method public setStrategy_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_id:Ljava/lang/String;

    return-void
.end method

.method public setStrategy_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_name:Ljava/lang/String;

    return-void
.end method

.method public setTag_show(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->tag_show:I

    return-void
.end method

.method public setUp_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->up_times:Ljava/lang/String;

    return-void
.end method
