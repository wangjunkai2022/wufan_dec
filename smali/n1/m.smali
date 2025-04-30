.class public Ln1/m;
.super Ljava/lang/Object;
.source "DownloadUtilsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/join/mgps/db/tables/DownloadFileTable;)Lcom/php25/PDownload/DownloadFile;
    .locals 7

    .line 1
    new-instance v0, Lcom/php25/PDownload/DownloadFile;

    invoke-direct {v0}, Lcom/php25/PDownload/DownloadFile;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->Z(Ljava/lang/Long;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->m0(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->q0(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getBasePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->M(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->c0(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->j0(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->K(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->X(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getTotalSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->o0(Ljava/lang/Integer;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getDownloading()S

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->R(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getFinished()S

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->W(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->P(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->e0(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getPercentage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->f0(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getIsAutoPause()S

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->L(Z)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getFinishTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->V(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getCompleteSize()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/php25/PDownload/DownloadFile;->N(J)V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getDtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->T(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->U(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getPortraitURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->g0(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->O(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->r0(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->s0(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getGid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->Y(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getStarNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->l0(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getRomType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->i0(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getIsOpen()S

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->d0(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getDescribe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->Q(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getShowType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->k0(I)V

    .line 31
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getTips()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    const-class v5, Ljava/util/ArrayList;

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Lcom/join/mgps/dto/TipBean;

    aput-object v6, v3, v2

    invoke-virtual {v4, v5, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 32
    invoke-virtual {v0, p0}, Lcom/php25/PDownload/DownloadFile;->n0(Ljava/util/List;)V

    return-object v0
.end method

.method public static b(Lcom/php25/PDownload/DownloadFile;)Lcom/join/mgps/db/tables/DownloadFileTable;
    .locals 6

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/DownloadFileTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/DownloadFileTable;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setTag(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setUrl(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setBasePath(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setShowName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setAbsolutePath(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setGameZipPath(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->A()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setTotalSize(I)V

    .line 10
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->G()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setDownloading(S)V

    .line 11
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->I()Z

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setFinished(S)V

    .line 12
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setCreateTime(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setPackageName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setPercentage(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->F()Z

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setIsAutoPause(S)V

    .line 16
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setFinishTime(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->c()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setCompleteSize(I)V

    .line 18
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setDtype(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setFileType(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setPortraitURL(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setVer(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setVer_name(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setGid(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setStarNumber(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setRomType(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->J()Z

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/DownloadFileTable;->setIsOpen(S)V

    .line 28
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setDescribe(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setShowType(I)V

    .line 30
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->z()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->setTips(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Lcom/php25/PDownload/DownloadFile;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 6

    .line 1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->A()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 8
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->A()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->I()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 10
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->A()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "-"

    .line 13
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    invoke-static {v1}, Lcom/join/mgps/Util/x;->F(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStartTime(J)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStartTime(J)V

    goto :goto_2

    .line 16
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStartTime(J)V

    .line 17
    :goto_2
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFinishTime(J)V

    .line 19
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->c()J

    move-result-wide v4

    long-to-int v1, v4

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLastCompleteSize(J)V

    .line 20
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "1024"

    .line 23
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v1, "31"

    .line 24
    :cond_4
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->J()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpen(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowType(I)V

    const-string v1, "1"

    .line 31
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    const-wide/16 v1, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpenTime(J)V

    .line 37
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->z()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTips(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "packageName"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static delete(Lcom/php25/PDownload/DownloadFile;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Ln1/j;->n()Ln1/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->m()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg1/b;->b(Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method public static insert(Lcom/php25/PDownload/DownloadFile;)J
    .locals 2

    .line 1
    invoke-static {p0}, Ln1/m;->b(Lcom/php25/PDownload/DownloadFile;)Lcom/join/mgps/db/tables/DownloadFileTable;

    move-result-object p0

    .line 2
    invoke-static {}, Ln1/j;->n()Ln1/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg1/b;->k(Ljava/lang/Object;)I

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getId()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static update(Lcom/php25/PDownload/DownloadFile;)V
    .locals 4

    .line 1
    invoke-static {}, Ln1/j;->n()Ln1/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->m()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/db/tables/DownloadFileTable;

    .line 2
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->j()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setFinished(S)V

    .line 3
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->G()Z

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/DownloadFileTable;->setDownloading(S)V

    .line 4
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setFinishTime(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->A()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setTotalSize(I)V

    .line 6
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setPercentage(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->c()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/DownloadFileTable;->setCompleteSize(I)V

    .line 8
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setGameZipPath(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setVer_name(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->m()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->setId(I)V

    .line 11
    invoke-static {}, Ln1/j;->n()Ln1/j;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg1/b;->update(Ljava/lang/Object;)I

    return-void
.end method
