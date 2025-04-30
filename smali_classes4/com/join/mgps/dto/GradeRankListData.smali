.class public Lcom/join/mgps/dto/GradeRankListData;
.super Ljava/lang/Object;
.source "GradeRankListData.java"


# instance fields
.field private grade:Lcom/join/mgps/dto/GradePeopleData;

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GradeRankListInfoData;",
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

.method public constructor <init>(Ljava/util/List;Lcom/join/mgps/dto/GradePeopleData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GradeRankListInfoData;",
            ">;",
            "Lcom/join/mgps/dto/GradePeopleData;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GradeRankListData;->users:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/GradeRankListData;->grade:Lcom/join/mgps/dto/GradePeopleData;

    return-void
.end method


# virtual methods
.method public getGrade()Lcom/join/mgps/dto/GradePeopleData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GradeRankListData;->grade:Lcom/join/mgps/dto/GradePeopleData;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GradeRankListInfoData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GradeRankListData;->users:Ljava/util/List;

    return-object v0
.end method

.method public setGrade(Lcom/join/mgps/dto/GradePeopleData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GradeRankListData;->grade:Lcom/join/mgps/dto/GradePeopleData;

    return-void
.end method

.method public setUsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GradeRankListInfoData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GradeRankListData;->users:Ljava/util/List;

    return-void
.end method
