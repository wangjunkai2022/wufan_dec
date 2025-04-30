.class Lcom/join/mgps/customview/h0$a;
.super Ljava/lang/Object;
.source "PopSelectPostingGroup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/h0;->a(Ljava/util/List;Ljava/util/List;Lcom/join/mgps/dto/GroupInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/customview/h0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/h0;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/h0$a;->b:Lcom/join/mgps/customview/h0;

    iput-object p2, p0, Lcom/join/mgps/customview/h0$a;->a:Ljava/util/List;

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
    iget-object p1, p0, Lcom/join/mgps/customview/h0$a;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/h0$b;

    iget p1, p1, Lcom/join/mgps/customview/h0$b;->a:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/h0$a;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/h0$b;

    iget-object p1, p1, Lcom/join/mgps/customview/h0$b;->b:Lcom/join/mgps/dto/GroupInfoBean;

    .line 3
    iget-object p2, p0, Lcom/join/mgps/customview/h0$a;->b:Lcom/join/mgps/customview/h0;

    iget-object p2, p2, Lcom/join/mgps/customview/h0;->b:Lcom/join/mgps/activity/posting/PostingActivity$m;

    invoke-interface {p2, p1}, Lcom/join/mgps/activity/posting/PostingActivity$m;->c(Lcom/join/mgps/dto/GroupInfoBean;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/h0$a;->b:Lcom/join/mgps/customview/h0;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
