.class Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;
.super Landroid/os/Handler;
.source "BannerLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;->b:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;->b:Z

    if-eqz v0, :cond_0

    .line 3
    iget p1, p1, Landroid/os/Message;->what:I

    .line 4
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method
