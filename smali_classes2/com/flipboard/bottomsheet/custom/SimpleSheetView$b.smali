.class Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;
.super Landroid/widget/BaseAdapter;
.source "SimpleSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/custom/SimpleSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field final synthetic d:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;


# direct methods
.method public constructor <init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->d:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->b:Ljava/util/List;

    .line 4
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->a(I)Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    iget-object p1, p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->c:Landroid/view/LayoutInflater;

    const v0, 0x7f0c058f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;

    invoke-direct {p3, p0, p2}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;-><init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    .line 6
    iget-object v0, p3, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p3, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p3, p3, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->d:Landroid/view/View;

    new-instance v0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;

    invoke-direct {v0, p0, p1}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;-><init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
