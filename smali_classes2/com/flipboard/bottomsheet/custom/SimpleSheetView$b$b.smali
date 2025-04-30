.class Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;
.super Ljava/lang/Object;
.source "SimpleSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/widget/ImageView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/TextView;

.field final d:Landroid/view/View;

.field final synthetic e:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->e:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f090687

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->a:Landroid/widget/ImageView;

    const p1, 0x7f09100f

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->b:Landroid/widget/TextView;

    const p1, 0x7f090340

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->c:Landroid/widget/TextView;

    const p1, 0x7f0903b8

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$b;->d:Landroid/view/View;

    return-void
.end method
