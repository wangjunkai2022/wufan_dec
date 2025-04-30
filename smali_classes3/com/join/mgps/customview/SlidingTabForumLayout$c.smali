.class Lcom/join/mgps/customview/SlidingTabForumLayout$c;
.super Ljava/lang/Object;
.source "SlidingTabForumLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabForumLayout;->c(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/customview/SlidingTabForumLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabForumLayout;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    iget v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->h(II)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->k(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->k(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$e;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;->a:I

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/SlidingTabForumLayout$e;->onItemClick(I)V

    :cond_0
    return-void
.end method
