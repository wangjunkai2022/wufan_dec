.class public Lcom/join/mgps/dto/RequestCollectionArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RequestCollectionArgs.java"


# instance fields
.field private belong_to_tag:Ljava/lang/String;

.field private collection_id:Ljava/lang/String;

.field private game_type:Ljava/lang/String;

.field private pc:I

.field private pn:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->collection_id:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->pn:I

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->pc:I

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->game_type:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->belong_to_tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBelong_to_tag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->belong_to_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getCollection_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->collection_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->game_type:Ljava/lang/String;

    return-object v0
.end method

.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->pc:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->pn:I

    return v0
.end method

.method public setBelong_to_tag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->belong_to_tag:Ljava/lang/String;

    return-void
.end method

.method public setCollection_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->collection_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->game_type:Ljava/lang/String;

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->pc:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestCollectionArgs;->pn:I

    return-void
.end method
