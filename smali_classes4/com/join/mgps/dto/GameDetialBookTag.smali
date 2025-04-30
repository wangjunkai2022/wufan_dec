.class public Lcom/join/mgps/dto/GameDetialBookTag;
.super Ljava/lang/Object;
.source "GameDetialBookTag.java"


# instance fields
.field private color:Ljava/lang/String;

.field private id:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/GameDetialBookTag;->id:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/GameDetialBookTag;->title:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/GameDetialBookTag;->color:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetialBookTag;->title:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/join/mgps/dto/GameDetialBookTag;->color:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetialBookTag;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetialBookTag;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetialBookTag;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetialBookTag;->color:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDetialBookTag;->id:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetialBookTag;->title:Ljava/lang/String;

    return-void
.end method
