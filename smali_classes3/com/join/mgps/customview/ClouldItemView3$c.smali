.class Lcom/join/mgps/customview/ClouldItemView3$c;
.super Ljava/lang/Object;
.source "ClouldItemView3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClouldItemView3;->setPoPoWindow2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PopupWindow;

.field final synthetic b:Lcom/join/mgps/customview/ClouldItemView3;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView3;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3$c;->b:Lcom/join/mgps/customview/ClouldItemView3;

    iput-object p2, p0, Lcom/join/mgps/customview/ClouldItemView3$c;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3$c;->b:Lcom/join/mgps/customview/ClouldItemView3;

    iget-object v0, p1, Lcom/join/mgps/customview/ClouldItemView3;->t:Lcom/join/mgps/listener/c;

    iget-object p1, p1, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/join/mgps/listener/c;->E(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3$c;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
