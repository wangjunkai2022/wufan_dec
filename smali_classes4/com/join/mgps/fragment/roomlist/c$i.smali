.class Lcom/join/mgps/fragment/roomlist/c$i;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "StandardEliteRoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/roomlist/c;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/roomlist/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/roomlist/c;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$i;->c:Lcom/join/mgps/fragment/roomlist/c;

    iput p2, p0, Lcom/join/mgps/fragment/roomlist/c$i;->a:I

    iput p3, p0, Lcom/join/mgps/fragment/roomlist/c$i;->b:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    .line 2
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 3
    iget p2, p0, Lcom/join/mgps/fragment/roomlist/c$i;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 4
    :cond_0
    iget p2, p0, Lcom/join/mgps/fragment/roomlist/c$i;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 5
    :goto_0
    iget p2, p0, Lcom/join/mgps/fragment/roomlist/c$i;->b:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 6
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
