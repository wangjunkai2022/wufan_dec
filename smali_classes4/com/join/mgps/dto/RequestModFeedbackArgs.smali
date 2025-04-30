.class public Lcom/join/mgps/dto/RequestModFeedbackArgs;
.super Ljava/lang/Object;
.source "RequestModFeedbackArgs.java"


# instance fields
.field private contact:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private questionType:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContact()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModFeedbackArgs;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModFeedbackArgs;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModFeedbackArgs;->questionType:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestModFeedbackArgs;->uid:I

    return v0
.end method

.method public setContact(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModFeedbackArgs;->contact:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModFeedbackArgs;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setQuestionType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModFeedbackArgs;->questionType:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestModFeedbackArgs;->uid:I

    return-void
.end method
