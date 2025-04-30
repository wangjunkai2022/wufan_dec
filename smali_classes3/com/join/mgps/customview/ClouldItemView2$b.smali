.class Lcom/join/mgps/customview/ClouldItemView2$b;
.super Ljava/lang/Object;
.source "ClouldItemView2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClouldItemView2;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLcom/join/mgps/listener/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CloudListDataBean;

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/customview/ClouldItemView2;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView2;Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->c:Lcom/join/mgps/customview/ClouldItemView2;

    iput-object p2, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->a:Lcom/join/mgps/dto/CloudListDataBean;

    iput-boolean p3, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->c:Lcom/join/mgps/customview/ClouldItemView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ClouldItemView2;->d()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->a:Lcom/join/mgps/dto/CloudListDataBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CloudListDataBean;->setIsComment(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->c:Lcom/join/mgps/customview/ClouldItemView2;

    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->b:Z

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ClouldItemView2;->setPoPoWindow2(Z)V

    return-void
.end method
