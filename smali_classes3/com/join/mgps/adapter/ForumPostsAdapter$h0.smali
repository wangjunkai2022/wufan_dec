.class public Lcom/join/mgps/adapter/ForumPostsAdapter$h0;
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
    name = "h0"
.end annotation


# static fields
.field public static final o:I = 0x1

.field public static final p:I = 0x2

.field public static final q:I = 0x3


# instance fields
.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field i:I

.field j:I

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:I

.field final synthetic n:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->n:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/h;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->c()V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->k()V

    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0412

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901d9

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->c:Landroid/view/View;

    const v1, 0x7f0901d8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->d:Landroid/view/View;

    const v1, 0x7f090394

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->e:Landroid/view/View;

    const v1, 0x7f0901d7

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->f:Landroid/view/View;

    const v1, 0x7f090393

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->g:Landroid/view/View;

    const v1, 0x7f0901da

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->h:Landroid/view/View;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->c:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->d:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->f:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->h:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x2

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->j:I

    return-void
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->i:I

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/h;->dismiss()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->i:I

    .line 3
    iput v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->j:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->k:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->l:Ljava/lang/String;

    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->d:Landroid/view/View;

    return-object v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->c:Landroid/view/View;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->m:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->l:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->j:I

    return v0
.end method

.method l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->n:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->n:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->i:I

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->h(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->n:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->i:I

    iget v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->j:I

    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->k(IILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->n:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const-string v2, "clipboard"

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->l:Ljava/lang/String;

    const-string v2, "wufan"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 5
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->n:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->n:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->i:I

    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->d(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->n:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->j:I

    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->g(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->n:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->n:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->i:I

    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->j(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->n:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->j:I

    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->f(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->o()V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->n()V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->m()V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->l()V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901d7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->h:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->i:I

    return-void
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public s(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->d:Landroid/view/View;

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/join/mgps/customview/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c9e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v1, v0}, Lcom/join/mgps/customview/h;->showAsDropDown(Landroid/view/View;II)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/h;->b()V

    return-void
.end method

.method public t(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->d:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->d:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public u(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->c:Landroid/view/View;

    return-void
.end method

.method public v(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->e:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public w(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->m:I

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->l:Ljava/lang/String;

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->k:Ljava/lang/String;

    return-void
.end method

.method z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->g:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->g:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
