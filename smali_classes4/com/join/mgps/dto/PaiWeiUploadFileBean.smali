.class public Lcom/join/mgps/dto/PaiWeiUploadFileBean;
.super Ljava/lang/Object;
.source "PaiWeiUploadFileBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;

.field private error:Ljava/lang/String;


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
    iget v0, p0, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->code:I

    return v0
.end method

.method public getData()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->data:Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->error:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->code:I

    return-void
.end method

.method public setData(Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->data:Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaiWeiUploadFileBean;->error:Ljava/lang/String;

    return-void
.end method
