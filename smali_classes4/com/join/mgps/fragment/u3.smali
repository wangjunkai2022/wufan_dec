.class public Lcom/join/mgps/fragment/u3;
.super Landroidx/fragment/app/Fragment;
.source "PaPaLocalGameFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0223
.end annotation


# instance fields
.field a:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/adapter/r3;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/u3;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/u3;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/u3;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public N()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u3;->b:Lcom/join/mgps/adapter/r3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u3;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/u3;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/u3;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void
.end method

.method public O(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u3;->b:Lcom/join/mgps/adapter/r3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/u3;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/u3;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/u3;->b:Lcom/join/mgps/adapter/r3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/u3;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/u3;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/u3;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void
.end method

.method public P(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u3;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/u3;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/r3;

    iget-object v1, p0, Lcom/join/mgps/fragment/u3;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/r3;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/u3;->b:Lcom/join/mgps/adapter/r3;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/u3;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/u3;->a:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/u3$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u3$a;-><init>(Lcom/join/mgps/fragment/u3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
