.class public final Lcom/join/android/app/mgsim/wufun/databinding/po;
.super Ljava/lang/Object;
.source "InformationCommentActivityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Lcom/join/mgps/customview/KeyboardListenLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/join/android/app/mgsim/wufun/databinding/j00;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/join/mgps/customview/KeyboardListenLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Lcom/join/mgps/customview/XListView2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/KeyboardListenLayout;Landroid/widget/FrameLayout;Lcom/join/android/app/mgsim/wufun/databinding/j00;Lcom/join/mgps/ptr/PtrClassicFrameLayout;Lcom/join/mgps/customview/KeyboardListenLayout;Lcom/join/mgps/customview/XListView2;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/join/mgps/customview/KeyboardListenLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/android/app/mgsim/wufun/databinding/j00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/join/mgps/ptr/PtrClassicFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/join/mgps/customview/KeyboardListenLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/join/mgps/customview/XListView2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/po;->a:Lcom/join/mgps/customview/KeyboardListenLayout;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/po;->b:Landroid/widget/FrameLayout;

    .line 4
    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/po;->c:Lcom/join/android/app/mgsim/wufun/databinding/j00;

    .line 5
    iput-object p4, p0, Lcom/join/android/app/mgsim/wufun/databinding/po;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 6
    iput-object p5, p0, Lcom/join/android/app/mgsim/wufun/databinding/po;->e:Lcom/join/mgps/customview/KeyboardListenLayout;

    .line 7
    iput-object p6, p0, Lcom/join/android/app/mgsim/wufun/databinding/po;->f:Lcom/join/mgps/customview/XListView2;

    .line 8
    iput-object p7, p0, Lcom/join/android/app/mgsim/wufun/databinding/po;->g:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/po;
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f090895

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f090896

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/join/android/app/mgsim/wufun/databinding/j00;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/j00;

    move-result-object v5

    const v0, 0x7f0909e2

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v6, :cond_0

    .line 5
    move-object v7, p0

    check-cast v7, Lcom/join/mgps/customview/KeyboardListenLayout;

    const v0, 0x7f090a47

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/join/mgps/customview/XListView2;

    if-eqz v8, :cond_0

    const v0, 0x7f090b15

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 8
    new-instance p0, Lcom/join/android/app/mgsim/wufun/databinding/po;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v9}, Lcom/join/android/app/mgsim/wufun/databinding/po;-><init>(Lcom/join/mgps/customview/KeyboardListenLayout;Landroid/widget/FrameLayout;Lcom/join/android/app/mgsim/wufun/databinding/j00;Lcom/join/mgps/ptr/PtrClassicFrameLayout;Lcom/join/mgps/customview/KeyboardListenLayout;Lcom/join/mgps/customview/XListView2;Landroid/widget/TextView;)V

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/po;
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
    invoke-static {p0, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/po;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/po;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/po;
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

    const v0, 0x7f0c02d5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/mgsim/wufun/databinding/po;->a(Landroid/view/View;)Lcom/join/android/app/mgsim/wufun/databinding/po;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/join/mgps/customview/KeyboardListenLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/po;->a:Lcom/join/mgps/customview/KeyboardListenLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/po;->b()Lcom/join/mgps/customview/KeyboardListenLayout;

    move-result-object v0

    return-object v0
.end method
