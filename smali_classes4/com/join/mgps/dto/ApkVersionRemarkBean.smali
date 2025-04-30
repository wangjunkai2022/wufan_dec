.class public Lcom/join/mgps/dto/ApkVersionRemarkBean;
.super Ljava/lang/Object;
.source "ApkVersionRemarkBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private check_files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CheckFileBean;",
            ">;"
        }
    .end annotation
.end field

.field private so_file_count:I

.field private zip_md:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheck_files()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CheckFileBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionRemarkBean;->check_files:Ljava/util/List;

    return-object v0
.end method

.method public getSo_file_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ApkVersionRemarkBean;->so_file_count:I

    return v0
.end method

.method public getZip_md()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionRemarkBean;->zip_md:Ljava/lang/String;

    return-object v0
.end method

.method public setCheck_files(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CheckFileBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionRemarkBean;->check_files:Ljava/util/List;

    return-void
.end method

.method public setSo_file_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ApkVersionRemarkBean;->so_file_count:I

    return-void
.end method

.method public setZip_md(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionRemarkBean;->zip_md:Ljava/lang/String;

    return-void
.end method
