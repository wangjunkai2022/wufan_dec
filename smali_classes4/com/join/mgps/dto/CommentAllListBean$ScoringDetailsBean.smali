.class public Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;
.super Ljava/lang/Object;
.source "CommentAllListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/CommentAllListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScoringDetailsBean"
.end annotation


# instance fields
.field private game_id:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private p_count:I

.field private stars_score1:Ljava/lang/String;

.field private stars_score2:Ljava/lang/String;

.field private stars_score3:Ljava/lang/String;

.field private stars_score4:Ljava/lang/String;

.field private stars_score5:Ljava/lang/String;

.field private total_score:Ljava/lang/String;

.field private total_stars:D

.field private update_times:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getP_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->p_count:I

    return v0
.end method

.method public getStars_score1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->stars_score1:Ljava/lang/String;

    return-object v0
.end method

.method public getStars_score2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->stars_score2:Ljava/lang/String;

    return-object v0
.end method

.method public getStars_score3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->stars_score3:Ljava/lang/String;

    return-object v0
.end method

.method public getStars_score4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->stars_score4:Ljava/lang/String;

    return-object v0
.end method

.method public getStars_score5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->stars_score5:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_score()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->total_score:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_stars()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->total_stars:D

    return-wide v0
.end method

.method public getUpdate_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->update_times:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setP_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->p_count:I

    return-void
.end method

.method public setStars_score1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->stars_score1:Ljava/lang/String;

    return-void
.end method

.method public setStars_score2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->stars_score2:Ljava/lang/String;

    return-void
.end method

.method public setStars_score3(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->stars_score3:Ljava/lang/String;

    return-void
.end method

.method public setStars_score4(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->stars_score4:Ljava/lang/String;

    return-void
.end method

.method public setStars_score5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->stars_score5:Ljava/lang/String;

    return-void
.end method

.method public setTotal_score(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->total_score:Ljava/lang/String;

    return-void
.end method

.method public setTotal_stars(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->total_stars:D

    return-void
.end method

.method public setUpdate_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->update_times:Ljava/lang/String;

    return-void
.end method
