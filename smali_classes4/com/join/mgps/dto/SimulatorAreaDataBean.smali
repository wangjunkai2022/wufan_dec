.class public Lcom/join/mgps/dto/SimulatorAreaDataBean;
.super Ljava/lang/Object;
.source "SimulatorAreaDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;,
        Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;,
        Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;,
        Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;
    }
.end annotation


# instance fields
.field private collection_recommend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field private simulator_fba_encyclopedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;",
            ">;"
        }
    .end annotation
.end field

.field private simulator_fc_encyclopedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;",
            ">;"
        }
    .end annotation
.end field

.field private simulator_gba_encyclopedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;",
            ">;"
        }
    .end annotation
.end field

.field private simulator_psp_encyclopedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;",
            ">;"
        }
    .end annotation
.end field

.field private subject_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;",
            ">;"
        }
    .end annotation
.end field

.field private the_new_release:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private top_5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
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


# virtual methods
.method public getCollection_recommend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->collection_recommend:Ljava/util/List;

    return-object v0
.end method

.method public getGame_type()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->game_type:Ljava/util/List;

    return-object v0
.end method

.method public getSimulator_fba_encyclopedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->simulator_fba_encyclopedias:Ljava/util/List;

    return-object v0
.end method

.method public getSimulator_fc_encyclopedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->simulator_fc_encyclopedias:Ljava/util/List;

    return-object v0
.end method

.method public getSimulator_gba_encyclopedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->simulator_gba_encyclopedias:Ljava/util/List;

    return-object v0
.end method

.method public getSimulator_psp_encyclopedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->simulator_psp_encyclopedias:Ljava/util/List;

    return-object v0
.end method

.method public getSubject_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->subject_list:Ljava/util/List;

    return-object v0
.end method

.method public getThe_new_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->the_new_release:Ljava/util/List;

    return-object v0
.end method

.method public getTop_5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->top_5:Ljava/util/List;

    return-object v0
.end method

.method public setCollection_recommend(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->collection_recommend:Ljava/util/List;

    return-void
.end method

.method public setGame_type(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->game_type:Ljava/util/List;

    return-void
.end method

.method public setSimulator_fba_encyclopedias(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->simulator_fba_encyclopedias:Ljava/util/List;

    return-void
.end method

.method public setSimulator_fc_encyclopedias(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->simulator_fc_encyclopedias:Ljava/util/List;

    return-void
.end method

.method public setSimulator_gba_encyclopedias(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->simulator_gba_encyclopedias:Ljava/util/List;

    return-void
.end method

.method public setSimulator_psp_encyclopedias(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->simulator_psp_encyclopedias:Ljava/util/List;

    return-void
.end method

.method public setSubject_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->subject_list:Ljava/util/List;

    return-void
.end method

.method public setThe_new_release(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->the_new_release:Ljava/util/List;

    return-void
.end method

.method public setTop_5(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean;->top_5:Ljava/util/List;

    return-void
.end method
