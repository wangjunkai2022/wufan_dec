.class Lcom/join/mgps/dialog/q1$b;
.super Ljava/lang/Object;
.source "PostingSelectCoinsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/q1;->f(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/join/mgps/dialog/q1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/q1;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/q1$b;->b:Lcom/join/mgps/dialog/q1;

    iput-object p2, p0, Lcom/join/mgps/dialog/q1$b;->a:Landroid/app/Activity;

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
    iget-object p1, p0, Lcom/join/mgps/dialog/q1$b;->b:Lcom/join/mgps/dialog/q1;

    invoke-static {p1}, Lcom/join/mgps/dialog/q1;->a(Lcom/join/mgps/dialog/q1;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dialog/q1$c;

    iget p1, p1, Lcom/join/mgps/dialog/q1$c;->a:I

    mul-int/lit8 p2, p1, 0x2

    .line 2
    iget-object p3, p0, Lcom/join/mgps/dialog/q1$b;->b:Lcom/join/mgps/dialog/q1;

    invoke-static {p3}, Lcom/join/mgps/dialog/q1;->b(Lcom/join/mgps/dialog/q1;)I

    move-result p3

    if-le p2, p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/dialog/q1$b;->a:Landroid/app/Activity;

    .line 4
    invoke-static {p2}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/join/mgps/Util/z;->E(Landroid/content/Context;I)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/dialog/q1$b;->b:Lcom/join/mgps/dialog/q1;

    invoke-static {p2}, Lcom/join/mgps/dialog/q1;->c(Lcom/join/mgps/dialog/q1;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/join/mgps/activity/posting/PostingActivity$m;->d(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/q1$b;->b:Lcom/join/mgps/dialog/q1;

    invoke-static {p1}, Lcom/join/mgps/dialog/q1;->a(Lcom/join/mgps/dialog/q1;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/dialog/q1$b;->b:Lcom/join/mgps/dialog/q1;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/q1;->d()V

    return-void
.end method
