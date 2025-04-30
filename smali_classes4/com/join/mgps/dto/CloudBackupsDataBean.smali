.class public Lcom/join/mgps/dto/CloudBackupsDataBean;
.super Ljava/lang/Object;
.source "CloudBackupsDataBean.java"


# instance fields
.field private file:Ljava/lang/String;

.field private game_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudBackupsDataBean;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudBackupsDataBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudBackupsDataBean;->file:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudBackupsDataBean;->game_id:Ljava/lang/String;

    return-void
.end method
