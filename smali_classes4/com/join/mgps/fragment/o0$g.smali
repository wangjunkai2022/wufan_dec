.class Lcom/join/mgps/fragment/o0$g;
.super Ljava/lang/Object;
.source "ForumGroupPostsFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/XListView2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o0;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/join/mgps/fragment/o0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o0$g;->b:Lcom/join/mgps/fragment/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIZZ)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/join/mgps/fragment/o0$g;->a:I

    if-eq p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/o0$g;->b:Lcom/join/mgps/fragment/o0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/activity/ForumActivity;

    .line 3
    iput p2, p0, Lcom/join/mgps/fragment/o0$g;->a:I

    :cond_0
    return-void
.end method
