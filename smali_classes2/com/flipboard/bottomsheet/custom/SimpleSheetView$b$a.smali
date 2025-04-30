.class Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;
.super Ljava/lang/Object;
.source "SimpleSheetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

.field final synthetic b:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;->b:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;->a:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;->b:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;

    iget-object p1, p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b;->d:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    iget-object p1, p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->d:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$b$a;->a:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    invoke-interface {p1, v0}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;->a(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;)V

    :cond_0
    return-void
.end method
