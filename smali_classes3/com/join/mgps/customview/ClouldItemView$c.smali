.class Lcom/join/mgps/customview/ClouldItemView$c;
.super Ljava/lang/Object;
.source "ClouldItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClouldItemView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PopupWindow;

.field final synthetic b:Lcom/join/mgps/customview/ClouldItemView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$c;->b:Lcom/join/mgps/customview/ClouldItemView;

    iput-object p2, p0, Lcom/join/mgps/customview/ClouldItemView$c;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$c;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$c;->b:Lcom/join/mgps/customview/ClouldItemView;

    iget v0, p1, Lcom/join/mgps/customview/ClouldItemView;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p1, Lcom/join/mgps/customview/ClouldItemView;->r:Lcom/join/mgps/listener/c;

    iget-object p1, p1, Lcom/join/mgps/customview/ClouldItemView;->n:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-interface {v0, p1, v1}, Lcom/join/mgps/listener/c;->t(Lcom/join/mgps/dto/CloudListDataBean;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p1, Lcom/join/mgps/customview/ClouldItemView;->r:Lcom/join/mgps/listener/c;

    iget-object p1, p1, Lcom/join/mgps/customview/ClouldItemView;->n:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-interface {v0, p1, v1}, Lcom/join/mgps/listener/c;->t(Lcom/join/mgps/dto/CloudListDataBean;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p1, Lcom/join/mgps/customview/ClouldItemView;->r:Lcom/join/mgps/listener/c;

    iget-object p1, p1, Lcom/join/mgps/customview/ClouldItemView;->n:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-interface {v0, p1, v1}, Lcom/join/mgps/listener/c;->t(Lcom/join/mgps/dto/CloudListDataBean;I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p1, Lcom/join/mgps/customview/ClouldItemView;->r:Lcom/join/mgps/listener/c;

    iget-object p1, p1, Lcom/join/mgps/customview/ClouldItemView;->n:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-interface {v0, p1, v1}, Lcom/join/mgps/listener/c;->E(Lcom/join/mgps/dto/CloudListDataBean;I)V

    :cond_3
    :goto_0
    return-void
.end method
