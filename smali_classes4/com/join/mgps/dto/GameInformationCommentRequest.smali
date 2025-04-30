.class public Lcom/join/mgps/dto/GameInformationCommentRequest;
.super Ljava/lang/Object;
.source "GameInformationCommentRequest.java"


# instance fields
.field private comment_type:[I

.field private information_id:Ljava/lang/String;

.field private pc:I

.field private pn:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([ILjava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->comment_type:[I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->information_id:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->pn:I

    .line 6
    iput p4, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->pc:I

    return-void
.end method


# virtual methods
.method public getComment_type()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->comment_type:[I

    return-object v0
.end method

.method public getInformation_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->information_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->pc:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->pn:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->uid:I

    return v0
.end method

.method public setComment_type([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->comment_type:[I

    return-void
.end method

.method public setInformation_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->information_id:Ljava/lang/String;

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->pc:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->pn:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameInformationCommentRequest;->uid:I

    return-void
.end method
