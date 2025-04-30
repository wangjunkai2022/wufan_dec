.class public Lcom/join/mgps/dto/InformationListDataBean;
.super Ljava/lang/Object;
.source "InformationListDataBean.java"


# instance fields
.field private game_id:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private info_id:Ljava/lang/String;

.field private material:Ljava/lang/String;

.field private praise:Ljava/lang/String;

.field private release_time:Ljava/lang/String;

.field private score_count:F

.field private tag_id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->tag_id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/InformationListDataBean;->title:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/InformationListDataBean;->release_time:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/InformationListDataBean;->material:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/InformationListDataBean;->praise:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->info_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaterial()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->material:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->praise:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->release_time:Ljava/lang/String;

    return-object v0
.end method

.method public getScore_count()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->score_count:F

    return v0
.end method

.method public getTag_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->tag_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setInfo_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->info_id:Ljava/lang/String;

    return-void
.end method

.method public setMaterial(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->material:Ljava/lang/String;

    return-void
.end method

.method public setPraise(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->praise:Ljava/lang/String;

    return-void
.end method

.method public setRelease_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->release_time:Ljava/lang/String;

    return-void
.end method

.method public setScore_count(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->score_count:F

    return-void
.end method

.method public setTag_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->tag_id:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->title:Ljava/lang/String;

    return-void
.end method
