.class Lcom/join/mgps/customview/ClouldItemView$b;
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

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/customview/ClouldItemView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView;ZII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->d:Lcom/join/mgps/customview/ClouldItemView;

    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView$b;->a:Z

    iput p3, p0, Lcom/join/mgps/customview/ClouldItemView$b;->b:I

    iput p4, p0, Lcom/join/mgps/customview/ClouldItemView$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->a:Z

    if-nez p1, :cond_3

    .line 2
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->b:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p1, v0, :cond_1

    .line 3
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->c:I

    if-ne p1, v1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->d:Lcom/join/mgps/customview/ClouldItemView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ClouldItemView;->c()V

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->d:Lcom/join/mgps/customview/ClouldItemView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ClouldItemView;->c()V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->d:Lcom/join/mgps/customview/ClouldItemView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ClouldItemView;->c()V

    :cond_3
    :goto_1
    return-void
.end method
