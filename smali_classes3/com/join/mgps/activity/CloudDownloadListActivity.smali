.class public Lcom/join/mgps/activity/CloudDownloadListActivity;
.super Lcom/BaseActivity;
.source "CloudDownloadListActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c00e3
.end annotation


# instance fields
.field a:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field b:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/rpc/k;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method afterView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CloudDownloadListActivity;->c:Lcom/join/mgps/rpc/k;

    return-void
.end method

.method getData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudDownloadListActivity;->c:Lcom/join/mgps/rpc/k;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/join/mgps/rpc/k;->z(ILjava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudList;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudList;->getBackup_list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CloudDownloadListActivity;->d:Ljava/util/List;

    :cond_0
    return-void
.end method
