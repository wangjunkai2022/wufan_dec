.class public Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;
.super Ljava/lang/Object;
.source "PaMgrBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UplocadCover"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private bucket:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private uploadDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->uploadDir:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->appId:Ljava/lang/String;

    return-void
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->bucket:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->file:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->signature:Ljava/lang/String;

    return-void
.end method

.method public setUploadDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->uploadDir:Ljava/lang/String;

    return-void
.end method
