.class Lcom/join/mgps/fragment/c0$c;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Lcom/join/mgps/listener/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/c0;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/c0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/c0$c;->a:Lcom/join/mgps/fragment/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$c;->a:Lcom/join/mgps/fragment/c0;

    iget-object v0, v0, Lcom/join/mgps/fragment/c0;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/c0$c;->a:Lcom/join/mgps/fragment/c0;

    iget-object v1, v1, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0713a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$c;->a:Lcom/join/mgps/fragment/c0;

    iget-object v0, v0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0710cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/c0$c;->a:Lcom/join/mgps/fragment/c0;

    iget-object v1, v1, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    return-void
.end method
