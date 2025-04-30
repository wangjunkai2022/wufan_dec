.class public final Lcom/join/android/app/mgsim/wufun/databinding/my;
.super Ljava/lang/Object;
.source "MgForumPostActivityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Lcom/join/mgps/customview/KeyboardListenLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/join/android/app/mgsim/wufun/databinding/j00;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/join/android/app/mgsim/wufun/databinding/oo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Lcom/join/mgps/customview/XListView4ForumPost;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final i:Lcom/join/android/app/mgsim/wufun/databinding/jd0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/KeyboardListenLayout;Lcom/join/android/app/mgsim/wufun/databinding/j00;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/oo;Lcom/join/mgps/customview/ForumLoadingView;Lcom/join/mgps/ptr/PtrClassicFrameLayout;Lcom/join/mgps/customview/XListView4ForumPost;Landroid/widget/FrameLayout;Lcom/join/android/app/mgsim/wufun/databinding/jd0;)V
    .locals 0
    .param p1    # Lcom/join/mgps/customview/KeyboardListenLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/android/app/mgsim/wufun/databinding/j00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/join/android/app/mgsim/wufun/databinding/oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/join/mgps/customview/ForumLoadingView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/join/mgps/ptr/PtrClassicFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/join/mgps/customview/XListView4ForumPost;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/join/android/app/mgsim/wufun/databinding/jd0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->a:Lcom/join/mgps/customview/KeyboardListenLayout;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->b:Lcom/join/android/app/mgsim/wufun/databinding/j00;

    .line 4
    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->c:Landroid/view/View;

    .line 5
    iput-object p4, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->d:Lcom/join/android/app/mgsim/wufun/databinding/oo;

    .line 6
    iput-object p5, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 7
    iput-object p6, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 8
    iput-object p7, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->g:Lcom/join/mgps/customview/XListView4ForumPost;

    .line 9
    iput-object p8, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->h:Landroid/widget/FrameLayout;

    .line 10
    iput-object p9, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->i:Lcom/join/android/app/mgsim/wufun/databinding/jd0;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/my;
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f090088

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lcom/join/android/app/mgsim/wufun/databinding/j00;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/j00;

    move-result-object v4

    const v0, 0x7f090169

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    const v0, 0x7f09088d

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1}, Lcom/join/android/app/mgsim/wufun/databinding/oo;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/oo;

    move-result-object v6

    const v0, 0x7f090986

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/join/mgps/customview/ForumLoadingView;

    if-eqz v7, :cond_0

    const v0, 0x7f0909e2

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f090a47

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/join/mgps/customview/XListView4ForumPost;

    if-eqz v9, :cond_0

    const v0, 0x7f091262

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f091264

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {v1}, Lcom/join/android/app/mgsim/wufun/databinding/jd0;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/jd0;

    move-result-object v11

    .line 12
    new-instance v0, Lcom/join/android/app/mgsim/wufun/databinding/my;

    move-object v3, p0

    check-cast v3, Lcom/join/mgps/customview/KeyboardListenLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/join/android/app/mgsim/wufun/databinding/my;-><init>(Lcom/join/mgps/customview/KeyboardListenLayout;Lcom/join/android/app/mgsim/wufun/databinding/j00;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/oo;Lcom/join/mgps/customview/ForumLoadingView;Lcom/join/mgps/ptr/PtrClassicFrameLayout;Lcom/join/mgps/customview/XListView4ForumPost;Landroid/widget/FrameLayout;Lcom/join/android/app/mgsim/wufun/databinding/jd0;)V

    return-object v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/my;
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
    invoke-static {p0, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/my;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/my;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/my;
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

    const v0, 0x7f0c0413

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/mgsim/wufun/databinding/my;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/my;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/join/mgps/customview/KeyboardListenLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->a:Lcom/join/mgps/customview/KeyboardListenLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/my;->b()Lcom/join/mgps/customview/KeyboardListenLayout;

    move-result-object v0

    return-object v0
.end method
