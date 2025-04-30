.class public Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;
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
    name = "JpInfo"
.end annotation


# instance fields
.field private crc_link_type_val:Ljava/lang/String;

.field private is_more:I

.field private jump_type:I

.field private link_type:I

.field private link_type_val:Ljava/lang/String;

.field private third_type:I

.field private tpl_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_more()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->is_more:I

    return v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->jump_type:I

    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->link_type:I

    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getThird_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->third_type:I

    return v0
.end method

.method public getTpl_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->tpl_type:I

    return v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setIs_more(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->is_more:I

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->jump_type:I

    return-void
.end method

.method public setLink_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->link_type:I

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setThird_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->third_type:I

    return-void
.end method

.method public setTpl_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->tpl_type:I

    return-void
.end method
