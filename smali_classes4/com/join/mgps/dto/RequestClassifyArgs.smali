.class public Lcom/join/mgps/dto/RequestClassifyArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RequestClassifyArgs.java"


# instance fields
.field private pc:I

.field private pn:I

.field private ranking_type:I

.field private rom_type:Ljava/lang/String;

.field private showtag:[I

.field private sort_type:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(II[ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    iput-object p3, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->showtag:[I

    .line 4
    iput p1, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->pn:I

    .line 5
    iput p2, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->pc:I

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->type:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->ranking_type:I

    .line 8
    iput-object p5, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->rom_type:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->sort_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->pc:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->pn:I

    return v0
.end method

.method public getRanking_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->ranking_type:I

    return v0
.end method

.method public getRom_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->rom_type:Ljava/lang/String;

    return-object v0
.end method

.method public getShowtag()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->showtag:[I

    return-object v0
.end method

.method public getSort_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->sort_type:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setPc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->pc:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->pn:I

    return-void
.end method

.method public setRanking_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->ranking_type:I

    return-void
.end method

.method public setRom_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->rom_type:Ljava/lang/String;

    return-void
.end method

.method public setShowtag([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->showtag:[I

    return-void
.end method

.method public setSort_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->sort_type:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestClassifyArgs;->type:Ljava/lang/String;

    return-void
.end method
