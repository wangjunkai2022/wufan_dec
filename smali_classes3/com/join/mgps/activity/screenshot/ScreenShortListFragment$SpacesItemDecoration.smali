.class Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ScreenShortListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpacesItemDecoration"
.end annotation


# instance fields
.field private space:I

.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;->space:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 2
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 3
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 4
    iput p2, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
