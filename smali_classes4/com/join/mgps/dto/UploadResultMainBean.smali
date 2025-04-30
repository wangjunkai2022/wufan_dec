.class public Lcom/join/mgps/dto/UploadResultMainBean;
.super Ljava/lang/Object;
.source "UploadResultMainBean.java"


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
.field private data:Lcom/join/mgps/dto/AccountTokenSuccess;

.field private error:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/join/mgps/dto/AccountTokenSuccess;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/UploadResultMainBean;->error:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/UploadResultMainBean;->data:Lcom/join/mgps/dto/AccountTokenSuccess;

    return-void
.end method


# virtual methods
.method public getData()Lcom/join/mgps/dto/AccountTokenSuccess;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UploadResultMainBean;->data:Lcom/join/mgps/dto/AccountTokenSuccess;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/UploadResultMainBean;->error:I

    return v0
.end method

.method public setData(Lcom/join/mgps/dto/AccountTokenSuccess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UploadResultMainBean;->data:Lcom/join/mgps/dto/AccountTokenSuccess;

    return-void
.end method

.method public setError(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/UploadResultMainBean;->error:I

    return-void
.end method
