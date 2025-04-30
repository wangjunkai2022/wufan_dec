.class public Lcom/join/mgps/dto/CLoudUploadMain;
.super Ljava/lang/Object;
.source "CLoudUploadMain.java"


# instance fields
.field private code:I

.field private data_info:Lcom/join/mgps/dto/CloudUploadDatainfo;

.field private msg:Ljava/lang/String;

.field private succ:I


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
    iget v0, p0, Lcom/join/mgps/dto/CLoudUploadMain;->code:I

    return v0
.end method

.method public getData_info()Lcom/join/mgps/dto/CloudUploadDatainfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CLoudUploadMain;->data_info:Lcom/join/mgps/dto/CloudUploadDatainfo;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CLoudUploadMain;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getSucc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CLoudUploadMain;->succ:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CLoudUploadMain;->code:I

    return-void
.end method

.method public setData_info(Lcom/join/mgps/dto/CloudUploadDatainfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CLoudUploadMain;->data_info:Lcom/join/mgps/dto/CloudUploadDatainfo;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CLoudUploadMain;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSucc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CLoudUploadMain;->succ:I

    return-void
.end method
