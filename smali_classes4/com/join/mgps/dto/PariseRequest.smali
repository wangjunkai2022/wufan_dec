.class public Lcom/join/mgps/dto/PariseRequest;
.super Ljava/lang/Object;
.source "PariseRequest.java"


# instance fields
.field private collection_id:Ljava/lang/String;

.field private comment_id:Ljava/lang/String;

.field private information_id:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/PariseRequest;->information_id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/PariseRequest;->comment_id:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/PariseRequest;->uid:I

    return-void
.end method


# virtual methods
.method public getCollection_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PariseRequest;->collection_id:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PariseRequest;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getInformation_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PariseRequest;->information_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PariseRequest;->uid:I

    return v0
.end method

.method public setCollection_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PariseRequest;->collection_id:Ljava/lang/String;

    return-void
.end method

.method public setComment_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PariseRequest;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setInformation_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PariseRequest;->information_id:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PariseRequest;->uid:I

    return-void
.end method
