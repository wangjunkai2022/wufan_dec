.class Lcom/join/mgps/fragment/l2$f$a;
.super Ljava/lang/Object;
.source "GameFromBuildFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/l2$f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/l2$f;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/l2$f;Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/l2$f$a;->c:Lcom/join/mgps/fragment/l2$f;

    iput-object p2, p0, Lcom/join/mgps/fragment/l2$f$a;->a:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    iput p3, p0, Lcom/join/mgps/fragment/l2$f$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    new-instance p1, Lcom/join/mgps/customview/t;

    iget-object v0, p0, Lcom/join/mgps/fragment/l2$f$a;->c:Lcom/join/mgps/fragment/l2$f;

    iget-object v0, v0, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v0, v0, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    const v1, 0x7f120176

    invoke-direct {p1, v0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0c011f

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f09036b

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f09100a

    .line 4
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09036e

    .line 5
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u5220\u9664\u6e38\u620f\u5355"

    .line 6
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6e38\u620f\u5355\uff1f"

    .line 7
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u5220\u9664"

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090365

    .line 9
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 10
    new-instance v2, Lcom/join/mgps/fragment/l2$f$a$a;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/fragment/l2$f$a$a;-><init>(Lcom/join/mgps/fragment/l2$f$a;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v1, Lcom/join/mgps/fragment/l2$f$a$b;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/l2$f$a$b;-><init>(Lcom/join/mgps/fragment/l2$f$a;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
