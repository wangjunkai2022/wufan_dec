.class public Lcom/join/mgps/dto/ForumResponse;
.super Ljava/lang/Object;
.source "ForumResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private error:I

.field private error_message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/ForumResponse;->error:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/ForumResponse;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumResponse;->error:I

    return v0
.end method

.method public getError_message()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumResponse;->error_message:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumResponse;->data:Ljava/lang/Object;

    return-void
.end method

.method public setError(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumResponse;->error:I

    return-void
.end method

.method public setError_message(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumResponse;->error_message:Ljava/lang/String;

    return-void
.end method
