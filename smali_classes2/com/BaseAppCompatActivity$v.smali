.class Lcom/BaseAppCompatActivity$v;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseAppCompatActivity;->setupKeyboardHandler(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$v;->b:Lcom/BaseAppCompatActivity;

    iput-object p2, p0, Lcom/BaseAppCompatActivity$v;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 5
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity$v;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/BaseAppCompatActivity$v;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/BaseAppCompatActivity$v;->b:Lcom/BaseAppCompatActivity;

    invoke-virtual {v0}, Lcom/BaseAppCompatActivity;->showKeyBoardHandler()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/BaseAppCompatActivity$v;->b:Lcom/BaseAppCompatActivity;

    invoke-virtual {v0}, Lcom/BaseAppCompatActivity;->hideKeyBoardHandler()V

    :goto_0
    return-void
.end method
