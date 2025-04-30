.class public Lcom/join/mgps/customview/z;
.super Landroid/widget/PopupWindow;
.source "MyGameFilterPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/z$d;,
        Lcom/join/mgps/customview/z$e;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field public c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/widget/ListView;

.field f:Landroid/widget/BaseAdapter;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;

.field i:Lcom/join/mgps/customview/z$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/z;->g:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/z;->a:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/z;->l()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/z;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/customview/z;->g:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lcom/join/mgps/customview/z;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/join/mgps/customview/z;->b:Landroid/view/View;

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/z;->l()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/customview/z;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/customview/z;->j(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/customview/z;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/z;->i(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/z;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/z;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/z;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/z;->dismiss()V

    return-void
.end method

.method private synthetic j(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/z;->g:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/z;->dismiss()V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/customview/z;->i:Lcom/join/mgps/customview/z$d;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/join/mgps/customview/z$d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    const v0, 0x7f1204c5

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 6
    new-instance v0, Lcom/join/mgps/customview/z$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/z$a;-><init>(Lcom/join/mgps/customview/z;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/z;->a:Landroid/content/Context;

    const v1, 0x7f01004f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x64

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/z;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/z;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    new-instance v0, Lcom/join/mgps/customview/z$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/z$c;-><init>(Lcom/join/mgps/customview/z;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/z;->a:Landroid/content/Context;

    const v1, 0x7f01004d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x96

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/z;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/z;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/z;->a:Landroid/content/Context;

    const v1, 0x7f01004f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x96

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/z;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/z;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public g()Lcom/join/mgps/customview/z$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/z;->i:Lcom/join/mgps/customview/z$d;

    return-object v0
.end method

.method h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/z;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c053e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/z;->b:Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/z;->b:Landroid/view/View;

    const v1, 0x7f0908de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/customview/z;->e:Landroid/widget/ListView;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/z;->b:Landroid/view/View;

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/z;->d:Landroid/view/View;

    .line 8
    new-instance v1, Lcom/join/mgps/customview/x;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/x;-><init>(Lcom/join/mgps/customview/z;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v0, Lcom/join/mgps/customview/z$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/z$b;-><init>(Lcom/join/mgps/customview/z;)V

    iput-object v0, p0, Lcom/join/mgps/customview/z;->f:Landroid/widget/BaseAdapter;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/z;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/z;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/join/mgps/customview/y;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/y;-><init>(Lcom/join/mgps/customview/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public k(Lcom/join/mgps/customview/z$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/z;->i:Lcom/join/mgps/customview/z$d;

    return-void
.end method

.method public m(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/z;->showAsDropDown(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/z;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/z;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/z;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    iput-object p3, p0, Lcom/join/mgps/customview/z;->h:Ljava/lang/String;

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/z;->c:Landroid/view/View;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/z;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/z;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/z;->e()V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/z;->c:Landroid/view/View;

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
