.class public final Lcom/join/mgps/customview/GameTransferListItem_;
.super Lcom/join/mgps/customview/GameTransferListItem;
.source "GameTransferListItem_.java"

# interfaces
.implements Li3/a;
.implements Li3/b;


# instance fields
.field private m:Z

.field private final n:Li3/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/GameTransferListItem;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/GameTransferListItem_;->m:Z

    .line 3
    new-instance p1, Li3/c;

    invoke-direct {p1}, Li3/c;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem_;->n:Li3/c;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/GameTransferListItem_;->e()V

    return-void
.end method

.method public static d(Landroid/content/Context;)Lcom/join/mgps/customview/GameTransferListItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/GameTransferListItem_;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/GameTransferListItem_;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/GameTransferListItem_;->onFinishInflate()V

    return-object v0
.end method

.method private e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem_;->n:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method


# virtual methods
.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/GameTransferListItem_;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/GameTransferListItem_;->m:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0252

    invoke-static {v0, v1, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem_;->n:Li3/c;

    invoke-virtual {v0, p0}, Li3/c;->a(Li3/a;)V

    .line 5
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09059f

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->a:Landroid/widget/TextView;

    const v0, 0x7f0905a0

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->b:Landroid/widget/TextView;

    const v0, 0x7f0905a5

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->c:Landroid/widget/TextView;

    const v0, 0x7f0905a4

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->d:Landroid/widget/CheckBox;

    const v0, 0x7f090254

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem;->e:Landroid/widget/FrameLayout;

    const v0, 0x7f09059e

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method
