.class public Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;
.super Lcom/join/mgps/customview/h;
.source "ForumProfileMessageReplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# static fields
.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3


# instance fields
.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:I

.field i:I

.field j:Ljava/lang/String;

.field k:I

.field final synthetic l:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->l:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/h;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->c()V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->i()V

    return-void
.end method

.method private i()V
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

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->c:Landroid/view/View;

    const v1, 0x7f090394

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->d:Landroid/view/View;

    const v1, 0x7f0901d7

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->e:Landroid/view/View;

    const v1, 0x7f090393

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->f:Landroid/view/View;

    const v1, 0x7f0901da

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->g:Landroid/view/View;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->c:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->e:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->g:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x2

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method


# virtual methods
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
    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->h:I

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/h;->dismiss()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->h:I

    .line 3
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->i:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->j:Ljava/lang/String;

    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->c:Landroid/view/View;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->k:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->i:I

    return v0
.end method

.method j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->l:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->l:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->h:I

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->h(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->l:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->h:I

    iget v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->i:I

    iget-object v3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->k(IILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->l:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->l:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->h:I

    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->d(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->l:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->i:I

    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->g(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->l:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->l:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->h:I

    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->j(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->l:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->i:I

    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->f(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->h:I

    return-void
.end method

.method public o(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2
    :pswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->l()V

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->k()V

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->j()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901d7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->c:Landroid/view/View;

    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->d:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->d:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public r(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->k:I

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->j:Ljava/lang/String;

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

.method t(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->f:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->i:I

    return-void
.end method
