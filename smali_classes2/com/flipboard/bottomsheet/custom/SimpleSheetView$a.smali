.class Lcom/flipboard/bottomsheet/custom/SimpleSheetView$a;
.super Ljava/lang/Object;
.source "SimpleSheetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/custom/SimpleSheetView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;

.field final synthetic b:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/custom/SimpleSheetView;Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$a;->b:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$a;->a:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$a;->a:Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;

    invoke-interface {p1}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;->onClose()V

    return-void
.end method
