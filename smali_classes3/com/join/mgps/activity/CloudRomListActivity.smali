.class public Lcom/join/mgps/activity/CloudRomListActivity;
.super Lcom/BaseActivity;
.source "CloudRomListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CloudRomListActivity$b;,
        Lcom/join/mgps/activity/CloudRomListActivity$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c00eb
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

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
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
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudRomListActivity;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CloudRomListActivity;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/f0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CloudRomListActivity;->c:Ljava/util/List;

    .line 2
    new-instance v1, Lcom/join/mgps/activity/CloudRomListActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CloudRomListActivity$b;-><init>(Lcom/join/mgps/activity/CloudRomListActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CloudRomListActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/join/mgps/activity/CloudRomListActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CloudRomListActivity$a;-><init>(Lcom/join/mgps/activity/CloudRomListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
