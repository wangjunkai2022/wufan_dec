.class public Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;
.super Ljava/lang/Object;
.source "SimulatorFastEntryBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SimulatorFastEntryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastEntryBean"
.end annotation


# instance fields
.field private id:I

.field private pic:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->id:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->id:I

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->pic:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->title:Ljava/lang/String;

    return-void
.end method
