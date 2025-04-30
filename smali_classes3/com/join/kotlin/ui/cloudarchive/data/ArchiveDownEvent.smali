.class public Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;
.super Ljava/lang/Object;
.source "ArchiveDownEvent.java"


# instance fields
.field archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field status:I


# direct methods
.method public constructor <init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;->status:I

    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    return-void
.end method


# virtual methods
.method public getArchiveData()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;->status:I

    return v0
.end method

.method public setArchiveData(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;->status:I

    return-void
.end method
