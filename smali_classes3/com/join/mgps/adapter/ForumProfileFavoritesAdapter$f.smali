.class Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$f;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->B(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$f;->b:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-nez v1, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr p2, v5

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int/2addr p2, v5

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 11
    invoke-virtual {v5, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    int-to-float v4, v4

    .line 12
    invoke-virtual {v5, p2, v4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p2

    .line 13
    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, p2, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ClickableSpan;

    .line 14
    array-length v0, p2

    if-eqz v0, :cond_2

    if-ne v1, v3, :cond_1

    .line 15
    aget-object p2, p2, v2

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-ne v1, v3, :cond_3

    if-nez v2, :cond_3

    .line 16
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$f;->b:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$f;->b:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    move-result-object p1

    iget p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$f;->a:I

    invoke-interface {p1, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;->d(I)V

    :cond_3
    return v2
.end method
