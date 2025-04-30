.class Lcom/join/mgps/fragment/MyShopFragmentItem$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MyShopFragmentItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/MyShopFragmentItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/MyShopFragmentItem$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/fragment/MyShopFragmentItem$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/fragment/MyShopFragmentItem;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/MyShopFragmentItem;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/MyShopFragmentItem$a;->b:Lcom/join/mgps/fragment/MyShopFragmentItem;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/fragment/MyShopFragmentItem$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/fragment/MyShopFragmentItem$a$a;I)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/join/mgps/fragment/MyShopFragmentItem$a$a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/fragment/MyShopFragmentItem$a$a;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/MyShopFragmentItem$a;->a(Lcom/join/mgps/fragment/MyShopFragmentItem$a$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/MyShopFragmentItem$a;->b(Landroid/view/ViewGroup;I)Lcom/join/mgps/fragment/MyShopFragmentItem$a$a;

    move-result-object p1

    return-object p1
.end method
