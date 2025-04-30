.class public Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;
.super Ljava/lang/Object;
.source "PaiWeiUploadFileBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaiWeiUploadFileBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private info:Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->info:Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->info:Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean$InfoBean;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaiWeiUploadFileBean$DataBean;->message:Ljava/lang/String;

    return-void
.end method
