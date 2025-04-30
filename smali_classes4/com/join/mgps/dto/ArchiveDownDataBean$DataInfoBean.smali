.class public Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;
.super Ljava/lang/Object;
.source "ArchiveDownDataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ArchiveDownDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataInfoBean"
.end annotation


# instance fields
.field private archiveFileName:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;->archiveFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArchiveFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;->archiveFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setArchiveFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;->archiveFileName:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;->downloadUrl:Ljava/lang/String;

    return-void
.end method
