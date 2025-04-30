.class public Lcom/join/mgps/dto/RequestGameArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RequestGameArgs.java"


# instance fields
.field private belong_to_tag:Ljava/lang/String;

.field private platform_type:Ljava/lang/String;

.field private pn:I

.field private showtag:[I

.field private sort:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    iput-object p6, p0, Lcom/join/mgps/dto/RequestGameArgs;->showtag:[I

    .line 4
    iput p1, p0, Lcom/join/mgps/dto/RequestGameArgs;->pn:I

    .line 5
    iput-object p2, p0, Lcom/join/mgps/dto/RequestGameArgs;->type:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/join/mgps/dto/RequestGameArgs;->sort:I

    .line 7
    iput-object p4, p0, Lcom/join/mgps/dto/RequestGameArgs;->platform_type:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/join/mgps/dto/RequestGameArgs;->belong_to_tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBelong_to_tag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameArgs;->belong_to_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameArgs;->platform_type:Ljava/lang/String;

    return-object v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameArgs;->pn:I

    return v0
.end method

.method public getShowtag()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameArgs;->showtag:[I

    return-object v0
.end method

.method public getSort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameArgs;->sort:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameArgs;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBelong_to_tag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameArgs;->belong_to_tag:Ljava/lang/String;

    return-void
.end method

.method public setPlatform_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameArgs;->platform_type:Ljava/lang/String;

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameArgs;->pn:I

    return-void
.end method

.method public setShowtag([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameArgs;->showtag:[I

    return-void
.end method

.method public setSort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameArgs;->sort:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameArgs;->type:Ljava/lang/String;

    return-void
.end method
