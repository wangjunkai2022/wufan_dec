.class Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ScreenShortListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MYHolder"
.end annotation


# instance fields
.field private image:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09069a

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p0
.end method
