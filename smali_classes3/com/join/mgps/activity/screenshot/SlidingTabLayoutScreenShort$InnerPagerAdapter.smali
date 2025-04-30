.class Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SlidingTabLayoutScreenShort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerPagerAdapter"
.end annotation


# instance fields
.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;

.field private titles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;->this$0:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;->fragments:Ljava/util/ArrayList;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;->fragments:Ljava/util/ArrayList;

    .line 5
    iput-object p4, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;->titles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort$InnerPagerAdapter;->titles:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
