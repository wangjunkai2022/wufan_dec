.class public Lcom/join/mgps/dto/SimulatorListMainDataBean;
.super Ljava/lang/Object;
.source "SimulatorListMainDataBean.java"


# instance fields
.field private ico_local:Ljava/lang/String;

.field private ico_remote:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private index_number:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private pic_local:Ljava/lang/String;

.field private pic_remote:Ljava/lang/String;

.field private setup_count:Ljava/lang/String;

.field private show_index:Ljava/lang/String;

.field private show_type:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private title_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->title:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->label:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->pic_local:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->pic_remote:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->ico_local:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->ico_remote:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->show_index:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->info:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->setup_count:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->show_type:Ljava/lang/String;

    .line 14
    iput-object p12, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->index_number:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->title_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIco_local()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->ico_local:Ljava/lang/String;

    return-object v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->index_number:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_local()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->pic_local:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->pic_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getSetup_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->setup_count:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_index()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->show_index:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->show_type:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->title_type:Ljava/lang/String;

    return-object v0
.end method

.method public setIco_local(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->ico_local:Ljava/lang/String;

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIndex_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->index_number:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->info:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->label:Ljava/lang/String;

    return-void
.end method

.method public setPic_local(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->pic_local:Ljava/lang/String;

    return-void
.end method

.method public setPic_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->pic_remote:Ljava/lang/String;

    return-void
.end method

.method public setSetup_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->setup_count:Ljava/lang/String;

    return-void
.end method

.method public setShow_index(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->show_index:Ljava/lang/String;

    return-void
.end method

.method public setShow_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->show_type:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitle_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorListMainDataBean;->title_type:Ljava/lang/String;

    return-void
.end method
