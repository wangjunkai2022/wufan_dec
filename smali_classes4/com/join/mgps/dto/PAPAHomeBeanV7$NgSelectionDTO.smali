.class public Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;
.super Ljava/lang/Object;
.source "PAPAHomeBeanV7.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PAPAHomeBeanV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NgSelectionDTO"
.end annotation


# instance fields
.field private _from:I

.field private _from_type:I

.field private date:Ljava/lang/String;

.field private game_info_tpl_type:I

.field private hasExposure:Z

.field private ico:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_tpl_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->game_info_tpl_type:I

    return v0
.end method

.method public getIco()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->ico:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public get_from()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->_from:I

    return v0
.end method

.method public get_from_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->_from_type:I

    return v0
.end method

.method public isHasExposure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->hasExposure:Z

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->date:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_tpl_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->game_info_tpl_type:I

    return-void
.end method

.method public setHasExposure(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->hasExposure:Z

    return-void
.end method

.method public setIco(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->ico:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->position:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->title:Ljava/lang/String;

    return-void
.end method

.method public set_from(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->_from:I

    return-void
.end method

.method public set_from_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->_from_type:I

    return-void
.end method
