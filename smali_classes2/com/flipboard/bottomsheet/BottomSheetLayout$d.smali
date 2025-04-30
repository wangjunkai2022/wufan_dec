.class Lcom/flipboard/bottomsheet/BottomSheetLayout$d;
.super Ljava/lang/Object;
.source "BottomSheetLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;->J(Landroid/view/View;Lcom/flipboard/bottomsheet/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/flipboard/bottomsheet/c;

.field final synthetic c:Lcom/flipboard/bottomsheet/BottomSheetLayout;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;Lcom/flipboard/bottomsheet/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$d;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$d;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$d;->b:Lcom/flipboard/bottomsheet/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$d;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$d;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$d;->b:Lcom/flipboard/bottomsheet/c;

    invoke-virtual {v0, v1, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->J(Landroid/view/View;Lcom/flipboard/bottomsheet/c;)V

    return-void
.end method
