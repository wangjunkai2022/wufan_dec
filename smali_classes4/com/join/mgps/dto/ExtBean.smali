.class public Lcom/join/mgps/dto/ExtBean;
.super Ljava/lang/Object;
.source "ExtBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _from_type:I

.field private from:Ljava/lang/String;

.field private from_id:Ljava/lang/String;

.field private isOnlineGame:Z

.field private location:Ljava/lang/String;

.field private modId:Ljava/lang/String;

.field private nodeId:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private reMarks:Ljava/lang/String;

.field private recPosition:Ljava/lang/String;

.field private volcanoOther:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/ExtBean;->_from_type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/dto/ExtBean;->position:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/join/mgps/dto/ExtBean;->from_id:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/join/mgps/dto/ExtBean;->position:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->from_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getModId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->modId:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getReMarks()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->reMarks:Ljava/lang/String;

    return-object v0
.end method

.method public getRecPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->recPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getVolcanoOther()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->volcanoOther:Ljava/lang/String;

    return-object v0
.end method

.method public get_from_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ExtBean;->_from_type:I

    return v0
.end method

.method public isOnlineGame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ExtBean;->isOnlineGame:Z

    return v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    return-void
.end method

.method public setFrom_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->from_id:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->location:Ljava/lang/String;

    return-void
.end method

.method public setModId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->modId:Ljava/lang/String;

    return-void
.end method

.method public setNodeId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->nodeId:Ljava/lang/String;

    return-void
.end method

.method public setOnlineGame(Z)Lcom/join/mgps/dto/ExtBean;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ExtBean;->isOnlineGame:Z

    return-object p0
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->position:Ljava/lang/String;

    return-void
.end method

.method public setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->reMarks:Ljava/lang/String;

    return-object p0
.end method

.method public setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->recPosition:Ljava/lang/String;

    return-object p0
.end method

.method public setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->volcanoOther:Ljava/lang/String;

    return-object p0
.end method

.method public set_from_type(I)Lcom/join/mgps/dto/ExtBean;
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ExtBean;->_from_type:I

    return-object p0
.end method
