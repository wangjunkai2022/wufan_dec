.class public Lcom/join/mgps/dto/SubAppGameInfoBean;
.super Ljava/lang/Object;
.source "SubAppGameInfoBean.java"


# instance fields
.field private appSize:Ljava/lang/String;

.field private crc_sign_id:Ljava/lang/String;

.field private down_count:Ljava/lang/String;

.field private down_count_manual:Ljava/lang/String;

.field private down_url_local:Ljava/lang/String;

.field private down_url_remote:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private ico_local:Ljava/lang/String;

.field private ico_remote:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private score_count:Ljava/lang/String;

.field private score_count_manual:Ljava/lang/String;

.field private sign_id:Ljava/lang/String;

.field private tag_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->crc_sign_id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->sign_id:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->game_name:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->ico_local:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->ico_remote:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->packageName:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->appSize:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->tag_info:Ljava/util/List;

    .line 11
    iput-object p9, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->down_count:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->down_count_manual:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->down_url_local:Ljava/lang/String;

    .line 14
    iput-object p12, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->down_url_remote:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->info:Ljava/lang/String;

    .line 16
    iput-object p14, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->score_count_manual:Ljava/lang/String;

    .line 17
    iput-object p15, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->score_count:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->appSize:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->crc_sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->down_count:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_count_manual()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->down_count_manual:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_url_local()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->down_url_local:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->down_url_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIco_local()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->ico_local:Ljava/lang/String;

    return-object v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScore_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->score_count:Ljava/lang/String;

    return-object v0
.end method

.method public getScore_count_manual()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->score_count_manual:Ljava/lang/String;

    return-object v0
.end method

.method public getSign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->tag_info:Ljava/util/List;

    return-object v0
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->appSize:Ljava/lang/String;

    return-void
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->crc_sign_id:Ljava/lang/String;

    return-void
.end method

.method public setDown_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->down_count:Ljava/lang/String;

    return-void
.end method

.method public setDown_count_manual(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->down_count_manual:Ljava/lang/String;

    return-void
.end method

.method public setDown_url_local(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->down_url_local:Ljava/lang/String;

    return-void
.end method

.method public setDown_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->down_url_remote:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setIco_local(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->ico_local:Ljava/lang/String;

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->info:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setScore_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->score_count:Ljava/lang/String;

    return-void
.end method

.method public setScore_count_manual(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->score_count_manual:Ljava/lang/String;

    return-void
.end method

.method public setSign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->sign_id:Ljava/lang/String;

    return-void
.end method

.method public setTag_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppGameInfoBean;->tag_info:Ljava/util/List;

    return-void
.end method
