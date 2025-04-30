.class Lcom/join/mgps/adapter/z4$a;
.super Ljava/lang/Object;
.source "RecomWifiAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/z4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/join/mgps/adapter/z4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/z4;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/z4$a;->b:Lcom/join/mgps/adapter/z4;

    iput-object p2, p0, Lcom/join/mgps/adapter/z4$a;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/z4$a;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/z4$a;->a:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/z4$a;->a:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method
