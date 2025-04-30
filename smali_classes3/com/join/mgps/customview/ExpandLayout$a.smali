.class Lcom/join/mgps/customview/ExpandLayout$a;
.super Ljava/lang/Object;
.source "ExpandLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ExpandLayout;->setContent(Ljava/lang/String;Lcom/join/mgps/customview/ExpandLayout$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ExpandLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ExpandLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ExpandLayout$a;->a:Lcom/join/mgps/customview/ExpandLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout$a;->a:Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout$a;->a:Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout$a;->a:Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/join/mgps/customview/ExpandLayout;->b(Lcom/join/mgps/customview/ExpandLayout;I)I

    .line 5
    invoke-static {}, Lcom/join/mgps/customview/ExpandLayout;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGlobalLayout,\u63a7\u4ef6\u5bbd\u5ea6 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout$a;->a:Lcom/join/mgps/customview/ExpandLayout;

    invoke-static {v1}, Lcom/join/mgps/customview/ExpandLayout;->a(Lcom/join/mgps/customview/ExpandLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout$a;->a:Lcom/join/mgps/customview/ExpandLayout;

    invoke-static {v0}, Lcom/join/mgps/customview/ExpandLayout;->a(Lcom/join/mgps/customview/ExpandLayout;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/join/mgps/customview/ExpandLayout;->d(Lcom/join/mgps/customview/ExpandLayout;I)V

    return-void
.end method
