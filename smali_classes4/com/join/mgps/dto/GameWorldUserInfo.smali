.class public Lcom/join/mgps/dto/GameWorldUserInfo;
.super Ljava/lang/Object;
.source "GameWorldUserInfo.java"


# instance fields
.field private avatar_src:Ljava/lang/String;

.field private grade_number:I

.field private is_worship:Z

.field private nickname:Ljava/lang/String;

.field private papa_money:I

.field private rank_grade:Lcom/join/mgps/dto/GameworldRankGradeBean;

.field private role_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldRoleBean;",
            ">;"
        }
    .end annotation
.end field

.field private trophy_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldTrophyItem;",
            ">;"
        }
    .end annotation
.end field

.field private uid:I

.field private world_rank:I

.field private world_score:I

.field private world_worship_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->grade_number:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPapa_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->papa_money:I

    return v0
.end method

.method public getRank_grade()Lcom/join/mgps/dto/GameworldRankGradeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->rank_grade:Lcom/join/mgps/dto/GameworldRankGradeBean;

    return-object v0
.end method

.method public getRole_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldRoleBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->role_list:Ljava/util/List;

    return-object v0
.end method

.method public getTrophy_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldTrophyItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->trophy_list:Ljava/util/List;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->uid:I

    return v0
.end method

.method public getWorld_rank()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->world_rank:I

    return v0
.end method

.method public getWorld_score()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->world_score:I

    return v0
.end method

.method public getWorld_worship_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->world_worship_count:I

    return v0
.end method

.method public isIs_worship()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->is_worship:Z

    return v0
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setGrade_number(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->grade_number:I

    return-void
.end method

.method public setIs_worship(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->is_worship:Z

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPapa_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->papa_money:I

    return-void
.end method

.method public setRank_grade(Lcom/join/mgps/dto/GameworldRankGradeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->rank_grade:Lcom/join/mgps/dto/GameworldRankGradeBean;

    return-void
.end method

.method public setRole_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldRoleBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->role_list:Ljava/util/List;

    return-void
.end method

.method public setTrophy_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldTrophyItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->trophy_list:Ljava/util/List;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->uid:I

    return-void
.end method

.method public setWorld_rank(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->world_rank:I

    return-void
.end method

.method public setWorld_score(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->world_score:I

    return-void
.end method

.method public setWorld_worship_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldUserInfo;->world_worship_count:I

    return-void
.end method
