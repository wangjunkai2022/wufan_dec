.class public Lcom/efs/sdk/base/protocol/file/EfsTextFile;
.super Lcom/efs/sdk/base/protocol/file/AbsFileLog;
.source "SourceFile"


# static fields
.field private static final FILE_START:Ljava/lang/String; = "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***"

.field private static final SECTION_START:Ljava/lang/String; = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"


# instance fields
.field private mHasInitLinkInfo:Z

.field private mLinkID:Ljava/lang/String;

.field private mLinkKey:Ljava/lang/String;

.field private sectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/protocol/file/section/AbsSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/protocol/file/AbsFileLog;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkKey:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mHasInitLinkInfo:Z

    return-void
.end method

.method private changeToStr()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/efs/sdk/base/protocol/file/section/AbsSection;

    if-lez v2, :cond_0

    const-string v4, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {v3}, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->changeToStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initLinkInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mHasInitLinkInfo:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/efs/sdk/base/protocol/file/section/AbsSection;

    .line 4
    instance-of v2, v1, Lcom/efs/sdk/base/protocol/file/section/KVSection;

    if-eqz v2, :cond_2

    .line 5
    check-cast v1, Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 6
    invoke-virtual {v1}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->getDataMap()Ljava/util/Map;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "w_frmid"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkID:Ljava/lang/String;

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "w_linkKey"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkKey:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mHasInitLinkInfo:Z

    return-void
.end method

.method private insertCustomInfoSection()V
    .locals 4

    .line 1
    new-instance v0, Lcom/efs/sdk/base/protocol/file/section/KVSection;

    const-string v1, "custom_info"

    invoke-direct {v0, v1}, Lcom/efs/sdk/base/protocol/file/section/KVSection;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getPublicParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createAndAddJSONSection(Ljava/lang/String;)Lcom/efs/sdk/base/protocol/file/section/JSONSection;
    .locals 1

    .line 1
    new-instance v0, Lcom/efs/sdk/base/protocol/file/section/JSONSection;

    invoke-direct {v0, p1}, Lcom/efs/sdk/base/protocol/file/section/JSONSection;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createAndAddKVSection(Ljava/lang/String;)Lcom/efs/sdk/base/protocol/file/section/KVSection;
    .locals 1

    .line 1
    new-instance v0, Lcom/efs/sdk/base/protocol/file/section/KVSection;

    invoke-direct {v0, p1}, Lcom/efs/sdk/base/protocol/file/section/KVSection;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createAndAddTextSection(Ljava/lang/String;)Lcom/efs/sdk/base/protocol/file/section/TextSection;
    .locals 1

    .line 1
    new-instance v0, Lcom/efs/sdk/base/protocol/file/section/TextSection;

    invoke-direct {v0, p1}, Lcom/efs/sdk/base/protocol/file/section/TextSection;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public generate()[B
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->changeToStr()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isPrintLogDetail()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "efs.base"

    .line 3
    invoke-static {v1, v0}, Lcom/efs/sdk/base/core/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public generateString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->changeToStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->initLinkInfo()V

    .line 2
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkID:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->initLinkInfo()V

    .line 2
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkKey:Ljava/lang/String;

    return-object v0
.end method

.method public insertGlobal(Lcom/efs/sdk/base/core/config/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->insertCustomInfoSection()V

    .line 2
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/efs/sdk/base/protocol/AbsLog;->getLogType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/efs/sdk/base/core/config/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method
