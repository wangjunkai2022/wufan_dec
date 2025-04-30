.class public Lcom/join/mgps/dto/UploadPortraitRequestBean;
.super Ljava/lang/Object;
.source "UploadPortraitRequestBean.java"


# instance fields
.field private device_id:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:I


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
    iput p1, p0, Lcom/join/mgps/dto/UploadPortraitRequestBean;->uid:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/UploadPortraitRequestBean;->token:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/UploadPortraitRequestBean;->device_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UploadPortraitRequestBean;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UploadPortraitRequestBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/UploadPortraitRequestBean;->uid:I

    return v0
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UploadPortraitRequestBean;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UploadPortraitRequestBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/UploadPortraitRequestBean;->uid:I

    return-void
.end method
