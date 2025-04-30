.class public Lcom/join/mgps/dto/SimulatorFastEntryListBean;
.super Ljava/lang/Object;
.source "SimulatorFastEntryListBean.java"


# instance fields
.field private data:Ljava/lang/Object;

.field private scrollOffset:I

.field private scrollPosition:I

.field private tagId:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->type:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->data:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->type:I

    .line 6
    iput-object p2, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->data:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->tagId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->scrollOffset:I

    return v0
.end method

.method public getScrollPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->scrollPosition:I

    return v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->type:I

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->data:Ljava/lang/Object;

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->scrollOffset:I

    return-void
.end method

.method public setScrollPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->scrollPosition:I

    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->tagId:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->type:I

    return-void
.end method
