.class Lcom/join/mgps/customview/ClouldItemView$a;
.super Ljava/lang/Object;
.source "ClouldItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClouldItemView;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLcom/join/mgps/listener/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/customview/ClouldItemView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$a;->b:Lcom/join/mgps/customview/ClouldItemView;

    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$a;->b:Lcom/join/mgps/customview/ClouldItemView;

    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView$a;->a:Z

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ClouldItemView;->setPoPoWindow2(Z)V

    return-void
.end method
