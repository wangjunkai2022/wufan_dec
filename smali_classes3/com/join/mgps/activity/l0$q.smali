.class Lcom/join/mgps/activity/l0$q;
.super Ljava/lang/Object;
.source "GamedetialModleFiveFragemnt.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/l0;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/l0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/l0$q;->a:Lcom/join/mgps/activity/l0;

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

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/l0$q;->a:Lcom/join/mgps/activity/l0;

    iget-object p1, p1, Lcom/join/mgps/activity/l0;->q0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/l0$q;->a:Lcom/join/mgps/activity/l0;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "\u91d1\u624b\u6307"

    invoke-virtual {p1, p2, p3}, Lcom/join/mgps/activity/l0;->h0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
