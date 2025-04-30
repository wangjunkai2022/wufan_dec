.class Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$a;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "BannerLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;


# direct methods
.method constructor <init>(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;

    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;)F

    move-result v0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method
