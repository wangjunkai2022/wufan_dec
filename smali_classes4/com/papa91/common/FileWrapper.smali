.class public Lcom/papa91/common/FileWrapper;
.super Ljava/lang/Object;
.source "FileWrapper.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public mfile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/papa91/common/FileWrapper;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/papa91/common/FileWrapper;->mfile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/papa91/common/FileWrapper;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/common/FileWrapper;->getFile()Ljava/io/File;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/papa91/common/FileWrapper;->mfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/papa91/common/FileWrapper;->mfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/common/FileWrapper;->mfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    :cond_1
    return v2

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/papa91/common/FileWrapper;->mfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_5

    .line 7
    iget-object v0, p0, Lcom/papa91/common/FileWrapper;->mfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/papa91/common/FileWrapper;->mfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/papa91/common/FileWrapper;->mfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 10
    :cond_6
    iget-object v0, p0, Lcom/papa91/common/FileWrapper;->mfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_7

    return v2

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/common/FileWrapper;->mfile:Ljava/io/File;

    return-object v0
.end method
