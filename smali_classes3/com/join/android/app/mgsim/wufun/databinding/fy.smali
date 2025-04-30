.class public final Lcom/join/android/app/mgsim/wufun/databinding/fy;
.super Ljava/lang/Object;
.source "MgForumIndexFragmentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/join/android/app/mgsim/wufun/databinding/j00;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/join/mgps/customview/ForumIndexHeaderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Lru/noties/scrollable/ScrollableLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final i:Lcom/join/mgps/customview/SlidingTabLayout4;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final j:Landroidx/viewpager/widget/ViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/join/android/app/mgsim/wufun/databinding/j00;Lcom/join/mgps/customview/ForumIndexHeaderView;Landroid/widget/RelativeLayout;Lcom/join/mgps/customview/ForumLoadingView;Lcom/join/mgps/ptr/PtrClassicFrameLayout;Lru/noties/scrollable/ScrollableLayout;Lcom/join/mgps/customview/SlidingTabLayout4;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/android/app/mgsim/wufun/databinding/j00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/join/mgps/customview/ForumIndexHeaderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/join/mgps/customview/ForumLoadingView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/join/mgps/ptr/PtrClassicFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lru/noties/scrollable/ScrollableLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/join/mgps/customview/SlidingTabLayout4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/fy;->a:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/fy;->b:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/fy;->c:Lcom/join/android/app/mgsim/wufun/databinding/j00;

    .line 5
    iput-object p4, p0, Lcom/join/android/app/mgsim/wufun/databinding/fy;->d:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 6
    iput-object p5, p0, Lcom/join/android/app/mgsim/wufun/databinding/fy;->e:Landroid/widget/RelativeLayout;

    .line 7
    iput-object p6, p0, Lcom/join/android/app/mgsim/wufun/databinding/fy;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 8
    iput-object p7, p0, Lcom/join/android/app/mgsim/wufun/databinding/fy;->g:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 9
    iput-object p8, p0, Lcom/join/android/app/mgsim/wufun/databinding/fy;->h:Lru/noties/scrollable/ScrollableLayout;

    .line 10
    iput-object p9, p0, Lcom/join/android/app/mgsim/wufun/databinding/fy;->i:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 11
    iput-object p10, p0, Lcom/join/android/app/mgsim/wufun/databinding/fy;->j:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/fy;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f090038

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f09006e

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/join/android/app/mgsim/wufun/databinding/j00;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/j00;

    move-result-object v5

    const v0, 0x7f090649

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/join/mgps/customview/ForumIndexHeaderView;

    if-eqz v6, :cond_0

    const v0, 0x7f09089d

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f090986

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/join/mgps/customview/ForumLoadingView;

    if-eqz v8, :cond_0

    const v0, 0x7f0909e2

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f090dcb

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lru/noties/scrollable/ScrollableLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f090f19

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/join/mgps/customview/SlidingTabLayout4;

    if-eqz v11, :cond_0

    const v0, 0x7f091280

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/viewpager/widget/ViewPager;

    if-eqz v12, :cond_0

    .line 11
    new-instance v0, Lcom/join/android/app/mgsim/wufun/databinding/fy;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/join/android/app/mgsim/wufun/databinding/fy;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/join/android/app/mgsim/wufun/databinding/j00;Lcom/join/mgps/customview/ForumIndexHeaderView;Landroid/widget/RelativeLayout;Lcom/join/mgps/customview/ForumLoadingView;Lcom/join/mgps/ptr/PtrClassicFrameLayout;Lru/noties/scrollable/ScrollableLayout;Lcom/join/mgps/customview/SlidingTabLayout4;Landroidx/viewpager/widget/ViewPager;)V

    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/fy;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/fy;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/fy;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/fy;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0c040c

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/mgsim/wufun/databinding/fy;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/fy;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/fy;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/fy;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method
