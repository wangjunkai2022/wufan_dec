.class Lcom/join/mgps/customview/GamelistExpandableTextView$a;
.super Ljava/lang/Object;
.source "GamelistExpandableTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/GamelistExpandableTextView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/GamelistExpandableTextView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/GamelistExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$a;->a:Lcom/join/mgps/customview/GamelistExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$a;->a:Lcom/join/mgps/customview/GamelistExpandableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$a;->a:Lcom/join/mgps/customview/GamelistExpandableTextView;

    invoke-static {v0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->b(Lcom/join/mgps/customview/GamelistExpandableTextView;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$a;->a:Lcom/join/mgps/customview/GamelistExpandableTextView;

    invoke-static {v2}, Lcom/join/mgps/customview/GamelistExpandableTextView;->c(Lcom/join/mgps/customview/GamelistExpandableTextView;)Landroid/widget/TextView$BufferType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/mgps/customview/GamelistExpandableTextView;->d(Lcom/join/mgps/customview/GamelistExpandableTextView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
