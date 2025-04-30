.class public Lcom/join/mgps/adapter/ForumPostsAdapter$d0;
.super Lcom/join/mgps/customview/h;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d0"
.end annotation


# instance fields
.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Landroid/view/View;

.field final synthetic g:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/h;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/h;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c03fe

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/join/mgps/customview/h;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c8d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c8b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const p2, 0x7f1204c3

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 10
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->g(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f090d23

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090d1b

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090d17

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090337

    .line 4
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance v3, Lcom/join/mgps/adapter/ForumPostsAdapter$d0$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$d0$a;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$d0;)V

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->d:I

    return v0
.end method

.method public dismiss()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/h;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->c:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 6
    :sswitch_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->d:I

    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->p(I)V

    goto :goto_0

    .line 8
    :sswitch_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->l()V

    goto :goto_0

    .line 10
    :sswitch_2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->d:I

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->h(ILjava/lang/String;)V

    goto :goto_0

    .line 12
    :sswitch_3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->g:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->d:I

    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->d(I)V

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090337 -> :sswitch_3
        0x7f090d17 -> :sswitch_2
        0x7f090d1b -> :sswitch_1
        0x7f090d23 -> :sswitch_0
    .end sparse-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->d:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->e:Ljava/lang/String;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->f:Landroid/view/View;

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/customview/h;->showAsDropDown(Landroid/view/View;II)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/h;->b()V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->c:I

    return-void
.end method
