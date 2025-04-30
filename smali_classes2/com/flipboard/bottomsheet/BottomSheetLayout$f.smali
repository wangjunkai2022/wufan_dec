.class Lcom/flipboard/bottomsheet/BottomSheetLayout$f;
.super Ljava/lang/Object;
.source "BottomSheetLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;->J(Landroid/view/View;Lcom/flipboard/bottomsheet/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/BottomSheetLayout;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    move-result-object p2

    sget-object p3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-eq p2, p3, :cond_3

    .line 3
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h(Lcom/flipboard/bottomsheet/BottomSheetLayout;)I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    move-result-object p2

    sget-object p3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne p2, p3, :cond_0

    .line 5
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    sget-object p3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-static {p2, p3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    int-to-float p3, p1

    invoke-static {p2, p3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b(Lcom/flipboard/bottomsheet/BottomSheetLayout;F)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h(Lcom/flipboard/bottomsheet/BottomSheetLayout;)I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h(Lcom/flipboard/bottomsheet/BottomSheetLayout;)I

    move-result p2

    if-le p1, p2, :cond_3

    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    move-result-object p2

    sget-object p3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne p2, p3, :cond_3

    int-to-float p2, p1

    .line 8
    iget-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {p3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result p3

    cmpl-float p3, p2, p3

    if-nez p3, :cond_2

    .line 9
    iget-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    sget-object p4, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-static {p3, p4}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 10
    :cond_2
    iget-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {p3, p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b(Lcom/flipboard/bottomsheet/BottomSheetLayout;F)V

    .line 11
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {p2, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i(Lcom/flipboard/bottomsheet/BottomSheetLayout;I)I

    return-void
.end method
