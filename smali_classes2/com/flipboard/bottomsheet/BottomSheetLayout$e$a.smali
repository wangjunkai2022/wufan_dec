.class Lcom/flipboard/bottomsheet/BottomSheetLayout$e$a;
.super Ljava/lang/Object;
.source "BottomSheetLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout$e;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/BottomSheetLayout$e;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$e$a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$e$a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout$e;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$e;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$e$a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout$e;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$e;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D()V

    :cond_0
    return-void
.end method
