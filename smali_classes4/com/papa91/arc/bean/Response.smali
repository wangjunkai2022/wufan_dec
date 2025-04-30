.class public Lcom/papa91/arc/bean/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private flag:I

.field private message:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/Response;->code:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/Response;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/Response;->flag:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/Response;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/Response;->code:I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/Response;->data:Ljava/lang/Object;

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/Response;->flag:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/Response;->message:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/Response;->version:Ljava/lang/String;

    return-void
.end method
