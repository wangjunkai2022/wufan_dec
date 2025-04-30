.class Lcom/join/mgps/activity/label/MainLabelActivity$h;
.super Landroid/widget/PopupWindow;
.source "MainLabelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/label/MainLabelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Landroid/widget/RadioGroup;

.field d:Landroid/widget/RadioButton;

.field e:Landroid/widget/RadioButton;

.field f:Landroid/widget/RadioButton;

.field final synthetic g:Lcom/join/mgps/activity/label/MainLabelActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/label/MainLabelActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->g:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity$h;->c()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/label/MainLabelActivity;Landroid/content/Context;II)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->g:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 6
    invoke-direct {p0, p3, p4}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 7
    iput-object p2, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity$h;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/label/MainLabelActivity$h;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity$h;->d(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/activity/label/MainLabelActivity$h;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity$h;->e(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic d(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f090cb2

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->g:Lcom/join/mgps/activity/label/MainLabelActivity;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity;->V0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f090cb3

    if-ne p2, p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->g:Lcom/join/mgps/activity/label/MainLabelActivity;

    const-string p2, "new"

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity;->V0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f090cb1

    if-ne p2, p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->g:Lcom/join/mgps/activity/label/MainLabelActivity;

    const-string p2, "hot"

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity;->V0(Ljava/lang/String;)V

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->b:Ljava/lang/String;

    const-string v0, "new"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->c:Landroid/widget/RadioGroup;

    const v0, 0x7f090cb3

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->b:Ljava/lang/String;

    const-string v0, "hot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->c:Landroid/widget/RadioGroup;

    const v0, 0x7f090cb1

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->c:Landroid/widget/RadioGroup;

    const v0, 0x7f090cb2

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 5
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity$h$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity$h$a;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity$h;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0539

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x42fc0000    # 126.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/4 v5, -0x2

    invoke-direct {v1, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7
    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/label/MainLabelActivity$h;->f()V

    const v1, 0x7f090d31

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->c:Landroid/widget/RadioGroup;

    .line 10
    new-instance v1, Lcom/join/mgps/activity/label/a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/label/a;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity$h;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method
