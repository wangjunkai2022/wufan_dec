.class Lcom/join/mgps/customview/input/InputNumView$b;
.super Ljava/lang/Object;
.source "InputNumView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/input/InputNumView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/InputNumView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/input/InputNumView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$b;->a:Lcom/join/mgps/customview/input/InputNumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 p1, 0xb

    if-ne p3, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$b;->a:Lcom/join/mgps/customview/input/InputNumView;

    invoke-static {p1}, Lcom/join/mgps/customview/input/InputNumView;->b(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputView_Num;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/customview/input/InputView_Num;->c()V

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    const/4 p2, 0x1

    if-ne p3, p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$b;->a:Lcom/join/mgps/customview/input/InputNumView;

    invoke-static {p1}, Lcom/join/mgps/customview/input/InputNumView;->b(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputView_Num;

    move-result-object p1

    const-string p3, "0"

    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/customview/input/InputView_Num;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x9

    if-ne p3, p1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputNumView$b;->a:Lcom/join/mgps/customview/input/InputNumView;

    invoke-static {p1}, Lcom/join/mgps/customview/input/InputNumView;->b(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputView_Num;

    move-result-object p1

    add-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/customview/input/InputView_Num;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
