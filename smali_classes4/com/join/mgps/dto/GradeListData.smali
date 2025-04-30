.class public Lcom/join/mgps/dto/GradeListData;
.super Ljava/lang/Object;
.source "GradeListData.java"


# instance fields
.field private grade_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GradeListInfoData;",
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

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GradeListInfoData;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GradeListData;->grade_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getGrade_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GradeListInfoData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GradeListData;->grade_list:Ljava/util/List;

    return-object v0
.end method

.method public setGrade_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GradeListInfoData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GradeListData;->grade_list:Ljava/util/List;

    return-void
.end method
