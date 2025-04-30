.class public Lcom/join/mgps/dto/GradeRankListInfoData;
.super Ljava/lang/Object;
.source "GradeRankListInfoData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar_src:Ljava/lang/String;

.field private grade_name:Ljava/lang/String;

.field private grade_rank:I

.field private nickname:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private world_rank:I

.field private world_score:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->world_rank:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->grade_rank:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->grade_name:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->uid:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->nickname:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->avatar_src:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->world_score:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->grade_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade_rank()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->grade_rank:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getWorld_rank()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->world_rank:I

    return v0
.end method

.method public getWorld_score()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->world_score:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setGrade_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->grade_name:Ljava/lang/String;

    return-void
.end method

.method public setGrade_rank(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->grade_rank:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->uid:Ljava/lang/String;

    return-void
.end method

.method public setWorld_rank(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->world_rank:I

    return-void
.end method

.method public setWorld_score(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GradeRankListInfoData;->world_score:Ljava/lang/String;

    return-void
.end method
