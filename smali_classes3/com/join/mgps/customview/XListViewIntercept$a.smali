.class Lcom/join/mgps/customview/XListViewIntercept$a;
.super Ljava/lang/Object;
.source "XListViewIntercept.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/XListViewIntercept;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/XListViewIntercept;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/XListViewIntercept;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept$a;->a:Lcom/join/mgps/customview/XListViewIntercept;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept$a;->a:Lcom/join/mgps/customview/XListViewIntercept;

    invoke-static {v0}, Lcom/join/mgps/customview/XListViewIntercept;->c(Lcom/join/mgps/customview/XListViewIntercept;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/join/mgps/customview/XListViewIntercept;->b(Lcom/join/mgps/customview/XListViewIntercept;I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept$a;->a:Lcom/join/mgps/customview/XListViewIntercept;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
