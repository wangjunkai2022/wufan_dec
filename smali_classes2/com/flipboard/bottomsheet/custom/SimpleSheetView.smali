.class public Lcom/flipboard/bottomsheet/custom/SimpleSheetView;
.super Landroid/widget/FrameLayout;
.source "SimpleSheetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;,
        Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;,
        Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;
    }
.end annotation


# instance fields
.field protected final a:Landroid/widget/ListView;

.field protected final b:Landroid/widget/TextView;

.field protected final c:Landroid/view/View;

.field protected final d:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;

.field protected final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/flipboard/bottomsheet/custom/SimpleSheetView$d;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->e:Ljava/util/List;

    const v0, 0x7f0c0590

    .line 4
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0908de

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->a:Landroid/widget/ListView;

    const p1, 0x7f09100f

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->b:Landroid/widget/TextView;

    const v0, 0x7f090288

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->c:Landroid/view/View;

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iput-object p3, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->d:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;

    .line 10
    new-instance p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$a;

    invoke-direct {p1, p0, p3}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$a;-><init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView;Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p1, p2}, Lcom/flipboard/bottomsheet/custom/a;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public getMixins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->e:Ljava/util/List;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    new-instance v0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->e:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;-><init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->f:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;

    .line 3
    iget-object v1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_0

    .line 2
    new-instance p3, Lcom/flipboard/bottomsheet/custom/a$a;

    invoke-direct {p3, p1, p2}, Lcom/flipboard/bottomsheet/custom/a$a;-><init>(II)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    return-void
.end method

.method public setMixins(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
