.class public Lcom/join/mgps/db/tables/ShowViewDataBeanTable;
.super Ljava/lang/Object;
.source "ShowViewDataBeanTable.java"


# instance fields
.field private begin_times:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private end_times:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isNeedDelt:Z

.field private is_default:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private jump_info:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pic_addr:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private show_time:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private strategy_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private strategy_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tag_show:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private up_times:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->isNeedDelt:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;J)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->isNeedDelt:Z

    .line 5
    iput p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->id:I

    .line 6
    iput-object p2, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_id:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_name:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->up_times:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->pic_addr:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->begin_times:Ljava/lang/String;

    .line 11
    iput-object p7, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->end_times:Ljava/lang/String;

    .line 12
    iput-object p8, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->is_default:Ljava/lang/String;

    .line 13
    iput-object p9, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->imagePath:Ljava/lang/String;

    .line 14
    iput p10, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->tag_show:I

    .line 15
    iput-boolean p11, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->isNeedDelt:Z

    .line 16
    iput-object p12, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->jump_info:Ljava/lang/String;

    .line 17
    iput-wide p13, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->show_time:J

    return-void
.end method


# virtual methods
.method public getBegin_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->begin_times:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->end_times:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->id:I

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_default()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->is_default:Ljava/lang/String;

    return-object v0
.end method

.method public getJump_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->jump_info:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_addr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->pic_addr:Ljava/lang/String;

    return-object v0
.end method

.method public getShowVieDatabean()Lcom/join/mgps/dto/ShowViewDataBean;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/String;

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    .line 2
    iget-object v3, v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->jump_info:Ljava/lang/String;

    const-class v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lcom/join/mgps/dto/SplashIntentBean;

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/List;

    .line 3
    new-instance v1, Lcom/join/mgps/dto/ShowViewDataBean;

    iget v3, v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->id:I

    iget-object v4, v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_id:Ljava/lang/String;

    iget-object v5, v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_name:Ljava/lang/String;

    iget-object v6, v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->up_times:Ljava/lang/String;

    iget-object v8, v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->begin_times:Ljava/lang/String;

    iget-object v9, v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->end_times:Ljava/lang/String;

    iget-object v10, v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->is_default:Ljava/lang/String;

    iget-object v11, v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->imagePath:Ljava/lang/String;

    iget v12, v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->tag_show:I

    iget-boolean v13, v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->isNeedDelt:Z

    move-object/from16 v16, v14

    iget-wide v14, v0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->show_time:J

    move-object v2, v1

    move-wide/from16 v17, v14

    move-object/from16 v14, v16

    move-wide/from16 v15, v17

    invoke-direct/range {v2 .. v16}, Lcom/join/mgps/dto/ShowViewDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;J)V

    return-object v1
.end method

.method public getShow_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->show_time:J

    return-wide v0
.end method

.method public getStrategy_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategy_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_show()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->tag_show:I

    return v0
.end method

.method public getUp_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->up_times:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedDelt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->isNeedDelt:Z

    return v0
.end method

.method public isTag_show()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->tag_show:I

    return v0
.end method

.method public setBegin_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->begin_times:Ljava/lang/String;

    return-void
.end method

.method public setEnd_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->end_times:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->id:I

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public setIs_default(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->is_default:Ljava/lang/String;

    return-void
.end method

.method public setJump_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->jump_info:Ljava/lang/String;

    return-void
.end method

.method public setNeedDelt(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->isNeedDelt:Z

    return-void
.end method

.method public setPic_addr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->pic_addr:Ljava/lang/String;

    return-void
.end method

.method public setShow_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->show_time:J

    return-void
.end method

.method public setStrategy_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_id:Ljava/lang/String;

    return-void
.end method

.method public setStrategy_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_name:Ljava/lang/String;

    return-void
.end method

.method public setTag_show(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->tag_show:I

    return-void
.end method

.method public setUp_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->up_times:Ljava/lang/String;

    return-void
.end method
