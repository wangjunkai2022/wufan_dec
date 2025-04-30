.class public Lcom/join/mgps/fragment/MyShopFragmentItem;
.super Landroid/app/Fragment;
.source "MyShopFragmentItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/MyShopFragmentItem$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c058b
.end annotation


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/fragment/MyShopFragmentItem$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/MyShopFragmentItem;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Lcom/join/mgps/fragment/MyShopFragmentItem$a;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/MyShopFragmentItem$a;-><init>(Lcom/join/mgps/fragment/MyShopFragmentItem;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/MyShopFragmentItem;->b:Lcom/join/mgps/fragment/MyShopFragmentItem$a;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/MyShopFragmentItem;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
